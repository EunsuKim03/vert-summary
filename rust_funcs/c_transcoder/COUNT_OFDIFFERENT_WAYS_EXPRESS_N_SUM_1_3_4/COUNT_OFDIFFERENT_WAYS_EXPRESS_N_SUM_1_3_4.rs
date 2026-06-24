fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32;

fn f_gold(n:i32) -> i32 {  
    let mut DP = vec![0; n as usize + 1];
    DP[0] = 1;
    DP[1] = 1;
    DP[2] = 1;
    DP[3] = 2;
    for i in 4..=n {
        DP[i as usize] = DP[(i-1) as usize] + DP[(i-3) as usize] + DP[(i-4) as usize];
    }
    DP[n as usize] 
}
