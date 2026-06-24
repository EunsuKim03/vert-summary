fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(arr: [f32;2], n: i32) -> i32 {
    let mut left_max = vec![f32::NEG_INFINITY; n as usize];
    left_max[0] = f32::NEG_INFINITY;
    for i in 1..n as usize {
        left_max[i] = left_max[i - 1].max(arr[i - 1]);
    }
    let mut right_min = f32::INFINITY;
    for i in (0..n as usize).rev() {
        if left_max[i] < arr[i] && right_min > arr[i] {
            return i as i32;
        }
        right_min = right_min.min(arr[i]);
    }
    -1
}
