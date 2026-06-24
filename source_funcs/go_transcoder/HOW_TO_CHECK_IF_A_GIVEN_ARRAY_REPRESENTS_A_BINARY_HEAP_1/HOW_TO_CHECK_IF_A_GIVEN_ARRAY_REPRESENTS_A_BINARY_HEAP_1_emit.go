package main

//go:export f_gold
func f_gold(arr []int, n int) bool {
	for i := int(0); i <= (n-2)/2; i++ {
		if arr[i*2+1] > arr[i] {
			return false
		}
		if i*2+2 < n && arr[i*2+2] > arr[i] {
			return false
		}
	}
	return true
}
