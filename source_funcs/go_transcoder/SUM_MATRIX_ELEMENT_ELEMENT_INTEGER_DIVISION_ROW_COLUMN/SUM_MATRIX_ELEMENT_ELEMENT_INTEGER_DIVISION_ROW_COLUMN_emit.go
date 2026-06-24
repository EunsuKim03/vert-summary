package main

//go:export f_gold
func f_gold(n int) int {
	var ans int = 0
	for i := int(1); i <= n; i++ {
		for j := int(1); j <= n; j++ {
			ans += i / j
		}
	}
	return ans
}
