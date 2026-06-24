#![allow(dead_code)]
#![allow(unused_imports)]
#![allow(unused_variables)]
#![allow(unused_mut)]
#![allow(non_snake_case)]
#![allow(non_camel_case_types)]
#![allow(improper_ctypes_definitions)]
use std::cmp;

struct Node {
    key: i32,
    left: Option<Box<Node>>,
    right: Option<Box<Node>>,
    height: i32, 
}

#[no_mangle]
fn right_rotate(mut y: Box<Node>) -> Box<Node> {
    let mut x = y.left.take().unwrap(); 
    let mut t2 = x.right.take();
 
    y.left = t2;
    y.height = cmp::max(height(&y.left), height(&y.right)) + 1;
    x.right = Some(y);
    x.height = cmp::max(height(&x.left), height(&x.right)) + 1;
 
    Box::new(x)
}

#[no_mangle]
fn height(node: &Option<Box<Node>>) -> i32 {
    match node {
        Some(n) => n.height,
        None => -1
    }
}
fn main(){
}