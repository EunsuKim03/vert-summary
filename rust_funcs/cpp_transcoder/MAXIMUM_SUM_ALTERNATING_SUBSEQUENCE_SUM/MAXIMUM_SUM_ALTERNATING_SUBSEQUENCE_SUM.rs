fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(arr: [i32;2], n: i32) -> i32 {
    if n == 1 {
        return arr[0]; 
    }
    let mut dec = vec![0; n as usize];
    let mut inc = vec![0; n as usize];
    dec[0] = arr[0];
    inc[0] = arr[0];
    let mut flag = 0;
    for i in 1..n as usize {
        for j in 0..i {
            if arr[j] > arr[i] {
                dec[i] = dec[i].max(inc[j] + arr[i]);
                flag = 1;
            } else if arr[j] < arr[i] && flag == 1 {
                inc[i] = inc[i].max(dec[j] + arr[i]);
            }
        }
    }
    let mut result = i32::MIN;
    for i in 0..n as usize {
        result = result.max(inc[i]);
        result = result.max(dec[i]);
    }
    result
}
