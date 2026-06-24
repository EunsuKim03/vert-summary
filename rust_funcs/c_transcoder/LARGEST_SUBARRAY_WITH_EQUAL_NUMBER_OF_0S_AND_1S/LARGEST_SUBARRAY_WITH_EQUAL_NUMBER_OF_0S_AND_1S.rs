fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(arr: [i32;2], n: i32) -> i32 {
    let mut sum = 0;
    let mut maxsize = -1;
    let mut startindex = 0;
    for i in 0..n-1 {
        sum = if arr[i as usize] == 0 {-1} else {1}; 
        for j in i+1..n {
            sum += if arr[j as usize] == 0 {-1} else {1}; 
            if sum == 0 && maxsize < j - i + 1 {
                maxsize = j - i + 1;
                startindex = i;
            }
        }
    }
    if maxsize == -1 { println!("No such subarray"); } 
    else { println!("{:?}", &arr[startindex as usize..startindex as usize + maxsize as usize]); }
    maxsize
}
