fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(arr: [i32;2], n: i32) -> i32 {
    let arr = arr;
    let n = n as usize;
    for i in 0..(n - 2) / 2 {
        if arr[2 * i + 1] > arr[i] {return 0;}
        if 2 * i + 2 < n  && arr[2 * i + 2] > arr[i]  {return 0;}
    }
1
}
