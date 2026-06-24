package main

func f_gold(m int, n int) int {
	if m < n {
		return 0
	}
	if n == 0 {
		return 1
	}
	return f_gold(m-1, n) + f_gold(m/2, n-1)
}
