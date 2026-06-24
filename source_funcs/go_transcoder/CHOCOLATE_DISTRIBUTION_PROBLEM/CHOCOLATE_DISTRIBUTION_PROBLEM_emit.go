package main

import (
	"math"
	"sort"
)

//go:export f_gold
func f_gold(arr []int, n int, m int) int {
	if m == 0 || n == 0 {
		return 0
	}
	sort.Ints(arr)
	if n < m {
		return -1
	}
	var min_diff int = math.MaxInt64
	var first int = 0
	var last int = 0
	for i := int(0); i+m-1 < n; i++ {
		var diff int = arr[i+m-1] - arr[i]
		if diff < min_diff {
			min_diff = diff
			first = i
			last = i + m - 1
		}
	}
	return arr[last] - arr[first]
}
