fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::collections::VecDeque;

fn f_gold(n: i32) -> i32 {
    let mut result = 0;
    for i in 1..=9 {
        let mut stack = VecDeque::new();
        if i <= n {
            stack.push_back(i);
            result += 1;
        }
        while !stack.is_empty() {
            let tp = stack.pop_back().unwrap();
            for j in tp % 10..=9 {
                let x = tp * 10 + j;
                if x <= n {
                    stack.push_back(x);
                    result += 1;
                }
            }
        }
    }
    result
}
