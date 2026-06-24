package main

//go:export f_gold
func f_gold(n uint) int {
	return int(n & (n - 1))
}
