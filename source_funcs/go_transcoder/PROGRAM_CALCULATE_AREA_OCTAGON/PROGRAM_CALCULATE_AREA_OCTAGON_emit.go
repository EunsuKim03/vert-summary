package main

import "math"

//go:export f_gold
func f_gold(side float64) float64 {
	return float64(float32((math.Sqrt(2) + 1) * 2 * side * side))
}
