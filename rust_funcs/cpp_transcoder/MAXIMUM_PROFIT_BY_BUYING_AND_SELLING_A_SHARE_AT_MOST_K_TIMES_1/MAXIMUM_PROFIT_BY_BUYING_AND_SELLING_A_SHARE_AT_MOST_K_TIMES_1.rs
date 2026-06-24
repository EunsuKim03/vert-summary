fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(price: [f32;2], n: u32, k: u32) -> i32 {
    let mut profit = vec![vec![0.0; n + 1]; k + 1]; 
    for i in 1..=k {
        let mut prev_diff = f32::NEG_INFINITY;
        for j in 1..n {
            prev_diff = profit[i - 1][j - 1] - price[j - 1];
            profit[i][j] = profit[i][j - 1].max(price[j] + prev_diff);
        }
    }
    profit[k][n - 1] 
}
