package main

import "sort"

func f_gold(arr []int, n int) int {
	sort.Ints(arr)
	var count int = 1
	for i := int(0); i < n-1; i++ {
		if arr[i]+1 != arr[i+1] {
			count++
		}
	}
	return count
}
