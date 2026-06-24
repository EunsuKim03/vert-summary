fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

fn f_gold(arr: [f32;2], n: f32) -> i32 {
    if n == 1.0 {return 1.0;}
    let mut i = 1.0;
    while i < n && arr[i as usize - 1] < arr[i as usize] {
        i += 1.0;
    }
    if i == n {return 1.0;}
    let mut j = i;
    while arr[j as usize] < arr[j as usize - 1] {
        if i > 1.0 && arr[j as usize] < arr[i as usize - 2] {return 0.0;}
        j += 1.0;
    }
    if j == n {return 1.0;}
    let mut k = j;
    if arr[k as usize] < arr[i as usize - 1] {return 0.0;}
    while k > 1.0 && k < n {
        if arr[k as usize] < arr[k as usize - 1] {return 0.0;}
        k += 1.0; 
    }
    1.0
}
