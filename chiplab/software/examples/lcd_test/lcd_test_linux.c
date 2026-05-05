#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/mman.h>

// LCD physical address base (matches axi_mux address decode: 0x1fc0xxxx)
#define LCD_PHYS_BASE   0x1fc00000
#define LCD_PHYS_LEN    0x10    // 4 registers, 16 bytes

#define LCD_CMD_OFF     0x00    // Write command (RS=0)
#define LCD_DATA_OFF    0x04    // Write data (RS=1)
#define LCD_STAT_OFF    0x08    // Status register
#define LCD_CTRL_OFF    0x0C    // Control register

#define CTRL_RST_N      0x01    // bit0: 0=reset LCD, 1=normal
#define CTRL_BL_ON      0x02    // bit1: 0=backlight off, 1=on
#define STAT_BUSY       0x01    // bit0: 8080 FSM busy

static volatile unsigned int *lcd_base;

static void lcd_wait_idle(void)
{
    while (lcd_base[LCD_STAT_OFF / 4] & STAT_BUSY)
        ;
}

static void lcd_cmd(unsigned short cmd)
{
    lcd_wait_idle();
    lcd_base[LCD_CMD_OFF / 4] = cmd;
}

static void lcd_data(unsigned short data)
{
    lcd_wait_idle();
    lcd_base[LCD_DATA_OFF / 4] = data;
}

static void delay_us(int us)
{
    usleep(us);
}

// SSD1963 initialization for 480x272 TFT
static void ssd1963_init(void)
{
    printf("LCD: Releasing reset...\n");
    lcd_base[LCD_CTRL_OFF / 4] = CTRL_RST_N | CTRL_BL_ON;
    delay_us(50000);

    printf("LCD: SSD1963 init sequence...\n");

    // Software reset
    lcd_cmd(0x01);
    delay_us(50000);

    // Set PLL MN
    lcd_cmd(0xE2);
    lcd_data(0x1D); lcd_data(0x02); lcd_data(0x54);
    delay_us(10000);

    // PLL enable
    lcd_cmd(0xE0);
    lcd_data(0x01);
    delay_us(10000);

    lcd_cmd(0xE0);
    lcd_data(0x03);
    delay_us(10000);

    // Set pixel clock
    lcd_cmd(0xE6);
    lcd_data(0x01); lcd_data(0x70); lcd_data(0xA3);

    // Set LCD mode
    lcd_cmd(0xB0);
    lcd_data(0x00); lcd_data(0x00);
    lcd_data(0x01); lcd_data(0xDF);  // HDP=479
    lcd_data(0x01); lcd_data(0x0F);  // VDP=271
    lcd_data(0x00);

    // Set horizontal timing
    lcd_cmd(0xB4);
    lcd_data(0x02); lcd_data(0x13);
    lcd_data(0x00); lcd_data(0x2B);
    lcd_data(0x00); lcd_data(0x0A);
    lcd_data(0x00);

    // Set vertical timing
    lcd_cmd(0xB6);
    lcd_data(0x01); lcd_data(0x0F);
    lcd_data(0x00); lcd_data(0x0A);
    lcd_data(0x00); lcd_data(0x0C);

    // Set pixel format (RGB565)
    lcd_cmd(0xF0);
    lcd_data(0x03);

    // Set address mode
    lcd_cmd(0x36);
    lcd_data(0x00);

    // Set PWM for backlight
    lcd_cmd(0xBE);
    lcd_data(0x06); lcd_data(0xF0);
    lcd_data(0x01); lcd_data(0xF0);
    lcd_data(0x00); lcd_data(0x00);

    printf("LCD: Display ON\n");
    lcd_cmd(0x29);
    delay_us(50000);

    printf("LCD: Init complete!\n");
}

static void lcd_fill(unsigned short color)
{
    lcd_cmd(0x2A);  // Column address
    lcd_data(0x00); lcd_data(0x00);
    lcd_data(0x01); lcd_data(0xDF);

    lcd_cmd(0x2B);  // Page address
    lcd_data(0x00); lcd_data(0x00);
    lcd_data(0x01); lcd_data(0x0F);

    lcd_cmd(0x2C);  // Write memory

    int total = 480 * 272;
    for (int i = 0; i < total; i++) {
        lcd_data(color);
    }
}

int main(void)
{
    int fd = open("/dev/mem", O_RDWR | O_SYNC);
    if (fd < 0) {
        perror("open /dev/mem");
        printf("Try: sudo chmod 666 /dev/mem  or run as root\n");
        return 1;
    }

    lcd_base = mmap(NULL, LCD_PHYS_LEN, PROT_READ | PROT_WRITE,
                    MAP_SHARED, fd, LCD_PHYS_BASE);
    if (lcd_base == MAP_FAILED) {
        perror("mmap LCD");
        close(fd);
        return 1;
    }

    printf("LCD registers mapped at phys 0x%x\n", LCD_PHYS_BASE);
    printf("STAT_REG = 0x%x\n", lcd_base[LCD_STAT_OFF / 4]);
    printf("CTRL_REG = 0x%x\n", lcd_base[LCD_CTRL_OFF / 4]);

    // Step 1: backlight on, LCD in reset
    printf("Step 1: Backlight ON, LCD in reset\n");
    lcd_base[LCD_CTRL_OFF / 4] = CTRL_BL_ON;
    delay_us(100000);

    // Step 2: init SSD1963
    ssd1963_init();

    // Step 3: fill screen red
    printf("Step 3: Fill RED (0xF800)\n");
    lcd_fill(0xF800);
    printf("Done! Screen should be red.\n");

    munmap(lcd_base, LCD_PHYS_LEN);
    close(fd);
    return 0;
}