package main

func max(x int, y int) int {
	if x > y {
		return x
	}
	return y
}

//go:export f_gold
func f_gold(high []int, low []int, n int) int {
	if n <= 0 {
		return 0
	}
	return max(high[n-1]+f_gold(high, low, n-2), low[n-1]+f_gold(high, low, n-1))
}
