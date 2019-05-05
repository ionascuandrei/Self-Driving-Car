#ifndef CARDS_H
#define CARDS_H

// Values under 100 are speed related, meaning that the
// SPEED30 card will be defined to 30, applying a
// 30*1000 speed to the car and so on
#define SPEED15 15
#define SPEED20 20
#define SPEED25 10
#define SPEED30 30
#define SPEED35 35
#define SPEED40 40

#define STOP 100 		// halt the car for 3 secconds
#define PAUSE 101 		// halt the car for 1 seccond
#define KEEPLR 110		// keep track of both lane lines
#define KEEPL 111		// keep track only of the left lane line
#define KEEPR 112		// keep track only of the right lane line

#define SPEED_COLOR 0x00ff00		// SPEEDX card read
#define STOP_COLOR 0x0000ff			// stop sign detected
#define HALT_COLOR 0xff0000			// STOP / PAUSE card read
#define SONAR_COLOR (0x0044ff)		// sonar detected obstacle
#define SINGLE_LANE_COLOR 0xffffff	// KEEPL / KEEPR active




#endif
