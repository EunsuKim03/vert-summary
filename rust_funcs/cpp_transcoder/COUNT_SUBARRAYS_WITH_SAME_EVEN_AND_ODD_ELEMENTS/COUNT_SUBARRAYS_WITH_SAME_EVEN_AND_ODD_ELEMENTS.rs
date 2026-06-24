fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

fn f_gold(arr: [i32;2], n: i32) -> i32 {
    let mut difference = 0;
    let mut ans = 0;
    let mut hash_positive = vec![0; n as usize + 1];
    let mut hash_negative = vec![0; n as usize + 1];
    hash_positive[0] = 1;
    for i in 0..n as usize {
        if arr[i] % 2 == 1 {
            difference += 1;
        } else {
            difference -= 1; 
        }
        if difference < 0 {
            ans += hash_negative[-difference as usize];
            hash_negative[-difference as usize] += 1;
        } else {
            ans += hash_positive[difference as usize];
            hash_positive[difference as usize] += 1;
        }
    }
    ans
}
