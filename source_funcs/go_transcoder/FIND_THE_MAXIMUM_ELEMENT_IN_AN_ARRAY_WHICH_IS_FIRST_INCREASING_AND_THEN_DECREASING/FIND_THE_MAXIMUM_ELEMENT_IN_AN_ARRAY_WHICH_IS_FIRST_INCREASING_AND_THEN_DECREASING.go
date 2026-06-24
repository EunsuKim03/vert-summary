package main

func f_gold(arr []int, low int, high int) int {
	var (
		max int = arr[low]
		i   int
	)
	for i = low + 1; i <= high; i++ {
		if arr[i] > max {
			max = arr[i]
		} else {
			break
		}
	}
	return max
}
