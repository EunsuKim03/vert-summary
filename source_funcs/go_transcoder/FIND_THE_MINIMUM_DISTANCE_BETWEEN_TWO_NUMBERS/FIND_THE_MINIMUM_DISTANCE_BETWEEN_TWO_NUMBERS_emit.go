package main

import "math"

//go:export f_gold
func f_gold(arr []int, n int, x int, y int) int {
	var (
		i        int
		j        int
		min_dist int = math.MaxInt64
	)
	for i = 0; i < n; i++ {
		for j = i + 1; j < n; j++ {
			if (x == arr[i] && y == arr[j] || y == arr[i] && x == arr[j]) && min_dist > int(math.Abs(float64(i-j))) {
				min_dist = int(math.Abs(float64(i - j)))
			}
		}
	}
	return min_dist
}
