package main

//go:export f_gold
func f_gold(a float64, b float64) bool {
	if a == 0 || b == 0 {
		return false
	}
	var result float64 = a * b
	if a == result/b {
		return false
	} else {
		return true
	}
}
