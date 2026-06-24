package main

import "math"

//go:export f_gold
func f_gold(arr []int, n int) int {
	var (
		neg int = 0
		pos int = 0
		sum int = 0
	)
	for i := int(0); i < n; i++ {
		sum += arr[i]
		if arr[i] < 0 {
			neg++
		} else {
			pos++
		}
	}
	return sum / int(math.Abs(float64(neg-pos)))
}
