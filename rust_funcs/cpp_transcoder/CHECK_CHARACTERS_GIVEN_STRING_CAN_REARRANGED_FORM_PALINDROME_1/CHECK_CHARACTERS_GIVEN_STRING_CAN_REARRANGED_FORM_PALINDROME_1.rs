fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::collections::HashSet;

fn f_gold(str: String) -> i32 {
    let mut set = HashSet::new();
    for c in str.chars() {
        if set.contains(&c) {
            set.remove(&c);
        } else {
            set.insert(c);
        }
    }
    if (str.len() % 2 == 0 && set.is_empty()) || (str.len() % 2 == 1 && set.len() == 1) {
        1
    } else {
        0
    } 
}
