fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32;

fn f_gold(s: String) -> i32 {
    let mut n = s.len();
    let mut a = vec![0; n];
    for i in (0..n).rev() {
        let mut back_up = 0;
        for j in i..n {
            if j == i {
                a[j] = 1;
            } else if s.chars().nth(i) == s.chars().nth(j) {
                let temp = a[j];
                a[j] = back_up + 2;
                back_up = temp;
            } else {
                back_up = a[j];
                a[j] = a[j - 1].max(a[j]);
            }
        }
    }
    a[n - 1] 
}
