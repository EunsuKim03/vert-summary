package main

import "math"

func min(x int, y int) int {
	if x < y {
		return x
	}
	return y
}

//go:export f_gold
func f_gold(arr []int, n int) int {
	var (
		min_ending_here int = math.MaxInt64
		min_so_far      int = math.MaxInt64
	)
	for i := int(0); i < n; i++ {
		if min_ending_here > 0 {
			min_ending_here = arr[i]
		} else {
			min_ending_here += arr[i]
		}
		min_so_far = min(min_so_far, min_ending_here)
	}
	return min_so_far
}
