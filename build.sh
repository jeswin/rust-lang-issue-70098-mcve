export OPENSSL_LIB_DIR='/home/jeswin/temp/openssl/'
export OPENSSL_INCLUDE_DIR='/home/jeswin/temp/openssl/include/'

echo Compiling armv7-linux-androideabi...
RUST_BACKTRACE=1 cargo ndk --target armv7-linux-androideabi --android-platform 28 -- build --release

echo Compiling aarch64-linux-android...
cargo ndk --target aarch64-linux-android --android-platform 28 -- build --release --verbose

echo Compiling i686-linux-android...
cargo ndk --target i686-linux-android --android-platform 28 -- build --release

echo Compiling x86_64-linux-android...
cargo ndk --target x86_64-linux-android --android-platform 28 -- build --release

