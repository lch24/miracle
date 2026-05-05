#include <stdio.h>
#include <stdlib.h>

// BSP globals
unsigned long UART_BASE = 0xbfe001e0;
unsigned long CONFREG_UART_BASE = 0xbfafff10;
unsigned long CONFREG_TIMER_BASE = 0xbfafe000;
unsigned long CONFREG_CLOCKS_PER_SEC = 100000000L;
unsigned long CORE_CLOCKS_PER_SEC = 33000000L;

// LCD register base (kseg1 virtual address)
// Physical: 0x1fc0xxxx -> Virtual (kseg1): 0xbfc0xxxx
#define LCD_BASE      0xbfc00000
#define LCD_CMD_REG   (*(volatile unsigned int *)(LCD_BASE + 0x00))  // Write command (RS=0)
#define LCD_DATA_REG  (*(volatile unsigned int *)(LCD_BASE + 0x04))  // Write data (RS=1)
#define LCD_STAT_REG  (*(volatile unsigned int *)(LCD_BASE + 0x08))  // Status register
#define LCD_CTRL_REG  (*(volatile unsigned int *)(LCD_BASE + 0x0C))  // Control register

// CTRL_REG bits
#define CTRL_RST_N   0x01  // bit0: 0=reset LCD, 1=normal
#define CTRL_BL_ON   0x02  // bit1: 0=backlight off, 1=on

// STAT_REG bits
#define STAT_BUSY    0x01  // bit0: 8080 FSM busy

static void lcd_wait_idle(void)
{
    while (LCD_STAT_REG & STAT_BUSY)
        ;
}

static void lcd_cmd(unsigned short cmd)
{
    lcd_wait_idle();
    LCD_CMD_REG = cmd;
}

static void lcd_data(unsigned short data)
{
    lcd_wait_idle();
    LCD_DATA_REG = data;
}

// Simple delay loop
static void delay_ms(int ms)
{
    volatile int i, j;
    for (i = 0; i < ms; i++)
        for (j = 0; j < 3300; j++)
            ;
}

// SSD1963 initialization sequence for 480x272 display
static void ssd1963_init(void)
{
    printf("LCD: Releasing reset...\n");
    LCD_CTRL_REG = CTRL_RST_N;       // Release LCD reset (rst=1)
    delay_ms(50);

    printf("LCD: Starting SSD1963 init...\n");

    // Software reset
    lcd_cmd(0x01);  // Software Reset
    delay_ms(50);

    // Set PLL frequency to 100MHz
    lcd_cmd(0xE2);  // Set PLL MN
    lcd_data(0x1D); // N=29
    lcd_data(0x02); // M=2
    lcd_data(0x54); // VCO=100MHz, PLL enable
    delay_ms(10);

    lcd_cmd(0xE0);  // PLL enable
    lcd_data(0x01); // Enable
    delay_ms(10);

    lcd_cmd(0xE0);  // PLL enable
    lcd_data(0x03); // Use PLL output as clock source
    delay_ms(10);

    // Set LCD panel pixel clock (9MHz for 480x272)
    lcd_cmd(0xE6);  // Set pixel clock
    lcd_data(0x01);
    lcd_data(0x70);
    lcd_data(0xA3);

    // Set horizontal display area
    lcd_cmd(0xB0);  // Set LCD mode
    lcd_data(0x00); // 24-bit, no dithering
    lcd_data(0x00); //
    lcd_data(0x01); // HDP=480-1 high
    lcd_data(0xDF); // HDP=480-1 low (0x1DF=479)
    lcd_data(0x01); // VDP=272-1 high
    lcd_data(0x0F); // VDP=272-1 low (0x10F=271)
    lcd_data(0x00); // even line RGB, odd line RGB

    // Set horizontal timing
    lcd_cmd(0xB4);  // Set HBP
    lcd_data(0x02); // HBP high
    lcd_data(0x13); // HBP low (0x213=531)
    lcd_data(0x00); // HSYNC pulse high
    lcd_data(0x2B); // HSYNC pulse low (43)
    lcd_data(0x00); // HBP=43
    lcd_data(0x0A); // HFP=2
    lcd_data(0x00); //

    // Set vertical timing
    lcd_cmd(0xB6);  // Set VBP
    lcd_data(0x01); // VDP high
    lcd_data(0x0F); // VDP low
    lcd_data(0x00); // VSYNC pulse
    lcd_data(0x0A); // VSYNC=10
    lcd_data(0x00); // VBP=12
    lcd_data(0x0C); // VFP=2

    // Set pixel data format (RGB565)
    lcd_cmd(0xF0);  // Set pixel data format
    lcd_data(0x03); // 16-bit RGB565

    // Set address mode
    lcd_cmd(0x36);  // Set address mode
    lcd_data(0x00); // Normal

    // Set PWM for backlight
    lcd_cmd(0xBE);  // Set PWM configuration
    lcd_data(0x06); // PWM freq = PLL/256/6
    lcd_data(0xF0); // Duty cycle high
    lcd_data(0x01); // Duty cycle low
    lcd_data(0xF0); //
    lcd_data(0x00); //
    lcd_data(0x00); //

    printf("LCD: SSD1963 init done, turning on display...\n");
    lcd_cmd(0x29);  // Display ON
    delay_ms(50);
}

// Fill screen with a single color (RGB565)
static void lcd_fill(unsigned short color)
{
    lcd_cmd(0x2A);  // Set column address
    lcd_data(0x00); lcd_data(0x00);  // Start=0
    lcd_data(0x01); lcd_data(0xDF);  // End=479

    lcd_cmd(0x2B);  // Set page address
    lcd_data(0x00); lcd_data(0x00);  // Start=0
    lcd_data(0x01); lcd_data(0x0F);  // End=271

    lcd_cmd(0x2C);  // Write memory start

    int total = 480 * 272;
    int i;
    for (i = 0; i < total; i++) {
        lcd_data(color);
    }
}

int main(int argc, char** argv)
{
    printf("LCD test starting...\n");

    // Step 1: Turn on backlight, keep LCD in reset
    printf("Step 1: Backlight on, LCD in reset\n");
    LCD_CTRL_REG = CTRL_BL_ON;  // bl=1, rst=0
    delay_ms(100);

    // Step 2: Initialize SSD1963
    ssd1963_init();

    // Step 3: Fill screen red
    printf("Step 3: Filling screen red (0xF800)...\n");
    lcd_fill(0xF800);  // Red in RGB565

    // Step 4: Turn on backlight via PWM
    printf("LCD test done! Screen should be red.\n");

    while (1) {
        // Loop forever so PMON doesn't return
    }

    return 0;
}
