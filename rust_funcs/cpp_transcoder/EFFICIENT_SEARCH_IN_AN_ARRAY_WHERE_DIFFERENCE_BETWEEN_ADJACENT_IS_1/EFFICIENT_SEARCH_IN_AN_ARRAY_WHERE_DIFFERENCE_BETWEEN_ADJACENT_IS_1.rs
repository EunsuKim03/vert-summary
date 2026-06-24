fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(arr: [i32;2], n: i32, x: i32) -> i32 {
    let mut i: i32 = 0; 
    while i <= n-1  {
        if arr[i as usize] == x {
            return i;
        }
        i += (arr[i as usize] - x).abs();
    }
    -1
}
