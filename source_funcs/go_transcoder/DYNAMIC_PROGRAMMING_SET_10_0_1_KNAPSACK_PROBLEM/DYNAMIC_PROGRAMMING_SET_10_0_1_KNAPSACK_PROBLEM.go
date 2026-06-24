package main

func max(x int, y int) int {
	if x > y {
		return x
	}
	return y
}

func f_gold(W int, wt []int, val []int, n int) int {
	if n == 0 || W == 0 {
		return 0
	}
	if wt[n-1] > W {
		return f_gold(W, wt, val, n-1)
	} else {
		return max(val[n-1]+f_gold(W-wt[n-1], wt, val, n-1), f_gold(W, wt, val, n-1))
	}
}
