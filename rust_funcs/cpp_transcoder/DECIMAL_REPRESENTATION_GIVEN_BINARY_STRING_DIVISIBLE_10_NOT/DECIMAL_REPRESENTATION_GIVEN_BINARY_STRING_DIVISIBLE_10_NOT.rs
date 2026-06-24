fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::string;

fn f_gold(bin: String) -> i32 {
    let mut n = bin.len();
    if bin.chars().last().unwrap() == '1' {
        return 0;
    }
    let mut sum = 0;
    for i in (0..n-2).rev() {
        if bin.chars().nth(i).unwrap() == '1' {
            let pos_from_right = n - i - 1;
            if pos_from_right % 4 == 1 {
                sum += 2;
            } else if pos_from_right % 4 == 2 {
                sum += 4;
            } else if pos_from_right % 4 == 3 {
                sum += 8;
            } else if pos_from_right % 4 == 0 {
                sum += 6;
            }
        }
    }
    if sum % 10 == 0 {
        1
    } else {
        0
    } 
}
