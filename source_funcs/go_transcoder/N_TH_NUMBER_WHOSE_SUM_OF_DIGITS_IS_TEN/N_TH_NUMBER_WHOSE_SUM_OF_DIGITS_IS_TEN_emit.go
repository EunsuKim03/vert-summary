package main

//go:export f_gold
func f_gold(n int) int {
	var count int = 0
	for curr := int(1); ; curr++ {
		var sum int = 0
		for x := int(curr); x > 0; x = x / 10 {
			sum = sum + x%10
		}
		if sum == 10 {
			count++
		}
		if count == n {
			return curr
		}
	}
	return -1
}
