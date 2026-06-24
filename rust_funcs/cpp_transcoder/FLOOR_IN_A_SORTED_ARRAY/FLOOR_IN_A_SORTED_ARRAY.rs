fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(arr: [f32;2], n: f32, x: f32) -> i32 {
    if x >= arr[n as usize - 1] {
        return (n - 1.0) as i32;
    }
    if x < arr[0] {
        return -1;
    }
    for i in 1..n as usize {
        if arr[i] > x {
            return (i - 1) as i32;
        }
    }
    -1
}
