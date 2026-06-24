package main

//go:export f_gold
func f_gold(n int) int {
	var (
		num       int = n
		dec_value int = 0
		base      int = 1
		temp      int = num
	)
	for temp != 0 {
		var last_digit int = temp % 10
		temp = temp / 10
		dec_value += last_digit * base
		base = base * 8
	}
	return dec_value
}
