package main

import (
	"math"
	"sort"
)

//go:export f_gold
func f_gold(coin []int, n int, k int) int {
	sort.Ints(coin)
	var coins_needed int = int(math.Ceil(float64(n) * 1.0 / float64(k+1)))
	var ans int = 0
	for i := int(0); i <= coins_needed-1; i++ {
		ans += coin[i]
	}
	return ans
}
