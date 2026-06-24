fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

fn f_gold(arr: [f32;2], n: u32) -> i32 {
    let mut max = 0.0;
    let mut msis = vec![0.0; n];
    for i in 0..n {
        msis[i] = arr[i];
    }
    for i in 1..n {
        for j in 0..i {
            if arr[i] > arr[j] && msis[i] < msis[j] + arr[i] {
                msis[i] = msis[j] + arr[i];
            }
        }
    }
    for i in 0..n {
        if max < msis[i] {
            max = msis[i];
        }
    }
    max
}
