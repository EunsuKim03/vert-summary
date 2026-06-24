package main

func f_gold(arr []int, n int) int {
	var ans int = 0
	for i := int(0); i < n; i++ {
		for j := int(i + 1); j < n; j++ {
			if arr[i] == arr[j] {
				ans++
			}
		}
	}
	return ans
}
