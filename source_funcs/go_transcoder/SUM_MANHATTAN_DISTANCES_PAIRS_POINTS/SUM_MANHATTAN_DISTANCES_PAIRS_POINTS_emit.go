package main

import "math"

//go:export f_gold
func f_gold(x []int, y []int, n int) int {
	var sum int = 0
	for i := int(0); i < n; i++ {
		for j := int(i + 1); j < n; j++ {
			sum += int(math.Abs(float64(x[i]-x[j])) + math.Abs(float64(y[i]-y[j])))
		}
	}
	return sum
}
