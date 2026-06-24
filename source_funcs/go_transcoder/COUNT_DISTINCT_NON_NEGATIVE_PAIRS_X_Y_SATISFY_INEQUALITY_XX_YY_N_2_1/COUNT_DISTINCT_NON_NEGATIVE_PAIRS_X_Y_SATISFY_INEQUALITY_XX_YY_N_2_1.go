package main

func f_gold(n int) int {
	var (
		x      int = 0
		yCount int
		res    int = 0
	)
	for yCount = 0; yCount*yCount < n; yCount++ {
	}
	for yCount != 0 {
		res += yCount
		x++
		for yCount != 0 && x*x+(yCount-1)*(yCount-1) >= n {
			yCount--
		}
	}
	return res
}
