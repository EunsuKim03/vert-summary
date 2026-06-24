fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

fn f_gold(a:[i32;2], n: i32, k: i32) -> i32 {
let mut max_so_far = i32::MIN;
let mut max_ending_here = 0;
for i in 0..(n*k) {
max_ending_here = max_ending_here + a[i as usize % n as usize];
max_so_far = max_so_far.max(max_ending_here);
if max_ending_here < 0 { max_ending_here = 0 };
} 
max_so_far
}
