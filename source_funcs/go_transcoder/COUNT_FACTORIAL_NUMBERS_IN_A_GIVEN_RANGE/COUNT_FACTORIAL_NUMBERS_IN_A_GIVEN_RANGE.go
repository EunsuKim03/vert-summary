package main

func f_gold(low int, high int) int {
	var (
		fact int = 1
		x    int = 1
	)
	for fact < low {
		fact = fact * x
		x++
	}
	var res int = 0
	for fact <= high {
		res++
		fact = fact * x
		x++
	}
	return res
}
