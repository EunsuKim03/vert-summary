fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::ptr;

fn f_gold(n: &str) -> i32 {
    let mut pos = 0;
    let mut i = 0;
    while n.as_bytes()[i] != 0 {
        match n.as_bytes()[i] {
            b'4' => pos = pos * 2 + 1,
            b'7' => pos = pos * 2 + 2,
            _ => ()
        };
        i += 1;
    }
    pos
}
