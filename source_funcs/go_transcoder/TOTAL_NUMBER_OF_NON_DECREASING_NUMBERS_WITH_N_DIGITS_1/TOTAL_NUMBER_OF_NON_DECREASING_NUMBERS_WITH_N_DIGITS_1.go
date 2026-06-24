package main

func f_gold(n int) float64 {
	var (
		N     int     = 10
		count float64 = 1
	)
	for i := int(1); i <= n; i++ {
		count *= float64(N + i - 1)
		count /= float64(i)
	}
	return count
}
