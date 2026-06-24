fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(arr: [i32;2], low: i32, high: i32, x: i32) -> i32 {
    let mut i = low;
    if x <= arr[low as usize] { return low; }
    loop {
        if arr[i as usize] == x { return i; }
        if arr[i as usize] < x && arr[i as usize + 1] >= x { return i + 1; }
        i += 1;
    }
    -1
}
