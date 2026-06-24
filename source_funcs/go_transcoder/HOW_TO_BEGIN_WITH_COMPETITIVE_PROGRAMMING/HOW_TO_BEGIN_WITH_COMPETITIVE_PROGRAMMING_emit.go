package main

//go:export f_gold
func f_gold(arr []int, n int, x int) int {
	for i := int(0); i < n; i++ {
		if arr[i] == x {
			return i
		}
	}
	return -1
}
