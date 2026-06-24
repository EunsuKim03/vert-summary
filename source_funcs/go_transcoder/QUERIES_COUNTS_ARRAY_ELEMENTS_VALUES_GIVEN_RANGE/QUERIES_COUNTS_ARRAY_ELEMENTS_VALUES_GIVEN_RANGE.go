package main

func f_gold(arr []int, n int, x int, y int) int {
	var count int = 0
	for i := int(0); i < n; i++ {
		if arr[i] >= x && arr[i] <= y {
			count++
		}
	}
	return count
}
