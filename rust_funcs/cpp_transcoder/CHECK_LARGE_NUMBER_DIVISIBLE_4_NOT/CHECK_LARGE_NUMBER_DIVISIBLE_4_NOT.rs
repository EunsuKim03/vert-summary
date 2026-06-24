fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(str: String) -> i32 {
    let n = str.len();
    if n == 0 {return 0}
    if n == 1 {return (str.chars().nth(0).unwrap() as i32 - '0' as i32) % 4 == 0}
    let last = str.chars().nth(n-1).unwrap() as i32 - '0' as i32;
    let second_last = str.chars().nth(n-2).unwrap() as i32 - '0' as i32;
    (second_last * 10 + last) % 4 == 0 
}
