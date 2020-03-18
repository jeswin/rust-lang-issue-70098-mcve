#![cfg(target_os = "android")]
#![allow(non_snake_case)]

use tokio::{runtime::Runtime };

#[no_mangle]
pub fn Java_blah_blah_func() -> &'static str {
    Runtime::new().unwrap().block_on(async {
        myfunc().await
    })    
}

async fn myfunc() -> &'static str {
    "hello"
}