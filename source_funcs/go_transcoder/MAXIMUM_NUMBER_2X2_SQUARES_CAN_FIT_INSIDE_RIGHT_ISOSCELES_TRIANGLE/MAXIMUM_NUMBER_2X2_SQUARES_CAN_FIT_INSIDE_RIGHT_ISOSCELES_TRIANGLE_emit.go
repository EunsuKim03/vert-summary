package main

//go:export f_gold
func f_gold(base int) int {
	base = base - 2
	base = base / 2
	return base * (base + 1) / 2
}
