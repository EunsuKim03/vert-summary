fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(arr: [i32;2], n: i32, m: i32) -> i32 {
    let mut arr = arr.to_vec();
    arr.sort();
    let mut max = 0;
    let mut min = 0;
    for i in 0..m {
        min += arr[i as usize];
    }
    for j in (n - m)..n {
        max += arr[j as usize];
    }
    max - min
}
