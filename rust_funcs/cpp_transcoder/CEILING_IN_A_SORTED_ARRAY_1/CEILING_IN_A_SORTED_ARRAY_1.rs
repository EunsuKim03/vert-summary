fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

fn f_gold(arr: [f32;2], low: f32, high: f32, x: f32) -> i32 {
    let mid = (low + high) / 2.0; 
    if x <= arr[low as usize] {
        return low as i32;
    }
    if x > arr[high as usize] {
        return -1;
    }
    if arr[mid as usize] == x {
        return mid as i32;
    } 
    else if arr[mid as usize] < x {
        if mid + 1.0 <= high && x <= arr[(mid + 1.0) as usize] {
            return (mid + 1.0) as i32; 
        } else {
            return f_gold(arr, mid + 1.0, high, x);
        } 
    } else {
        if mid - 1.0 >= low && x > arr[(mid - 1.0) as usize] {
          return mid as i32
        } else {
            return f_gold(arr, low, mid - 1.0, x);
        }
    }
}
