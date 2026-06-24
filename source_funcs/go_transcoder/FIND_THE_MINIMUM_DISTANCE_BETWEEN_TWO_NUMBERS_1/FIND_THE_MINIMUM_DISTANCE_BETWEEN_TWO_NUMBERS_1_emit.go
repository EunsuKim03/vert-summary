package main

import "math"

//go:export f_gold
func f_gold(arr []int, n int, x int, y int) int {
	var (
		i        int = 0
		min_dist int = math.MaxInt64
		prev     int
	)
	for i = 0; i < n; i++ {
		if arr[i] == x || arr[i] == y {
			prev = i
			break
		}
	}
	for ; i < n; i++ {
		if arr[i] == x || arr[i] == y {
			if arr[prev] != arr[i] && (i-prev) < min_dist {
				min_dist = i - prev
				prev = i
			} else {
				prev = i
			}
		}
	}
	return min_dist
}
