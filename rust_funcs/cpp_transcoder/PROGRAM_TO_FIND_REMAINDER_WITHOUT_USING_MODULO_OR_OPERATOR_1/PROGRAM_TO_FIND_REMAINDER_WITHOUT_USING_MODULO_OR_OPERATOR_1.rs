fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(num: i32, divisor: i32) -> i32 {
  let mut divisor = divisor;
  let mut num = num;
  if divisor == 0 {
    return -1;
  }
  if divisor < 0  { divisor = -divisor; }
  if num < 0 { num = -num; }
  let mut i = 1;
  let mut product = 0;
  while product <= num  {
    product = divisor * i;
    i += 1;
  }
  num - (product - divisor)
}
