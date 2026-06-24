package main

import "math"

//go:export f_gold
func f_gold(n int) int {
	var res int = 1
	for i := int(2); float64(i) <= math.Sqrt(float64(n)); i++ {
		var (
			curr_sum  int = 1
			curr_term int = 1
		)
		for n%i == 0 {
			n = n / i
			curr_term *= i
			curr_sum += curr_term
		}
		res *= curr_sum
	}
	if n >= 2 {
		res *= n + 1
	}
	return res
}
