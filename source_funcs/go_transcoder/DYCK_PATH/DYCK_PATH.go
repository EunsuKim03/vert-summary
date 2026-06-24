package main

func f_gold(n uint) int {
	var res int = 1
	for i := int(0); i < int(n); i++ {
		res *= int(n*2 - uint(i))
		res /= i + 1
	}
	return res / int(n+1)
}
