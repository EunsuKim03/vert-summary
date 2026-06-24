package main

//go:export f_gold
func f_gold(n int) bool {
	return n%15 == 0
}
