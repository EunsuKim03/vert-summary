package main

func f_gold(s []byte) bool {
	var (
		l int = int(len(s))
		j int
	)
	_ = j
	for i, j := int(0), int(l-1); i <= j; func() int {
		i++
		return func() int {
			p := &j
			x := *p
			*p--
			return x
		}()
	}() {
		if s[i] != s[j] {
			return false
		}
	}
	return true
}
