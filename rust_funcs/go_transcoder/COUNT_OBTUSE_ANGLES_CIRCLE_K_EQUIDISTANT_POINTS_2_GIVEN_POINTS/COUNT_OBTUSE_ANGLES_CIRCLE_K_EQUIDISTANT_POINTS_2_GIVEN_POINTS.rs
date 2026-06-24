fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(a: i32, b: i32, k: i32) -> i32 {
    let c1 = (b - a) - 1;
    let c2 = (k - b) + (a - 1);
    if c1 == c2 {
        0
    } else {
        c1.min(c2) 
    }
}
