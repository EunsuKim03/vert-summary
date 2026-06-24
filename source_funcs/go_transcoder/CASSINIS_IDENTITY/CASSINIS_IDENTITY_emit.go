package main

//go:export f_gold
func f_gold(n int) int {
	if (n & 1) != 0 {
		return -1
	}
	return 1
}
