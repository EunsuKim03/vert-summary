fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(arr: [f32;2], n: f32) -> i32 {
    let mut f_gold = vec![1.0; n as usize];
    for i in 1..n as usize{
        f_gold[i] = 1.0;
        for j in 0..i{
            if arr[i] > arr[j] && f_gold[i] < f_gold[j] + 1.0{
                f_gold[i] = f_gold[j] + 1.0;
            }
        }
    }
    f_gold.iter().fold(0.0, |a, b| a.max(*b))
}
