package main

//go:export f_gold
func f_gold(num int, divisor int) int {
	for num >= divisor {
		num -= divisor
	}
	return num
}
