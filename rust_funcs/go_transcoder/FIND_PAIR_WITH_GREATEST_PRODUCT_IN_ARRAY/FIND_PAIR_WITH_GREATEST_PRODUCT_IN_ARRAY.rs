fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(arr: [i32;2], n: i32) -> i32 {  
let mut result = -1;
for i in 0..n as usize {     
  for j in 0..n as usize - 1 {     
    for k in j+1..n as usize {
      if arr[j] as f32 * arr[k] as f32 == arr[i] as f32 { 
         result = result.max(arr[i]);  
      }
    }
  }
}
return result;
}
