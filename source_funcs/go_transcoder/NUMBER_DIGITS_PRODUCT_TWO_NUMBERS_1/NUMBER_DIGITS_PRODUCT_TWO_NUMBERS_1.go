package main

import "math"

func f_gold(a int, b int) int {
	if a == 0 || b == 0 {
		return 1
	}
	return int(math.Floor(math.Log10(float64(math.Abs(float64(a))))+math.Log10(float64(math.Abs(float64(b))))) + 1)
}
