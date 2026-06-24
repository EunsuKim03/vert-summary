package main

//go:export f_gold
func f_gold(n int) int {
	var (
		nCr int = 1
		res int = 1
	)
	for r := int(1); r <= n; r++ {
		nCr = (nCr * (n + 1 - r)) / r
		res += nCr * nCr
	}
	return res
}
