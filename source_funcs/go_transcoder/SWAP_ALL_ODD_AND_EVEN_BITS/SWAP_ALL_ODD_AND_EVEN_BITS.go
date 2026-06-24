package main

func f_gold(x uint) uint {
	var (
		even_bits uint = x & 0xAAAAAAAA
		odd_bits  uint = x & 0x55555555
	)
	even_bits >>= 1
	odd_bits <<= 1
	return even_bits | odd_bits
}
