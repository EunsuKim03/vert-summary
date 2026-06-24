fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


mod solution {
    extern crate std;
    
    use std::io;

    fn f_gold ( n: i32 ) -> i32 {
        let mut sum = 0;
        for i in 1..=n {
            sum += (2 * i - 1) * (2 * i - 1);
        }
        sum
    }
}
