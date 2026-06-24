package main

//go:export f_gold
func f_gold(arr1 []int, arr2 []int, n int) int {
	var (
		index int = n
		left  int = 0
		right int = n - 1
	)
	for left <= right {
		var mid int = (left + right) / 2
		if arr2[mid] == arr1[mid] {
			left = mid + 1
		} else {
			index = mid
			right = mid - 1
		}
	}
	return index
}
