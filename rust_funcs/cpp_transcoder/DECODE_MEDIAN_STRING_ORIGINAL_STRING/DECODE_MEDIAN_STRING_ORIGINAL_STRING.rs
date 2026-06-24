fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::string;

fn f_gold(s: String) -> String {
    let l = s.len();
    let mut s1 = String::new();
    let is_even = l % 2 == 0;
    for i in (0..l).step_by(2) {
        if is_even {
            s1.push(s.chars().nth(i).unwrap());
            s1.push(s.chars().nth(i + 1).unwrap());
        } else {
            if l - i > 1 {
                s1.push(s.chars().nth(i).unwrap());
                s1.insert(0, s.chars().nth(i + 1).unwrap());
            } else {
                s1.push(s.chars().nth(i).unwrap());
            }
        }
    }
    s1
}
