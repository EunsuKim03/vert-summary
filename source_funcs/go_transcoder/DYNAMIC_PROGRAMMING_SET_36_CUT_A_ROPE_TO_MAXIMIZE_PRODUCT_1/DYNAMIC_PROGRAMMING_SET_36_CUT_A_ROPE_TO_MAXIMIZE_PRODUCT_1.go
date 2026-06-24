package main

func f_gold(n int) int {
	if n == 2 || n == 3 {
		return n - 1
	}
	var res int = 1
	for n > 4 {
		n -= 3
		res *= 3
	}
	return n * res
}
