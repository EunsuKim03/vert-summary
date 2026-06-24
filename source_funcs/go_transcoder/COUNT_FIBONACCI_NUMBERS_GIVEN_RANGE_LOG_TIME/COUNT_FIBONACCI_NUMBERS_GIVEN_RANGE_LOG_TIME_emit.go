package main

//go:export f_gold
func f_gold(low int, high int) int {
	var (
		f1     int = 0
		f2     int = 1
		f3     int = 1
		result int = 0
	)
	for f1 <= high {
		if f1 >= low {
			result++
		}
		f1 = f2
		f2 = f3
		f3 = f1 + f2
	}
	return result
}
