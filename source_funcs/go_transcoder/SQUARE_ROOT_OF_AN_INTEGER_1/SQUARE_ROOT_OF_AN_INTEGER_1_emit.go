package main

//go:export f_gold
func f_gold(x int) int {
	if x == 0 || x == 1 {
		return x
	}
	var start int = 1
	var end int = x
	var ans int
	for start <= end {
		var mid int = (start + end) / 2
		if mid*mid == x {
			return mid
		}
		if mid*mid < x {
			start = mid + 1
			ans = mid
		} else {
			end = mid - 1
		}
	}
	return ans
}
