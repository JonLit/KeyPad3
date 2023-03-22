# KeyPad3

KeyPad (Mobile App)

# Usage

1. Install APK on Android Phone
2. Install Companion Program on PC (https://github.com/jonlit/keypad3PC)
3. Install ADB
4. Connect Phone with USB Cable
5. Run `adb forward tcp:8025 tcp:8025` on PC (on windows with CMD, on Linux in your preferred Terminal)
6. Start App on Phone
7. Start Companion Program on PC

To see if it works:
Try tapping on your phone, you should see the small window on the Companion Program flash Black/White accordingly.

## **! ADVANCED USERS ONLY; HIGHER LATENCY ! <br> wireless mode:**

1. Open PC Companion Program's Code in Processing
2. Open App on Phone
3. Put IP shown on Phone in the Code where the UDP Client should connect to
4. Start PC Companion Program

### ! WARNING ! 

This mode WILL have higher latency, especially noticable if your WIFI is bad!

# Info on Phone's Screen
* Local IP Address (useful for wireless connection)
* FPS (should be ~120)
* frameCount (I guess to see if it's still running?)

In the middle:
* Number of fingers on Screen
* ID of touch, X Position, Y Position (only for touch 0 and 1)
