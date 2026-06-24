package main

//go:export f_gold
func f_gold(arr []int, l int, r int, x int) int {
	if r >= l {
		var mid int = l + (r-l)/2
		if arr[mid] == x {
			return mid
		}
		if arr[mid] > x {
			return f_gold(arr, l, mid-1, x)
		}
		return f_gold(arr, mid+1, r, x)
	}
	return -1
}
