package main

func f_gold(arr []int, n int) int {
	var invcount int = 0
	for i := int(1); i < n-1; i++ {
		var small int = 0
		for j := int(i + 1); j < n; j++ {
			if arr[i] > arr[j] {
				small++
			}
		}
		var great int = 0
		for j := int(i - 1); j >= 0; j-- {
			if arr[i] < arr[j] {
				great++
			}
		}
		invcount += great * small
	}
	return invcount
}
