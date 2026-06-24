package main

import "sort"

//go:export f_gold
func f_gold(arr []int, n int) int {
	var count int = 0
	sort.Ints(arr)
	for i := int(0); i < n-1; i++ {
		if arr[i] != arr[i+1] && arr[i] != arr[i+1]-1 {
			count += arr[i+1] - arr[i] - 1
		}
	}
	return count
}
