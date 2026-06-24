fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::io;

fn f_gold(input: i32, unlock_code: i32) -> i32{
    let mut rotation = 0;
    let mut input_digit; 
    let mut code_digit;
    while input != 0 || unlock_code != 0 {
        input_digit = input % 10;
        code_digit = unlock_code % 10;
        rotation += input_digit.min(unlock_code % 10, 10 - input_digit.min(unlock_code % 10, 10 - unlock_code % 10)); 
        input /= 10;
        unlock_code /= 10;
    }
    rotation
}
