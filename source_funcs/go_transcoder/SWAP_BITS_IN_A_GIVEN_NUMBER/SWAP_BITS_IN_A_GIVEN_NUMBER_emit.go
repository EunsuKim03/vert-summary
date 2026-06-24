package main

//go:export f_gold
func f_gold(x uint, p1 uint, p2 uint, n uint) int {
	var (
		set1 uint = (x >> p1) & ((1 << n) - 1)
		set2 uint = (x >> p2) & ((1 << n) - 1)
		Xor  uint = (set1 ^ set2)
	)
	Xor = (Xor << p1) | Xor<<p2
	var result uint = x ^ Xor
	return int(result)
}
