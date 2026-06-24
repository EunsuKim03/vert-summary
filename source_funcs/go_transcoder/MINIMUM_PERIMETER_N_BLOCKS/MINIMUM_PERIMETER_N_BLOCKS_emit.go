package main

import "math"

//go:export f_gold
func f_gold(n int) int {
	var (
		l  int = int(math.Sqrt(float64(n)))
		sq int = l * l
	)
	if sq == n {
		return l * 4
	} else {
		var (
			row       float64 = float64(n / l)
			perimeter float64 = float64((l + int(row)) * 2)
		)
		if n%l != 0 {
			perimeter += 2
		}
		return int(perimeter)
	}
}
