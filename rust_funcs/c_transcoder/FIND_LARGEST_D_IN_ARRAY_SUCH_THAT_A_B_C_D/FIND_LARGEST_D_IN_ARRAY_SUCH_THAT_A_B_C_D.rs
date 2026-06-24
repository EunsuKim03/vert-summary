fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

fn f_gold(S: [i32;2], n: i32) -> i32 {
    let mut S = S.clone();
    S.sort();
    for i in (0..n).rev() {
        for j in 0..n {
            if i == j { continue; }
            for k in j+1..n {
                if i == k { continue; }
                for l in k+1..n {
                    if i == l { continue; }
                    if S[i as usize] == S[j as usize] + S[k as usize] + S[l as usize] {
                        return S[i as usize];
                    }
                }
            }
        }
    }
    i32::MIN
}
