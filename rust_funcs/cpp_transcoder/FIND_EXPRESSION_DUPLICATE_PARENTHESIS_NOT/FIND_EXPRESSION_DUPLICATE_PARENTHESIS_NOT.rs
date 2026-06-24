fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::collections::VecDeque;

fn f_gold(str: String) -> i32 {
    let mut stack: VecDeque<char> = VecDeque::new();
    for ch in str.chars() {
        if ch == ')' {
            let top = stack.pop().unwrap();
            let mut elements_inside = 0;
            while top != '(' {
                elements_inside += 1;
                top = stack.pop().unwrap();
            }
            if elements_inside < 1 {
                return 1;
            }
        } else {
            stack.push(ch);
        }
    }
    0
}
