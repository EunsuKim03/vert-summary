package main

//go:export f_gold
func f_gold(N int, K int) int {
	var (
		ans int = 0
		y   int = N / K
		x   int = N % K
	)
	ans = (K*(K-1)/2)*y + (x*(x+1))/2
	return ans
}
