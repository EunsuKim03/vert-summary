fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(arr1: [f32;2], arr2: [f32;2], m: u32, n: u32, k: u32) -> i32 {
    let mut sorted: Vec<f32> = Vec::with_capacity(m + n);
    let mut i = 0;
    let mut j = 0;
    let mut d = 0;
    while i < m && j < n {
        if arr1[i] < arr2[j] {
            sorted.push(arr1[i]);
            i += 1;
        } else {
            sorted.push(arr2[j]);
            j += 1;
        }
        d += 1;
    }
    while i < m {
        sorted.push(arr1[i]);
        i += 1;
    }
    while j < n {
        sorted.push(arr2[j]);
        j += 1;
    }
    sorted[k - 1]
}
