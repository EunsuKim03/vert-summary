fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}



fn f_gold(arr: [i32;2], n: i32) -> i32 {
    let mut max_len = 0;
    for i in 0..n {
        let mut curr_sum = 0;
        for j in i..n {
            curr_sum += arr[j as usize];
            if curr_sum == 0 {
                max_len = max(max_len, (j - i + 1) as i32);
            }
        }
    }
    max_len
}
