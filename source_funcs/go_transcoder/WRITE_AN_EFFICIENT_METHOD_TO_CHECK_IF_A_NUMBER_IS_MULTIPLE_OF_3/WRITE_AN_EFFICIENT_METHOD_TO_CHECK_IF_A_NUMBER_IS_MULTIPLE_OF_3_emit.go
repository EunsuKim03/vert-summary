package main

import "math"

//go:export f_gold
func f_gold(n int) int {
	var (
		odd_count  int = 0
		even_count int = 0
	)
	if n < 0 {
		n = -n
	}
	if n == 0 {
		return 1
	}
	if n == 1 {
		return 0
	}
	for n != 0 {
		if n&1 != 0 {
			odd_count++
		}
		if n&2 != 0 {
			even_count++
		}
		n = n >> 2
	}
	return f_gold(int(math.Abs(float64(odd_count - even_count))))
}
