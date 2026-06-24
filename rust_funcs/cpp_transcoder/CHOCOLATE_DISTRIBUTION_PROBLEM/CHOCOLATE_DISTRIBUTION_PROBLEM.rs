fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(arr: &mut [f32], n: u32, m: u32) -> i32 {
    if m == 0 || n == 0 {
        return 0.;
    }
    arr.sort_by(|a, b| a.partial_cmp(b).unwrap());
    if n < m {
        return -1.;
    }
    let mut min_diff = f32::MAX;
    let mut first = 0;
    let mut last = 0;
    for i in 0..n-m+1  {
        let diff = arr[i+m-1] - arr[i];
        if diff < min_diff {
            min_diff = diff;
            first = i;
            last = i + m - 1;
        }
    }
    arr[last] - arr[first]
}
