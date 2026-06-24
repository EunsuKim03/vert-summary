package main

import (
	"math"
	"sort"
)

func min(x int, y int) int {
	if x < y {
		return x
	}
	return y
}

func f_gold(arr []int, n int) int {
	sort.Ints(arr)
	var minXor int = math.MaxInt64
	var val int = 0
	for i := int(0); i < n-1; i++ {
		val = arr[i] ^ arr[i+1]
		minXor = min(minXor, val)
	}
	return minXor
}
