package main

func f_gold(n int) int {
	if n <= 1 {
		return n
	}
	var a int = 0
	var b int = 1
	var c int = 1
	var res int = 1
	for c < n {
		c = a + b
		res++
		a = b
		b = c
	}
	return res
}
