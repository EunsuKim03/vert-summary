fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(arr: [i32;2], n: i32) -> i32 {
    if n < 3 {return -1;}
    let mut max_product = i32::MIN;
    for i in 0..n-2 {
        for j in i+1..n-1 {
            for k in j+1..n {
                max_product = max(max_product, arr[i as usize] * arr[j as usize] * arr[k as usize]); 
            }
        }   
    }
    max_product    
}
