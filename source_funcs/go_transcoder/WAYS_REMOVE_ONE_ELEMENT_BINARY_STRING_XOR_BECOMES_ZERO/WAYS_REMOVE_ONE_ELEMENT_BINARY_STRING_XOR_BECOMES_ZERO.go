package main

func f_gold(str []byte) int {
	var (
		one_count  int = 0
		zero_count int = 0
		n          int = int(len(str))
	)
	for i := int(0); i < n; i++ {
		if str[i] == byte('1') {
			one_count++
		} else {
			zero_count++
		}
	}
	if one_count%2 == 0 {
		return zero_count
	}
	return one_count
}
