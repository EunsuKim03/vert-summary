package main

func f_gold(s int) int {
	var length int = s / 3
	s -= length
	var breadth int = s / 2
	var height int = s - breadth
	return length * breadth * height
}
