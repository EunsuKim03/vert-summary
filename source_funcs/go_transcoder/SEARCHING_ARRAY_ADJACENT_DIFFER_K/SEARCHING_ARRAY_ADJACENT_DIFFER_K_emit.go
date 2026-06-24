package main

import (
	"fmt"
	"math"
)

func max(x int, y int) int {
	if x > y {
		return x
	}
	return y
}

//go:export f_gold
func f_gold(arr []int, n int, x int, k int) int {
	var i int = 0
	for i < n {
		if arr[i] == x {
			return i
		}
		i = i + max(1, int(math.Abs(float64(arr[i]-x))/float64(k)))
	}
	fmt.Print("number is not present!")
	return -1
}
