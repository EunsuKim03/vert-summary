package main

import (
	"fmt"
	"sort"
)

func f_gold(A []int, arr_size int, sum int) bool {
	var (
		l int
		r int
	)
	sort.Ints(A)
	for i := int(0); i < arr_size-2; i++ {
		l = i + 1
		r = arr_size - 1
		for l < r {
			if A[i]+A[l]+A[r] == sum {
				fmt.Print("Triplet is %d, %d, %d", A[i], A[l], A[r])
				return true
			} else if A[i]+A[l]+A[r] < sum {
				l++
			} else {
				r--
			}
		}
	}
	return false
}
