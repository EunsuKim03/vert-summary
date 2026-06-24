package main

//go:export f_gold
func f_gold(a int, b int, c int) int {
	var (
		x int = a - b
		y int = b - c
		z int = a - c
	)
	if x*y > 0 {
		return b
	} else if x*z > 0 {
		return c
	} else {
		return a
	}
}
