fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

fn f_gold(arr: [i32;2], n: i32, x: i32, y: i32) -> i32 {
    let mut min_dist = std::i32::MAX;
    for i in 0..n {
        for j in (i+1)..n {
            if ((x == arr[i as usize] && y == arr[j as usize]) || (y == arr[i as usize] && x == arr[j as usize])) && min_dist > (i - j).abs() {
                min_dist = (i - j).abs();  
            }
        }
    }
    min_dist
}
