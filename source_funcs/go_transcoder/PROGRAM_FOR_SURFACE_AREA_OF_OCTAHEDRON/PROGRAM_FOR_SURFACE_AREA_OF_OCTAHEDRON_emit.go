package main

import "math"

//go:export f_gold
func f_gold(side float64) float64 {
	return math.Sqrt(3) * 2 * (side * side)
}
