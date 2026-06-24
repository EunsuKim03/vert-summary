package main

//go:export f_gold
func f_gold(arr []int, n int) bool {
	if n == 0 || n == 1 {
		return true
	}
	for i := int(1); i < n; i++ {
		if arr[i-1] > arr[i] {
			return false
		}
	}
	return true
}
