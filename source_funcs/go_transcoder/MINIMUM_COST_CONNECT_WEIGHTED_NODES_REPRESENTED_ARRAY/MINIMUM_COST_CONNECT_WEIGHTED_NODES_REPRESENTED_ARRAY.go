package main

import "math"

func min(x int, y int) int {
	if x < y {
		return x
	}
	return y
}

func f_gold(a []int, n int) int {
	var (
		mn  int = math.MaxInt64
		sum int = 0
	)
	for i := int(0); i < n; i++ {
		mn = min(a[i], mn)
		sum += a[i]
	}
	return mn * (sum - mn)
}
