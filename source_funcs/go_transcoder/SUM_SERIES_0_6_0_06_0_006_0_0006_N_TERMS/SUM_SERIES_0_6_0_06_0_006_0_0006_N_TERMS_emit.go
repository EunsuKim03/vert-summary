package main

import "math"

//go:export f_gold
func f_gold(n int) float32 {
	return float32((1 - 1/math.Pow(10, float64(n))) * 0.666)
}
