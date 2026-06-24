package main

import "math"

func f_gold(x int) bool {
	var (
		temp int = x
		n    int = 0
	)
	for x != 0 {
		x /= 10
		n++
	}
	x = temp
	var sum int = 0
	for x != 0 {
		sum += int(math.Pow(float64(x%10), float64(n)))
		x /= 10
	}
	return sum == temp
}
