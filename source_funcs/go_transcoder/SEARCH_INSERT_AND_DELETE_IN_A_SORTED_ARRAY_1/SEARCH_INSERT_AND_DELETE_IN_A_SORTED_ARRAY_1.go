package main

func f_gold(arr []int, n int, key int, capacity int) int {
	if n >= capacity {
		return n
	}
	var i int
	for i = n - 1; i >= 0 && arr[i] > key; i-- {
		arr[i+1] = arr[i]
	}
	arr[i+1] = key
	return n + 1
}
