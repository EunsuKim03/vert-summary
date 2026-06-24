fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32::INFINITY;
 
 fn f_gold(price: [f32;2], n: f32, k: f32) -> i32 {
    let mut profit = vec![vec![0.; n as usize+1]; k as usize+1];
    for j in 1..n as usize+1 {
        let mut max_so_far = INFINITY;
        for m in 0..j {
            max_so_far = max_so_far.min(price[j] - price[m] + profit[(k-1.0) as usize][m]);
        }
        profit[k as usize][j] = profit[k as usize][j-1].max(max_so_far);
    }
    profit[k as usize][n as usize-1]
 }
