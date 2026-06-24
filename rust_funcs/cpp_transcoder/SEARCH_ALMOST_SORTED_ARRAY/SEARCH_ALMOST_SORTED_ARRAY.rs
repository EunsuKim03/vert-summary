fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(arr: [f32;2], l: u32, r: u32, x: f32) -> i32 {
    if r >= l {
        let mid = l + (r - l) / 2;
        if arr[mid] == x { return mid as i32; }
        if mid > 0 && arr[mid - 1] == x { return (mid - 1) as i32; }
        if mid < r && arr[mid + 1] == x { return (mid + 1) as i32; }
        if arr[mid] > x { return f_gold(arr, l, mid - 2, x); }
        return f_gold(arr, mid + 2, r, x);
    }
    -1
}
