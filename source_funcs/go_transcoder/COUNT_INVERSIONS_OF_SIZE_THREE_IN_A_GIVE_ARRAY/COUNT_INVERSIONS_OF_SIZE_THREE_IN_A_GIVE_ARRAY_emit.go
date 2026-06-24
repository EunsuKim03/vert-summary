package main

//go:export f_gold
func f_gold(arr []int, n int) int {
	var invcount int = 0
	for i := int(0); i < n-2; i++ {
		for j := int(i + 1); j < n-1; j++ {
			if arr[i] > arr[j] {
				for k := int(j + 1); k < n; k++ {
					if arr[j] > arr[k] {
						invcount++
					}
				}
			}
		}
	}
	return invcount
}
