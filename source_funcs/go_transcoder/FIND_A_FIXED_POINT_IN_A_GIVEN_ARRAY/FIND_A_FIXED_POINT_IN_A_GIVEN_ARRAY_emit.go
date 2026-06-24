package main

//go:export f_gold
func f_gold(arr []int, n int) int {
	var i int
	for i = 0; i < n; i++ {
		if arr[i] == i {
			return i
		}
	}
	return -1
}
