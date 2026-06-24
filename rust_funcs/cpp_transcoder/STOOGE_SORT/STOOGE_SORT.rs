fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(arr: &mut [f32], l: u32, h: u32) {
    if l >= h {
        return;
    }
    if arr[l] > arr[h] {
        arr.swap(l, h);
    }
    if h - l + 1 > 2 {
        let t = (h - l + 1) / 3;
        f_gold(arr, l, h - t);
        f_gold(arr, l + t, h); 
        f_gold(arr, l, h - t);
    } 
}
