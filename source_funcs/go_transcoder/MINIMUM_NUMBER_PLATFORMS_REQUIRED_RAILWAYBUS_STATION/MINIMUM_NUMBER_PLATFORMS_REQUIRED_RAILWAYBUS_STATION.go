package main

import "sort"

func f_gold(arr []int, dep []int, n int) int {
	sort.Ints(arr)
	sort.Ints(dep)
	var plat_needed int = 1
	var result int = 1
	var i int = 1
	var j int = 0
	for i < n && j < n {
		if arr[i] <= dep[j] {
			plat_needed++
			i++
			if plat_needed > result {
				result = plat_needed
			}
		} else {
			plat_needed--
			j++
		}
	}
	return result
}
