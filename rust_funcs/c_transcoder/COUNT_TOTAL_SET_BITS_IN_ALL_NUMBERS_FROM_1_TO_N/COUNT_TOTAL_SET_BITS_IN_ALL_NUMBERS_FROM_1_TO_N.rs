fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(n: i32) -> i32 { 
    let mut i = 0;
    let mut ans = 0;
    while (1_i32.checked_shl(i).unwrap()) <= n {
        let mut k = 0;
        let mut change = 1_i32.checked_shl(i).unwrap();
        for j in 0..=n {
            ans += if k {1} else {0};
            if change == 1 {
                k = !k;
                change = 1_i32.checked_shl(i).unwrap();
            } else {
                change -= 1;
            }
        }
        i += 1;
    }
    ans
}
