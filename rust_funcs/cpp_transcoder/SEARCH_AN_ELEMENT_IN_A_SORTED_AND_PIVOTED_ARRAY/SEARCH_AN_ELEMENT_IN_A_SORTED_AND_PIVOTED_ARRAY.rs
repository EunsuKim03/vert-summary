fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(arr: [f32;2],  l: u32, h: u32, key: f32) -> i32 {
    if l > h {
        return -1;
    }
    let mid = (l + h) / 2;
    if arr[mid] == key {
        return mid as i32;
    }
    if arr[l] <= arr[mid] {
        if key >= arr[l] && key <= arr[mid] {
            return f_gold(arr, l, mid - 1, key);
        }
        return f_gold(arr, mid + 1, h, key);
    }
    if key >= arr[mid] && key <= arr[h] {
        return f_gold(arr, mid + 1, h, key);
    }
    return f_gold(arr, l, mid - 1, key);
}
