package main

//go:export f_gold
func f_gold(str []byte) int {
	var (
		n          int = int(len(str))
		oddDigSum  int = 0
		evenDigSum int = 0
	)
	for i := int(0); i < n; i++ {
		if i%2 == 0 {
			oddDigSum += int(str[i] - byte('0'))
		} else {
			evenDigSum += int(str[i] - byte('0'))
		}
	}
	return (oddDigSum - evenDigSum) % 11
}
