fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(a: [i32;2], n: i32, k: i32) -> i32 {
    let mut best = 0;
    let mut times = 0;
    for i in 0..n {
        if a[i as usize] > best {
            best = a[i as usize];
            if i != 0 { times = 1; }
        } else {
            times += 1;
        }
        if times >= k {
            return best;
        }
    }
    return best; 
}
