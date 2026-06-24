package main

func f_gold(n int) int {
	if n == 0 {
		return 0
	} else {
		return f_gold(n&(n-1)) + 1
	}
}
