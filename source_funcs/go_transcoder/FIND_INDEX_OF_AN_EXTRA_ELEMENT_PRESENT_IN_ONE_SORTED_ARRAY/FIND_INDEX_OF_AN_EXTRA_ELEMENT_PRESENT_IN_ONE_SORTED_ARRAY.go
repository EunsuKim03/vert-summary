package main

func f_gold(arr1 []int, arr2 []int, n int) int {
	for i := int(0); i < n; i++ {
		if arr1[i] != arr2[i] {
			return i
		}
	}
	return n
}
