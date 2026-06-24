package main

//go:export f_gold
func f_gold(num int, divisor int) int {
	return num - divisor*(num/divisor)
}
