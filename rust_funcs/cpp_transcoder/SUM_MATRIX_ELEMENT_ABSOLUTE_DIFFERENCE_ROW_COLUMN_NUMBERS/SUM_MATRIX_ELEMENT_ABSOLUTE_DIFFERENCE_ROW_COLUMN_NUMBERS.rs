fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(n: i32) -> i32 { 
    let mut arr: Vec<Vec<i32>> = Vec::with_capacity(n as usize); 
    for i in 0..n {
        let mut row: Vec<i32> = Vec::with_capacity(n as usize);
        for j in 0..n {
            row.push( (i - j).abs() ); 
        }
        arr.push(row);
    } 
    let mut sum = 0;
    for i in 0..n {
        for j in 0..n {
            sum += arr[i as usize][j as usize]; 
        }
    }
    sum
}
