fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(s: String) -> i32 {
    let mut ans = 6;
    for i in 0..10 {
        for j in 0..10 {
            for k in 0..10 {
                for l in 0..10 {
                    for m in 0..10 {
                        for n in 0..10 {
                            if i + j + k == l + m + n  {
                                let mut c = 0;
                                if s.chars().nth(0).unwrap() as i32 - '0' as i32 != i {
                                    c += 1;
                                }
                                if s.chars().nth(1).unwrap() as i32 - '0' as i32 != j {
                                    c += 1;
                                }
                                if s.chars().nth(2).unwrap() as i32 - '0' as i32 != k {
                                    c += 1; 
                                }
                                if s.chars().nth(3).unwrap() as i32 - '0' as i32 != l {
                                    c += 1;
                                }
                                if s.chars().nth(4).unwrap() as i32 - '0' as i32 != m {
                                    c += 1;
                                }   
                                if s.chars().nth(5).unwrap() as i32 - '0' as i32 != n {
                                    c += 1;
                                }
                                if c < ans {
                                    ans = c;
                                }
                            }   
                        }
                    }
                }
            }
        }
    }
    ans
}
