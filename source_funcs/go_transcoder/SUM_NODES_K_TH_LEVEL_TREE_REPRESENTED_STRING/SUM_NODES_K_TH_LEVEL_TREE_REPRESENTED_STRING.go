package main

func f_gold(tree []byte, k int) int {
	var (
		level int = -1
		sum   int = 0
		n     int = int(len(tree))
	)
	for i := int(0); i < n; i++ {
		if tree[i] == byte('(') {
			level++
		} else if tree[i] == byte(')') {
			level--
		} else {
			if level == k {
				sum += int(tree[i] - byte('0'))
			}
		}
	}
	return sum
}
