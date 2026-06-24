package main

func f_gold(a int, b int, c int, d int) bool {
	var sum int = a*a + b*b + c*c
	if d*d == sum {
		return true
	} else {
		return false
	}
}
