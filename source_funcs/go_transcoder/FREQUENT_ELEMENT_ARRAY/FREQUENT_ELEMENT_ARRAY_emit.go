package main

import "sort"

//go:export f_gold
func f_gold(arr []int, n int) int {
	sort.Ints(arr)
	var max_count int = 1
	var res int = arr[0]
	var curr_count int = 1
	for i := int(1); i < n; i++ {
		if arr[i] == arr[i-1] {
			curr_count++
		} else {
			if curr_count > max_count {
				max_count = curr_count
				res = arr[i-1]
			}
			curr_count = 1
		}
	}
	if curr_count > max_count {
		max_count = curr_count
		res = arr[n-1]
	}
	return res
}
