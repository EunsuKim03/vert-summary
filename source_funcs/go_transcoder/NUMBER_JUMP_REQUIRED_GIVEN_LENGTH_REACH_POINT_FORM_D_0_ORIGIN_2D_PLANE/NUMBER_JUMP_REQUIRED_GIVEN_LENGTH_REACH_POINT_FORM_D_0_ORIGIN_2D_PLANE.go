package main

func min(x int, y int) int {
	if x < y {
		return x
	}
	return y
}

func max(x int, y int) int {
	if x > y {
		return x
	}
	return y
}

func f_gold(a int, b int, d int) int {
	var temp int = a
	a = min(a, b)
	b = max(temp, b)
	if d >= b {
		return (d + b - 1) / b
	}
	if d == 0 {
		return 0
	}
	if d == a {
		return 1
	}
	return 2
}
