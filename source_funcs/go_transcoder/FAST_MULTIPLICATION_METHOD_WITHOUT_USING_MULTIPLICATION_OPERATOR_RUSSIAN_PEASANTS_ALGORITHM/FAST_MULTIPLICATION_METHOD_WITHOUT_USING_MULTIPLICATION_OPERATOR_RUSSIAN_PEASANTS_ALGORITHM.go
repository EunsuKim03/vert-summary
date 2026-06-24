package main

func f_gold(a uint, b uint) uint {
	var res int = 0
	for b > 0 {
		if b&1 != 0 {
			res = res + int(a)
		}
		a = a << 1
		b = b >> 1
	}
	return uint(res)
}
