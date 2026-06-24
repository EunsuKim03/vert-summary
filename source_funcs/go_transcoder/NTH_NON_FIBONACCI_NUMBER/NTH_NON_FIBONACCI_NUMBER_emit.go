package main

//go:export f_gold
func f_gold(n int) int {
	var (
		prevPrev int = 1
		prev     int = 2
		curr     int = 3
	)
	for n > 0 {
		prevPrev = prev
		prev = curr
		curr = prevPrev + prev
		n = n - (curr - prev - 1)
	}
	n = n + (curr - prev - 1)
	return prev + n
}
