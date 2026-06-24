package main

import "math"

func f_gold(side float64) float64 {
	return (side * side * side) * (math.Sqrt(2) / 3)
}
