package main

import "math"

//go:export f_gold
func f_gold(n int) int {
	if n == 1 {
		return 1
	}
	var z int
	var e float32 = 2.71
	z = int(math.Sqrt(float64(n)*(2*3.14)) * math.Pow(float64(float32(n)/e), float64(n)))
	return z
}
