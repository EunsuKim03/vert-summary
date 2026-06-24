package main

func f_gold(n int, k int) int {
	if k <= 0 {
		return n
	}
	return n & ^(1 << (k - 1))
}
