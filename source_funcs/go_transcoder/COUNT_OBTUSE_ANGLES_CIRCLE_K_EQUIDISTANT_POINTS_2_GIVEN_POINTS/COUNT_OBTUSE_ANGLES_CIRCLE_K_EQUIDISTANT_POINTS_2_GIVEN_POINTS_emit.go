package main

func min(x int, y int) int {
	if x < y {
		return x
	}
	return y
}

//go:export f_gold
func f_gold(a int, b int, k int) int {
	var (
		c1 int = (b - a) - 1
		c2 int = (k - b) + (a - 1)
	)
	if c1 == c2 {
		return 0
	}
	return min(c1, c2)
}
