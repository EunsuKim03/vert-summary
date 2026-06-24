package main

func f_gold(a int, b int) int {
	if b == 0 {
		return 1
	}
	var answer int = a
	var increment int = a
	var i int
	var j int
	for i = 1; i < b; i++ {
		for j = 1; j < a; j++ {
			answer += increment
		}
		increment = answer
	}
	return answer
}
