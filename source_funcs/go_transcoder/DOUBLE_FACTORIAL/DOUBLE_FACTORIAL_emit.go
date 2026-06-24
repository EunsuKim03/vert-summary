package main

//go:export f_gold
func f_gold(n uint) uint {
	if n == 0 || n == 1 {
		return 1
	}
	return n * f_gold(n-2)
}
