package main

import "math"

//go:export f_gold
func f_gold(n int) int {
	var (
		nthElement    int = (n-1)*9 + 19
		outliersCount int = int(math.Log10(float64(nthElement))) - 1
	)
	nthElement += outliersCount * 9
	return nthElement
}
