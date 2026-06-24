fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(arr: [f32;2], n: i32, k: i32) -> i32 {  
 if k > n { return -1; }  
 let mut sum = arr[0 as usize];  
 for i in 1..k {  
     sum += arr[i as usize];  
 }  
 let mut max_sum = sum;  
 let mut max_end = k - 1;  
 for i in k..n {  
     sum += arr[i as usize] - arr[(i - k) as usize];  
     if sum > max_sum {  
         max_sum = sum;  
         max_end = i;  
     }  
 }  
 max_end - k + 1  
}
