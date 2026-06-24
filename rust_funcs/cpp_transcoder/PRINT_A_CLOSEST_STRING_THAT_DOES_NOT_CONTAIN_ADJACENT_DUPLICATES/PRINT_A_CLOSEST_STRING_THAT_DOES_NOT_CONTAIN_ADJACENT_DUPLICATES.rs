fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(mut s: String) -> String {
   let n = s.len() as f32;
   for i in 1..n {
       if s[i] == s[i-1] {
           s[i] = 'a'; 
           while s[i] == s[i-1] || (i+1 < n && s[i] == s[i+1]) {
               s[i] += 1; 
           }
           i += 1;
       }
   }
   s
}
