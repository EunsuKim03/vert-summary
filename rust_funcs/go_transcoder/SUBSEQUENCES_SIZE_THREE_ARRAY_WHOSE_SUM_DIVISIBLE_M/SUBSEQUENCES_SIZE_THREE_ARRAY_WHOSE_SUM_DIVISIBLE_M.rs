fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(A: [i32;2], N: i32, M: i32) -> i32 {
    let mut sum: i32;
    let mut ans: i32 = 0;
    for i in 0..N {
        for j in (i + 1)..N {
            for k in (j + 1)..N {
                sum = A[i as usize] + A[j as usize] + A[k as usize];
                if sum % M == 0 {
                    ans += 1;
                }
            }
        }
    }
    ans
}
