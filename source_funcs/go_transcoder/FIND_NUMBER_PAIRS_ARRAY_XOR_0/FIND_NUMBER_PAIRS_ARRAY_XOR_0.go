package main

import "sort"

func f_gold(a []int, n int) int {
	sort.Ints(a)
	var count int = 1
	var answer int = 0
	for i := int(1); i < n; i++ {
		if a[i] == a[i-1] {
			count += 1
		} else {
			answer = answer + (count*(count-1))/2
			count = 1
		}
	}
	answer = answer + (count*(count-1))/2
	return answer
}
