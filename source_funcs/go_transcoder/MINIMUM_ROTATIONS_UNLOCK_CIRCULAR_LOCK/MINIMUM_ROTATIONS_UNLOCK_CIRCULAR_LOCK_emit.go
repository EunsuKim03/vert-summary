package main

import "math"

func min(x int, y int) int {
	if x < y {
		return x
	}
	return y
}

//go:export f_gold
func f_gold(input int, unlock_code int) int {
	var (
		rotation    int = 0
		input_digit int
		code_digit  int
	)
	for input != 0 || unlock_code != 0 {
		input_digit = input % 10
		code_digit = unlock_code % 10
		rotation += min(int(math.Abs(float64(input_digit-code_digit))), int(10-math.Abs(float64(input_digit-code_digit))))
		input /= 10
		unlock_code /= 10
	}
	return rotation
}
