package main

func max(x int, y int) int {
	if x > y {
		return x
	}
	return y
}

func f_gold(n int) int {
	if n == 0 || n == 1 {
		return n
	}
	return max(f_gold(n/2)+f_gold(n/3)+f_gold(n/4), n)
}
