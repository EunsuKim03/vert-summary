fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(a: [f32;2], size: i32) -> i32 {
    let mut max_so_far = a[0];
    let mut curr_max = a[0];
    for i in 1..size as usize {
        curr_max = curr_max.max(curr_max + a[i]);
        max_so_far = max_so_far.max(curr_max); 
    }
    max_so_far
}
