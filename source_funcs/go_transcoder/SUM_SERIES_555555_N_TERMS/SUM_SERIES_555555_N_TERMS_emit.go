package main

import "math"

//go:export f_gold
func f_gold(n int) int {
	return int((math.Pow(10, float64(n))-1)*0.6172 - float64(n)*0.55)
}
