package main

//go:export f_gold
func f_gold(N int, K int) int {
	var ans int = 0
	for i := int(1); i <= N; i++ {
		ans += i % K
	}
	return ans
}
