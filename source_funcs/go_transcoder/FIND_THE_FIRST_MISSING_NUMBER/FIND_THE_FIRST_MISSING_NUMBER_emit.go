package main

//go:export f_gold
func f_gold(array []int, start int, end int) int {
	if start > end {
		return end + 1
	}
	if start != array[start] {
		return start
	}
	var mid int = (start + end) / 2
	if array[mid] == mid {
		return f_gold(array, mid+1, end)
	}
	return f_gold(array, start, mid)
}
