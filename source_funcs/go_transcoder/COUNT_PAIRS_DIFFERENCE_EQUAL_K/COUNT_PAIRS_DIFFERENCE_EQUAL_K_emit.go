package main

//go:export f_gold
func f_gold(arr []int, n int, k int) int {
	var count int = 0
	for i := int(0); i < n; i++ {
		for j := int(i + 1); j < n; j++ {
			if arr[i]-arr[j] == k || arr[j]-arr[i] == k {
				count++
			}
		}
	}
	return count
}
