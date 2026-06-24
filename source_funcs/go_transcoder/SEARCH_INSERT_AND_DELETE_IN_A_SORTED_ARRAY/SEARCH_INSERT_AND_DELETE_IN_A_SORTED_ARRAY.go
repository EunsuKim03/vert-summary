package main

func f_gold(arr []int, low int, high int, key int) int {
	if high < low {
		return -1
	}
	var mid int = (low + high) / 2
	if key == arr[mid] {
		return mid
	}
	if key > arr[mid] {
		return f_gold(arr, mid+1, high, key)
	}
	return f_gold(arr, low, mid-1, key)
}
