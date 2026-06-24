fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::f32;
use std::vec::Vec;

fn f_gold(arr: &mut [char], n: i32, k: i32) -> i32 {
    let mut res = 0;
    let mut thi = Vec::<i32>::new();
    let mut pol = Vec::<i32>::new();
    for i in 0..n {
        if arr[i as usize] == 'P' {
            pol.push(i as i32);
        } else if arr[i as usize] == 'T' {
            thi.push(i as i32);
        }
    }
    let mut l = 0;
    let mut r = 0;
    while l < thi.len() as i32 && r < pol.len() as i32 {
        if (thi[l as usize] - pol[r as usize]).abs() <= k {
            res += 1;
            l += 1;
            r += 1;
        } else if thi[l as usize] < pol[r as usize] {
            l += 1;
        } else {
            r += 1;
        }
    }
    res
}
