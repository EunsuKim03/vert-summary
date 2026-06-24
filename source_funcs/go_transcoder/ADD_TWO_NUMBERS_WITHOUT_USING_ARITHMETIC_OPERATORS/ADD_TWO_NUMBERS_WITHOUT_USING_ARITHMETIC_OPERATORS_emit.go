package main

//go:export f_gold
func f_gold(x int, y int) int {
	for y != 0 {
		var carry int = x & y
		x = x ^ y
		y = carry << 1
	}
	return x
}
