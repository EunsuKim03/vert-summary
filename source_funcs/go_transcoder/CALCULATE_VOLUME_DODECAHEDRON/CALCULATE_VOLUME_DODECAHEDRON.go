package main

import "math"

func f_gold(side int) float64 {
	return (((math.Sqrt(5) * 7) + 15) / 4) * math.Pow(float64(side), 3)
}
