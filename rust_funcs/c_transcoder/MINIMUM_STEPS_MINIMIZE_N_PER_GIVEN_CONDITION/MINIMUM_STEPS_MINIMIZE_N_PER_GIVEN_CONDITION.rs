fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(n: i32) -> i32 {
    let mut table = Vec::with_capacity(n as usize + 1);
    for i in 0..=n {
        table.push(n - i);
    }
    for i in (n..=1).rev() {
        if i % 2 == 0 {
            table[i as usize / 2] = min(table[i as usize] + 1, table[i as usize / 2]);
        }
        if i % 3 == 0 {
            table[i as usize / 3] = min(table[i as usize] + 1, table[i as usize / 3]); 
        }
    }
    table[1]
}
