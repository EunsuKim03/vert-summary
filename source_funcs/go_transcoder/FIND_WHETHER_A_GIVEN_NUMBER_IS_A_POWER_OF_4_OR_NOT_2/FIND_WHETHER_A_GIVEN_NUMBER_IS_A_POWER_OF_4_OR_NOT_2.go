package main

func f_gold(n uint) bool {
	return n != 0 && (n&(n-1)) == 0 && (n&0xAAAAAAAA) == 0
}
