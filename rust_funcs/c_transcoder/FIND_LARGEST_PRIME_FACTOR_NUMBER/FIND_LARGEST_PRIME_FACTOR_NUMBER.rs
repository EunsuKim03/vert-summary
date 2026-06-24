fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(mut n: i32) -> i32 {
    let mut max_prime = -1;
    while n % 2 == 0 {
        max_prime = 2;
        n /= 2;
    }
    for i in (3..(n as f32).sqrt() as i32).step_by(2)  {
        while n % i == 0 {
            max_prime = i;
            n /= i;
        }
    }
    if n > 2 {
        max_prime = n;
    }
    max_prime
}
