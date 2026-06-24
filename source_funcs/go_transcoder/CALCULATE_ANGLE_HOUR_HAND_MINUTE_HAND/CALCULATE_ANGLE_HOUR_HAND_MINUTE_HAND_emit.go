package main

import (
	"fmt"
	"math"
)

func min(x int, y int) int {
	if x < y {
		return x
	}
	return y
}

//go:export f_gold
func f_gold(h float64, m float64) int {
	if h < 0 || m < 0 || h > 12 || m > 60 {
		fmt.Print("Wrong input")
	}
	if h == 12 {
		h = 0
	}
	if m == 60 {
		m = 0
	}
	var hour_angle int = int((h*60 + m) * 0.5)
	var minute_angle int = int(m * 6)
	var angle int = int(math.Abs(float64(hour_angle - minute_angle)))
	angle = min(360-angle, angle)
	return angle
}
