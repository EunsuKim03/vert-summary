package main

func f_gold(arr []int, n int, key int) int {
	var i int
	for i = 0; i < n; i++ {
		if arr[i] == key {
			return i
		}
	}
	return -1
}
