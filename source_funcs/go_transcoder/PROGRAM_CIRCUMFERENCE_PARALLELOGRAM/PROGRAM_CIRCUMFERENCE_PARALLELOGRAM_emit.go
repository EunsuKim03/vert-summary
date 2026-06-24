package main

//go:export f_gold
func f_gold(a float32, b float32) float32 {
	return (a * 2) + b*2
}
