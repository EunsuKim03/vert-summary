fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(poly: [i32;2], n: i32, x: i32) -> i32 {
   let mut result = poly[0];
   for i in 1..n {
       result = result * x as i32 + poly[i as usize];
   }
   result
}
