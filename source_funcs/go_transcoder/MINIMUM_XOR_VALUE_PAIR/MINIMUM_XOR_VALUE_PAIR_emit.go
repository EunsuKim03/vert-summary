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
	var min_xor int = math.MaxInt64
	for i := int(0); i < n; i++ {
		for j := int(i + 1); j < n; j++ {
			min_xor = min(min_xor, arr[i]^arr[j])
		}
	}
	return min_xor
}
