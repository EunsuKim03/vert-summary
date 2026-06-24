fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(a: [i32;2], n: i32) -> i32 {
    let mut result = 1;
    for i in 1..=n {
        let y = (i * (i + 1)) as f32 / 2.0;
        if y < n as f32 {
            result = i;
        } else {
            break;
        }
    }
    result
}
