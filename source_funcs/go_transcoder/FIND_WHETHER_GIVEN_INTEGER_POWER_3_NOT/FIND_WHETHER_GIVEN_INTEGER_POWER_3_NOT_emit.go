package main

//go:export f_gold
func f_gold(n int) bool {
	return 0x4546B3DB%n == 0
}
