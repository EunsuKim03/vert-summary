package main

import "math"

//go:export f_gold
func f_gold(arr []int, n int) int {
	var (
		SubsetSum_1 int = 0
		SubsetSum_2 int = 0
	)
	for i := int(0); i <= n-1; i++ {
		var isSingleOccurance bool = true
		for j := int(i + 1); j <= n-1; j++ {
			if arr[i] == arr[j] {
				isSingleOccurance = false
				arr[i] = func() int {
					p := &arr[j]
					arr[j] = 0
					return *p
				}()
				break
			}
		}
		if isSingleOccurance {
			if arr[i] > 0 {
				SubsetSum_1 += arr[i]
			} else {
				SubsetSum_2 += arr[i]
			}
		}
	}
	return int(math.Abs(float64(SubsetSum_1 - SubsetSum_2)))
}
