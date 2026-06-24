package main

func f_gold(arr []int, n int, x int) bool {
	for i := int(0); i < n-1; i++ {
		for j := int(i + 1); i < n; i++ {
			if arr[i]*arr[j] == x {
				return true
			}
		}
	}
	return false
}
