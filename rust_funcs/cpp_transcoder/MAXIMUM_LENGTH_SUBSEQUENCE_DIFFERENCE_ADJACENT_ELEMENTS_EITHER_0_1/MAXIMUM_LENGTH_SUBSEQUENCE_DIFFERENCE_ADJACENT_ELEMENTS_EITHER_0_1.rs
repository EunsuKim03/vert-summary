fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(arr: [i32;2], n: i32) -> i32 {
    let mut mls = vec![1;n as usize];
    let mut max = 0;
    for i in 1..n {
        for j in 0..i {
            if (arr[i as usize] - arr[j as usize]).abs() <= 1 && mls[i as usize] < mls[j as usize] + 1 {
                mls[i as usize] = mls[j as usize] + 1;
            }
        }
    }
    for i in 0..n {
        if max < mls[i as usize] {
            max = mls[i as usize];
        }
    }
    max 
}
