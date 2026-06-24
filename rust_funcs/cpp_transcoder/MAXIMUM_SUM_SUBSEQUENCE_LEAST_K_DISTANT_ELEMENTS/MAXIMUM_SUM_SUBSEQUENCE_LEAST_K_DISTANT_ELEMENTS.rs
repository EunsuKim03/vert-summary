fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(arr: [f32;2], N: u32, k: u32) -> i32 {
   let mut MS = vec![0.0; N];
   MS[N - 1] = arr[N - 1];
   for i in (0..N - 1).rev() {
       if i + k + 1 >= N {
           MS[i] = arr[i].max(MS[i + 1]);
       } else {
           MS[i] = arr[i] + MS[i + k + 1].max(MS[i + 1]);
       }
   }
   MS[0]
}
