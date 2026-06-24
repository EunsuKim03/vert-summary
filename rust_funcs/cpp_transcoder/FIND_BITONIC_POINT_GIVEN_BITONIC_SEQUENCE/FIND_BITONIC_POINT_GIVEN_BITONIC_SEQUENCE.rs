fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(arr: &mut [f32], left: u32, right: u32) -> i32 {
   if left <= right {
        let mid = (left + right) / 2;
        if arr[mid-1] < arr[mid] && arr[mid] > arr[mid+1] {
            return mid as i32;
        } 
        if arr[mid] < arr[mid+1] {
            return f_gold(arr, mid+1, right);
        } else {
            return f_gold(arr, left, mid-1); 
        }
    }
    -1
}
