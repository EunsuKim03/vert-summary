package main

import "sort"

func f_gold(arr []int, n int) int {
	sort.Ints(arr)
	var a int = 0
	var b int = 0
	for i := int(0); i < n; i++ {
		if i&1 != 0 {
			a = a*10 + arr[i]
		} else {
			b = b*10 + arr[i]
		}
	}
	return a + b
}
