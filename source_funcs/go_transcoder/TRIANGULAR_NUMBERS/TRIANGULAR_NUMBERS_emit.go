package main

//go:export f_gold
func f_gold(num int) bool {
	if num < 0 {
		return false
	}
	var sum int = 0
	for n := int(1); sum <= num; n++ {
		sum = sum + n
		if sum == num {
			return true
		}
	}
	return false
}
