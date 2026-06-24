fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::cmp;

fn  f_gold(X: Vec<char>, Y: Vec<char>) -> i32 {
    let m = X.len();
    let  n = Y.len();
    let  mut result = 0;
    let mut curr_row = 0;
    let mut len = vec![vec![0; n+1]; 2];
    for i in 0..=m  {
        for j in 0..=n {
            if i == 0 || j == 0  {
                len[curr_row][j] = 0;
            } else if X[i-1] == Y[j-1]  {
                len[curr_row][j] = len[1-curr_row][j-1] + 1;
                result = cmp::max(result, len[curr_row][j]);
            } else {
                len[curr_row][j] = 0;
            }
        }
        curr_row = 1 - curr_row;
    }
    result
}
