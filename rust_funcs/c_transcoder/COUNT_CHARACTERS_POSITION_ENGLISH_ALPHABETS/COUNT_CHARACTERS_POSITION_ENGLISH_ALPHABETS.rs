fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}



fn f_gold(str: &str) -> i32 {  
   
    let mut result = 0;
   for (i, c) in str.chars().enumerate() {
       if i == (c as usize - 'a' as usize) || i == (c as usize - 'A' as usize) {
           result += 1;
        }
    }
     result  
}
