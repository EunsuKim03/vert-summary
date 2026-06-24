package main

//go:export f_gold
func f_gold(a int, b int) int {
	return (a / 2) + b/2 + (a%2+b%2)/2
}
