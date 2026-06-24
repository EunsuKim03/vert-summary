package main

import "math"

//go:export f_gold
func f_gold(s float64) float64 {
	return (math.Sqrt(3) * 3 * (s * s)) / 2
}
