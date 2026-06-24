package main

//go:export f_gold
func f_gold(n int) int {
	return (n*3*n - n) / 2
}
