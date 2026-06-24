package main

func f_gold(n int) float64 {
	var (
		i    int     = 1
		res  float64 = 0.0
		sign bool    = true
	)
	for n > 0 {
		n--
		if sign {
			sign = !sign
			res = res + float64(func() int {
				p := &i
				*p++
				return *p
			}())/float64(func() int {
				p := &i
				*p++
				return *p
			}())
		} else {
			sign = !sign
			res = res - float64(func() int {
				p := &i
				*p++
				return *p
			}())/float64(func() int {
				p := &i
				*p++
				return *p
			}())
		}
	}
	return res
}
