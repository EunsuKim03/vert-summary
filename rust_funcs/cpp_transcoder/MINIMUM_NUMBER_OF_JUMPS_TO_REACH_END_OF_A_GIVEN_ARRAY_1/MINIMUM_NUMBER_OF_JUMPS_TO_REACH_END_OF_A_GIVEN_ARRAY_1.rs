fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(arr: [i32;2], n: i32) -> i32 {
    let mut jumps = vec![0; n as usize];
    let n = n as usize;
    if n == 0 || arr[0] == 0 {
        return i32::MAX;
    }
    jumps[0] = 0;
    for i in 1..n {
        jumps[i] = i32::MAX;
        for j in 0..i {
            if i <= j + arr[j] as usize && jumps[j] != i32::MAX {
                jumps[i] = min(jumps[i], jumps[j] + 1);
                break;
            }
        }
    }
    jumps[n - 1]
}
