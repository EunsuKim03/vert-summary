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

func f_gold(arr []int, N int, K int) int {
	sort.Ints(arr)
	var res int = math.MaxInt64
	for i := int(0); i <= (N - K); i++ {
		var curSeqDiff int = arr[i+K-1] - arr[i]
		res = min(res, curSeqDiff)
	}
	return res
}
