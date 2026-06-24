fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(arr: [f32;2], low: u32, high: u32, x: f32) -> i32 {
    if low > high {
        return -1;
    }
    if x >= arr[high] {
        return high as i32;
    }
    let mid = (low + high) / 2;
    if arr[mid] == x {
        return mid as i32;
    }
    if mid > 0 && arr[mid - 1] <= x && x < arr[mid] {
        return (mid - 1) as i32;
    }
    if x < arr[mid] {
        return f_gold(arr, low, mid - 1, x);
    }
    return f_gold(arr, mid + 1, high, x);
}
