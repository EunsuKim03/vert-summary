package main

//go:export f_gold
func f_gold(str []byte) int {
	var (
		n        int = int(len(str))
		digitSum int = 0
	)
	for i := int(0); i < n; i++ {
		digitSum += int(str[i] - byte('0'))
	}
	return digitSum % 9
}
