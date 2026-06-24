fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(p: [f32;2], n: f32) -> i32 {
    let mut m = vec![vec![0.; n as usize]; n as usize];
    for i in 1..n as usize {
        m[i][i] = 0.;
    }
    for L in 2..n as usize {
        for i in 1..n as usize-L+1 {
            let j = i + L - 1;
            m[i][j] = f32::INFINITY;
            for k in i..j {
                let q = m[i][k] + m[k+1][j] + p[i-1] * p[k] * p[j];
                if q < m[i][j] {
                    m[i][j] = q;
                }
            }
        }
    }
    m[1][n as usize - 1]
}
