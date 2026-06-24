fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(arr: &mut [f32], n: u32) -> i32 { 
    arr.sort_by(|a, b| a.partial_cmp(b).unwrap());
    let mut diff = f32::MAX;
    for i in 0..n-1 {
        if arr[i + 1] - arr[i] < diff {
            diff = arr[i + 1] - arr[i];
        }
    }
    diff
}
