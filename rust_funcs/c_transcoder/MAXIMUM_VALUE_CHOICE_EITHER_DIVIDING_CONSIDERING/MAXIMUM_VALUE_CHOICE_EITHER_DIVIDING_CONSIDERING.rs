fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::cmp;
use std::f32;

fn f_gold(n: i32) -> i32 {
    let mut res = vec![0; n as usize + 1];
    res[0] = 0;
    res[1] = 1;
    for i in 2..=n {
        res[i as usize] = cmp::max(
            i, 
            res[(i / 2) as usize] + 
            res[(i / 3) as usize] +  
            res[(i / 4) as usize] + 
            res[(i / 5) as usize]
        );
    }
    res[n as usize]
}
