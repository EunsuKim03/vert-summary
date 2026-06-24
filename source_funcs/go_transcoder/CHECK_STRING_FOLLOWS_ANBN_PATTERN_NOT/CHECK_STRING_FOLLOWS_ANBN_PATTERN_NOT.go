package main

func f_gold(str []byte) bool {
	var (
		n int = int(len(str))
		i int
	)
	for i = 0; i < n; i++ {
		if str[i] != byte('a') {
			break
		}
	}
	if i*2 != n {
		return false
	}
	var j int
	for j = i; j < n; j++ {
		if str[j] != byte('b') {
			return false
		}
	}
	return true
}
