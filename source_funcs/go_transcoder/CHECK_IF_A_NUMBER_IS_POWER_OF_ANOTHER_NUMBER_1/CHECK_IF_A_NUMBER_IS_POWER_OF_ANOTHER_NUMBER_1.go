package main

import "math"

func f_gold(x int, y int) bool {
	var (
		res1 int     = int(math.Log(float64(y)) / math.Log(float64(x)))
		res2 float64 = math.Log(float64(y)) / math.Log(float64(x))
	)
	return float64(res1) == res2
}
