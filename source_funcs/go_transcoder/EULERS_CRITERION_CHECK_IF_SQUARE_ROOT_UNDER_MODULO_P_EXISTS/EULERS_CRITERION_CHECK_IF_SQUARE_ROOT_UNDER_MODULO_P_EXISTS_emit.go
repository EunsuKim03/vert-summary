package main

//go:export f_gold
func f_gold(n int, p int) bool {
	n = n % p
	for x := int(2); x < p; x++ {
		if (x*x)%p == n {
			return true
		}
	}
	return false
}
