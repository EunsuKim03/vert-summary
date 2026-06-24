package main

func min(x int, y int) int {
	if x < y {
		return x
	}
	return y
}

func f_gold(arr []int, n int) int {
	if n <= 0 {
		return 0
	}
	var incl int = arr[0]
	var excl int = 0
	for i := int(1); i < n; i++ {
		var (
			incl_new int = arr[i] + min(excl, incl)
			excl_new int = incl
		)
		incl = incl_new
		excl = excl_new
	}
	return min(incl, excl)
}
