package main

//go:export f_gold
func f_gold(n int, m int, k int) int {
	if m <= n-k+1 {
		return m + k - 1
	}
	m = m - (n - k + 1)
	if m%n == 0 {
		return n
	}
	return m % n
}
