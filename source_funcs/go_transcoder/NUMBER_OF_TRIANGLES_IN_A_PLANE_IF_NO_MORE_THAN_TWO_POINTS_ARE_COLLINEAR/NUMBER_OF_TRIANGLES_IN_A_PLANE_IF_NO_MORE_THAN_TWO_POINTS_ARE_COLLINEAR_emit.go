package main

//go:export f_gold
func f_gold(n int) int {
	return n * (n - 1) * (n - 2) / 6
}
