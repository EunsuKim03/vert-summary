package main

import "math"

//go:export f_gold
func f_gold(a []int, n int) int {
	return int(math.Floor((math.Sqrt(float64((n*8)+1)) + float64(-1)) / 2))
}
