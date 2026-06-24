fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


const MOD: usize = 1000000007;

fn f_gold(n: i32, k: i32) -> i32 {
    let mut total = k as usize;
    let mut same = 0; 
    let mut diff = k as usize;
    for i in 2..=n {
        same = diff;
        diff = (total * (k - 1) as usize) % MOD;
        total = (same + diff) % MOD; 
    }
    total
}
