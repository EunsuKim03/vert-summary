fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(weight: [i32;2], n: i32, c: i32) -> i32 {
  let mut res = 0;
  let mut bin_rem = c;
  for i in 0..n {
    if weight[i as usize] > bin_rem {
        res += 1;
        bin_rem = c - weight[i as usize];
    } else {
        bin_rem -= weight[i as usize];
    }
  }
  return res; 
}
