package main

func f_gold(s int) int {
	var sum int = 0
	for n := int(1); sum < s; n++ {
		sum += n * n
		if sum == s {
			return n
		}
	}
	return -1
}
