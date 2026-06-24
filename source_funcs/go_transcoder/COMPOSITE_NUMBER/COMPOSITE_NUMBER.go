package main

func f_gold(n int) bool {
	if n <= 1 {
		return false
	}
	if n <= 3 {
		return false
	}
	if n%2 == 0 || n%3 == 0 {
		return true
	}
	for i := int(5); i*i <= n; i = i + 6 {
		if n%i == 0 || n%(i+2) == 0 {
			return true
		}
	}
	return false
}
