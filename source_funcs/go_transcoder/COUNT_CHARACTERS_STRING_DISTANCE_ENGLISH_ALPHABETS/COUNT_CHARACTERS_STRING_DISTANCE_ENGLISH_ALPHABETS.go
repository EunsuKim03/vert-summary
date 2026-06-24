package main

import "math"

func f_gold(str []byte) int {
	var (
		result int = 0
		n      int = int(len(str))
	)
	for i := int(0); i < n; i++ {
		for j := int(i + 1); j < n; j++ {
			if math.Abs(float64(str[i]-str[j])) == math.Abs(float64(i-j)) {
				result++
			}
		}
	}
	return result
}
