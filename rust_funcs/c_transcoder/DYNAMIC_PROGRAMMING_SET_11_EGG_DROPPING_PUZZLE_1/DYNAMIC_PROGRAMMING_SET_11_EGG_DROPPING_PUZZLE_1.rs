fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::f32;

fn f_gold(n: i32, k: i32) -> i32 {
    let mut egg_floor = vec![vec![0; k as usize + 1]; n as usize + 1];
    let mut res; 
    for i in 1..=n {
        egg_floor[i as usize][1] = 1;
    }
    for j in 1..=k {
        egg_floor[1][j as usize] = j;
    }
    for i in 2..=n {
        for j in 2..=k {
            egg_floor[i as usize][j as usize] = f32::INFINITY as i32;
            for x in 1..=j {
                res = 1 + egg_floor[i as usize - 1][(x - 1) as usize].max(egg_floor[i as usize][(j - x) as usize]);
                if res < egg_floor[i as usize][j as usize] {
                    egg_floor[i as usize][j as usize] = res;
                }
            }
        }
    }
    egg_floor[n as usize][k as usize]
}
