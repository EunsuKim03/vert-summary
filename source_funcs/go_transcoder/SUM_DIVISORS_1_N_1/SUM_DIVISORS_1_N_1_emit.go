package main

//go:export f_gold
func f_gold(n int) int {
	var sum int = 0
	for i := int(1); i <= n; i++ {
		sum += (n / i) * i
	}
	return sum
}
