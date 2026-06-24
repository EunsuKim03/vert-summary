package main

func f_gold(arr []int, n int) int {
	var (
		ones            int = 0
		twos            int = 0
		common_bit_mask int
	)
	for i := int(0); i < n; i++ {
		twos = twos | (ones & arr[i])
		ones = ones ^ arr[i]
		common_bit_mask = ^(ones & twos)
		ones &= common_bit_mask
		twos &= common_bit_mask
	}
	return ones
}
