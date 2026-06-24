package main

func f_gold(ar []int, ar_size int) int {
	var res int = 0
	for i := int(0); i < ar_size; i++ {
		res = res ^ ar[i]
	}
	return res
}
