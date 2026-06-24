fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(arr: [f32;2], n: f32, k: f32) -> i32 {
    let mut dist_count = 0;
    for i in 0..n as usize {
        let mut j = 0;
        while j < n as usize && arr[j] != arr[i] {j += 1;}
        if j == n as usize {dist_count += 1;}
        if dist_count == k as usize {return arr[i];}
    }
    -1.0  
}
