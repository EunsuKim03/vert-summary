fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(a: [f32;2], n: f32) -> i32 {
    let mut result = 1.0; 
    let mut i = 1.0;
    while i <= n {
        let y = (i * (i + 1.0)) / 2.0;
        if y < n {
            result = i;
        } else {
            break;
        }
        i += 1.0;
    }
    result
}
