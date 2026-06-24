package main

func f_gold(n uint) uint {
	var (
		res int = 1
		i   int
	)
	for i = 2; i <= int(n); i++ {
		res *= i
	}
	return uint(res)
}
