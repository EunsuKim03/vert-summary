fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(str: String) -> i32 { 
   let n = str.len();
   if (str.chars().last().unwrap() as i32 - '0' as i32) % 2 != 0 {
      return 0;      
   }
   let mut digit_sum = 0;
   for i in 0..n {
       digit_sum += (str.chars().nth(i).unwrap() as i32 - '0' as i32); 
   }
   if digit_sum % 3 == 0 {1} else {0}
}
