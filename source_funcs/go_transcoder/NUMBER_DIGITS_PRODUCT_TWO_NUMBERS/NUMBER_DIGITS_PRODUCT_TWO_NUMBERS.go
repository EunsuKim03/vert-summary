package main

import "math"

func f_gold(a int, b int) int {
	var (
		count int = 0
		p     int = int(math.Abs(float64(a * b)))
	)
	if p == 0 {
		return 1
	}
	for p > 0 {
		count++
		p = p / 10
	}
	return count
}
