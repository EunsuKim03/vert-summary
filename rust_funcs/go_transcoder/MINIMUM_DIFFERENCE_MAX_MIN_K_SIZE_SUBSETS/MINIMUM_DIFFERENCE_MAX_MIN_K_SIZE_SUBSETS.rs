fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

fn f_gold(arr: &mut [i32], N: i32, K: i32) -> i32 {
    arr.sort();
    let mut res = std::i32::MAX;
    for i in 0..N-K+1 {
        let cur_seq_diff = arr[i as usize + K as usize - 1] - arr[i as usize];
        res = res.min(cur_seq_diff);
    }
    res
}
