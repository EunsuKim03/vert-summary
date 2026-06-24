package main

//go:export f_gold
func f_gold(b int, m int) int {
	return (b/m - 1) * (b / m) / 2
}
