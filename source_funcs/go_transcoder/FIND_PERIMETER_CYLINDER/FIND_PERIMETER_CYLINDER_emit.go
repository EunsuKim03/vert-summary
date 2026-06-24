package main

//go:export f_gold
func f_gold(diameter int, height int) int {
	return (diameter + height) * 2
}
