fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32;

fn f_gold(n: u32) -> u32 {
    let mut ugly = Vec::with_capacity(n as usize);
    let mut i2 = 0;
    let mut i3 = 0;
    let mut i5 = 0;
    let mut next_multiple_of_2 = 2;
    let mut next_multiple_of_3 = 3; 
    let mut next_multiple_of_5 = 5;
    let mut next_ugly_no = 1;
    ugly.push(1);
    for i in 1..n {
        next_ugly_no = next_ugly_no.min(next_multiple_of_2.min(next_multiple_of_3.min(next_multiple_of_5)));
        ugly.push(next_ugly_no);
        if next_ugly_no == next_multiple_of_2  {
            i2 += 1;
            next_multiple_of_2 = ugly[i2 as usize] * 2;
        }
        if next_ugly_no == next_multiple_of_3  {
            i3 += 1;
            next_multiple_of_3 = ugly[i3 as usize] * 3;
        }
        if next_ugly_no == next_multiple_of_5  {
            i5 += 1;
            next_multiple_of_5 = ugly[i5 as usize] * 5;
        }
    }
    next_ugly_no
}
