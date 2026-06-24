package main

import "math"

func min(x int, y int) int {
	if x < y {
		return x
	}
	return y
}

func f_gold(arr []int, n int) int {
	var (
		l   int = 0
		sum int = 0
		ans int = 360
	)
	for i := int(0); i < n; i++ {
		sum += arr[i]
		for sum >= 180 {
			ans = min(ans, int(math.Abs(float64(180-sum))*2))
			sum -= arr[l]
			l++
		}
		ans = min(ans, int(math.Abs(float64(180-sum))*2))
	}
	return ans
}
