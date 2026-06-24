package main

import "sort"

func f_gold(arr []int, n int) int {
	sort.Ints(arr)
	return arr[n-1] + arr[n-2] + arr[n-3]
}
