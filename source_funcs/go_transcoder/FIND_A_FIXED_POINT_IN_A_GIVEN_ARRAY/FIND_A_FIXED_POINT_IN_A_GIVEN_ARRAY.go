package main

func f_gold(arr []int, n int) int {
	var i int
	for i = 0; i < n; i++ {
		if arr[i] == i {
			return i
		}
	}
	return -1
}
