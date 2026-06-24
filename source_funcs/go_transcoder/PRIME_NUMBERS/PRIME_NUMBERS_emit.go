package main

//go:export f_gold
func f_gold(n int) bool {
	if n <= 1 {
		return false
	}
	for i := int(2); i < n; i++ {
		if n%i == 0 {
			return false
		}
	}
	return true
}
