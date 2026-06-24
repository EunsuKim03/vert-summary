package main

//go:export f_gold
func f_gold(arr1 []int, arr2 []int, m int, n int, x int) int {
	var (
		count int = 0
		l     int = 0
		r     int = n - 1
	)
	for l < m && r >= 0 {
		if (arr1[l] + arr2[r]) == x {
			l++
			r--
			count++
		} else if (arr1[l] + arr2[r]) < x {
			l++
		} else {
			r--
		}
	}
	return count
}
