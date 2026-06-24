package main

//go:export f_gold
func f_gold(x1 float32, y1 float32, x2 float32, y2 float32) float32 {
	return (y2 - y1) / (x2 - x1)
}
