package main

import "sort"

func min(x int, y int) int {
	if x < y {
		return x
	}
	return y
}

func max(x int, y int) int {
	if x > y {
		return x
	}
	return y
}

func f_gold(arr []int, n int) int {
	sort.Ints(arr)
	var count int = 0
	var max_count int = 0
	var min_count int = n
	for i := int(0); i < (n - 1); i++ {
		if arr[i] == arr[i+1] {
			count += 1
			continue
		} else {
			max_count = max(max_count, count)
			min_count = min(min_count, count)
			count = 0
		}
	}
	return max_count - min_count
}
