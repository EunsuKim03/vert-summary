fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(array: &mut [f32], start: f32, end: f32) -> i32 { 
    if start > end {
        return end + 1.0;
    }
    if array[start as usize] != start  {
        return start;
    }
    let mid = (start + end) / 2.0;
    if array[mid as usize] == mid {
        return f_gold(array, mid + 1.0, end);
    }
    f_gold(array, start, mid)
}
