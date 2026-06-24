package main

import "math"

//go:export f_gold
func f_gold(r int, R int, r1 int, x1 int, y1 int) bool {
	var dis int = int(math.Sqrt(float64(x1*x1 + y1*y1)))
	return dis-r1 >= R && dis+r1 <= r
}
