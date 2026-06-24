package main

import "math"

func f_gold(num int) bool {
	if num < 0 {
		return false
	}
	var c int = (num * (-2))
	var b int = 1
	var a int = 1
	var d int = (b * b) - a*4*c
	if d < 0 {
		return false
	}
	var root1 float32 = float32((float64(-b) + math.Sqrt(float64(d))) / float64(a*2))
	var root2 float32 = float32((float64(-b) - math.Sqrt(float64(d))) / float64(a*2))
	if root1 > 0 && math.Floor(float64(root1)) == float64(root1) {
		return true
	}
	if root2 > 0 && math.Floor(float64(root2)) == float64(root2) {
		return true
	}
	return false
}
