fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(arr: [i32;2], n: i32, x: i32) -> i32 {
    if x >= arr[n as usize - 1] {return n - 1}
    if x < arr[0] {return -1}
    for i in 1..n {
        if arr[i as usize] > x {return i - 1}
    }
    -1
}
