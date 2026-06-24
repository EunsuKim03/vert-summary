package main

import (
	"math"
	"sort"
)

func f_gold(arr []int, n int) int {
	sort.Ints(arr)
	var diff int = math.MaxInt64
	for i := int(0); i < n-1; i++ {
		if arr[i+1]-arr[i] < diff {
			diff = arr[i+1] - arr[i]
		}
	}
	return diff
}
