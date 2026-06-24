fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(arr: &mut [i32], n: u32) -> i32 {
    arr.sort();
    let mut result = 0;
    let mut i = 0;
    while i < n - 1 {
        if arr[i] != arr[i + 1] {
            result += arr[i].abs(); 
            i += 1;
        } else {
            i += 2;
        }
    }
    if arr[n - 2] != arr[n - 1] {
        result += arr[n - 1].abs();
    }
    result
}
