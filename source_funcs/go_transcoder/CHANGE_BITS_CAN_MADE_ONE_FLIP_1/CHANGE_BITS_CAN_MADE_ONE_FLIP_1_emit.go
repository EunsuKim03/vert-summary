package main

//go:export f_gold
func f_gold(str []byte) bool {
	var (
		sum int = 0
		n   int = int(len(str))
	)
	for i := int(0); i < n; i++ {
		sum += int(str[i] - byte('0'))
	}
	return sum == n-1 || sum == 1
}
