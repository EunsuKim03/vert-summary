package main

func f_gold(str []byte) int {
	var (
		len_ int = int(len(str))
		num  int
		rem  int = 0
	)
	for i := int(0); i < len_; i++ {
		num = rem*10 + int(str[i]-byte('0'))
		rem = num % 11
	}
	return rem
}
