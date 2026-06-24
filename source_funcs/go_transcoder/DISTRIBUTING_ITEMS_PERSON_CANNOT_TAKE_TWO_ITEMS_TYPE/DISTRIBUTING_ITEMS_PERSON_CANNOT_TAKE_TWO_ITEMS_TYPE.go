package main

func f_gold(arr []int, n int, k int) bool {
	var count int
	for i := int(0); i < n; i++ {
		count = 0
		for j := int(0); j < n; j++ {
			if arr[j] == arr[i] {
				count++
			}
			if count > k*2 {
				return false
			}
		}
	}
	return true
}
