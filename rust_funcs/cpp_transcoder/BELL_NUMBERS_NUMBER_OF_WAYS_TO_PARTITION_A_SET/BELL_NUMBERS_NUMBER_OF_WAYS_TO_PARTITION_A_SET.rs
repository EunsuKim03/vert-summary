fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(n: i32) -> i32 {
    let mut bell = vec![vec![0; n as usize+1]; n as usize+1];
    bell[0][0] = 1;
    for i in 1..=n {
        bell[i as usize][0] = bell[(i-1) as usize][(i-1) as usize];
        for j in 1..=i  {
            bell[i as usize][j as usize] = bell[(i-1) as usize][(j-1) as usize] + bell[i as usize][(j-1) as usize];
        }
    }
    bell[n as usize][0]
}
