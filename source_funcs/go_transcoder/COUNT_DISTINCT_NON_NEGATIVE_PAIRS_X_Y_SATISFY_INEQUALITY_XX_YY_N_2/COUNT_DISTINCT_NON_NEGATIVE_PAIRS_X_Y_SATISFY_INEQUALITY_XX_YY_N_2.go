package main

func f_gold(n int) int {
	var res int = 0
	for x := int(0); x*x < n; x++ {
		for y := int(0); x*x+y*y < n; y++ {
			res++
		}
	}
	return res
}
