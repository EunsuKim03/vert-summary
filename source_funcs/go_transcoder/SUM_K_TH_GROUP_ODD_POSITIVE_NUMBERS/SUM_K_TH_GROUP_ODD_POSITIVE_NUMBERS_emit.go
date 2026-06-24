package main

//go:export f_gold
func f_gold(k int) int {
	var (
		cur int = (k * (k - 1)) + 1
		sum int = 0
	)
	for func() int {
		p := &k
		x := *p
		*p--
		return x
	}() != 0 {
		sum += cur
		cur += 2
	}
	return sum
}
