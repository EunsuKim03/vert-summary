fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::f32;

fn f_gold(n: i32) -> i32 {
    let mut table = vec![0; n as usize + 1];
    table[0] = 1;
    for i in 3..=n {
        table[i as usize] += table[(i - 3) as usize];
    }
    for i in 5..=n {
        table[i as usize] += table[(i - 5) as usize];
    }
    for i in 10..=n {
        table[i as usize] += table[(i - 10) as usize];
    }
    table[n as usize]
}
