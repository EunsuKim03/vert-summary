package main

//go:export f_gold
func f_gold(n int) int {
	return (n * 2) + 1 + n*((n*n)-1)/2
}
