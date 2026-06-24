package main

//go:export f_gold
func f_gold(x int) int {
	var (
		i    int = 1
		fact int = 1
	)
	for i = 1; i < x; i++ {
		fact = fact * i
		if fact%x == 0 {
			break
		}
	}
	return i
}
