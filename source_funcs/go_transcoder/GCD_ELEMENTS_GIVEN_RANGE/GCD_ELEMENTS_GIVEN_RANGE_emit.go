package main

//go:export f_gold
func f_gold(n int, m int) int {
	if n == m {
		return n
	}
	return 1
}
