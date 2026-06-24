package main

//go:export f_gold
func f_gold(arr []int, low int, high int) int {
	if low > high {
		return -1
	}
	var mid int = (low + high) / 2
	if arr[mid] != mid+1 {
		if mid > 0 && arr[mid] == arr[mid-1] {
			return mid
		}
		return f_gold(arr, low, mid-1)
	}
	return f_gold(arr, mid+1, high)
}
