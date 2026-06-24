package main

func f_gold(n int) int {
	if n == 0 {
		return 0
	} else {
		return (n & 1) + f_gold(n>>1)
	}
}
