/*
  MtSAC ELEC74 Spring 2022 POV Display
  Library: SparkFun_LIS2DH12, Reading and controlling the very low power LIS2DH12
  Author: Nathan Seidle
  License: This code is Lemonadeware; do whatever you want with this code.
*/

#include <SPI.h>
#include <Wire.h>
#include "led_display.h"
#include "SparkFun_LIS2DH12.h" //Click here to get the library: http://librarymanager/All#SparkFun_LIS2DH12

char command[0x20];
LED_Display led(21, 22);
SPARKFUN_LIS2DH12 accel;       //Create instance

const uint8_t PGM_BUTTON = 16;

void setup()
{
  Serial.begin(115200);
  //  while (!Serial);
  //  delay(2000);
  Serial.println("MtSAC ELEC 74 Spring 2022 Class Project");

  Wire.begin();

  if (accel.begin() == false)
  {
    Serial.println("Accelerometer not detected. Check address jumper and wiring. Freezing...");
    led.bar_red();
    //while (1);
  }
  else
  {
    Serial.println("Accelerometer detected.");
    led.bar_green();
  }
  delay(1000);  // Delay to display status message

  //  strcpy(command, "led.display");
  //  led.led_control(command);
  accel_level();
  accel_display();

  pinMode(PGM_BUTTON, INPUT);
}

void loop()
{
  if (receive_function(command, sizeof(command)))
  {
    if (strcmp(command, "hello") == 0)    // Compare received string
      // to the string "hello"
    {
      Serial.println("Back at ya!");      // if they match print out reply
    }
    else if (strcmp(command, "on") == 0)       // compare to "on"
    {
      digitalWrite(PIN_LED1, HIGH);       // if they match turn the led on
    }
    else if (strcmp(command, "off") == 0) // compare to "off"
    {
      digitalWrite(PIN_LED1, LOW);        // if they match turn the led off
    }
    else if (strcmp(command, "accel") == 0)
    {
      accel_test();
    }
    else if (strcmp(command, "display") == 0)
    {
      accel_display();
    }
    else if (led.led_control(command))
    {
      ; // do nothing
    }
    else                                  // none of the ifs above were true
    {
      Serial.println("Not Recognized");
    }
  }
}

void accel_level(void)
{
  float Ax, Ax_min = -1, Ax_max = 1;
  float Ay, Ay_min = -1, Ay_max = 1;
  float Az, Az_min = -1, Az_max = 1;

  int32_t led_value = 0;
  while (Serial.available() == 0 && digitalRead(PGM_BUTTON) != LOW)
  {
    if (accel.available())
    {
      Ax = accel.getX();
      Ay = accel.getY();
      Az = accel.getZ();
      if (Ax > Ax_max) Ax_max = Ax;
      if (Ax < Ax_min) Ax_min = Ax;
      if (Ay > Ay_max) Ay_max = Ay;
      if (Ay < Ay_min) Ay_min = Ay;
      if (Az > Az_max) Az_max = Az;
      if (Az < Az_min) Az_min = Az;
    }
    uint8_t pos_x = (uint8_t)map(Ax, Ax_min, Ax_max, 15, 0);
    uint8_t pos_y = (uint8_t)map(Ay, Ay_min, Ay_max, 15, 0);
    uint8_t pos_z = (uint8_t)map(Az, Az_min, Az_max, 15, 0);
    uint64_t color = 0x0000;
    color |= led.dot_color( LED_R, pos_x );
    color |= led.dot_color( LED_G, pos_y );
    color |= led.dot_color( LED_B, pos_z );
    led.led_out( color );

//    led.dot_red(pos_x);
//    led.dot_blue(pos_y);
//    led.dot_green(pos_z);

    color |= (MASK_LED+1);
    
    while (color) {
      if (color & 1)
        Serial.printf("1");
      else
        Serial.printf("0");
      color >>= 1;
    }

    Serial.printf(", ");
    Serial.printf("%d, ", pos_x);
    Serial.printf("%d, ", pos_y);
    Serial.printf("%d, ", pos_z);
    //    Serial.printf("%.1f, %d, ", Ax, pos_x);
    //    Serial.printf("%.1f, %d, ", Ay, pos_y);
    //    Serial.printf("%.1f, %d, ", Az, pos_z);

    Serial.println();

    delay(100);
  }

  while (digitalRead(PGM_BUTTON) == LOW);
  delay(100);
}


void accel_display(void)
{
  float Ax;

  int32_t led_value = 0;
  while (Serial.available() == 0 && digitalRead(PGM_BUTTON) != LOW)
  {
    if (accel.available())
    {
      Ax = accel.getX();
    }

    if ( Ax < 0 )
      led_value = (led_value + 1) % (sizeof(led_map) / 8);
    else
    {
      led_value = (led_value - 1);
      if (led_value < 0) led_value = (sizeof(led_map) / 8) - 1;
    }
    led.led_out( led_map[led_value] );
    delayMicroseconds(1000);
  }
}

void accel_test(void)
{
  static float Ax_last = 0.0f, Ay_last = 0.0f, Az_last = 0.0f;
  static float Vx_last = 0.0f, Vy_last = 0.0f, Vz_last = 0.0f;

  float Ax, Ay, Az, tempC;
  static float Vx = 0.0f, Vy = 0.0f, Vz = 0.0f;
  static float Px = 0.0f, Py = 0.0f, Pz = 0.0f;

  const bool display_x = true, display_y = false, display_z = false, display_temp = true;
  const bool display_a = true, display_v = true, display_p = false;

  if (display_x && display_a)Serial.print("Ax, ");
  if (display_y && display_a)Serial.print("Ay, ");
  if (display_z && display_a)Serial.print("Az, ");
  if (display_x && display_v)Serial.print("Vx, ");
  if (display_y && display_v)Serial.print("Vy, ");
  if (display_z && display_v)Serial.print("Vz, ");
  if (display_x && display_p)Serial.print("Px, ");
  if (display_y && display_p)Serial.print("Py, ");
  if (display_z && display_p)Serial.print("Pz, ");
  if (display_temp) Serial.print("TempC, ");
  Serial.println();

  while (Serial.available() == 0)
  {
    //Print accel values only if new data is available
    if (accel.available())
    {
      if (display_x) Ax = accel.getX();
      if (display_y) Ay = accel.getY();
      if (display_z) Az = accel.getZ();
      if (display_temp) tempC = accel.getTemperature();

      Vx += Ax;
      Vy += Ay;
      Vz += Az;
      Px += Vx;
      Py += Vy;
      Pz += Vz;

      //    Serial.print("Acc [mg]: ");
      if (display_x && display_a) Serial.printf("%.1f, ", Ax);
      if (display_y && display_a) Serial.printf("%.1f, ", Ay);
      if (display_z && display_a) Serial.printf("%.1f, ", Az);

      if (display_x && display_v) Serial.printf("%.1f, ", Vx);
      if (display_y && display_v) Serial.printf("%.1f, ", Vy);
      if (display_z && display_v) Serial.printf("%.1f, ", Vz);

      if (display_x && display_p) Serial.printf("%.1f, ", Px);
      if (display_y && display_p) Serial.printf("%.1f, ", Py);
      if (display_z && display_p) Serial.printf("%.1f, ", Pz);

      if (display_temp) Serial.printf("%.1f, ", tempC, 1);
      Serial.println();

      //    int rawX = accel.getRawX();
      //    int rawY = accel.getRawY();
      //    int rawZ = accel.getRawZ();
      //
      //    Serial.print("Acc raw: ");
      //    Serial.print(rawX);
      //    Serial.print(" x, ");
      //    Serial.print(rawY);
      //    Serial.print(" y, ");
      //    Serial.print(rawZ);
      //    Serial.print(" z");
      //    Serial.println();

      Ax_last = Ax;
      Ay_last = Ay;
      Az_last = Az;
      Vx_last = Vx;
      Vy_last = Vy;
      Vz_last = Vz;
    }
  }
}
