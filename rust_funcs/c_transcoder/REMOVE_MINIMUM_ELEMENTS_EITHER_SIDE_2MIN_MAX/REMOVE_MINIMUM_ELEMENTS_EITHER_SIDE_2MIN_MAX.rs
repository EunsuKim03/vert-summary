fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(arr: [i32;2], n: i32) -> i32 {
    let mut longest_start = -1;
    let mut longest_end = 0;
    for start in 0..n {
        let mut min = i32::MAX;
        let mut max = i32::MIN;
        for end in start..n {
            let val = arr[end as usize];
            min = min.min(val);
            max = max.max(val);
            if 2 * min <= max {
                break;
            }
            if end - start > longest_end - longest_start || longest_start == -1 {
                longest_start = start;
                longest_end = end;
            }
        }
    }
    if longest_start == -1 {
        return n;
    }
    return n - (longest_end - longest_start + 1); 
}
