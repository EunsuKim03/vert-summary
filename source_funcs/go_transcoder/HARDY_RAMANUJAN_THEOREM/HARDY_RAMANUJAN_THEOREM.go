package main

import "math"

func f_gold(n int) int {
	var count int = 0
	if n%2 == 0 {
		count++
		for n%2 == 0 {
			n = n / 2
		}
	}
	for i := int(3); float64(i) <= math.Sqrt(float64(n)); i = i + 2 {
		if n%i == 0 {
			count++
			for n%i == 0 {
				n = n / i
			}
		}
	}
	if n > 2 {
		count++
	}
	return count
}
