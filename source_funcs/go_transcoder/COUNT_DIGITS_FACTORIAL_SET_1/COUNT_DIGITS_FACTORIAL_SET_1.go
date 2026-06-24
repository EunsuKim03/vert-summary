package main

import "math"

func f_gold(n int) int {
	if n < 0 {
		return 0
	}
	if n <= 1 {
		return 1
	}
	var digits float64 = 0
	for i := int(2); i <= n; i++ {
		digits += math.Log10(float64(i))
	}
	return int(math.Floor(digits) + 1)
}
