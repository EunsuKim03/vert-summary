fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(arr: [f32;2], n: u32, x: f32, y: f32) -> i32 {
    let mut min_dist = i32::MAX;
    for i in 0..n {
        for j in (i + 1)..n {
            if ((x == arr[i] && y == arr[j]) || (y == arr[i] && x == arr[j]))
                && min_dist > (i as i32 - j as i32).abs() 
            {
                min_dist = (i as i32 - j as i32).abs();
            }
        }
    }
    min_dist
}
