package main

//go:export f_gold
func f_gold(n int) int {
	var sum int = 0
	for i := int(0); i < n; i++ {
		sum += i * (n - i)
	}
	return sum * 2
}
