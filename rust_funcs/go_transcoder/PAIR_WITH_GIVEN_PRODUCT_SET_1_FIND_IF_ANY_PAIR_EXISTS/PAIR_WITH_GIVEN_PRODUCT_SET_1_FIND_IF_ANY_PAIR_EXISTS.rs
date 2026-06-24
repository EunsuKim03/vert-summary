fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}



fn f_gold(arr: [i32;2], n: i32, x: i32) -> i32 {
    let mut i = 0;
    while i < n - 1 {
        let mut j = i + 1; 
        while j < n {
            if arr[i as usize] as f32 * arr[j as usize] as f32 == x as f32{
                return 1;
            }
            j += 1;
        }
        i += 1;
    }
   0
}
