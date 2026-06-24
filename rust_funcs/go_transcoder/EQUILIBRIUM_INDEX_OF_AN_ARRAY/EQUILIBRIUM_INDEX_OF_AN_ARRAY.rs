fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(arr: [f32;2], n: i32) -> i32 {
    let mut i: i32;
    let mut j: i32; 
    let mut leftsum: f32;
    let mut rightsum: f32;
    for i in 0..n {
        leftsum = 0.0;
        for j in 0..i {
            leftsum += arr[j as usize];
        }
        rightsum = 0.0;
        for j in (i + 1)..n {
            rightsum += arr[j as usize]; 
        }
        if leftsum == rightsum  { return i; }
    }
    return -1; 
}
