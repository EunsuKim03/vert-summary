package main

//go:export f_gold
func f_gold(m int, n int) int {
	var path int = 1
	for i := int(n); i < (m + n - 1); i++ {
		path *= i
		path /= i - n + 1
	}
	return path
}
