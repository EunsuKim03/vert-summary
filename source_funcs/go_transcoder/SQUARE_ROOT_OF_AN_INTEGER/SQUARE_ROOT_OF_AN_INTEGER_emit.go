package main

//go:export f_gold
func f_gold(x int) int {
	if x == 0 || x == 1 {
		return x
	}
	var i int = 1
	var result int = 1
	for result <= x {
		i++
		result = i * i
	}
	return i - 1
}
