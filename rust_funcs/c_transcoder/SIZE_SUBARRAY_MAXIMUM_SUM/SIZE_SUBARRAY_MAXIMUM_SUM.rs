fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(a: [f32;2], size: i32) -> i32 {
    let mut max_so_far = f32::NEG_INFINITY;
    let mut max_ending_here = 0.0;
    let mut start = 0;
    let mut end=0; 
    let mut s = 0;
    for i in 0..size {
        max_ending_here += a[i as usize];
        if max_so_far < max_ending_here {
            max_so_far = max_ending_here;
            start = s;
            end = i;
        }
        if max_ending_here < 0.0 {
            max_ending_here = 0.0;
            s = i + 1;
        }
    }
    end - start + 1
}
