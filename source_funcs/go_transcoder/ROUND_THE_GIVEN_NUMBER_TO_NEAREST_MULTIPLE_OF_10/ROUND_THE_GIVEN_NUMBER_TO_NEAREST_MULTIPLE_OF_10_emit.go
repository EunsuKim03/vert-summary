package main

//go:export f_gold
func f_gold(n int) int {
	var (
		a int = (n / 10) * 10
		b int = a + 10
	)
	if n-a > b-n {
		return b
	}
	return a
}
