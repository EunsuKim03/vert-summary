fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::string;

fn f_gold(s: String) -> i32 {
    if s.len() >= 10 {
        return 1;
    }
    for i in 1..s.len() {
        for j in i + 1..s.len() {
            for k in j + 1..s.len() {
                let s1 = &s[0..i];
                let s2 = &s[i..j];
                let s3 = &s[j..k];
                let s4 = &s[k..s.len()];
                if s1 != s2 && s1 != s3 && s1 != s4 && s2 != s3 && s2 != s4 && s3 != s4 {
                    return 1;
                }
            }
        }
    }
    0
}
