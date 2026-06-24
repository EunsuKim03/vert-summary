package main

import "math"

func f_gold(num int) bool {
	if num/10 == 0 {
		return true
	}
	for num != 0 {
		if num/10 == 0 {
			return true
		}
		var digit1 int = num % 10
		var digit2 int = (num / 10) % 10
		if math.Abs(float64(digit2-digit1)) > 1 {
			return false
		}
		num = num / 10
	}
	return true
}
