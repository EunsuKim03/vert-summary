fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(f: i32, d: i32, s: i32) -> i32 {
    let mut mem = vec![vec![0; s as usize + 1]; d as usize + 1];
    mem[0][0] = 1;
    for i in 1..=d {
        for j in i..=s {
            mem[i as usize][j as usize] = mem[i as usize][(j - 1) as usize] + mem[(i - 1) as usize][(j - 1) as usize];
            if j - f - 1 >= 0 {
                mem[i as usize][j as usize] -= mem[(i - 1) as usize][(j - f - 1) as usize];
            }
        }
    }
    mem[d as usize][s as usize] 
}
