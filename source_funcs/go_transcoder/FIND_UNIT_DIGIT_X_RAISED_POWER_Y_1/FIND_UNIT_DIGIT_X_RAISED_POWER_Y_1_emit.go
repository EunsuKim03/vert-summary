package main

import "math"

//go:export f_gold
func f_gold(x int, y int) int {
	x = x % 10
	if y != 0 {
		y = y%4 + 4
	}
	return (int(math.Pow(float64(x), float64(y)))) % 10
}
