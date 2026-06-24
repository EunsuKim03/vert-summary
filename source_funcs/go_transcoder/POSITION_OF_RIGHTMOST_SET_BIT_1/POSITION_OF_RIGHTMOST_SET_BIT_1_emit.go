package main

//go:export f_gold
func f_gold(n int) int {
	var (
		position int = 1
		m        int = 1
	)
	for (n & m) == 0 {
		m = m << 1
		position++
	}
	return position
}
