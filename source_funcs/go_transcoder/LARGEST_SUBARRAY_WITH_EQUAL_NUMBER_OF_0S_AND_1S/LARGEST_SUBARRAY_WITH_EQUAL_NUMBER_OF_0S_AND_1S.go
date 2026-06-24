package main

import "fmt"

func f_gold(arr []int, n int) int {
	var (
		sum        int = 0
		maxsize    int = -1
		startindex int
	)
	_ = startindex
	for i := int(0); i < n-1; i++ {
		if arr[i] == 0 {
			sum = -1
		} else {
			sum = 1
		}
		for j := int(i + 1); j < n; j++ {
			if arr[j] == 0 {
				sum += -1
			} else {
				sum += 1
			}
			if sum == 0 && maxsize < j-i+1 {
				maxsize = j - i + 1
				startindex = i
			}
		}
	}
	if maxsize == -1 {
		fmt.Print("No such subarray")
	} else {
		fmt.Print("No such subarray")
	}
	return maxsize
}
