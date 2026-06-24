fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::string;

fn f_gold(mut str: String) -> i32 { 
    let mut temp = String::new();
    let mut sum: i32 = 0;
    for ch in str.chars() {
        if ch.is_numeric() {
            temp.push(ch);
        } else { 
            sum += temp.parse::<i32>().unwrap();
            temp = String::new(); 
        }
    }
    sum += temp.parse::<i32>().unwrap();
    sum
}
