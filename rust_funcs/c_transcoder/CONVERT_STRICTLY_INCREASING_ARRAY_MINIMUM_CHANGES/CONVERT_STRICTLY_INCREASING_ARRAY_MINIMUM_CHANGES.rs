fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(arr: [f32;2], n: u32) -> i32 {
    let mut LIS = vec![1; n];
    let mut len = 0;
    for i in 1..n {
        for j in 0..i {
            if arr[i] > arr[j] && (i - j) <= (arr[i] - arr[j]) as usize {
                LIS[i] = LIS[i].max(LIS[j] + 1);
            }
        }
        len = len.max(LIS[i]);
    }
    (n-len) as i32
}
