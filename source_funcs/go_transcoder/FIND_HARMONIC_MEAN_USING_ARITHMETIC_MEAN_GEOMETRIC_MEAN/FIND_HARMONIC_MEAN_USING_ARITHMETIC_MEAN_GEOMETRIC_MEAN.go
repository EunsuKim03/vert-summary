package main

import "math"

func f_gold(a int, b int) float64 {
	var (
		AM float64
		GM float64
		HM float64
	)
	AM = float64((a + b) / 2)
	GM = math.Sqrt(float64(a * b))
	HM = (GM * GM) / AM
	return HM
}
