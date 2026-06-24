package main

//go:export f_gold
func f_gold(n int) int {
	var sum int = 0
	for i := int(1); i <= n; i++ {
		sum = sum + (i*2-1)*(i*2-1)
	}
	return sum
}
