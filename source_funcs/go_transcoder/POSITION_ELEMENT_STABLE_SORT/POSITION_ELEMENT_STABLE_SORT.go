package main

func f_gold(arr []int, n int, idx int) int {
	var result int = 0
	for i := int(0); i < n; i++ {
		if arr[i] < arr[idx] {
			result++
		}
		if arr[i] == arr[idx] && i < idx {
			result++
		}
	}
	return result
}
