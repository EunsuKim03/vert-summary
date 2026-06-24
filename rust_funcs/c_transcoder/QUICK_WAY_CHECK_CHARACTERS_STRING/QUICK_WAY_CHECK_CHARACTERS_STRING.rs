fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(s: &str) -> i32 {
    let mut n = s.len(); 
    for i in 1..n {
        if s.chars().nth(i).unwrap() != s.chars().nth(0).unwrap() {
            return 0;
        }
    }
    return 1; 
}
