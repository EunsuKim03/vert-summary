fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

    use std::io;
    use std::fs::File;
    use std::io::prelude::*;
    use std::path::Path;


    fn f_gold(a: [i32;2], n: i32) -> i32 {
        let mut total = 1;
        for i in 2..=n+1 {
            total += i;
            total -= a[i as usize - 2];
        }
        total
    }
