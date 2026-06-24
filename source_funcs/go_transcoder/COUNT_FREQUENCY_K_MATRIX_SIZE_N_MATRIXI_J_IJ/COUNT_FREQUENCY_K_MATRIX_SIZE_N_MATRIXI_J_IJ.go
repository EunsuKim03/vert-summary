package main

func f_gold(n int, k int) int {
	if n+1 >= k {
		return k - 1
	} else {
		return n*2 + 1 - k
	}
}
