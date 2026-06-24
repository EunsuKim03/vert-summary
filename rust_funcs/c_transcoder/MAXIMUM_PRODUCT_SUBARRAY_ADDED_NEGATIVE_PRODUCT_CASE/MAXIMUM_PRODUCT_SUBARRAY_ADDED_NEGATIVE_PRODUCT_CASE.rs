fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::cell::RefCell;
use std::rc::Rc;

fn f_gold(arr: [i32; 10000], n: i32) -> i32 {
    let mut maxval = 1;
    let mut minval = 1;
    let mut prev_max = 0;
    let mut ans = std::i32::MIN;

    for i in 0..n {
        if arr[i as usize] > 0 {
            maxval *= arr[i as usize];
            minval = std::cmp::min(1,minval * arr[i as usize]); 
        }
        else if arr[i as usize] == 0 {
           minval = 1; 
           maxval = 0;
       }
        else {
           prev_max = maxval;
           maxval = minval * arr[i as usize];
           minval = prev_max * arr[i as usize]; 
        }
        ans = std::cmp::max(ans, maxval);
        if maxval <= 0 {maxval = 1;}
    }
    ans 
}
