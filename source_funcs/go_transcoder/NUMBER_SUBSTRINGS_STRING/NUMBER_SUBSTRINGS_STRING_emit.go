package main

//go:export f_gold
func f_gold(str []byte) int {
	var n int = int(len(str))
	return n * (n + 1) / 2
}
