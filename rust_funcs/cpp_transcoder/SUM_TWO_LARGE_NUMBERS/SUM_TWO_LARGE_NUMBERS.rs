fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::str;

fn f_gold(mut str1: String, mut str2: String) -> String {
    if str1.len() > str2.len() {
        std::mem::swap(&mut str1, &mut str2);
    }
    let mut str = String::new();
    let n1 = str1.len();
    let n2 = str2.len();
    str1.reverse();
    str2.reverse();
    let mut carry = 0;
    for i in 0..n1 {
        let sum = ((str1[i] as i32 - '0' as i32) + (str2[i] as i32 - '0' as i32) + carry) as f32;
        str.reverse();
        carry = sum / 10i32 as f32; 
    }
    for i in n1..n2 {
        let sum = ((str2[i] as i32 - '0' as i32) + carry) as f32;
        str.reverse();
        carry = sum / 10i32 as f32;
    }
    if carry > 0 {
        str.push(carry as u8 as char);
    }
    str.reverse();
    str
}
