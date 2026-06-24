package main

//go:export f_gold
func f_gold(n int, p int) int {
	var (
		ans  int = 0
		temp int = p
	)
	for temp <= n {
		ans += n / temp
		temp = temp * p
	}
	return ans
}
