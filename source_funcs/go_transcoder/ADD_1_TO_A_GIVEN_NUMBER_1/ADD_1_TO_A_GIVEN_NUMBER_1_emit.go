package main

//go:export f_gold
func f_gold(x int) int {
	return -^x
}
