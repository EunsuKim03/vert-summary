fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::vec::Vec;
use std::vec;

fn f_gold(mut str: String) -> String {
    let n = str.len();
    let mut LCSRe = vec![vec![0; n + 1]; n + 1];
    let mut res = String::new();
    let mut res_length = 0;
    let mut index = 0;
    for i in 1..=n {
        for j in i + 1..=n + 1 {
            if str[i - 1] == str[j - 1] && LCSRe[i - 1][j - 1] < (j - i) as f32 {
                LCSRe[i][j] = LCSRe[i - 1][j - 1] + 1;
                if LCSRe[i][j] > res_length {
                    res_length = LCSRe[i][j];
                    index = i.max(index);
                }
            } else {
                LCSRe[i][j] = 0;
            }
        }
    }
    if res_length > 0 {
        for i in index - res_length + 1..=index {
            res.push(str[i - 1]);
        }
    }
    res
}
