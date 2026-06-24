package main

func f_gold(notes []int, n int) int {
	var (
		fiveCount int = 0
		tenCount  int = 0
	)
	for i := int(0); i < n; i++ {
		if notes[i] == 5 {
			fiveCount++
		} else if notes[i] == 10 {
			if fiveCount > 0 {
				fiveCount--
				tenCount++
			} else {
				return 0
			}
		} else {
			if fiveCount > 0 && tenCount > 0 {
				fiveCount--
				tenCount--
			} else if fiveCount >= 3 {
				fiveCount -= 3
			} else {
				return 0
			}
		}
	}
	return 1
}
