package main

import "sort"

//go:export f_gold
func f_gold(arr []int, n int) int {
	var sum int = 0
	sort.Ints(arr)
	for i := int(0); i < n/2; i++ {
		sum -= arr[i] * 2
		sum += arr[n-i-1] * 2
	}
	return sum
}
