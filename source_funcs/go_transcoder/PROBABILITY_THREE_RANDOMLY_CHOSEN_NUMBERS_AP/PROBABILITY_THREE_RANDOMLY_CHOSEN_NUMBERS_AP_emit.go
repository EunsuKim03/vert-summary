package main

//go:export f_gold
func f_gold(n int) float64 {
	return (float64(n) * 3.0) / (float64(n*n)*4.0 - 1)
}
