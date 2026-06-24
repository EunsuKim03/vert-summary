fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::f32;

fn f_gold(set: [f32;2], n: u32) -> i32 {
    if n <= 2 {
        return n;
    }
    let mut L = vec![vec![0.0; n]; n];
    let mut llap = 2;
    for i in 0..n {
        L[i][n - 1] = 2.0;
    }
    for j in (1..n - 1).rev() {
        let mut i = j - 1;
        let mut k = j + 1;
        while i >= 0 && k <= n - 1 {
            if set[i] + set[k] < 2.0 * set[j] {
                k += 1;
            } else if set[i] + set[k] > 2.0 * set[j] {
                L[i][j] = 2.0;
                i -= 1;
            } else {
                L[i][j] = L[j][k] + 1.0;
                llap = llap.max(L[i][j] as usize);
                i -= 1;
                k += 1;
            }
        }
        while i >= 0 {
            L[i][j] = 2.0;
            i -= 1;
        }
    }
    llap
}
