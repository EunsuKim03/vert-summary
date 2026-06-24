fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(arr: [f32;2], n: u32) -> i32 {
    let mut i = 0;
    let mut leftsum;
    let mut rightsum;
    while i < n {
        leftsum = 0.0;
        for j in 0..i {
            leftsum += arr[j];
        }
        rightsum = 0.0;
        for j in (i + 1)..n {
            rightsum += arr[j];
        }
        if leftsum == rightsum {
            return i as i32;
        }
        i += 1;
    }
    -1
}
