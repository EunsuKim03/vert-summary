package main

import "sort"

func f_gold(arr []int, n int) int {
	sort.Ints(arr)
	var sum int = 0
	for i := int(0); i < n; i++ {
		sum += arr[i] * i
	}
	return sum
}
