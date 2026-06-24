package main

import "math"

func f_gold(n int) int {
	var result int = 0
	for i := int(2); float64(i) <= math.Sqrt(float64(n)); i++ {
		if n%i == 0 {
			if i == (n / i) {
				result += i
			} else {
				result += i + n/i
			}
		}
	}
	return result + n + 1
}
