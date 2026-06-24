fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(a: [f32;2], n: f32, m: f32) -> i32 {
 let mut sum: f32;
 let mut ans: f32 = 0.0;     
 for i in 0..n as usize {       
  for j in (i + 1)..n as usize {       
   for k in (j + 1)..n as usize {             
    sum = a[i] + a[j] + a[k];            
    if sum % m == 0.0 {ans += 1.0;}        
   }     
  } 
 }
 ans
}
