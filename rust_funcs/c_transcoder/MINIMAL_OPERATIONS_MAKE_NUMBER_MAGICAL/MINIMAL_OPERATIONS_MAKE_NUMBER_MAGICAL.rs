fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::f32;

fn f_gold(s: &[char]) -> i32 {
    let mut ans = 6;
    for i in 0..10 {
        for j in 0..10 {
            for k in 0..10 {
                for l in 0..10 {
                    for m in 0..10 {
                        for n in 0..10 {
                            if i + j + k == l + m + n  {
                                let mut c = 0;
                                if s[0] as usize - '0' as usize != i as usize {c += 1;}
                                if s[1] as usize - '0' as usize != j as usize {c += 1;}
                                if s[2] as usize - '0' as usize != k as usize {c += 1;} 
                                if s[3] as usize - '0' as usize != l as usize {c += 1;}
                                if s[4] as usize - '0' as usize != m as usize {c += 1;}
                                if s[5] as usize - '0' as usize != n as usize {c += 1;}
                                if c < ans {ans = c;}
                            }   
                        }
                    }
                }
            }
        }
    }
    ans
}
