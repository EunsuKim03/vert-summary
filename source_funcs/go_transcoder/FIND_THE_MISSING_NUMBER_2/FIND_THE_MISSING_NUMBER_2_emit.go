package main

//go:export f_gold
func f_gold(a []int, n int) int {
	var (
		x1 int = a[0]
		x2 int = 1
	)
	for i := int(1); i < n; i++ {
		x1 = x1 ^ a[i]
	}
	for i := int(2); i <= n+1; i++ {
		x2 = x2 ^ i
	}
	return x1 ^ x2
}
