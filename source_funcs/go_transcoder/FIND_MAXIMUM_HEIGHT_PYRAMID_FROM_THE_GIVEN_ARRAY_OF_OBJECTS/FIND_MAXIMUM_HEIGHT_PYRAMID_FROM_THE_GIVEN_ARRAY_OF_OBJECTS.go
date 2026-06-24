package main

import "sort"

func f_gold(boxes []int, n int) int {
	sort.Ints(boxes)
	var ans int = 1
	var prev_width int = boxes[0]
	var prev_count int = 1
	var curr_count int = 0
	var curr_width int = 0
	for i := int(1); i < n; i++ {
		curr_width += boxes[i]
		curr_count += 1
		if curr_width > prev_width && curr_count > prev_count {
			prev_width = curr_width
			prev_count = curr_count
			curr_count = 0
			curr_width = 0
			ans++
		}
	}
	return ans
}
