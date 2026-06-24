fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(arr1: [i32; 10], arr2: [i32; 10], m: i32, n: i32) -> i32 {
    let mut i = 0; 
    let mut j = 0;
    for i in 0..n {
        for j in 0..m {
            if arr2[i as usize] == arr1[j as usize] {
                break;
            }
        }
        if j == m { 
            return 0;
        }
    }
    1
}
