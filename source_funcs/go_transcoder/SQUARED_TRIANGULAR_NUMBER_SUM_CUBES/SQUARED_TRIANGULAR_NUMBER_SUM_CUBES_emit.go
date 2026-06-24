package main

//go:export f_gold
func f_gold(s int) int {
	var sum int = 0
	for n := int(1); sum < s; n++ {
		sum += n * n * n
		if sum == s {
			return n
		}
	}
	return -1
}
