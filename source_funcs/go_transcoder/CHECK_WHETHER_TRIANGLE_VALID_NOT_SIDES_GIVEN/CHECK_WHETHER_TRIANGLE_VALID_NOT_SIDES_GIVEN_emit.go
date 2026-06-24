package main

//go:export f_gold
func f_gold(a int, b int, c int) bool {
	if a+b <= c || a+c <= b || b+c <= a {
		return false
	} else {
		return true
	}
}
