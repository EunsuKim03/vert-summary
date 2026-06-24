package main

func f_gold(n int) int {
	var (
		ans  int = 0
		temp int = 0
		num  int
	)
	for i := int(1); i <= n && temp < n; i++ {
		temp = i - 1
		num = 1
		for temp < n {
			if temp+i <= n {
				ans += i * num
			} else {
				ans += (n - temp) * num
			}
			temp += i
			num++
		}
	}
	return ans
}
