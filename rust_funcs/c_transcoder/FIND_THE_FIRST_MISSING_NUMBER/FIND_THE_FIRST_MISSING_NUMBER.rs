fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(array: [i32;2], start: i32, end: i32) -> i32 {  
    if start > end  {
        return end + 1;
    }
    if start != array[start as usize] {
        return start;
    }
    let mut mid = (start + end) as f32 / 2.0; 
    if array[mid as usize] == mid as i32{
        f_gold(array, mid as i32 + 1, end)
    } else {
        f_gold(array, start, mid as i32)
    }
}
