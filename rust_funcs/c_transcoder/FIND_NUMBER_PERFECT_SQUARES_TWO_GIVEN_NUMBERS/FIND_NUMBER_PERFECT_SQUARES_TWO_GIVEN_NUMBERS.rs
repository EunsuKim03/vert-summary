fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(a: i32, b: i32) -> i32 {
   let mut cnt = 0;
   for i in a..=b {
       for j in 1..=((i as f32).sqrt() as i32) {
           if j*j == i {
               cnt += 1;
           }
       }
   }
   cnt
}
