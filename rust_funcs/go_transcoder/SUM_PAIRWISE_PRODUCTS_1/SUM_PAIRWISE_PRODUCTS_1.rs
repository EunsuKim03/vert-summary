fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(n: i32) -> i32 { 
    let mut multi_terms = (n as f32 * (n + 1) as f32) / 2.0; 
    let mut sum = multi_terms as i32;

    for i in 2..n+1 {
        multi_terms = multi_terms - (i - 1) as f32;
        sum = sum + (multi_terms * i as f32) as i32;
    }
    sum
}
