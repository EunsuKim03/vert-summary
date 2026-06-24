package main

//go:export f_gold
func f_gold(n int) int {
	if n == 1 || n == 0 {
		return 1
	}
	return n * f_gold(n-1)
}
