package main

import "math"

//go:export f_gold
func f_gold(side int) float64 {
	var volume float64 = (math.Pow(float64(side), 3) / (math.Sqrt(2) * 6))
	return volume
}
