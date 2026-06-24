package main

import "sort"

func max(x int, y int) int {
	if x > y {
		return x
	}
	return y
}

func f_gold(ar []int, n int) int {
	var res int = 0
	sort.Ints(ar)
	for i := int(0); i < n; i++ {
		var count int = 1
		for ; i < n-1; i++ {
			if ar[i] == ar[i+1] {
				count++
			} else {
				break
			}
		}
		res = max(res, count)
	}
	return res
}
