fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::cmp::Ordering;

fn f_gold(mut boxes: [i32;2], n: i32) -> i32 {
    boxes.sort();
    let mut ans = 1;
    let mut prev_width = boxes[0]; 
    let mut prev_count = 1;
    let mut curr_count = 0;
    let mut curr_width = 0;
    for i in 1..n {
        curr_width += boxes[i as usize];
        curr_count += 1;
        if curr_width > prev_width && curr_count > prev_count {
            prev_width = curr_width;
            prev_count = curr_count;
            curr_count = 0;
            curr_width = 0;
            ans += 1;
        }
    }
    ans
}
