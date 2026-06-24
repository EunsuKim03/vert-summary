fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(a: i32, b: i32) -> i32 {
    let mut s = b.to_string();
    let mut i = 0;
    while s.chars().nth(i) == Some('9') {
        i += 1;
    }
    let result;
    if i == s.len() {
        result = a * s.len() as i32;
    } else {
        result = a * (s.len() - 1) as i32;
    }
    result
}
