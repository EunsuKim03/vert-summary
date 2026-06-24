package main

import "math"

func f_gold(n int) int {
	var (
		count int = 0
		ans   int = 1
	)
	for n%2 == 0 {
		count++
		n /= 2
	}
	if count%2 != 0 {
		ans *= 2
	}
	for i := int(3); float64(i) <= math.Sqrt(float64(n)); i += 2 {
		count = 0
		for n%i == 0 {
			count++
			n /= i
		}
		if count%2 != 0 {
			ans *= i
		}
	}
	if n > 2 {
		ans *= n
	}
	return ans
}
