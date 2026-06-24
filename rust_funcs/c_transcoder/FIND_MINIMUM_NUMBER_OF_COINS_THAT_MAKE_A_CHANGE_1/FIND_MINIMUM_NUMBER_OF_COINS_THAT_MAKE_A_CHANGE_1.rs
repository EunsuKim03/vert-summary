fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(coins: [i32;2], m: i32, V: i32) -> i32 {
    let mut table = vec![0; V as usize + 1];
    for i in 1..=V {
        table[i as usize] = std::i32::MAX;
    }
    for i in 1..=V {
        for j in 0..m {
            if coins[j as usize] <= i {
                let sub_res = table[(i - coins[j as usize]) as usize];
                if sub_res != std::i32::MAX && sub_res + 1 < table[i as usize] {
                    table[i as usize] = sub_res + 1;
                }
            }
        }
    }
    table[V as usize]
}
