package main

func f_gold(n int) int {
	if n == 1 {
		return 2
	}
	return f_gold(n-1) * 2
}
