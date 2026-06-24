package main

import "math"

//go:export f_gold
func f_gold(arr []int, n int) int {
	var diff int = math.MaxInt64
	for i := int(0); i < n-1; i++ {
		for j := int(i + 1); j < n; j++ {
			if math.Abs(float64(arr[i]-arr[j])) < float64(diff) {
				diff = int(math.Abs(float64(arr[i] - arr[j])))
			}
		}
	}
	return diff
}
