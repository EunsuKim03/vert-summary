package main

import "math"

//go:export f_gold
func f_gold(n int) int {
	var ans int = int(math.Pow(3, float64(n))*2 - 1)
	return ans
}
