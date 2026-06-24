package main

//go:export f_gold
func f_gold(side int) int {
	var area int = side * side
	return area
}
