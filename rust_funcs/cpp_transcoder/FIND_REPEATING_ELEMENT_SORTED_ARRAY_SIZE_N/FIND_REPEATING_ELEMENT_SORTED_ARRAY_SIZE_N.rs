fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(arr: &mut [f32], low: i32, high: i32) -> i32 {
    if low > high {
        return -1;
    }
    let mid = (low + high) / 2;
    if arr[mid as usize] != (mid + 1) as f32 {
        if mid > 0 && arr[mid as usize - 1] == arr[mid as usize]  {
            return mid;
        }
        return f_gold(arr, low, mid - 1);
    }
    f_gold(arr, mid + 1, high)
}
