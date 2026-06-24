package main

func f_gold(x int, y int, z int) int {
	var c int = 0
	for x != 0 && y != 0 && z != 0 {
		x--
		y--
		z--
		c++
	}
	return c
}
