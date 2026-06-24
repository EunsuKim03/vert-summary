package main

import "math"

func f_gold(r int) int {
	if r <= 0 {
		return 0
	}
	var result int = 4
	for x := int(1); x < r; x++ {
		var (
			ySquare int = r*r - x*x
			y       int = int(math.Sqrt(float64(ySquare)))
		)
		if y*y == ySquare {
			result += 4
		}
	}
	return result
}
