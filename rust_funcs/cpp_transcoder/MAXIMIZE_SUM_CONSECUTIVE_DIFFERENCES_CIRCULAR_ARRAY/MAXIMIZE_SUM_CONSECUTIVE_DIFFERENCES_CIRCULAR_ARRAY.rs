fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(mut arr: [f32;2], n: u32) -> i32{
    let mut sum = 0.0;
    arr.sort_by(|a, b| a.partial_cmp(b).unwrap());
    for i in 0..n/2 {
        sum -= 2.0 * arr[i]; 
        sum += 2.0 * arr[n - i - 1];
    }
    sum
}
