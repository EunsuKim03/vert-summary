fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::string::String;

fn f_gold(str1: String, str2: String) -> String {
    if str1.len() > str2.len() {
        std::mem::swap(&mut str1, &mut str2);
    }
    let mut str = String::new();
    let n1 = str1.len();
    let n2 = str2.len();
    let diff = n2 - n1;
    let mut carry = 0;
    for i in (0..n1).rev() {
        let sum = (str1.chars().nth(i).unwrap() as u32 - '0' as u32 + str2.chars().nth(i + diff).unwrap() as u32 - '0' as u32 + carry) as u32;
        str.push((sum % 10) as char + '0' as char);
        carry = sum / 10;
    }
    for i in (0..n2 - n1).rev() {
        let sum = (str2.chars().nth(i).unwrap() as u32 - '0' as u32 + carry) as u32;
        str.push((sum % 10) as char + '0' as char);
        carry = sum / 10;
    }
    if carry > 0 {
        str.push(carry as char + '0' as char);
    }
    str.reverse();
    str
}
