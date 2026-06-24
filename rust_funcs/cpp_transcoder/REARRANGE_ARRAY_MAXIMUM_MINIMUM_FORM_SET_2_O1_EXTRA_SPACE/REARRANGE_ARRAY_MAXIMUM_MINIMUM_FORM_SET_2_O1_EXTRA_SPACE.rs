fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(arr: &mut [f32], n: i32) {
    let mut max_idx = n - 1;
    let mut min_idx = 0;
    let max_elem = arr[n as usize - 1] + 1.0;
    for i in 0..n  {
        if i % 2 == 0 {
            arr[i as usize] += ((arr[max_idx as usize]) % max_elem) * max_elem;
            max_idx -= 1;
        } else {
            arr[i as usize] += ((arr[min_idx as usize]) % max_elem) * max_elem;
            min_idx += 1;
        }
    }
    for i in 0..n  {
        arr[i as usize] /= max_elem;
    }
}
