package main

import "math"

//go:export f_gold
func f_gold(p float64) int {
	return int(math.Ceil(math.Sqrt(math.Log(1/(1-p)) * (2 * 365))))
}
