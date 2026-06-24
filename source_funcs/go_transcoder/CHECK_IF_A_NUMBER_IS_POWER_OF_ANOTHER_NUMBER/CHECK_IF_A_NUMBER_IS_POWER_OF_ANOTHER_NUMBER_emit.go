package main

//go:export f_gold
func f_gold(x int, y int) bool {
	if x == 1 {
		return y == 1
	}
	var pow int = 1
	for pow < y {
		pow *= x
	}
	return pow == y
}
