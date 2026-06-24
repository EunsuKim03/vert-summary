#![allow(dead_code)]
#![allow(unused_imports)]
#![allow(unused_variables)]
#![allow(unused_mut)]
#![allow(non_snake_case)]
#![allow(non_camel_case_types)]
#![allow(improper_ctypes_definitions)]
use std::rc::Rc;

struct Node {
    key: i32,
    left: Option<Rc<Node>>,
    right: Option<Rc<Node>>, 
}

#[no_mangle]
fn min_value_node(node: Rc<Node>) -> Rc<Node> {
    let mut current = node;
    while let Some(left) = current.left.as_ref() {
        current = left.clone();
    }
    current
}
fn main(){
}