package main

//go:export f_gold
func f_gold(arr []int, n int) int {
	var (
		min       int = arr[0]
		min_index int
	)
	for i := int(0); i < n; i++ {
		if min > arr[i] {
			min = arr[i]
			min_index = i
		}
	}
	return min_index
}
