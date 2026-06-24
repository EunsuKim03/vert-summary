package main

func f_gold(a int, b int) int {
	var cnt int = 0
	for i := int(a); i <= b; i++ {
		for j := int(1); j*j <= i; j++ {
			if j*j == i {
				cnt++
			}
		}
	}
	return cnt
}
