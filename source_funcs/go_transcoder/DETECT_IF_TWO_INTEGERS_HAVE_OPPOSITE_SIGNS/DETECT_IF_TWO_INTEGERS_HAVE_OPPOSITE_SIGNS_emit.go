package main

//go:export f_gold
func f_gold(x int, y int) bool {
	return (x ^ y) < 0
}
