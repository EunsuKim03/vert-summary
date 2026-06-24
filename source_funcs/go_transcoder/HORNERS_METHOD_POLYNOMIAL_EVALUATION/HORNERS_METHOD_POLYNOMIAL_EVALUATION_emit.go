package main

//go:export f_gold
func f_gold(poly []int, n int, x int) int {
	var result int = poly[0]
	for i := int(1); i < n; i++ {
		result = result*x + poly[i]
	}
	return result
}
