package main

func f_gold(str []byte, n int) bool {
	var len_ int = int(len(str))
	if len_ >= n {
		return true
	}
	return false
}
