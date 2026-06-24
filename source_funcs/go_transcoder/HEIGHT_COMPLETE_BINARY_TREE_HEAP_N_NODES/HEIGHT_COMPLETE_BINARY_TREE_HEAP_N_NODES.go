package main

import "math"

func f_gold(N int) int {
	return int(math.Ceil(math.Log2(float64(N+1))) - 1)
}
