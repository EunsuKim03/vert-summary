package main

import (
	"math"
	"sort"
)

//go:export f_gold
func f_gold(A []int, B []int, m int, n int) int {
	sort.Ints(A)
	sort.Ints(B)
	var a int = 0
	var b int = 0
	var result int = math.MaxInt64
	for a < m && b < n {
		if math.Abs(float64(A[a]-B[b])) < float64(result) {
			result = int(math.Abs(float64(A[a] - B[b])))
		}
		if A[a] < B[b] {
			a++
		} else {
			b++
		}
	}
	return result
}
