package main

import "math"

func f_gold(a []int, b []int, n int, k int) int {
	var (
		diff int = 0
		res  int = 0
		temp int
	)
	for i := int(0); i < n; i++ {
		var pro int = a[i] * b[i]
		res = res + pro
		if pro < 0 && b[i] < 0 {
			temp = (a[i] + k*2) * b[i]
		} else if pro < 0 && a[i] < 0 {
			temp = (a[i] - k*2) * b[i]
		} else if pro > 0 && a[i] < 0 {
			temp = (a[i] + k*2) * b[i]
		} else if pro > 0 && a[i] > 0 {
			temp = (a[i] - k*2) * b[i]
		}
		var d int = int(math.Abs(float64(pro - temp)))
		if d > diff {
			diff = d
		}
	}
	return res - diff
}
