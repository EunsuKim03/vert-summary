fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(n: i32) -> i32 {
    let mut BT = vec![0; n as usize + 1];
    BT[0] = 1;
    BT[1] = 1;
    for i in 2..=n {
       for j in 0..i {
           BT[i as usize] += BT[j as usize] * BT[i as usize - j as usize - 1];
 }
    }
    BT[n as usize]
}
