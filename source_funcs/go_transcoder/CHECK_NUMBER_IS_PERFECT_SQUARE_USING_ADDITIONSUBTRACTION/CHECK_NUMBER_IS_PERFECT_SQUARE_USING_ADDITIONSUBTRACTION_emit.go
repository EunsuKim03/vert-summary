package main

//go:export f_gold
func f_gold(n int) bool {
	for sum, i := int(0), int(1); sum < n; i += 2 {
		sum += i
		if sum == n {
			return true
		}
	}
	return false
}
