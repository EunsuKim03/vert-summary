package main

//go:export f_gold
func f_gold(str []byte) bool {
	var (
		i int = 0
		j int = int(len(str) - 1)
	)
	for i < j {
		if str[i] != str[j] {
			return false
		}
		i++
		j--
	}
	return true
}
