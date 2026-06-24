fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::f32;

fn f_gold(n: i32) -> i32 {
    let mut ans = 0;
    let mut temp = 0; 
    let mut num;

    for i in 1..=n {
        if i <= n && temp < n {
            num = 1;
            temp = i - 1;
            while temp < n {
                if temp + i <= n {
                    ans += i * num;
                } else {
                    ans += (n - temp) * num; 
                }
                temp += i;
                num += 1;
            }
        }
    }
    ans
}
