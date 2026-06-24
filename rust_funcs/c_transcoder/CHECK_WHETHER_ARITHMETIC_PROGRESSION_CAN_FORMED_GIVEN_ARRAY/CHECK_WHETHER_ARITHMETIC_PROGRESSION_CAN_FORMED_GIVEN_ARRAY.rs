fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(mut arr: [i32;2], n: i32) -> i32 {
    let mut n = n as usize;
    if n == 1 {
        return 1;
    }
    arr.sort();
    let mut d = arr[1] - arr[0];
    for i in 2..n {
        if arr[i] - arr[i - 1] != d {
            return 0;
        }
    }
    return 1; 
}
