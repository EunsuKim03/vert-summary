package main

//go:export f_gold
func f_gold(n int) int {
	var (
		a int = 1
		b int = 2
		c int = 0
	)
	if n <= 2 {
		return n
	}
	for i := int(3); i <= n; i++ {
		c = b + (i-1)*a
		a = b
		b = c
	}
	return c
}
