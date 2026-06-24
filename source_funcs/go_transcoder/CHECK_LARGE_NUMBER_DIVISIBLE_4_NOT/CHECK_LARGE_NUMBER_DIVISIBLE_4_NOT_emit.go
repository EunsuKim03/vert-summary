package main

//go:export f_gold
func f_gold(str []byte) bool {
	var n int = int(len(str))
	if n == 0 {
		return false
	}
	if n == 1 {
		return (str[0]-byte('0'))%4 == 0
	}
	var last int = int(str[n-1] - byte('0'))
	var second_last int = int(str[n-2] - byte('0'))
	return (second_last*10+last)%4 == 0
}
