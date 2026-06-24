fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(x: i32, y: u32, p: i32) -> i32 {
    let mut res = 1;
    let mut x = x % p;
    let mut y = y; 
    while y > 0 {
        if y & 1 == 1 {
            res = (res * x) % p;
        }
        y = y >> 1;
        x = (x * x) % p;
    }
    res
}
