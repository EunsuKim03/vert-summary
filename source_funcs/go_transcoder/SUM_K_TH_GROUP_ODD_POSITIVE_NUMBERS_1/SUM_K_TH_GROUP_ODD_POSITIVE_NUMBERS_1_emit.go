package main

//go:export f_gold
func f_gold(k int) int {
	return k * k * k
}
