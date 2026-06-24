fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(n: i32) -> i32 {
    let mut num = n as f32;
    let mut dec_value = 0; 
    let mut base = 1;
    let mut temp = num;
    while temp != 0.0 {
        let last_digit = (temp % 10.0) as i32;
        temp = temp / 10.0;
        dec_value += last_digit * base;
        base *= 2;
    }
    dec_value
}
