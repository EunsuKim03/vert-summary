package main

func f_gold(num int) int {
	var sum int = 0
	for i := int(2); i*i <= num; i++ {
		for num%i == 0 {
			sum += i
			num /= i
		}
	}
	sum += num
	return sum
}
