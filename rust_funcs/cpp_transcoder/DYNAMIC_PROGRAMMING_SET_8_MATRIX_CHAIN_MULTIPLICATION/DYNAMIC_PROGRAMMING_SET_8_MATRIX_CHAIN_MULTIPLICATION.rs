fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(p: [f32;2], i: u32, j: u32) -> i32 {
    if i == j {return 0.0;}
    let mut k = 0; 
    let mut min = f32::MAX;
    let mut count = 0.0;
    for k in i..j {
        count = f_gold(p, i, k) + f_gold(p, k+1, j) + p[i-1] * p[k] * p[j];
        if count < min {min = count;}
    }
    min
}
