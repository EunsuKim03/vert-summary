fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

 fn f_gold(mut x: i32, mut y: i32, mut z: i32) -> i32 {
   let mut c = 0;
   while x != 0 && y !=0 && z != 0  {
      x -= 1;
      y -= 1;
      z -= 1;
      c += 1;
   }
   c
}
