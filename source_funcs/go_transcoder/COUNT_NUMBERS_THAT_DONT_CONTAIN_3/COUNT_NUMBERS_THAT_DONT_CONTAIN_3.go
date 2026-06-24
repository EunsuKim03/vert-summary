package main

func f_gold(n int) int {
	if n < 3 {
		return n
	}
	if n >= 3 && n < 10 {
		return n - 1
	}
	var po int = 1
	for n/po > 9 {
		po = po * 10
	}
	var msd int = n / po
	if msd != 3 {
		return f_gold(msd)*f_gold(po-1) + f_gold(msd) + f_gold(n%po)
	} else {
		return f_gold(msd*po - 1)
	}
}
