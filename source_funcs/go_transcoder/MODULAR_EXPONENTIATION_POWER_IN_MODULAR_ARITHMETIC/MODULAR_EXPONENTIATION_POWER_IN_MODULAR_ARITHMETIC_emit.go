package main

//go:export f_gold
func f_gold(x int, y uint, p int) int {
	var res int = 1
	x = x % p
	for y > 0 {
		if y&1 != 0 {
			res = (res * x) % p
		}
		y = y >> 1
		x = (x * x) % p
	}
	return res
}
