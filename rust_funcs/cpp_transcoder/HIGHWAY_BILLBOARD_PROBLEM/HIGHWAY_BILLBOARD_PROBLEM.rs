fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(m: i32, x: [i32;2], revenue: [i32;2], n: i32, t: i32) -> i32 {
    let mut max_rev = vec![0; m as usize + 1];
    let mut nxtbb = 0;
    for i in 1..=m {
        if nxtbb < n {
            if x[nxtbb as usize] != i {
                max_rev[i as usize] = max_rev[(i - 1) as usize];
            } else {
                if i <= t {
                    max_rev[i as usize] = max(max_rev[(i - 1) as usize], revenue[nxtbb as usize]);
                } else {
                    max_rev[i as usize] = max(max_rev[(i - t - 1) as usize] + revenue[nxtbb as usize], max_rev[(i - 1) as usize]);
                }
                nxtbb += 1;
            }
        } else {
            max_rev[i as usize] = max_rev[(i - 1) as usize];
        }
    }
    max_rev[m as usize]
}
