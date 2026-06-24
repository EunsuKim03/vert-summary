fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(arr: &mut [f32], n: i32) -> i32 {  
let mut cum_sum: f32 = 0.0;  
for i in 0..n {    
   cum_sum += arr[i as usize];  
}  
 let mut curr_val: f32 = 0.0;  
for i in 0..n {    
   curr_val += i as f32 * arr[i as usize];  
}  
 let mut res = curr_val;  
for i in 1..n {    
   let next_val = curr_val - (cum_sum - arr[(i - 1) as usize]) + arr[(i - 1) as usize] * (n - 1) as f32;    
   curr_val = next_val;    
   res = res.max(next_val);  
}  
res  
}
