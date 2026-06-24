package main

//go:export f_gold
func f_gold(l float32, b float32, h float32) float32 {
	var volume float32 = (l * b * h) / 2
	return volume
}
