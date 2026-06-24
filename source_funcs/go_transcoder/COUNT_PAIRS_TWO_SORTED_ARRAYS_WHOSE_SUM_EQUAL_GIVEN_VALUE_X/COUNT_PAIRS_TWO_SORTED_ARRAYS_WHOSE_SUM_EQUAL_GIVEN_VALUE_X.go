package main

func f_gold(arr1 []int, arr2 []int, m int, n int, x int) int {
	var count int = 0
	for i := int(0); i < m; i++ {
		for j := int(0); j < n; j++ {
			if (arr1[i] + arr2[j]) == x {
				count++
			}
		}
	}
	return count
}
