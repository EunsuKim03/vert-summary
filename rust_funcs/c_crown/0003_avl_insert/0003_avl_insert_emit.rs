#![allow(dead_code)]
#![allow(unused_imports)]
#![allow(unused_variables)]
#![allow(unused_mut)]
#![allow(non_snake_case)]
#![allow(non_camel_case_types)]
#![allow(improper_ctypes_definitions)]
struct Node {
    key: i32,
    left: Option<Box<Node>>,
    right: Option<Box<Node>>, 
}

impl Node {
    fn new(key: i32) -> Node {
        Node {
            key,
            left: None,
            right: None
        }
    }
}

#[no_mangle]
fn insert(node: Option<Box<Node>>, key: i32) -> Option<Box<Node>> {
    match node {
        None => Some(Box::new(Node::new(key))),
        Some(n) => {
            if key < n.key {
                n.left = insert(n.left.take(), key);
            } else {
                n.right = insert(n.right.take(), key);
            }
            Some(n)
        }
    } 
}
fn main(){
}