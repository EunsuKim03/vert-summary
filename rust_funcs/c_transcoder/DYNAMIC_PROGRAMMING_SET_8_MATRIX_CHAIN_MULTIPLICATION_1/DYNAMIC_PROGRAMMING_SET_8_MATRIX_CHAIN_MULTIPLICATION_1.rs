fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::f32;

fn f_gold(p: [i32;2], n: i32) -> i32 {
   let mut m = vec![vec![0; n as usize]; n as usize];
   for i in 1..n {
       m[i as usize][i as usize] = 0;
   }
   for L in 2..n {
       for i in 1..n-L+1 {
           let j = i + L - 1;
           m[i as usize][j as usize] = f32::INFINITY as i32;
           for k in i..j {
               let q = m[i as usize][k as usize] + m[k as usize + 1][j as usize] + p[i as usize - 1] * p[k as usize] * p[j as usize];
               if q < m[i as usize][j as usize] {
                   m[i as usize][j as usize] = q;
               }
           }
       }
   }
   m[1][n as usize - 1] 
}
