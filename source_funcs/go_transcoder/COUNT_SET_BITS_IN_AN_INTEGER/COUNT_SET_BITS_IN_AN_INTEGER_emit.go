package main

//go:export f_gold
func f_gold(n uint) uint {
	var count uint = 0
	for n != 0 {
		count += n & 1
		n >>= 1
	}
	return count
}
