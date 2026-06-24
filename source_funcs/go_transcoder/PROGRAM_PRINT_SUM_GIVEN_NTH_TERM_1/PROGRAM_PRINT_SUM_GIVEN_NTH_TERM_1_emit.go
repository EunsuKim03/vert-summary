package main

import "math"

//go:export f_gold
func f_gold(n int) int {
	return int(math.Pow(float64(n), 2))
}
