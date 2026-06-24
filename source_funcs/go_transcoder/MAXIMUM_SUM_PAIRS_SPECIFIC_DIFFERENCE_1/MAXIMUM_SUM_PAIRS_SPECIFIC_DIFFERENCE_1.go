package main

import "sort"

func f_gold(arr []int, N int, k int) int {
	var maxSum int = 0
	sort.Ints(arr)
	for i := int(N - 1); i > 0; i-- {
		if arr[i]-arr[i-1] < k {
			maxSum += arr[i]
			maxSum += arr[i-1]
			i--
		}
	}
	return maxSum
}
