fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(arr: [i32;2], n: i32) -> i32 {
    let mut msis = vec![0; n as usize];
    let mut msds = vec![0; n as usize];
    let mut max_sum = i32::MIN;
    msis[0] = arr[0];
    for i in 1..n as usize {
        if arr[i] > arr[i - 1] {
            msis[i] = msis[i - 1] + arr[i]; 
        } else {
            msis[i] = arr[i];
        }
    }
    msds[n as usize - 1] = arr[n as usize - 1];
    for i in (0..n as usize - 1).rev() {
        if arr[i] > arr[i + 1] {
            msds[i] = msds[i + 1] + arr[i];
        } else {
            msds[i] = arr[i];
        }
    }
    for i in 0..n as usize {
        if max_sum < (msis[i] + msds[i] - arr[i]) {
            max_sum = msis[i] + msds[i] - arr[i];
        }
    }
    max_sum
}
