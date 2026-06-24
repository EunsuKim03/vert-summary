package main

import "sort"

//go:export f_gold
func f_gold(arr []int, n int) int {
	var (
		count           int = 0
		cummulative_sum int = 0
	)
	sort.Ints(arr)
	for i := int(0); i < n; i++ {
		if arr[i] >= cummulative_sum {
			count++
			cummulative_sum += arr[i]
		}
	}
	return count
}
