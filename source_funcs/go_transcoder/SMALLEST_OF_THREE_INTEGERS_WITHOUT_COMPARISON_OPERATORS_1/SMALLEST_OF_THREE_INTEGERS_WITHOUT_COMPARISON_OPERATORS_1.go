package main

func f_gold(x int, y int, z int) int {
	if (y / x) == 0 {
		if (y / z) == 0 {
			return y
		}
		return z
	}
	if (x / z) == 0 {
		return x
	}
	return z
}
