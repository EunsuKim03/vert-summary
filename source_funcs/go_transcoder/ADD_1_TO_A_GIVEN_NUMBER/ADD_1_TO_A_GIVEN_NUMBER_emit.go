package main

//go:export f_gold
func f_gold(x int) int {
	var m int = 1
	for x&m != 0 {
		x = x ^ m
		m <<= 1
	}
	x = x ^ m
	return x
}
