package main

import "math"

//go:export f_gold
func f_gold(p []int, i int, j int) int {
	if i == j {
		return 0
	}
	var k int
	var min int = math.MaxInt64
	var count int
	for k = i; k < j; k++ {
		count = f_gold(p, i, k) + f_gold(p, k+1, j) + p[i-1]*p[k]*p[j]
		if count < min {
			min = count
		}
	}
	return min
}
