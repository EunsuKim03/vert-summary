package main

import "math"

func f_gold(n int) int {
	var ans int = 0
	for length := int(1); float64(length) <= math.Sqrt(float64(n)); length++ {
		for height := int(length); height*length <= n; height++ {
			ans++
		}
	}
	return ans
}
