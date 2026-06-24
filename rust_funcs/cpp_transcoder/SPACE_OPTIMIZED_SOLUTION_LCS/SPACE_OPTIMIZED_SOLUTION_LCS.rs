fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::cmp;

fn f_gold(X: String, Y: String) -> i32 {
    let m = X.len();
    let n = Y.len();
    let mut L = vec![vec![0; n + 1]; 2];
    let mut bi = 0;
    for i in 0..=m {
        bi = i & 1;
        for j in 0..=n {
            if i == 0 || j == 0 {
                L[bi][j] = 0;
            } else if X.chars().nth(i - 1) == Y.chars().nth(j - 1) {
                L[bi][j] = L[1 - bi][j - 1] + 1;
            } else {
                L[bi][j] = cmp::max(L[1 - bi][j], L[bi][j - 1]);
            }
        }
    }
    L[bi][n]
}
