package main

func max(x int, y int) int {
	if x > y {
		return x
	}
	return y
}

//go:export f_gold
func f_gold(n int, templeHeight []int) int {
	var sum int = 0
	for i := int(0); i < n; i++ {
		var (
			left  int = 0
			right int = 0
		)
		for j := int(i - 1); j >= 0; j-- {
			if templeHeight[j] < templeHeight[j+1] {
				left++
			} else {
				break
			}
		}
		for j := int(i + 1); j < n; j++ {
			if templeHeight[j] < templeHeight[j-1] {
				right++
			} else {
				break
			}
		}
		sum += max(right, left) + 1
	}
	return sum
}
