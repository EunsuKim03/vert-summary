package main

import (
	"math"
	"sort"
)

func f_gold(a []int, b []int, n int) int {
	sort.Ints(a)
	sort.Ints(b)
	var result int = 0
	for i := int(0); i < n; i++ {
		result = result + int(math.Abs(float64(a[i]-b[i])))
	}
	return result
}
