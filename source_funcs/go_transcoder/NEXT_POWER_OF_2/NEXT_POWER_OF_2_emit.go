package main

//go:export f_gold
func f_gold(n uint) uint {
	var count uint = 0
	if n != 0 && (n&(n-1)) == 0 {
		return n
	}
	for n != 0 {
		n >>= 1
		count += 1
	}
	return 1 << count
}
