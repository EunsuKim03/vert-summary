package main

import "math"

func f_gold(a int) float32 {
	var area float32 = float32((math.Pi * float64(a) * float64(a)) / 4.0)
	return area
}
