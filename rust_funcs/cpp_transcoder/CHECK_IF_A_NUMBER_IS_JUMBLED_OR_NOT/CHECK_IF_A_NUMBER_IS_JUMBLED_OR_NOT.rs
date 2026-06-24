fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::io;

fn f_gold(num: i32) -> i32 {
    let mut num = num;
    if num/10 == 0 {
        return 1; 
    }
    while num != 0 {
        let digit1 = num % 10;
        let digit2 = (num/10) % 10;
        if (digit2 - digit1).abs() > 1  {
            return 0;
        }
        num = num/10;
    }
    1
}
