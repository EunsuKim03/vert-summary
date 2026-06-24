package main

func f_gold(x int, y int) int {
	var res int = 1
	for i := int(0); i < y; i++ {
		res = (res * x) % 10
	}
	return res
}
