#include <SPI.h>
#include "led_display.h"

LED_Display led(21, 22);
char command[0x20];

/*
  Reading and controlling the very low power LIS2DH12
  Author: Nathan Seidle
  Created: Septempter 18th, 2019
  License: This code is Lemonadeware; do whatever you want with this code.
  If you see me (or any other SparkFun employee) at the
  local, and you've found our code helpful, please buy us a round!

  This example demonstrates how to read XYZ from the LIS2DH12.

  Feel like supporting open source hardware?
  Buy a board from SparkFun!
  Edge: https://www.sparkfun.com/products/15170
  Edge 2: https://www.sparkfun.com/products/15420
  Qwiic LIS2DH12 Breakout: https://www.sparkfun.com/products/15760

  Hardware Connections:
  Plug a Qwiic cable into the Qwiic Accelerometer RedBoard Qwiic or BlackBoard
  If you don't have a platform with a Qwiic connection use the SparkFun Qwiic Breadboard Jumper (https://www.sparkfun.com/products/14425)
  Open the serial monitor at 115200 baud to see the output
*/

#include <Wire.h>

#include "SparkFun_LIS2DH12.h" //Click here to get the library: http://librarymanager/All#SparkFun_LIS2DH12
SPARKFUN_LIS2DH12 accel;       //Create instance

void setup()
{
  Serial.begin(115200);
  while (!Serial);
  delay(2000);
  Serial.println("SparkFun Accel Example");

  Wire.begin();

  if (accel.begin() == false)
  {
    Serial.println("Accelerometer not detected. Check address jumper and wiring. Freezing...");
    //while (1)
      ;
  }
  Serial.println("Ax, Ay, Az, Px, Py, Pz, Temp C");

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

void accel_test(void)
{
  while (Serial.available() == 0)
  {
    //Print accel values only if new data is available
    if (accel.available())
    {
      static float Ax_last;
      static float Ay_last;
      static float Az_last;
      static float Vx_last;
      static float Vy_last;
      static float Vz_last;
      float Ax = accel.getX();
      float Ay = accel.getY();
      float Az = accel.getZ();

      static float Vx = 0, Vy = 0, Vz = 0;
      static float Px = 0, Py = 0, Pz = 0;

      Vx += Ax;
      Vy += Ay;
      Vz += Az;
      Px += Vx;
      Py += Vy;
      Pz += Vz;

      float tempC = accel.getTemperature();

      //    Serial.print("Acc [mg]: ");
      Serial.print(Ax, 1);
      Serial.print(", ");
      Serial.print(Ay, 1);
      Serial.print(", ");
      Serial.print(Az, 1);
      Serial.print(", ");

      //    Serial.print(Vx, 1);
      //    Serial.print(", ");
      //    Serial.print(Vy, 1);
      //    Serial.print(", ");
      //    Serial.print(Vz, 1);
      //    Serial.print(", ");
      //
      //    Serial.print(Px, 1);
      //    Serial.print(", ");
      //    Serial.print(Py, 1);
      //    Serial.print(", ");
      //    Serial.print(Pz, 1);
      //    Serial.print(", ");

      Serial.print(tempC, 1);
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
