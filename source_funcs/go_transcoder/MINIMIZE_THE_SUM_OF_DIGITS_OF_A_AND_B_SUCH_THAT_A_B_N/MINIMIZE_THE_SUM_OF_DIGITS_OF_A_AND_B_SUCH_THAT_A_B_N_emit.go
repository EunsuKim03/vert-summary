package main

//go:export f_gold
func f_gold(n int) int {
	var sum int = 0
	for n > 0 {
		sum += n % 10
		n /= 10
	}
	if sum == 1 {
		return 10
	}
	return sum
}
