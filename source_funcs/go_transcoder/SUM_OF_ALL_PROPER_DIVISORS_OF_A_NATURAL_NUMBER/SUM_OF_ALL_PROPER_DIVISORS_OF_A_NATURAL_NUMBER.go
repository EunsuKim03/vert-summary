package main

import "math"

func f_gold(num int) int {
	var result int = 0
	for i := int(2); float64(i) <= math.Sqrt(float64(num)); i++ {
		if num%i == 0 {
			if i == (num / i) {
				result += i
			} else {
				result += i + num/i
			}
		}
	}
	return result + 1
}
