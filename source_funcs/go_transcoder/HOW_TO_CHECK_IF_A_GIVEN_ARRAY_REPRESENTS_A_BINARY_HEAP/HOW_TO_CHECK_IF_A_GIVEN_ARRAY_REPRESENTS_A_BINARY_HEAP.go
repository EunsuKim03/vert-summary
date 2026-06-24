package main

func f_gold(arr []int, i int, n int) bool {
	if i > (n-2)/2 {
		return true
	}
	if arr[i] >= arr[i*2+1] && arr[i] >= arr[i*2+2] && f_gold(arr, i*2+1, n) && f_gold(arr, i*2+2, n) {
		return true
	}
	return false
}
