fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::str;

fn f_gold(seq: String) -> String {
    let n = seq.len(); 
    if n >= 9 { return "-1".to_string(); }
    let mut result = String::with_capacity(n + 1);
    let mut count = 1;
    for i in 0..=n {
        if i == n || seq.as_bytes()[i] as char == 'I' {
            for j in (i-1)..=-1 {
                result.push((count+'0') as char);
                count += 1;
                if j >= 0 && seq.as_bytes()[j] as char == 'I' { 
                    break; 
                }
            }
        }
    }
    result
}
