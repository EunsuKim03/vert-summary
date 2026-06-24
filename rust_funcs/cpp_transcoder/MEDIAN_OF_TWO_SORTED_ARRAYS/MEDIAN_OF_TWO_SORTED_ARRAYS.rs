fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(ar1: [f32;2], ar2: [f32;2], n: i32) -> i32 {
    let mut i = 0;
    let mut j = 0;
    let mut count;
    let mut m1 = -1.0;
    let mut m2 = -1.0;
    for count = 0; count <= n; count += 1 {
        if i == n as usize {
            m1 = m2;
            m2 = ar2[0];
            break;
        } else if j == n as usize {
            m1 = m2;
            m2 = ar1[0];
            break;
        }
        if ar1[i] < ar2[j] {
            m1 = m2;
            m2 = ar1[i];
            i += 1;
        } else {
            m1 = m2;
            m2 = ar2[j];
            j += 1;
        }
    }
    return (m1 + m2) / 2.0; 
}
