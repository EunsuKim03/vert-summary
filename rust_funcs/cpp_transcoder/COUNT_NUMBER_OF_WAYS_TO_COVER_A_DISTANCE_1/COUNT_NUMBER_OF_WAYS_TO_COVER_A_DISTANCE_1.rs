fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::cell::RefCell;
use std::rc::Rc; 

fn f_gold(mut dist: i32) -> i32 {
    let mut count = [1, 1, 2, 0];
    for i in 3..=dist {
        count[i as usize] = count[(i-1) as usize] + count[(i-2) as usize] + count[(i-3) as usize]; 
    }
    count[dist as usize]
}
