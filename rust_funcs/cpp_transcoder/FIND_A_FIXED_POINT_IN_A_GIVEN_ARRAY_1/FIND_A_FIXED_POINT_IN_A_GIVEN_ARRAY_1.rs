fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(arr: [f32;2], low: f32, high: f32) -> i32{
    if high >= low {
        let mut mid = (low + high) / 2.0;
        if mid == arr[mid as usize] {return mid;}
        if mid > arr[mid as u32] {return f_gold(arr, mid + 1.0, high);}
        else {return f_gold(arr, low, mid - 1.0);}
    }
    -1.0
}
