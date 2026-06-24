package main

//go:export f_gold
func f_gold(n uint) bool {
	var parity bool = false
	for n != 0 {
		parity = !parity
		n = n & (n - 1)
	}
	return parity
}
