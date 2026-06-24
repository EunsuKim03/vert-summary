package main

import "sort"

//go:export f_gold
func f_gold(A []int, B []int, n int) int {
	sort.Ints(A)
	sort.Ints(B)
	var result int = 0
	for i := int(0); i < n; i++ {
		result += A[i] * B[n-i-1]
	}
	return result
}
