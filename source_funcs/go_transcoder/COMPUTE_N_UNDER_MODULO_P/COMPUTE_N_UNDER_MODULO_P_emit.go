package main

//go:export f_gold
func f_gold(n int, p int) int {
	if n >= p {
		return 0
	}
	var result int = 1
	for i := int(1); i <= n; i++ {
		result = (result * i) % p
	}
	return result
}
