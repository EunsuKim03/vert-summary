package main

import "math"

func f_gold(n int, k int) int {
	for n%2 == 0 {
		k--
		n = n / 2
		if k == 0 {
			return 2
		}
	}
	for i := int(3); float64(i) <= math.Sqrt(float64(n)); i = i + 2 {
		for n%i == 0 {
			if k == 1 {
				return i
			}
			k--
			n = n / i
		}
	}
	if n > 2 && k == 1 {
		return n
	}
	return -1
}
