package main

//go:export f_gold
func f_gold(n int) int {
	if n == 0 || n == 1 {
		return n
	}
	var f1 int = 0
	var f2 int = 1
	var f3 int = 1
	for f3 <= n {
		f1 = f2
		f2 = f3
		f3 = f1 + f2
	}
	return f2
}
