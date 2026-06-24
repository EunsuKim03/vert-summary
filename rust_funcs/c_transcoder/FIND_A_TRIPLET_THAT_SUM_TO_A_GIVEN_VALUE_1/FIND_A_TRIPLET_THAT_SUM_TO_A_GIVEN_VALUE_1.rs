fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(A: &mut [f32], arr_size: i32, sum: i32) -> i32 {
    let mut i = 0;
    let mut l = 1;
    let mut r = arr_size - 1;
    A.sort();
    while i < arr_size - 2 {
        if A[i] + A[l] + A[r] == sum as f32 {
            println!("Triplet is {}, {}, {}", A[i], A[l], A[r]);
            return 1;
        } else if A[i] + A[l] + A[r] < sum as f32 {
            l += 1;
        } else {
            r -= 1;
        }
        i += 1;
    }
    0
}
