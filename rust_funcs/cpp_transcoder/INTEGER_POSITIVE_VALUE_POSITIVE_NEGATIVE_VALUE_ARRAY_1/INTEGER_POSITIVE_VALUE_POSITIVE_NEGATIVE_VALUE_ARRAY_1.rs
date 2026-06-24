fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(arr: &mut [f32], n: i32) -> i32 {
    let mut neg: i32 = 0; 
    let mut pos: i32 = 0;
    let mut sum: f32 = 0.0;
    for i in 0..n {
        sum += arr[i as usize];
        if arr[i as usize] < 0.0 {
            neg += 1;
        } else {
            pos += 1;
        }
    }
    sum / (neg - pos).abs() as f32
}
