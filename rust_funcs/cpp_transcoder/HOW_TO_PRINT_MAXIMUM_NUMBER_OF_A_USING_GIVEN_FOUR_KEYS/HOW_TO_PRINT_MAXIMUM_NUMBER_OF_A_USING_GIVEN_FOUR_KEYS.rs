fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::io;
fn f_gold(N: i32) -> i32 {
    if N <= 6 {
        return N;
    }
    let mut screen = vec![0; N as usize];
    for n in 1..=6 {
        screen[n as usize - 1] = n;
    }
    for n in 7..=N {
        screen[n as usize - 1] = screen[n as usize - 4].max(screen[n as usize - 5] * 3).max(screen[n as usize - 6] * 4); 
    }
    return screen[N as usize - 1];
}
