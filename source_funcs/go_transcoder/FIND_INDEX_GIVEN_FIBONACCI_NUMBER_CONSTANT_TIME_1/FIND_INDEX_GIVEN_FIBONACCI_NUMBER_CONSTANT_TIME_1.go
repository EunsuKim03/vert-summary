package main

import "math"

func f_gold(n int) int {
	var fibo float32 = float32(math.Log(float64(n))*2.078087 + 1.672276)
	return int(math.Round(float64(fibo)))
}
