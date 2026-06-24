package main

func f_gold(arr []int, low int, high int, x int) int {
	var i int
	if x <= arr[low] {
		return low
	}
	for i = low; i < high; i++ {
		if arr[i] == x {
			return i
		}
		if arr[i] < x && arr[i+1] >= x {
			return i + 1
		}
	}
	return -1
}
