fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(mut coin: [i32;2], n: i32, k: i32) -> i32 {
   coin.sort_by(|a, b| a.cmp(b));
   let mut coins_needed = (n as f32 / (k + 1) as f32).ceil() as i32;
   let mut ans = 0;
   for i in 0..coins_needed{
       ans += coin[i as usize];
   }
   ans
}
