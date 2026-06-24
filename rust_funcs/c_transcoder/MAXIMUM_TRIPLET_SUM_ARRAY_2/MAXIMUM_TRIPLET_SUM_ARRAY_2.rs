fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(arr: [f32;2], n: f32) -> i32 {
    let mut max_a = f32::NEG_INFINITY;
    let mut max_b = f32::NEG_INFINITY;
    let mut max_c = f32::NEG_INFINITY;
    for i in 0..n as usize {
        if arr[i] > max_a {
            max_c = max_b;
            max_b = max_a;
            max_a = arr[i];
        } else if arr[i] > max_b {
            max_c = max_b;
            max_b = arr[i];
        } else if arr[i] > max_c {
            max_c = arr[i];
        }
    }
    max_a + max_b + max_c
}
