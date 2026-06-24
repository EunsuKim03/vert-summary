package main

//go:export f_gold
func f_gold(l int, w int) int {
	return (l + w) * 2
}
