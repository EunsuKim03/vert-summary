package main

import "math"

func f_gold(a int, b int, k int) int {
	var (
		p     int = int(math.Pow(float64(a), float64(b)))
		count int = 0
	)
	for p > 0 && count < k {
		var rem int = p % 10
		count++
		if count == k {
			return rem
		}
		p = p / 10
	}
	return 0
}
