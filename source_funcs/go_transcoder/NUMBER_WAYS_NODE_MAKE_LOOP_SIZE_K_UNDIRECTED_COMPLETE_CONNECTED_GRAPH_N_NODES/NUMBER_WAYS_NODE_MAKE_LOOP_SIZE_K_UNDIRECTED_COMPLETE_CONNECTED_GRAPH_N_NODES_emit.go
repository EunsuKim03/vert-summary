package main

import "math"

//go:export f_gold
func f_gold(n int, k int) int {
	var p int = 1
	if k%2 != 0 {
		p = -1
	}
	return int((math.Pow(float64(n-1), float64(k)) + float64(p*(n-1))) / float64(n))
}
