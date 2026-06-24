package main

//go:export f_gold
func f_gold(n uint) uint {
	var p uint = 1
	if n != 0 && (n&(n-1)) == 0 {
		return n
	}
	for p < n {
		p <<= 1
	}
	return p
}
