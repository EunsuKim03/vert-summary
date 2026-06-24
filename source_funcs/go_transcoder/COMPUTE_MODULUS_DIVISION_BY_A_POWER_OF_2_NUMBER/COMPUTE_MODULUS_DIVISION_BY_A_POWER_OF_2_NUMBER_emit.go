package main

//go:export f_gold
func f_gold(n uint, d uint) uint {
	return n & (d - 1)
}
