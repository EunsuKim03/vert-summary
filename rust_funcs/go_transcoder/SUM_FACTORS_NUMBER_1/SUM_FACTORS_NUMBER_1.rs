fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

fn f_gold(n: i32) -> i32 {
    let mut res = 1;
    let mut i = 2.0;
    while i <= n as f32.sqrt() {
        let mut curr_sum = 1;
        let mut curr_term = 1;
        while n % i as i32 == 0 {
            n /= i as i32;
            curr_term *= i as i32;
            curr_sum += curr_term; 
        }
        res *= curr_sum;
        i += 1.0;
    }
    if n >= 2 {
        res *= 1 + n;
    }
    res
}
