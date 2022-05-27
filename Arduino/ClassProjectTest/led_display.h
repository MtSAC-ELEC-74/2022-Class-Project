#include <SPI.h>

uint64_t led_map [] = { 0b100010001100010001100010001100010001100010001100,
                        0b001100010001100010001100010001100010001100010001,
                        0b010001100010001100010001100010001100010001100010
                      };
class LED_Display
{
    uint8_t led_cs;
    uint8_t oe;
  public:
    uint64_t led_value = 0;
    LED_Display(uint8_t cs, uint8_t oe)
    {
      pinMode(oe, OUTPUT);
      digitalWrite(oe, LOW);
      pinMode(cs, OUTPUT);
      led_cs = cs;
      SPI.begin();
      SPI.setClockDivider(SPI_CLOCK_DIV4);
      SPI.setDataMode(SPI_MODE2);
    }

    void led_out(uint64_t value)
    {
      char s[100];
      sprintf(s, "%PRIx64", value);
      Serial.println(s);
      digitalWrite(led_cs, LOW);
      delayMicroseconds(1000);
      SPI.transfer((uint8_t)( (value >>  40) & 0xff ));
      SPI.transfer((uint8_t)( (value >>  32) & 0xff ));
      SPI.transfer((uint8_t)( (value >>  24) & 0xff ));
      SPI.transfer((uint8_t)( (value >>  16) & 0xff ));
      SPI.transfer((uint8_t)( (value >>  8) & 0xff ));
      SPI.transfer((uint8_t)( (value >>  0) & 0xff ));
      delayMicroseconds(1000);
      digitalWrite(led_cs, HIGH);
    }

    uint8_t led_control( char* command )
    {
      if ( strncmp( command, "led.", 4 ) == 0 ) {
        char *sub_command;
        sub_command = &command[4];

        if ( strcmp( sub_command, "inc" ) == 0 ) {
          if( led_value > 0x1000000000000 || led_value == 0 )
            led_value = 1;
          else
            led_value = led_value << 1;
          led_out( led_value );
        }
        else if ( strcmp( sub_command, "map" ) == 0 ) {
          led_value = led_value + 1 % sizeof(led_map);
          led_out( led_map[led_value] );
        }
        else
        {
          return 0; //return false if lcd command not found
        }
        return 1; //return true if lcd command and found
      }
      else
        return 0; //return false if not lcd command
    }
};
