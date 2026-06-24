package main

//go:export f_gold
func f_gold(n int) float64 {
	return float64(n * (n + 1) * (n + 2) * (n*3 + 1) / 24)
}
