fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::i32;

fn f_gold(isbn: String) -> i32 {
    let mut n = isbn.len();
    if n != 10 {return 0};
    let mut sum: i32 = 0;
    for i in 0..9 {        
        let digit = isbn[i] as i32 - '0' as i32;
        if digit < 0 || digit > 9 {return 0};
        sum += digit * (10 - i);        
    }
    let last = isbn[9];
    if last != 'X' && (last < '0' || last > '9') {return 0};
    sum += if last == 'X' {10} else {last as i32 - '0' as i32 };
    if sum % 11 == 0 {1} else {0} 
}
