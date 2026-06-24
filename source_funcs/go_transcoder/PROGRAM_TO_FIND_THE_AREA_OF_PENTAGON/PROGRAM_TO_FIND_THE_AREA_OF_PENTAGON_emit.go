package main

import "math"

//go:export f_gold
func f_gold(a float32) float32 {
	var area float32
	area = float32((math.Sqrt((math.Sqrt(5)*2+5)*5) * float64(a) * float64(a)) / 4)
	return area
}
