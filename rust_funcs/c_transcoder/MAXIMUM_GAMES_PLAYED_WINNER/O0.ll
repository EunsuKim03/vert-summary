; ModuleID = 'MAXIMUM_GAMES_PLAYED_WINNER_emit.5057029d9f47eee9-cgu.0'
source_filename = "MAXIMUM_GAMES_PLAYED_WINNER_emit.5057029d9f47eee9-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"std::sys::thread_local::native::lazy::Storage<core::cell::Cell<(u64, u64)>, !>" = type { %"core::cell::UnsafeCell<core::mem::maybe_uninit::MaybeUninit<core::cell::Cell<(u64, u64)>>>", i8, [7 x i8] }
%"core::cell::UnsafeCell<core::mem::maybe_uninit::MaybeUninit<core::cell::Cell<(u64, u64)>>>" = type { %"core::mem::maybe_uninit::MaybeUninit<core::cell::Cell<(u64, u64)>>" }
%"core::mem::maybe_uninit::MaybeUninit<core::cell::Cell<(u64, u64)>>" = type { [2 x i64] }
%"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>" = type { [8 x i8] }

@alloc_18d73aa062d524e9620b9e3b55bd9eb1 = private unnamed_addr constant [218 x i8] c"unsafe precondition(s) violated: slice::get_unchecked_mut requires that the range is within the slice\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_0822bccf34c8fc6f70c4c5f5401e7312 = private unnamed_addr constant [120 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/iter/adapters/step_by.rs\00", align 1
@alloc_3ce781ce05660249517c17a63ac575d2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_0822bccf34c8fc6f70c4c5f5401e7312, [16 x i8] c"w\00\00\00\00\00\00\008\02\00\00\01\00\00\00" }>, align 8
@alloc_73d87a28eba4b3167c36a61d14111ce4 = private unnamed_addr constant ptr @_ZN4core3ops8function6FnOnce9call_once17h2c588f9833ffad73E, align 8
@alloc_d0776666182ad032bd1011cf266e2f3a = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@anon.56cfd62e22175d79f9a1a5afbd6cb4c8.0 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @alloc_d0776666182ad032bd1011cf266e2f3a, [24 x i8] zeroinitializer }>, align 8
@alloc_dc2cf6e500b8945bea8d5b09f1c98f21 = private unnamed_addr constant [110 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ptr/mut_ptr.rs\00", align 1
@alloc_8fc679246a9428951f9c3bab02ca4543 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_dc2cf6e500b8945bea8d5b09f1c98f21, [16 x i8] c"m\00\00\00\00\00\00\00\D7\05\00\00\12\00\00\00" }>, align 8
@alloc_a500d906b91607583596fa15e63c2ada = private unnamed_addr constant [40 x i8] c"internal error: entered unreachable code", align 1
@alloc_0bc4122d5de8fdb206942b4e51986eeb = private unnamed_addr constant [126 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/sys/thread_local/native/lazy.rs\00", align 1
@alloc_89be3e56bde41ba9721f89461247e74e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_0bc4122d5de8fdb206942b4e51986eeb, [16 x i8] c"}\00\00\00\00\00\00\00b\00\00\00$\00\00\00" }>, align 8
@"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$23__RUST_STD_INTERNAL_VAL17h80d8e1569169cac2E" = external thread_local global %"std::sys::thread_local::native::lazy::Storage<core::cell::Cell<(u64, u64)>, !>"
@alloc_8a597ff4ccc06c64324d5229815cbf3e = private unnamed_addr constant [110 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/thread/local.rs\00", align 1
@alloc_0266abf3f1ee48cd58e43ed1227693a2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_8a597ff4ccc06c64324d5229815cbf3e, [16 x i8] c"m\00\00\00\00\00\00\00\DF\01\00\00\19\00\00\00" }>, align 8
@alloc_f70b7ea0c6b261f62be4360e9684612e = private unnamed_addr constant [113 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/intrinsics/mod.rs\00", align 1
@alloc_dfdb34bacef9617761afa634117005cd = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f70b7ea0c6b261f62be4360e9684612e, [16 x i8] c"p\00\00\00\00\00\00\00\13\0A\00\00\0E\00\00\00" }>, align 8
@alloc_3e1ebac14318b612ab4efabc52799932 = private unnamed_addr constant [186 x i8] c"unsafe precondition(s) violated: usize::unchecked_add cannot overflow\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_7daa79068841b68d9952dee39abf92f6 = private unnamed_addr constant [106 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ptr/mod.rs\00", align 1
@alloc_0d87c14e0afc26d18a0752880d43f0ed = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_7daa79068841b68d9952dee39abf92f6, [16 x i8] c"i\00\00\00\00\00\00\00\0F\02\00\00\05\00\00\00" }>, align 8
@alloc_bd3468a7b96187f70c1ce98a3e7a63bf = private unnamed_addr constant [283 x i8] c"unsafe precondition(s) violated: ptr::copy_nonoverlapping requires that both pointer arguments are aligned and non-null and the specified memory ranges do not overlap\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_2875d9f120b8cc0de1c30c014c7b6715 = private unnamed_addr constant [283 x i8] c"unsafe precondition(s) violated: ptr::swap_nonoverlapping requires that both pointer arguments are aligned and non-null and the specified memory ranges do not overlap\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_5515c7b35c120aa5a0a21abfa1cff474 = private unnamed_addr constant [109 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/iter/range.rs\00", align 1
@alloc_5a841786226b43ba606ae5b578f20831 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_5515c7b35c120aa5a0a21abfa1cff474, [16 x i8] c"l\00\00\00\00\00\00\00\AB\01\00\00\01\00\00\00" }>, align 8
@alloc_5f856c9c5a649671acdbf03081b5c1d0 = private unnamed_addr constant [221 x i8] c"unsafe precondition(s) violated: ptr::replace requires that the pointer argument is aligned and non-null\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_560a59ed819b9d9a5841f6e731c4c8e5 = private unnamed_addr constant [210 x i8] c"unsafe precondition(s) violated: NonNull::new_unchecked requires that the pointer is non-null\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_fad0cd83b7d1858a846a172eb260e593 = private unnamed_addr constant [42 x i8] c"is_aligned_to: align is not a power-of-two", align 1
@alloc_35c749f09496b1a94c1214737a58d269 = private unnamed_addr constant [112 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ptr/const_ptr.rs\00", align 1
@alloc_3fa0cb230157e93f86c3228a58824d4a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_35c749f09496b1a94c1214737a58d269, [16 x i8] c"o\00\00\00\00\00\00\00^\05\00\00\0D\00\00\00" }>, align 8
@alloc_de4e626d456b04760e72bc785ed7e52a = private unnamed_addr constant [201 x i8] c"unsafe precondition(s) violated: ptr::offset_from_unsigned requires `self >= origin`\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_c2a62cad2463b7238717b75c7310e829 = private unnamed_addr constant [107 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hash/sip.rs\00", align 1
@alloc_59a42ffae0e80e043da0de59b26d90a6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_c2a62cad2463b7238717b75c7310e829, [16 x i8] c"j\00\00\00\00\00\00\00\89\00\00\00\1F\00\00\00" }>, align 8
@alloc_64e308ef4babfeb8b6220184de794a17 = private unnamed_addr constant [221 x i8] c"unsafe precondition(s) violated: hint::assert_unchecked must never be called when the condition is false\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_4aead6e2018a46d0df208d5729447de7 = private unnamed_addr constant [27 x i8] c"assertion failed: step != 0", align 1
@alloc_c6550a5113f0a44ba453e7559721a669 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_0822bccf34c8fc6f70c4c5f5401e7312, [16 x i8] c"w\00\00\00\00\00\00\00#\00\00\00\09\00\00\00" }>, align 8
@anon.56cfd62e22175d79f9a1a5afbd6cb4c8.1 = private unnamed_addr constant <{ [8 x i8], [8 x i8] }> <{ [8 x i8] zeroinitializer, [8 x i8] undef }>, align 8
@alloc_195b6523fcb963364274578f6fb9005b = private unnamed_addr constant [114 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/index_range.rs\00", align 1
@alloc_d6257b1bd6d71606f0c80579dc3f7df1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_195b6523fcb963364274578f6fb9005b, [16 x i8] c"q\00\00\00\00\00\00\00?\00\00\00%\00\00\00" }>, align 8
@alloc_e711b7c34d5403535647600ace7452cf = private unnamed_addr constant [120 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/array/iter/iter_inner.rs\00", align 1
@alloc_36ef99292643bd7886c9678fd53220ab = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e711b7c34d5403535647600ace7452cf, [16 x i8] c"w\00\00\00\00\00\00\00\AE\00\00\00 \00\00\00" }>, align 8
@alloc_d1084648e479974e70c9329824bf76f9 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@alloc_f033895def512958d1fd31dbe57372e0 = private unnamed_addr constant [108 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/mod.rs\00", align 1
@alloc_4837a04415930993040e3aa5c962029e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f033895def512958d1fd31dbe57372e0, [16 x i8] c"k\00\00\00\00\00\00\00\91\08\00\00 \00\00\00" }>, align 8
@alloc_6b0b11c9e93314b588b613b55005cf18 = private unnamed_addr constant [221 x i8] c"unsafe precondition(s) violated: slice::split_at_mut_unchecked requires the index to be within the slice\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_096c43b08ba4c02fd4fc646e4eb5f61d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f033895def512958d1fd31dbe57372e0, [16 x i8] c"k\00\00\00\00\00\00\00\DD\03\00\00\15\00\00\00" }>, align 8
@alloc_2dc2a90639995f73564cefdb21b664ea = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f033895def512958d1fd31dbe57372e0, [16 x i8] c"k\00\00\00\00\00\00\00\DE\03\00\00\15\00\00\00" }>, align 8
@alloc_7900b8a3ded616905abf7347699b78c6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f033895def512958d1fd31dbe57372e0, [16 x i8] c"k\00\00\00\00\00\00\00\F1\03\00\00\1C\00\00\00" }>, align 8
@alloc_c9d18df645f0bc0349c21334b5ffd9ca = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f033895def512958d1fd31dbe57372e0, [16 x i8] c"k\00\00\00\00\00\00\00\F2\03\00\00\1C\00\00\00" }>, align 8
@alloc_b13d47af860a80b29d770888e367c8be = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f033895def512958d1fd31dbe57372e0, [16 x i8] c"k\00\00\00\00\00\00\00\F6\03\00\00 \00\00\00" }>, align 8
@alloc_dd358487823db0f6649bebca57528865 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f033895def512958d1fd31dbe57372e0, [16 x i8] c"k\00\00\00\00\00\00\00\F6\03\00\00+\00\00\00" }>, align 8
@alloc_89d89e5aaa887bee5bee5ec909cff25a = private unnamed_addr constant [108 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ub_checks.rs\00", align 1
@alloc_611f58ae7c0cb6ecdf5f4642bc696b9a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_89d89e5aaa887bee5bee5ec909cff25a, [16 x i8] c"k\00\00\00\00\00\00\00\95\00\00\006\00\00\00" }>, align 8
@alloc_5c1a2f972552229672fc942406cfc298 = private unnamed_addr constant [283 x i8] c"unsafe precondition(s) violated: slice::from_raw_parts_mut requires the pointer to be aligned and non-null, and the total size of the slice not to exceed `isize::MAX`\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_fb86919aba42dcf3fa7bec770d5c8ae8 = private unnamed_addr constant [120 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/sort/shared/mod.rs\00", align 1
@alloc_931634cb509211d43117f85a624f7ad4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_fb86919aba42dcf3fa7bec770d5c8ae8, [16 x i8] c"w\00\00\00\00\00\00\00\22\00\00\00-\00\00\00" }>, align 8
@alloc_d26f09907ab98f304fcfaaceadb9cb06 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_fb86919aba42dcf3fa7bec770d5c8ae8, [16 x i8] c"w\00\00\00\00\00\00\00\22\00\00\00A\00\00\00" }>, align 8
@alloc_b830dbc42590bec8f67c3fc14fb9facc = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_fb86919aba42dcf3fa7bec770d5c8ae8, [16 x i8] c"w\00\00\00\00\00\00\00(\00\00\00/\00\00\00" }>, align 8
@alloc_3701b49a4e08b388bcd00c0795da0c1c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_fb86919aba42dcf3fa7bec770d5c8ae8, [16 x i8] c"w\00\00\00\00\00\00\00(\00\00\00I\00\00\00" }>, align 8
@alloc_c9924649d23fa0226bb48f8af095d24c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_fb86919aba42dcf3fa7bec770d5c8ae8, [16 x i8] c"w\00\00\00\00\00\00\00$\00\00\00.\00\00\00" }>, align 8
@alloc_67a08c562ab3625beb2431e16f5ae16d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_fb86919aba42dcf3fa7bec770d5c8ae8, [16 x i8] c"w\00\00\00\00\00\00\00$\00\00\00H\00\00\00" }>, align 8
@alloc_9f772297db9ec502610d02d05677f965 = private unnamed_addr constant [122 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/sort/shared/pivot.rs\00", align 1
@alloc_2f8e843c534c67cb96543761941a300b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_9f772297db9ec502610d02d05677f965, [16 x i8] c"y\00\00\00\00\00\00\00%\00\00\006\00\00\00" }>, align 8
@alloc_ec595fc0e82ef92fc59bd74f68296eae = private unnamed_addr constant [73 x i8] c"assertion failed: 0 < pointee_size && pointee_size <= isize::MAX as usize", align 1
@alloc_ae7688b138134f73080bc6d7b2676850 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_9f772297db9ec502610d02d05677f965, [16 x i8] c"y\00\00\00\00\00\00\00#\00\00\00-\00\00\00" }>, align 8
@alloc_e29594f41086b4f3c0207ce0636713c2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_9f772297db9ec502610d02d05677f965, [16 x i8] c"y\00\00\00\00\00\00\00*\00\00\00\09\00\00\00" }>, align 8
@alloc_6e22fbfdadcf757ddd9b1eb87f416d8a = private unnamed_addr constant [120 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/sort/stable/mod.rs\00", align 1
@alloc_8eb5e10561a52e3e21ddcc4331476765 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_6e22fbfdadcf757ddd9b1eb87f416d8a, [16 x i8] c"w\00\00\00\00\00\00\00\A3\00\00\00\12\00\00\00" }>, align 8
@alloc_631293fba0507a018eb57e88998a888f = private unnamed_addr constant [122 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/sort/stable/drift.rs\00", align 1
@alloc_f2dd5660ec991d158c5ddbba70411c0e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_631293fba0507a018eb57e88998a888f, [16 x i8] c"y\00\00\00\00\00\00\00\FF\00\00\00\19\00\00\00" }>, align 8
@alloc_bf881e017c9f72abf8140fb789efdd66 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_631293fba0507a018eb57e88998a888f, [16 x i8] c"y\00\00\00\00\00\00\00\F2\00\00\00\12\00\00\00" }>, align 8
@alloc_5f8af39c37d5f8ee2e9894ce845741a6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_631293fba0507a018eb57e88998a888f, [16 x i8] c"y\00\00\00\00\00\00\00\CE\00\00\00$\00\00\00" }>, align 8
@alloc_5be8b393046eedb82fc40754d45c03a6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_631293fba0507a018eb57e88998a888f, [16 x i8] c"y\00\00\00\00\00\00\00\D1\00\00\00$\00\00\00" }>, align 8
@alloc_cff96582350e2216c1a180fa3875da7f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_631293fba0507a018eb57e88998a888f, [16 x i8] c"y\00\00\00\00\00\00\00\0D\01\00\00#\00\00\00" }>, align 8
@alloc_84f25bd43668db495db7efe11a447939 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_631293fba0507a018eb57e88998a888f, [16 x i8] c"y\00\00\00\00\00\00\00\A1\00\00\00\12\00\00\00" }>, align 8
@alloc_17aa6ea520746a7a30b50afbbedf5259 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_631293fba0507a018eb57e88998a888f, [16 x i8] c"y\00\00\00\00\00\00\00]\00\00\00%\00\00\00" }>, align 8
@alloc_5d7c848934990784b7fee386098c4213 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_631293fba0507a018eb57e88998a888f, [16 x i8] c"y\00\00\00\00\00\00\00@\00\00\00\22\00\00\00" }>, align 8
@alloc_e8e5fd9f509afcb950667480b3e3e42a = private unnamed_addr constant [126 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/sort/stable/quicksort.rs\00", align 1
@alloc_77210a9a58e6f675b0a4debce2a91e63 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00,\00\00\00@\00\00\00" }>, align 8
@alloc_2adac2ead9e3dc93f204caf01caf89ce = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\009\00\00\00;\00\00\00" }>, align 8
@alloc_58d434a1e795f965ef82c8e9c5db822a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00J\00\00\00\1F\00\00\00" }>, align 8
@alloc_0766b232215672ee1bd2195fdb153938 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00D\00\00\00\17\00\00\00" }>, align 8
@alloc_763310d78c99c2c1ad3f8a9821e942f3 = private unnamed_addr constant [61 x i8] c"is_nonoverlapping: `size_of::<T>() * count` overflows a usize", align 1
@alloc_bbc2daf0108615c0afa9fe04215660de = private unnamed_addr constant [111 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ptr/non_null.rs\00", align 1
@alloc_fdb6657c631269a6e3489ff48171e168 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_bbc2daf0108615c0afa9fe04215660de, [16 x i8] c"n\00\00\00\00\00\00\00\8E\05\00\00\12\00\00\00" }>, align 8
@alloc_27104ca7c14678ebf4bd4b54287b255e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_bbc2daf0108615c0afa9fe04215660de, [16 x i8] c"n\00\00\00\00\00\00\00\11\01\00\00\1B\00\00\00" }>, align 8
@alloc_4ebdd4fb52733a65108a00e385ff8fd6 = private unnamed_addr constant [107 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/vec/mod.rs\00", align 1
@alloc_90bbe98427952d250653de279965c424 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_4ebdd4fb52733a65108a00e385ff8fd6, [16 x i8] c"j\00\00\00\00\00\00\00\F3\0B\00\00\0D\00\00\00" }>, align 8
@alloc_df788916c4067cf06822f29bdf51529e = private unnamed_addr constant [111 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/raw_vec/mod.rs\00", align 1
@alloc_eb8575322eb46aedd166f4660e76bf8c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_df788916c4067cf06822f29bdf51529e, [16 x i8] c"n\00\00\00\00\00\00\00\A7\01\00\00\15\00\00\00" }>, align 8
@alloc_97d92cbf2a68a6ac45a1b13da79836e4 = private unnamed_addr constant [214 x i8] c"unsafe precondition(s) violated: slice::get_unchecked requires that the index is within the slice\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_23a8a8a45179cd71135a22e7e8fa4068 = private unnamed_addr constant [122 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/sort/stable/merge.rs\00", align 1
@alloc_6f43bd4a6d6fed264215c60a43663872 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_23a8a8a45179cd71135a22e7e8fa4068, [16 x i8] c"y\00\00\00\00\00\00\00\92\00\00\00 \00\00\00" }>, align 8
@anon.56cfd62e22175d79f9a1a5afbd6cb4c8.2 = private unnamed_addr constant <{ [8 x i8], [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\80", [8 x i8] undef }>, align 8
@alloc_764edef79eecf9bcb55b1695a6f65327 = private unnamed_addr constant [43 x i8] c"/rust/deps/hashbrown-0.16.1/src/raw/mod.rs\00", align 1
@alloc_ee9f3aa49cf56e0ad554277e2e2e75f2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_764edef79eecf9bcb55b1695a6f65327, [16 x i8] c"*\00\00\00\00\00\00\00\14\0C\00\00\15\00\00\00" }>, align 8
@alloc_151bc8cc32e594e0be7b59816dcd339b = private unnamed_addr constant [106 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/mod.rs\00", align 1
@alloc_c569f7b2d50f3d148c21213ba698778a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_151bc8cc32e594e0be7b59816dcd339b, [16 x i8] c"i\00\00\00\00\00\00\00\F5\04\00\00\05\00\00\00" }>, align 8
@vtable.0 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17ha2838f228eac8ee4E", ptr @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17ha9638e1ca1f78d71E", ptr @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17ha9638e1ca1f78d71E" }>, align 8
@vtable.1 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h81e39c6146939fa4E", ptr @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$25find_or_find_insert_index28_$u7b$$u7b$closure$u7d$$u7d$17hb56753ae23eb0d01E" }>, align 8
@vtable.2 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h0ca9b34ef47841fbE", ptr @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hd329a06fb6164e13E" }>, align 8
@alloc_1299f51153252b87bec55f9d8eb96ef9 = private unnamed_addr constant [107 x i8] c"/root/es/vert/vert/rust_funcs/c_transcoder/MAXIMUM_GAMES_PLAYED_WINNER/MAXIMUM_GAMES_PLAYED_WINNER_emit.rs\00", align 1
@alloc_c628948e3530c48665293666100fe0d3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_1299f51153252b87bec55f9d8eb96ef9, [16 x i8] c"j\00\00\00\00\00\00\00\1B\00\00\00\12\00\00\00" }>, align 8
@alloc_259fc6b6cbee0e44773f194fbbadbd4a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_1299f51153252b87bec55f9d8eb96ef9, [16 x i8] c"j\00\00\00\00\00\00\00\1B\00\00\00\1B\00\00\00" }>, align 8
@alloc_7cadb87beeffa680d95784f1e57b5d3d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_1299f51153252b87bec55f9d8eb96ef9, [16 x i8] c"j\00\00\00\00\00\00\00\1B\00\00\00.\00\00\00" }>, align 8
@alloc_70a99ab46af915d240a8ccdd1b306a78 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_1299f51153252b87bec55f9d8eb96ef9, [16 x i8] c"j\00\00\00\00\00\00\00\1B\00\00\007\00\00\00" }>, align 8
@alloc_702147b5a892cfde73ab4ea1374bcff3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_1299f51153252b87bec55f9d8eb96ef9, [16 x i8] c"j\00\00\00\00\00\00\00\1B\00\00\00\0A\00\00\00" }>, align 8
@alloc_4abe4e576db75962aecd18bcc4ba2b21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_1299f51153252b87bec55f9d8eb96ef9, [16 x i8] c"j\00\00\00\00\00\00\00\1F\00\00\00\04\00\00\00" }>, align 8
@alloc_bf18a3fce0cac7293c64e0a90ab29347 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_1299f51153252b87bec55f9d8eb96ef9, [16 x i8] c"j\00\00\00\00\00\00\00\1C\00\00\00\1D\00\00\00" }>, align 8
@alloc_92d6528911e7980a8c7d58abe4cdd652 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_1299f51153252b87bec55f9d8eb96ef9, [16 x i8] c"j\00\00\00\00\00\00\00\1C\00\00\00&\00\00\00" }>, align 8
@alloc_7d0982d3710b64a7c789f2d7ff2a5e25 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_1299f51153252b87bec55f9d8eb96ef9, [16 x i8] c"j\00\00\00\00\00\00\00\1C\00\00\009\00\00\00" }>, align 8
@alloc_848a8850280af43732882781277670ff = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_1299f51153252b87bec55f9d8eb96ef9, [16 x i8] c"j\00\00\00\00\00\00\00\1C\00\00\00B\00\00\00" }>, align 8
@alloc_51bb40a3f33ce10a74adeb463e5bdff4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_1299f51153252b87bec55f9d8eb96ef9, [16 x i8] c"j\00\00\00\00\00\00\00\1C\00\00\00\15\00\00\00" }>, align 8
@alloc_92f8e2d18efc1c93950de51e508aa550 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_1299f51153252b87bec55f9d8eb96ef9, [16 x i8] c"j\00\00\00\00\00\00\00\1D\00\00\00\08\00\00\00" }>, align 8

; <core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::get_unchecked_mut::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut18precondition_check17hc9e15d2710d3e185E"(i64 %start1, i64 %end, i64 %len, ptr align 8 %0) unnamed_addr #0 {
start:
  %_4 = icmp uge i64 %end, %start1
  br i1 %_4, label %bb1, label %bb3

bb3:                                              ; preds = %bb1, %start
; call core::panicking::panic_nounwind_fmt
  call void @_ZN4core9panicking18panic_nounwind_fmt17hf349702e3facb1fdE(ptr @alloc_18d73aa062d524e9620b9e3b55bd9eb1, ptr inttoptr (i64 437 to ptr), i1 zeroext false, ptr align 8 %0) #22
  unreachable

bb1:                                              ; preds = %start
  %_5 = icmp ule i64 %end, %len
  br i1 %_5, label %bb2, label %bb3

bb2:                                              ; preds = %bb1
  ret void
}

; <core::ops::range::Range<usize> as core::iter::adapters::step_by::SpecRangeSetup<core::ops::range::Range<usize>>>::setup
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @"_ZN146_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..iter..adapters..step_by..SpecRangeSetup$LT$core..ops..range..Range$LT$usize$GT$$GT$$GT$5setup17hba0abddf1c13229bE"(i64 %0, i64 %1, i64 %step) unnamed_addr #1 {
start:
  %inner_len = alloca [8 x i8], align 8
  %yield_count = alloca [8 x i8], align 8
  %r = alloca [16 x i8], align 8
  store i64 %0, ptr %r, align 8
  %2 = getelementptr inbounds i8, ptr %r, i64 8
  store i64 %1, ptr %2, align 8
  %_10 = load i64, ptr %r, align 8
  %3 = getelementptr inbounds i8, ptr %r, i64 8
  %_11 = load i64, ptr %3, align 8
  %_5 = icmp ult i64 %_10, %_11
  br i1 %_5, label %bb1, label %bb2

bb2:                                              ; preds = %start
  store i64 0, ptr %inner_len, align 8
  br label %bb3

bb1:                                              ; preds = %start
  %_13 = load i64, ptr %r, align 8
  %4 = getelementptr inbounds i8, ptr %r, i64 8
  %_14 = load i64, ptr %4, align 8
  %_12 = icmp ule i64 %_13, %_14
  br i1 %_12, label %bb4, label %bb5

bb3:                                              ; preds = %bb6, %bb2
  %_17 = icmp eq i64 %step, 0
  br i1 %_17, label %panic, label %bb7

bb5:                                              ; preds = %bb1
  store i64 0, ptr %inner_len, align 8
  br label %bb6

bb4:                                              ; preds = %bb1
  %5 = sub i64 %_14, %_13
  store i64 %5, ptr %inner_len, align 8
  br label %bb6

bb6:                                              ; preds = %bb4, %bb5
  br label %bb3

bb7:                                              ; preds = %bb3
  %6 = load i64, ptr %inner_len, align 8
  %d = udiv i64 %6, %step
  br i1 %_17, label %panic1, label %bb8

panic:                                            ; preds = %bb3
; call core::panicking::panic_const::panic_const_div_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr align 8 @alloc_3ce781ce05660249517c17a63ac575d2) #23
  unreachable

bb8:                                              ; preds = %bb7
  %7 = load i64, ptr %inner_len, align 8
  %r2 = urem i64 %7, %step
  %_19 = icmp ugt i64 %r2, 0
  br i1 %_19, label %bb9, label %bb10

panic1:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_3ce781ce05660249517c17a63ac575d2) #23
  unreachable

bb10:                                             ; preds = %bb8
  store i64 %d, ptr %yield_count, align 8
  br label %bb11

bb9:                                              ; preds = %bb8
  %8 = add i64 %d, 1
  store i64 %8, ptr %yield_count, align 8
  br label %bb11

bb11:                                             ; preds = %bb9, %bb10
  %9 = getelementptr inbounds i8, ptr %r, i64 8
  %10 = load i64, ptr %yield_count, align 8
  store i64 %10, ptr %9, align 8
  %_0.0 = load i64, ptr %r, align 8
  %11 = getelementptr inbounds i8, ptr %r, i64 8
  %_0.1 = load i64, ptr %11, align 8
  %12 = insertvalue { i64, i64 } poison, i64 %_0.0, 0
  %13 = insertvalue { i64, i64 } %12, i64 %_0.1, 1
  ret { i64, i64 } %13
}

; std::collections::hash::map::HashMap<K,V>::new
; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN3std11collections4hash3map20HashMap$LT$K$C$V$GT$3new17hfd1883de9fe6b1e7E"(ptr sret([48 x i8]) align 8 %_0) unnamed_addr #1 {
start:
  %_3 = alloca [32 x i8], align 8
  %_2 = alloca [48 x i8], align 8
; call std::thread::local::LocalKey<T>::with
  %0 = call { i64, i64 } @"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h8b0e374463f7b52fE"(ptr align 8 @alloc_73d87a28eba4b3167c36a61d14111ce4)
  %hash_builder.0 = extractvalue { i64, i64 } %0, 0
  %hash_builder.1 = extractvalue { i64, i64 } %0, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_3, ptr align 8 @anon.56cfd62e22175d79f9a1a5afbd6cb4c8.0, i64 32, i1 false)
  %1 = getelementptr inbounds i8, ptr %_2, i64 32
  store i64 %hash_builder.0, ptr %1, align 8
  %2 = getelementptr inbounds i8, ptr %1, i64 8
  store i64 %hash_builder.1, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_2, ptr align 8 %_3, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %_2, i64 48, i1 false)
  ret void
}

; std::collections::hash::map::HashMap<K,V,S>::get
; Function Attrs: inlinehint nonlazybind uwtable
define align 4 ptr @"_ZN3std11collections4hash3map24HashMap$LT$K$C$V$C$S$GT$3get17h1abbfc889363e7eeE"(ptr align 8 %self, ptr align 4 %k) unnamed_addr #1 {
start:
; call hashbrown::map::HashMap<K,V,S,A>::get
  %_0 = call align 4 ptr @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$3get17hde3daca946872274E"(ptr align 8 %self, ptr align 4 %k) #24
  ret ptr %_0
}

; std::collections::hash::map::HashMap<K,V,S>::insert
; Function Attrs: inlinehint nonlazybind uwtable
define { i32, i32 } @"_ZN3std11collections4hash3map24HashMap$LT$K$C$V$C$S$GT$6insert17h2bbaf467dbed1d33E"(ptr align 8 %self, i32 %k, i32 %v) unnamed_addr #1 {
start:
; call hashbrown::map::HashMap<K,V,S,A>::insert
  %0 = call { i32, i32 } @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h3f2ebe8d303a8ca8E"(ptr align 8 %self, i32 %k, i32 %v)
  %_0.0 = extractvalue { i32, i32 } %0, 0
  %_0.1 = extractvalue { i32, i32 } %0, 1
  %1 = insertvalue { i32, i32 } poison, i32 %_0.0, 0
  %2 = insertvalue { i32, i32 } %1, i32 %_0.1, 1
  ret { i32, i32 } %2
}

; std::sys::thread_local::native::lazy::Storage<T,D>::get_or_init
; Function Attrs: inlinehint nonlazybind uwtable
define ptr @"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$11get_or_init17h7f490380c4d7ca30E"(ptr align 8 %self, ptr align 8 %i) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_0 = alloca [8 x i8], align 8
  %_12 = getelementptr inbounds i8, ptr %self, i64 16
  %1 = load i8, ptr %_12, align 1
  %_4 = trunc nuw i8 %1 to i1
  %_6 = zext i1 %_4 to i64
  %2 = icmp eq i64 %_6, 1
  br i1 %2, label %bb1, label %bb2

bb1:                                              ; preds = %start
  store ptr %self, ptr %_0, align 8
  br label %bb4

bb2:                                              ; preds = %start
; invoke std::sys::thread_local::native::lazy::Storage<T,D>::get_or_init_slow
  %3 = invoke ptr @"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h2164e0f9696029b0E"(ptr align 8 %self, ptr align 8 %i)
          to label %bb3 unwind label %cleanup

bb4:                                              ; preds = %bb3, %bb1
  %4 = load ptr, ptr %_0, align 8
  ret ptr %4

bb7:                                              ; preds = %cleanup
  br label %bb5

cleanup:                                          ; preds = %bb2
  %5 = landingpad { ptr, i32 }
          cleanup
  %6 = extractvalue { ptr, i32 } %5, 0
  %7 = extractvalue { ptr, i32 } %5, 1
  store ptr %6, ptr %0, align 8
  %8 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %7, ptr %8, align 8
  br label %bb7

bb3:                                              ; preds = %bb2
  store ptr %3, ptr %_0, align 8
  br label %bb4

bb5:                                              ; preds = %bb6, %bb7
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds i8, ptr %0, i64 8
  %11 = load i32, ptr %10, align 8
  %12 = insertvalue { ptr, i32 } poison, ptr %9, 0
  %13 = insertvalue { ptr, i32 } %12, i32 %11, 1
  resume { ptr, i32 } %13

bb6:                                              ; No predecessors!
  br label %bb5
}

; std::sys::thread_local::native::lazy::Storage<T,D>::get_or_init_slow
; Function Attrs: cold nonlazybind uwtable
define ptr @"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h2164e0f9696029b0E"(ptr align 8 %self, ptr align 8 %0) unnamed_addr #2 {
start:
  %_30 = alloca [24 x i8], align 8
  %old_value = alloca [16 x i8], align 8
  %self1 = alloca [24 x i8], align 8
  %v = alloca [16 x i8], align 8
  %_0 = alloca [8 x i8], align 8
  %i = alloca [8 x i8], align 8
  store ptr %0, ptr %i, align 8
  %_26 = getelementptr inbounds i8, ptr %self, i64 16
  %1 = load i8, ptr %_26, align 1
  %_4 = trunc nuw i8 %1 to i1
  %_6 = zext i1 %_4 to i64
  switch i64 %_6, label %bb1 [
    i64 0, label %bb4
    i64 1, label %bb3
    i64 2, label %bb2
  ]

bb1:                                              ; preds = %bb19, %start
  unreachable

bb4:                                              ; preds = %start
  %2 = load ptr, ptr %i, align 8
  %3 = ptrtoint ptr %2 to i64
  %4 = icmp eq i64 %3, 0
  %_28 = select i1 %4, i64 0, i64 1
  %5 = trunc nuw i64 %_28 to i1
  br i1 %5, label %bb12, label %bb11

bb3:                                              ; preds = %start
  store ptr %self, ptr %_0, align 8
  br label %bb9

bb2:                                              ; preds = %start
  store ptr null, ptr %_0, align 8
  br label %bb9

bb12:                                             ; preds = %bb4
  %x = load ptr, ptr %i, align 8
  store i64 0, ptr %_30, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %self1, ptr align 8 %x, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %x, ptr align 8 %_30, i64 24, i1 false)
  %_31 = load i64, ptr %self1, align 8
  %6 = trunc nuw i64 %_31 to i1
  br i1 %6, label %bb15, label %bb14

bb11:                                             ; preds = %bb4
  store i64 0, ptr %self1, align 8
  br label %bb14

bb14:                                             ; preds = %bb12, %bb11
; call core::ops::function::FnOnce::call_once
  %7 = call { i64, i64 } @_ZN4core3ops8function6FnOnce9call_once17h58ad4bc24df48926E() #24
  %8 = extractvalue { i64, i64 } %7, 0
  %9 = extractvalue { i64, i64 } %7, 1
  store i64 %8, ptr %v, align 8
  %10 = getelementptr inbounds i8, ptr %v, i64 8
  store i64 %9, ptr %10, align 8
  br label %bb13

bb15:                                             ; preds = %bb12
  %11 = getelementptr inbounds i8, ptr %self1, i64 8
  %12 = load i64, ptr %11, align 8
  %13 = getelementptr inbounds i8, ptr %11, i64 8
  %14 = load i64, ptr %13, align 8
  store i64 %12, ptr %v, align 8
  %15 = getelementptr inbounds i8, ptr %v, i64 8
  store i64 %14, ptr %15, align 8
  br label %bb13

bb13:                                             ; preds = %bb15, %bb14
  %_34.0 = load i64, ptr %v, align 8
  %16 = getelementptr inbounds i8, ptr %v, i64 8
  %_34.1 = load i64, ptr %16, align 8
  br label %bb17

bb17:                                             ; preds = %bb13
; call core::ptr::replace::precondition_check
  call void @_ZN4core3ptr7replace18precondition_check17hde9b15d4298ab2bdE(ptr %self, i64 8, i1 zeroext false, ptr align 8 @alloc_8fc679246a9428951f9c3bab02ca4543) #25
  br label %bb19

bb19:                                             ; preds = %bb17
  %17 = load i64, ptr %self, align 8
  %18 = getelementptr inbounds i8, ptr %self, i64 8
  %19 = load i64, ptr %18, align 8
  store i64 %17, ptr %old_value, align 8
  %20 = getelementptr inbounds i8, ptr %old_value, i64 8
  store i64 %19, ptr %20, align 8
  store i64 %_34.0, ptr %self, align 8
  %21 = getelementptr inbounds i8, ptr %self, i64 8
  store i64 %_34.1, ptr %21, align 8
  %_39 = getelementptr inbounds i8, ptr %self, i64 16
  %22 = load i8, ptr %_39, align 1
  %_17 = trunc nuw i8 %22 to i1
  store i8 1, ptr %_39, align 1
  %_20 = zext i1 %_17 to i64
  switch i64 %_20, label %bb1 [
    i64 0, label %bb7
    i64 1, label %bb6
    i64 2, label %bb5
  ]

bb7:                                              ; preds = %bb19
; call <! as std::sys::thread_local::native::lazy::DestroyedState>::register_dtor
  call void @"_ZN78_$LT$$u21$$u20$as$u20$std..sys..thread_local..native..lazy..DestroyedState$GT$13register_dtor17h2d8d33cfdc8cc844E"(ptr align 8 %self)
  br label %bb8

bb6:                                              ; preds = %bb19
  br label %bb8

bb5:                                              ; preds = %bb19
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17ha2e20a73227bb72eE(ptr align 1 @alloc_a500d906b91607583596fa15e63c2ada, i64 40, ptr align 8 @alloc_89be3e56bde41ba9721f89461247e74e) #23
  unreachable

bb8:                                              ; preds = %bb6, %bb7
  store ptr %self, ptr %_0, align 8
  br label %bb10

bb10:                                             ; preds = %bb9, %bb8
  %23 = load ptr, ptr %_0, align 8
  ret ptr %23

bb9:                                              ; preds = %bb2, %bb3
  br label %bb10
}

; std::hash::random::RandomState::new::{{closure}}
; Function Attrs: inlinehint nonlazybind uwtable
define { i64, i64 } @"_ZN3std4hash6random11RandomState3new28_$u7b$$u7b$closure$u7d$$u7d$17h9d54b25034330c80E"(ptr align 8 %keys) unnamed_addr #1 {
start:
  %_9 = load i64, ptr %keys, align 8
  %0 = getelementptr inbounds i8, ptr %keys, i64 8
  %_10 = load i64, ptr %0, align 8
  %_4 = add i64 %_9, 1
  store i64 %_4, ptr %keys, align 8
  %1 = getelementptr inbounds i8, ptr %keys, i64 8
  store i64 %_10, ptr %1, align 8
  %2 = insertvalue { i64, i64 } poison, i64 %_9, 0
  %3 = insertvalue { i64, i64 } %2, i64 %_10, 1
  ret { i64, i64 } %3
}

; std::hash::random::RandomState::new::KEYS::__rust_std_internal_init_fn
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @_ZN3std4hash6random11RandomState3new4KEYS27__rust_std_internal_init_fn17h9fd08e188cb3933dE() unnamed_addr #1 {
start:
; call std::sys::random::linux::hashmap_random_keys
  %0 = call { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17h6146797cc86fe2ccE()
  %value.0 = extractvalue { i64, i64 } %0, 0
  %value.1 = extractvalue { i64, i64 } %0, 1
  %1 = insertvalue { i64, i64 } poison, i64 %value.0, 0
  %2 = insertvalue { i64, i64 } %1, i64 %value.1, 1
  ret { i64, i64 } %2
}

; std::hash::random::RandomState::new::KEYS::{{constant}}::{{closure}}
; Function Attrs: inlinehint nonlazybind uwtable
define ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hdfee8c15ffb41402E"(ptr align 1 %_1, ptr align 8 %__rust_std_internal_init) unnamed_addr #1 {
start:
  %_3 = call ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$23__RUST_STD_INTERNAL_VAL17h80d8e1569169cac2E")
; call std::sys::thread_local::native::lazy::Storage<T,D>::get_or_init
  %_0 = call ptr @"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$11get_or_init17h7f490380c4d7ca30E"(ptr align 8 %_3, ptr align 8 %__rust_std_internal_init) #24
  ret ptr %_0
}

; std::thread::local::LocalKey<T>::with
; Function Attrs: nonlazybind uwtable
define { i64, i64 } @"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h8b0e374463f7b52fE"(ptr align 8 %self) unnamed_addr #3 {
start:
  %_3 = alloca [24 x i8], align 8
; call std::thread::local::LocalKey<T>::try_with
  call void @"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hbaadd1d0225c0a95E"(ptr sret([24 x i8]) align 8 %_3, ptr align 8 %self) #24
  %_4 = load i64, ptr %_3, align 8
  %0 = trunc nuw i64 %_4 to i1
  br i1 %0, label %bb3, label %bb4

bb3:                                              ; preds = %start
; call std::thread::local::panic_access_error
  call void @_ZN3std6thread5local18panic_access_error17h889b72f0e071fac8E(ptr align 8 @alloc_0266abf3f1ee48cd58e43ed1227693a2) #23
  unreachable

bb4:                                              ; preds = %start
  %1 = getelementptr inbounds i8, ptr %_3, i64 8
  %r.0 = load i64, ptr %1, align 8
  %2 = getelementptr inbounds i8, ptr %1, i64 8
  %r.1 = load i64, ptr %2, align 8
  %3 = insertvalue { i64, i64 } poison, i64 %r.0, 0
  %4 = insertvalue { i64, i64 } %3, i64 %r.1, 1
  ret { i64, i64 } %4

bb2:                                              ; No predecessors!
  unreachable
}

; std::thread::local::LocalKey<T>::try_with
; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hbaadd1d0225c0a95E"(ptr sret([24 x i8]) align 8 %_0, ptr align 8 %self) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_12 = alloca [1 x i8], align 1
  %self2 = alloca [8 x i8], align 8
  %self1 = alloca [8 x i8], align 8
  %_3 = alloca [8 x i8], align 8
  store i8 1, ptr %_12, align 1
  %_7 = load ptr, ptr %self, align 8
  %self3 = invoke ptr %_7(ptr align 8 null)
          to label %bb1 unwind label %cleanup

bb6:                                              ; preds = %cleanup
  %1 = load i8, ptr %_12, align 1
  %2 = trunc nuw i8 %1 to i1
  br i1 %2, label %bb5, label %bb4

cleanup:                                          ; preds = %bb8, %start
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  %5 = extractvalue { ptr, i32 } %3, 1
  store ptr %4, ptr %0, align 8
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %5, ptr %6, align 8
  br label %bb6

bb1:                                              ; preds = %start
  %_15 = ptrtoint ptr %self3 to i64
  %_13 = icmp eq i64 %_15, 0
  br i1 %_13, label %bb7, label %bb8

bb8:                                              ; preds = %bb1
  store ptr %self3, ptr %self2, align 8
  %v = load ptr, ptr %self2, align 8
  store ptr %v, ptr %self1, align 8
  %v4 = load ptr, ptr %self1, align 8
  store ptr %v4, ptr %_3, align 8
  %thread_local = load ptr, ptr %_3, align 8
  store i8 0, ptr %_12, align 1
; invoke std::hash::random::RandomState::new::{{closure}}
  %7 = invoke { i64, i64 } @"_ZN3std4hash6random11RandomState3new28_$u7b$$u7b$closure$u7d$$u7d$17h9d54b25034330c80E"(ptr align 8 %thread_local)
          to label %bb2 unwind label %cleanup

bb7:                                              ; preds = %bb1
  store ptr null, ptr %self2, align 8
  store ptr null, ptr %self1, align 8
  store i64 1, ptr %_0, align 8
  br label %bb3

bb2:                                              ; preds = %bb8
  %_9.0 = extractvalue { i64, i64 } %7, 0
  %_9.1 = extractvalue { i64, i64 } %7, 1
  %8 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %_9.0, ptr %8, align 8
  %9 = getelementptr inbounds i8, ptr %8, i64 8
  store i64 %_9.1, ptr %9, align 8
  store i64 0, ptr %_0, align 8
  br label %bb3

bb3:                                              ; preds = %bb7, %bb2
  ret void

bb4:                                              ; preds = %bb5, %bb6
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr inbounds i8, ptr %0, i64 8
  %12 = load i32, ptr %11, align 8
  %13 = insertvalue { ptr, i32 } poison, ptr %10, 0
  %14 = insertvalue { ptr, i32 } %13, i32 %12, 1
  resume { ptr, i32 } %14

bb5:                                              ; preds = %bb6
  br label %bb4
}

; <&i32 as core::ops::arith::Add>::add
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN49_$LT$$RF$i32$u20$as$u20$core..ops..arith..Add$GT$3add17h9ca9887162e076c6E"(ptr align 4 %self, ptr align 4 %other, ptr align 8 %0) unnamed_addr #1 {
start:
  %self1 = load i32, ptr %self, align 4
  %other2 = load i32, ptr %other, align 4
  %1 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %self1, i32 %other2)
  %_5.0 = extractvalue { i32, i1 } %1, 0
  %_5.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_5.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  ret i32 %_5.0

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 %0) #23
  unreachable
}

; core::intrinsics::rotate_left
; Function Attrs: nounwind nonlazybind uwtable
define i64 @_ZN4core10intrinsics11rotate_left17h9ca3b233ad5f4184E(i64 %x, i32 %shift) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %0 = alloca [8 x i8], align 8
  %_3 = urem i32 %shift, 64
  %1 = zext i32 %_3 to i64
  %2 = call i64 @llvm.fshl.i64(i64 %x, i64 %x, i64 %1)
  store i64 %2, ptr %0, align 8
  %_0 = load i64, ptr %0, align 8
  ret i64 %_0
}

; core::intrinsics::disjoint_bitor
; Function Attrs: nounwind nonlazybind uwtable
define i64 @_ZN4core10intrinsics14disjoint_bitor17he4b9f7eba1e9d867E(i64 %a, i64 %b, ptr align 8 %0) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
; invoke <u64 as core::intrinsics::fallback::DisjointBitOr>::disjoint_bitor
  %_0 = invoke i64 @"_ZN65_$LT$u64$u20$as$u20$core..intrinsics..fallback..DisjointBitOr$GT$14disjoint_bitor17h924ebd5b30109c75E"(i64 %a, i64 %b)
          to label %bb1 unwind label %terminate

terminate:                                        ; preds = %start
  %1 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_cannot_unwind
  call void @_ZN4core9panicking19panic_cannot_unwind17h9d41c6c1d0e0d4e5E() #26
  unreachable

bb1:                                              ; preds = %start
  ret i64 %_0
}

; core::intrinsics::select_unpredictable
; Function Attrs: inlinehint nounwind nonlazybind uwtable
define ptr @_ZN4core10intrinsics20select_unpredictable17heb4f913c2e5f5777E(i1 zeroext %b, ptr %true_val, ptr %false_val) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_0 = alloca [8 x i8], align 8
  br i1 %b, label %bb1, label %bb2

bb2:                                              ; preds = %start
  store ptr %false_val, ptr %_0, align 8
  br label %bb3

bb1:                                              ; preds = %start
  store ptr %true_val, ptr %_0, align 8
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %0 = load ptr, ptr %_0, align 8
  ret ptr %0

bb4:                                              ; No predecessors!
  br label %bb5

bb5:                                              ; preds = %bb6, %bb4
; call core::panicking::panic_cannot_unwind
  call void @_ZN4core9panicking19panic_cannot_unwind17h9d41c6c1d0e0d4e5E() #27
  unreachable

bb6:                                              ; No predecessors!
  br label %bb5
}

; core::intrinsics::select_unpredictable
; Function Attrs: inlinehint nounwind nonlazybind uwtable
define ptr @_ZN4core10intrinsics20select_unpredictable17hff086fc0e31b0d0fE(i1 zeroext %b, ptr %true_val, ptr %false_val) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_0 = alloca [8 x i8], align 8
  br i1 %b, label %bb1, label %bb2

bb2:                                              ; preds = %start
  store ptr %false_val, ptr %_0, align 8
  br label %bb3

bb1:                                              ; preds = %start
  store ptr %true_val, ptr %_0, align 8
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %0 = load ptr, ptr %_0, align 8
  ret ptr %0

bb4:                                              ; No predecessors!
  br label %bb5

bb5:                                              ; preds = %bb6, %bb4
; call core::panicking::panic_cannot_unwind
  call void @_ZN4core9panicking19panic_cannot_unwind17h9d41c6c1d0e0d4e5E() #27
  unreachable

bb6:                                              ; No predecessors!
  br label %bb5
}

; core::intrinsics::unchecked_funnel_shl
; Function Attrs: nounwind nonlazybind uwtable
define i64 @_ZN4core10intrinsics20unchecked_funnel_shl17he7755b0f112b7338E(i64 %a, i64 %b, i32 %shift, ptr align 8 %0) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
; invoke <u64 as core::intrinsics::fallback::FunnelShift>::unchecked_funnel_shl
  %_0 = invoke i64 @"_ZN63_$LT$u64$u20$as$u20$core..intrinsics..fallback..FunnelShift$GT$20unchecked_funnel_shl17h7ff26f9eaf66c875E"(i64 %a, i64 %b, i32 %shift)
          to label %bb1 unwind label %terminate

terminate:                                        ; preds = %start
  %1 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_cannot_unwind
  call void @_ZN4core9panicking19panic_cannot_unwind17h9d41c6c1d0e0d4e5E() #26
  unreachable

bb1:                                              ; preds = %start
  ret i64 %_0
}

; core::intrinsics::typed_swap_nonoverlapping
; Function Attrs: inlinehint nounwind nonlazybind uwtable
define void @_ZN4core10intrinsics25typed_swap_nonoverlapping17h5769d74c7e92d12fE(ptr %x, ptr %y) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
; invoke core::ptr::swap_nonoverlapping
  invoke void @_ZN4core3ptr19swap_nonoverlapping17h22df89c86e1eb1caE(ptr %x, ptr %y, i64 1, ptr align 8 @alloc_dfdb34bacef9617761afa634117005cd)
          to label %bb1 unwind label %terminate

terminate:                                        ; preds = %start
  %0 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_cannot_unwind
  call void @_ZN4core9panicking19panic_cannot_unwind17h9d41c6c1d0e0d4e5E() #26
  unreachable

bb1:                                              ; preds = %start
  ret void
}

; core::intrinsics::typed_swap_nonoverlapping
; Function Attrs: inlinehint nounwind nonlazybind uwtable
define void @_ZN4core10intrinsics25typed_swap_nonoverlapping17h57a7b49d4ff7f845E(ptr %x, ptr %y) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
; invoke core::ptr::swap_nonoverlapping
  invoke void @_ZN4core3ptr19swap_nonoverlapping17h357228de4e3accbdE(ptr %x, ptr %y, i64 1, ptr align 8 @alloc_dfdb34bacef9617761afa634117005cd)
          to label %bb1 unwind label %terminate

terminate:                                        ; preds = %start
  %0 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_cannot_unwind
  call void @_ZN4core9panicking19panic_cannot_unwind17h9d41c6c1d0e0d4e5E() #26
  unreachable

bb1:                                              ; preds = %start
  ret void
}

; core::intrinsics::cold_path
; Function Attrs: cold nounwind nonlazybind uwtable
define internal void @_ZN4core10intrinsics9cold_path17h4de0f809ad4e0b7bE() unnamed_addr #5 {
start:
  ret void
}

; core::cmp::Ord::max
; Function Attrs: inlinehint nonlazybind uwtable
define i64 @_ZN4core3cmp3Ord3max17h3f4564a9a660ee8bE(i64 %0, i64 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %2 = alloca [16 x i8], align 8
  %_6 = alloca [1 x i8], align 1
  %_0 = alloca [8 x i8], align 8
  %other = alloca [8 x i8], align 8
  %self = alloca [8 x i8], align 8
  store i64 %0, ptr %self, align 8
  store i64 %1, ptr %other, align 8
  store i8 1, ptr %_6, align 1
  %_3.i = load i64, ptr %other, align 8
  %_4.i = load i64, ptr %self, align 8
  %_0.i = icmp ult i64 %_3.i, %_4.i
  br label %bb1

bb5:                                              ; preds = %cleanup
  br label %bb8

cleanup:                                          ; No predecessors!
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  %5 = extractvalue { ptr, i32 } %3, 1
  store ptr %4, ptr %2, align 8
  %6 = getelementptr inbounds i8, ptr %2, i64 8
  store i32 %5, ptr %6, align 8
  br label %bb5

bb1:                                              ; preds = %start
  br i1 %_0.i, label %bb2, label %bb3

bb3:                                              ; preds = %bb1
  %7 = load i64, ptr %other, align 8
  store i64 %7, ptr %_0, align 8
  br label %bb4

bb2:                                              ; preds = %bb1
  store i8 0, ptr %_6, align 1
  %8 = load i64, ptr %self, align 8
  store i64 %8, ptr %_0, align 8
  br label %bb4

bb4:                                              ; preds = %bb2, %bb3
  %9 = load i64, ptr %_0, align 8
  ret i64 %9

bb8:                                              ; preds = %bb5
  %10 = load i8, ptr %_6, align 1
  %11 = trunc nuw i8 %10 to i1
  br i1 %11, label %bb7, label %bb6

bb6:                                              ; preds = %bb7, %bb8
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr inbounds i8, ptr %2, i64 8
  %14 = load i32, ptr %13, align 8
  %15 = insertvalue { ptr, i32 } poison, ptr %12, 0
  %16 = insertvalue { ptr, i32 } %15, i32 %14, 1
  resume { ptr, i32 } %16

bb7:                                              ; preds = %bb8
  br label %bb6
}

; core::cmp::Ord::min
; Function Attrs: inlinehint nonlazybind uwtable
define i64 @_ZN4core3cmp3Ord3min17h7c75fca9e61457a4E(i64 %0, i64 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %2 = alloca [16 x i8], align 8
  %_6 = alloca [1 x i8], align 1
  %_0 = alloca [8 x i8], align 8
  %other = alloca [8 x i8], align 8
  %self = alloca [8 x i8], align 8
  store i64 %0, ptr %self, align 8
  store i64 %1, ptr %other, align 8
  store i8 1, ptr %_6, align 1
  %_3.i = load i64, ptr %other, align 8
  %_4.i = load i64, ptr %self, align 8
  %_0.i = icmp ult i64 %_3.i, %_4.i
  br label %bb1

bb5:                                              ; preds = %cleanup
  br label %bb8

cleanup:                                          ; No predecessors!
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  %5 = extractvalue { ptr, i32 } %3, 1
  store ptr %4, ptr %2, align 8
  %6 = getelementptr inbounds i8, ptr %2, i64 8
  store i32 %5, ptr %6, align 8
  br label %bb5

bb1:                                              ; preds = %start
  br i1 %_0.i, label %bb2, label %bb3

bb3:                                              ; preds = %bb1
  store i8 0, ptr %_6, align 1
  %7 = load i64, ptr %self, align 8
  store i64 %7, ptr %_0, align 8
  br label %bb4

bb2:                                              ; preds = %bb1
  %8 = load i64, ptr %other, align 8
  store i64 %8, ptr %_0, align 8
  br label %bb4

bb4:                                              ; preds = %bb2, %bb3
  %9 = load i64, ptr %_0, align 8
  ret i64 %9

bb8:                                              ; preds = %bb5
  %10 = load i8, ptr %_6, align 1
  %11 = trunc nuw i8 %10 to i1
  br i1 %11, label %bb7, label %bb6

bb6:                                              ; preds = %bb7, %bb8
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr inbounds i8, ptr %2, i64 8
  %14 = load i32, ptr %13, align 8
  %15 = insertvalue { ptr, i32 } poison, ptr %12, 0
  %16 = insertvalue { ptr, i32 } %15, i32 %14, 1
  resume { ptr, i32 } %16

bb7:                                              ; preds = %bb8
  br label %bb6
}

; core::cmp::impls::<impl core::cmp::Ord for i32>::cmp
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8 @"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h764980daa63b1ca2E"(ptr align 4 %self, ptr align 4 %other) unnamed_addr #1 {
start:
  %_3 = load i32, ptr %self, align 4
  %_4 = load i32, ptr %other, align 4
  %_0 = call i8 @llvm.scmp.i8.i32(i32 %_3, i32 %_4)
  ret i8 %_0
}

; core::cmp::impls::<impl core::cmp::PartialEq for i32>::eq
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3cmp5impls54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$i32$GT$2eq17h6799684013b7c6aeE"(ptr align 4 %self, ptr align 4 %other) unnamed_addr #1 {
start:
  %_3 = load i32, ptr %self, align 4
  %_4 = load i32, ptr %other, align 4
  %_0 = icmp eq i32 %_3, %_4
  ret i1 %_0
}

; core::num::<impl usize>::unchecked_add::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @"_ZN4core3num23_$LT$impl$u20$usize$GT$13unchecked_add18precondition_check17hbf8a98e7ca50b85fE"(i64 %lhs, i64 %rhs, ptr align 8 %0) unnamed_addr #0 {
start:
  %_7.0 = add i64 %lhs, %rhs
  %_7.1 = icmp ult i64 %_7.0, %lhs
  br i1 %_7.1, label %bb1, label %bb2

bb2:                                              ; preds = %start
  ret void

bb1:                                              ; preds = %start
; call core::panicking::panic_nounwind_fmt
  call void @_ZN4core9panicking18panic_nounwind_fmt17hf349702e3facb1fdE(ptr @alloc_3e1ebac14318b612ab4efabc52799932, ptr inttoptr (i64 373 to ptr), i1 zeroext false, ptr align 8 %0) #22
  unreachable
}

; core::ops::function::FnMut::call_mut
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8 @_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE(ptr align 1 %_1, ptr align 4 %0, ptr align 4 %1) unnamed_addr #1 {
start:
  %_2 = alloca [16 x i8], align 8
  store ptr %0, ptr %_2, align 8
  %2 = getelementptr inbounds i8, ptr %_2, i64 8
  store ptr %1, ptr %2, align 8
  %3 = load ptr, ptr %_2, align 8
  %4 = getelementptr inbounds i8, ptr %_2, i64 8
  %5 = load ptr, ptr %4, align 8
  %_0 = call i8 @cmpfunc(ptr align 4 %3, ptr align 4 %5)
  ret i8 %_0
}

; core::ops::function::FnOnce::call_once{{vtable.shim}}
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h0ca9b34ef47841fbE"(ptr %_1, i64 %0) unnamed_addr #1 {
start:
  %_2 = alloca [8 x i8], align 8
  store i64 %0, ptr %_2, align 8
  %1 = load ptr, ptr %_1, align 8
  %2 = getelementptr inbounds i8, ptr %_1, i64 8
  %3 = load ptr, ptr %2, align 8
  %4 = load i64, ptr %_2, align 8
; call core::ops::function::FnOnce::call_once
  %_0 = call zeroext i1 @_ZN4core3ops8function6FnOnce9call_once17h94414e631abc7cf0E(ptr align 8 %1, ptr align 8 %3, i64 %4) #24
  ret i1 %_0
}

; core::ops::function::FnOnce::call_once{{vtable.shim}}
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h81e39c6146939fa4E"(ptr %_1, i64 %0) unnamed_addr #1 {
start:
  %_2 = alloca [8 x i8], align 8
  store i64 %0, ptr %_2, align 8
  %1 = load ptr, ptr %_1, align 8
  %2 = getelementptr inbounds i8, ptr %_1, i64 8
  %3 = load ptr, ptr %2, align 8
  %4 = load i64, ptr %_2, align 8
; call core::ops::function::FnOnce::call_once
  %_0 = call zeroext i1 @_ZN4core3ops8function6FnOnce9call_once17ha1fdabafdacf8727E(ptr align 8 %1, ptr align 8 %3, i64 %4) #24
  ret i1 %_0
}

; core::ops::function::FnOnce::call_once{{vtable.shim}}
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17ha2838f228eac8ee4E"(ptr %_1, ptr align 8 %0, i64 %1) unnamed_addr #1 {
start:
  %_2 = alloca [16 x i8], align 8
  store ptr %0, ptr %_2, align 8
  %2 = getelementptr inbounds i8, ptr %_2, i64 8
  store i64 %1, ptr %2, align 8
  %3 = load ptr, ptr %_1, align 8
  %4 = load ptr, ptr %_2, align 8
  %5 = getelementptr inbounds i8, ptr %_2, i64 8
  %6 = load i64, ptr %5, align 8
; call core::ops::function::FnOnce::call_once
  %_0 = call i64 @_ZN4core3ops8function6FnOnce9call_once17hf340d0a3ea799d06E(ptr align 8 %3, ptr align 8 %4, i64 %6) #24
  ret i64 %_0
}

; core::ops::function::FnOnce::call_once
; Function Attrs: inlinehint nonlazybind uwtable
define internal ptr @_ZN4core3ops8function6FnOnce9call_once17h2c588f9833ffad73E(ptr align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %1 = alloca [16 x i8], align 8
  %_2 = alloca [8 x i8], align 8
  %_1 = alloca [0 x i8], align 1
  store ptr %0, ptr %_2, align 8
  %2 = load ptr, ptr %_2, align 8
; invoke std::hash::random::RandomState::new::KEYS::{{constant}}::{{closure}}
  %_0 = invoke ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hdfee8c15ffb41402E"(ptr align 1 %_1, ptr align 8 %2)
          to label %bb1 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  %3 = load ptr, ptr %1, align 8
  %4 = getelementptr inbounds i8, ptr %1, i64 8
  %5 = load i32, ptr %4, align 8
  %6 = insertvalue { ptr, i32 } poison, ptr %3, 0
  %7 = insertvalue { ptr, i32 } %6, i32 %5, 1
  resume { ptr, i32 } %7

cleanup:                                          ; preds = %start
  %8 = landingpad { ptr, i32 }
          cleanup
  %9 = extractvalue { ptr, i32 } %8, 0
  %10 = extractvalue { ptr, i32 } %8, 1
  store ptr %9, ptr %1, align 8
  %11 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %10, ptr %11, align 8
  br label %bb3

bb1:                                              ; preds = %start
  ret ptr %_0
}

; core::ops::function::FnOnce::call_once
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @_ZN4core3ops8function6FnOnce9call_once17h58ad4bc24df48926E() unnamed_addr #1 {
start:
  %_2 = alloca [0 x i8], align 1
; call std::hash::random::RandomState::new::KEYS::__rust_std_internal_init_fn
  %0 = call { i64, i64 } @_ZN3std4hash6random11RandomState3new4KEYS27__rust_std_internal_init_fn17h9fd08e188cb3933dE() #24
  %_0.0 = extractvalue { i64, i64 } %0, 0
  %_0.1 = extractvalue { i64, i64 } %0, 1
  %1 = insertvalue { i64, i64 } poison, i64 %_0.0, 0
  %2 = insertvalue { i64, i64 } %1, i64 %_0.1, 1
  ret { i64, i64 } %2
}

; core::ops::function::FnOnce::call_once
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @_ZN4core3ops8function6FnOnce9call_once17h94414e631abc7cf0E(ptr align 8 %0, ptr align 8 %1, i64 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %3 = alloca [16 x i8], align 8
  %_2 = alloca [8 x i8], align 8
  %_1 = alloca [16 x i8], align 8
  store ptr %0, ptr %_1, align 8
  %4 = getelementptr inbounds i8, ptr %_1, i64 8
  store ptr %1, ptr %4, align 8
  store i64 %2, ptr %_2, align 8
  %5 = load i64, ptr %_2, align 8
; invoke hashbrown::raw::RawTable<T,A>::find::{{closure}}
  %_0 = invoke zeroext i1 @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hd329a06fb6164e13E"(ptr align 8 %_1, i64 %5)
          to label %bb1 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds i8, ptr %3, i64 8
  %8 = load i32, ptr %7, align 8
  %9 = insertvalue { ptr, i32 } poison, ptr %6, 0
  %10 = insertvalue { ptr, i32 } %9, i32 %8, 1
  resume { ptr, i32 } %10

cleanup:                                          ; preds = %start
  %11 = landingpad { ptr, i32 }
          cleanup
  %12 = extractvalue { ptr, i32 } %11, 0
  %13 = extractvalue { ptr, i32 } %11, 1
  store ptr %12, ptr %3, align 8
  %14 = getelementptr inbounds i8, ptr %3, i64 8
  store i32 %13, ptr %14, align 8
  br label %bb3

bb1:                                              ; preds = %start
  ret i1 %_0
}

; core::ops::function::FnOnce::call_once
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @_ZN4core3ops8function6FnOnce9call_once17ha1fdabafdacf8727E(ptr align 8 %0, ptr align 8 %1, i64 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %3 = alloca [16 x i8], align 8
  %_2 = alloca [8 x i8], align 8
  %_1 = alloca [16 x i8], align 8
  store ptr %0, ptr %_1, align 8
  %4 = getelementptr inbounds i8, ptr %_1, i64 8
  store ptr %1, ptr %4, align 8
  store i64 %2, ptr %_2, align 8
  %5 = load i64, ptr %_2, align 8
; invoke hashbrown::raw::RawTable<T,A>::find_or_find_insert_index::{{closure}}
  %_0 = invoke zeroext i1 @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$25find_or_find_insert_index28_$u7b$$u7b$closure$u7d$$u7d$17hb56753ae23eb0d01E"(ptr align 8 %_1, i64 %5)
          to label %bb1 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds i8, ptr %3, i64 8
  %8 = load i32, ptr %7, align 8
  %9 = insertvalue { ptr, i32 } poison, ptr %6, 0
  %10 = insertvalue { ptr, i32 } %9, i32 %8, 1
  resume { ptr, i32 } %10

cleanup:                                          ; preds = %start
  %11 = landingpad { ptr, i32 }
          cleanup
  %12 = extractvalue { ptr, i32 } %11, 0
  %13 = extractvalue { ptr, i32 } %11, 1
  store ptr %12, ptr %3, align 8
  %14 = getelementptr inbounds i8, ptr %3, i64 8
  store i32 %13, ptr %14, align 8
  br label %bb3

bb1:                                              ; preds = %start
  ret i1 %_0
}

; core::ops::function::FnOnce::call_once
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core3ops8function6FnOnce9call_once17hf340d0a3ea799d06E(ptr align 8 %0, ptr align 8 %1, i64 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %3 = alloca [16 x i8], align 8
  %_2 = alloca [16 x i8], align 8
  %_1 = alloca [8 x i8], align 8
  store ptr %0, ptr %_1, align 8
  store ptr %1, ptr %_2, align 8
  %4 = getelementptr inbounds i8, ptr %_2, i64 8
  store i64 %2, ptr %4, align 8
  %5 = load ptr, ptr %_2, align 8
  %6 = getelementptr inbounds i8, ptr %_2, i64 8
  %7 = load i64, ptr %6, align 8
; invoke hashbrown::raw::RawTable<T,A>::reserve_rehash::{{closure}}
  %_0 = invoke i64 @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17ha9638e1ca1f78d71E"(ptr align 8 %_1, ptr align 8 %5, i64 %7)
          to label %bb1 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds i8, ptr %3, i64 8
  %10 = load i32, ptr %9, align 8
  %11 = insertvalue { ptr, i32 } poison, ptr %8, 0
  %12 = insertvalue { ptr, i32 } %11, i32 %10, 1
  resume { ptr, i32 } %12

cleanup:                                          ; preds = %start
  %13 = landingpad { ptr, i32 }
          cleanup
  %14 = extractvalue { ptr, i32 } %13, 0
  %15 = extractvalue { ptr, i32 } %13, 1
  store ptr %14, ptr %3, align 8
  %16 = getelementptr inbounds i8, ptr %3, i64 8
  store i32 %15, ptr %16, align 8
  br label %bb3

bb1:                                              ; preds = %start
  ret i64 %_0
}

; core::ptr::swap_chunk
; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN4core3ptr10swap_chunk17h5b2438d212fed930E(ptr align 1 %x, ptr align 1 %y) unnamed_addr #1 {
start:
  %_4 = alloca [2 x i8], align 1
  %_3 = alloca [2 x i8], align 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %_3, ptr align 1 %x, i64 2, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %_4, ptr align 1 %y, i64 2, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %x, ptr align 1 %_4, i64 2, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %y, ptr align 1 %_3, i64 2, i1 false)
  ret void
}

; core::ptr::swap_chunk
; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN4core3ptr10swap_chunk17h902d7b0077ac05c9E(ptr align 1 %x, ptr align 1 %y) unnamed_addr #1 {
start:
  %_4 = alloca [8 x i8], align 1
  %_3 = alloca [8 x i8], align 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %_3, ptr align 1 %x, i64 8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %_4, ptr align 1 %y, i64 8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %x, ptr align 1 %_4, i64 8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %y, ptr align 1 %_3, i64 8, i1 false)
  ret void
}

; core::ptr::swap_chunk
; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN4core3ptr10swap_chunk17hb98b3bd01284694dE(ptr align 1 %x, ptr align 1 %y) unnamed_addr #1 {
start:
  %_4 = alloca [4 x i8], align 1
  %_3 = alloca [4 x i8], align 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %_3, ptr align 1 %x, i64 4, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %_4, ptr align 1 %y, i64 4, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %x, ptr align 1 %_4, i64 4, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %y, ptr align 1 %_3, i64 4, i1 false)
  ret void
}

; core::ptr::swap_chunk
; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN4core3ptr10swap_chunk17he371327995eb7e02E(ptr align 1 %x, ptr align 1 %y) unnamed_addr #1 {
start:
  %_4 = alloca [1 x i8], align 1
  %_3 = alloca [1 x i8], align 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %_3, ptr align 1 %x, i64 1, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %_4, ptr align 1 %y, i64 1, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %x, ptr align 1 %_4, i64 1, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %y, ptr align 1 %_3, i64 1, i1 false)
  ret void
}

; core::ptr::drop_in_place<hashbrown::scopeguard::ScopeGuard<&mut hashbrown::raw::RawTableInner,hashbrown::raw::RawTableInner::rehash_in_place::{{closure}}>>
; Function Attrs: nonlazybind uwtable
define void @"_ZN4core3ptr181drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h2a8c35f2a64ba647E"(ptr align 8 %_1) unnamed_addr #3 {
start:
; call <hashbrown::scopeguard::ScopeGuard<T,F> as core::ops::drop::Drop>::drop
  call void @"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3348fd9ff5f36a97E"(ptr align 8 %_1) #24
  ret void
}

; core::ptr::drop_in_place<hashbrown::scopeguard::ScopeGuard<hashbrown::raw::RawTableInner,hashbrown::raw::RawTableInner::prepare_resize<alloc::alloc::Global>::{{closure}}>>
; Function Attrs: nonlazybind uwtable
define void @"_ZN4core3ptr196drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$alloc..alloc..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h470c7daf7ddbbdccE"(ptr align 8 %_1) unnamed_addr #3 {
start:
; call <hashbrown::scopeguard::ScopeGuard<T,F> as core::ops::drop::Drop>::drop
  call void @"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc8cc4207d19f3cabE"(ptr align 8 %_1) #24
  ret void
}

; core::ptr::copy_nonoverlapping::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17hc07330eb8860aa11E(ptr %src, ptr %dst, i64 %size, i64 %align, i64 %count, ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %zero_size = alloca [1 x i8], align 1
  %_8 = icmp eq i64 %count, 0
  br i1 %_8, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %1 = icmp eq i64 %size, 0
  %2 = zext i1 %1 to i8
  store i8 %2, ptr %zero_size, align 1
  br label %bb3

bb1:                                              ; preds = %start
  store i8 1, ptr %zero_size, align 1
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %3 = load i8, ptr %zero_size, align 1
  %is_zst = trunc nuw i8 %3 to i1
; invoke core::ptr::const_ptr::<impl *const T>::is_aligned_to
  %_16 = invoke zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13is_aligned_to17h0373b0b6ebab774eE"(ptr %src, i64 %align)
          to label %bb15 unwind label %terminate

terminate:                                        ; preds = %bb5, %bb4, %bb3
  %4 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_cannot_unwind
  call void @_ZN4core9panicking19panic_cannot_unwind17h9d41c6c1d0e0d4e5E() #26
  unreachable

bb15:                                             ; preds = %bb3
  br i1 %_16, label %bb11, label %bb12

bb12:                                             ; preds = %bb15
  br label %bb7

bb11:                                             ; preds = %bb15
  br i1 %is_zst, label %bb13, label %bb14

bb7:                                              ; preds = %bb14, %bb12
  br label %bb8

bb14:                                             ; preds = %bb11
  %_18 = ptrtoint ptr %src to i64
  %_17 = icmp eq i64 %_18, 0
  %_9 = xor i1 %_17, true
  br i1 %_9, label %bb4, label %bb7

bb13:                                             ; preds = %bb11
  br label %bb4

bb4:                                              ; preds = %bb13, %bb14
; invoke core::ptr::const_ptr::<impl *const T>::is_aligned_to
  %_19 = invoke zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13is_aligned_to17h0373b0b6ebab774eE"(ptr %dst, i64 %align)
          to label %bb20 unwind label %terminate

bb8:                                              ; preds = %bb6, %bb7
  br label %bb9

bb20:                                             ; preds = %bb4
  br i1 %_19, label %bb16, label %bb17

bb17:                                             ; preds = %bb20
  br label %bb6

bb16:                                             ; preds = %bb20
  %5 = load i8, ptr %zero_size, align 1
  %6 = trunc nuw i8 %5 to i1
  br i1 %6, label %bb18, label %bb19

bb6:                                              ; preds = %bb19, %bb17
  br label %bb8

bb19:                                             ; preds = %bb16
  %_21 = ptrtoint ptr %dst to i64
  %_20 = icmp eq i64 %_21, 0
  %_11 = xor i1 %_20, true
  br i1 %_11, label %bb5, label %bb6

bb18:                                             ; preds = %bb16
  br label %bb5

bb5:                                              ; preds = %bb18, %bb19
; invoke core::ub_checks::maybe_is_nonoverlapping::runtime
  %_6 = invoke zeroext i1 @_ZN4core9ub_checks23maybe_is_nonoverlapping7runtime17h47bfc9f76c1c4bd9E(ptr %src, ptr %dst, i64 %size, i64 %count)
          to label %bb21 unwind label %terminate

bb9:                                              ; preds = %bb21, %bb8
; call core::panicking::panic_nounwind_fmt
  call void @_ZN4core9panicking18panic_nounwind_fmt17hf349702e3facb1fdE(ptr @alloc_bd3468a7b96187f70c1ce98a3e7a63bf, ptr inttoptr (i64 567 to ptr), i1 zeroext false, ptr align 8 %0) #22
  unreachable

bb21:                                             ; preds = %bb5
  br i1 %_6, label %bb10, label %bb9

bb10:                                             ; preds = %bb21
  ret void
}

; core::ptr::swap_nonoverlapping
; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN4core3ptr19swap_nonoverlapping17h22df89c86e1eb1caE(ptr %x, ptr %y, i64 %count, ptr align 8 %0) unnamed_addr #1 {
start:
  %1 = alloca [8 x i8], align 8
  %_11 = alloca [8 x i8], align 8
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::swap_nonoverlapping::precondition_check
  call void @_ZN4core3ptr19swap_nonoverlapping18precondition_check17hc613b462f7c945e2E(ptr %x, ptr %y, i64 4, i64 4, i64 %count, ptr align 8 %0) #25
  br label %bb3

bb3:                                              ; preds = %bb1
  %2 = mul nuw nsw i64 %count, 4
  store i64 %2, ptr %1, align 8
  %bytes = load i64, ptr %1, align 8
  store i64 %bytes, ptr %_11, align 8
  %3 = load i64, ptr %_11, align 8
  %4 = icmp eq i64 %3, 0
  %_12 = select i1 %4, i64 0, i64 1
  %5 = trunc nuw i64 %_12 to i1
  br i1 %5, label %bb5, label %bb7

bb5:                                              ; preds = %bb3
  %bytes1 = load i64, ptr %_11, align 8
; call core::ptr::swap_nonoverlapping_bytes
  call void @_ZN4core3ptr25swap_nonoverlapping_bytes17hdf7a41ff9cafacadE(ptr %x, ptr %y, i64 %bytes1) #24
  br label %bb4

bb7:                                              ; preds = %bb3
  br label %bb4

bb4:                                              ; preds = %bb7, %bb5
  ret void

bb9:                                              ; No predecessors!
  unreachable
}

; core::ptr::swap_nonoverlapping
; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN4core3ptr19swap_nonoverlapping17h357228de4e3accbdE(ptr %x, ptr %y, i64 %count, ptr align 8 %0) unnamed_addr #1 {
start:
  %1 = alloca [8 x i8], align 8
  %_11 = alloca [8 x i8], align 8
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::swap_nonoverlapping::precondition_check
  call void @_ZN4core3ptr19swap_nonoverlapping18precondition_check17hc613b462f7c945e2E(ptr %x, ptr %y, i64 32, i64 8, i64 %count, ptr align 8 %0) #25
  br label %bb3

bb3:                                              ; preds = %bb1
  %2 = mul nuw nsw i64 %count, 32
  store i64 %2, ptr %1, align 8
  %bytes = load i64, ptr %1, align 8
  store i64 %bytes, ptr %_11, align 8
  %3 = load i64, ptr %_11, align 8
  %4 = icmp eq i64 %3, 0
  %_12 = select i1 %4, i64 0, i64 1
  %5 = trunc nuw i64 %_12 to i1
  br i1 %5, label %bb5, label %bb7

bb5:                                              ; preds = %bb3
  %bytes1 = load i64, ptr %_11, align 8
; call core::ptr::swap_nonoverlapping_bytes
  call void @_ZN4core3ptr25swap_nonoverlapping_bytes17hdf7a41ff9cafacadE(ptr %x, ptr %y, i64 %bytes1) #24
  br label %bb4

bb7:                                              ; preds = %bb3
  br label %bb4

bb4:                                              ; preds = %bb7, %bb5
  ret void

bb9:                                              ; No predecessors!
  unreachable
}

; core::ptr::swap_nonoverlapping
; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN4core3ptr19swap_nonoverlapping17h46d7bf4669a0f70bE(ptr %x, ptr %y, i64 %count, ptr align 8 %0) unnamed_addr #1 {
start:
  %1 = alloca [8 x i8], align 8
  %_11 = alloca [8 x i8], align 8
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::swap_nonoverlapping::precondition_check
  call void @_ZN4core3ptr19swap_nonoverlapping18precondition_check17hc613b462f7c945e2E(ptr %x, ptr %y, i64 1, i64 1, i64 %count, ptr align 8 %0) #25
  br label %bb3

bb3:                                              ; preds = %bb1
  %2 = mul nuw nsw i64 %count, 1
  store i64 %2, ptr %1, align 8
  %bytes = load i64, ptr %1, align 8
  store i64 %bytes, ptr %_11, align 8
  %3 = load i64, ptr %_11, align 8
  %4 = icmp eq i64 %3, 0
  %_12 = select i1 %4, i64 0, i64 1
  %5 = trunc nuw i64 %_12 to i1
  br i1 %5, label %bb5, label %bb7

bb5:                                              ; preds = %bb3
  %bytes1 = load i64, ptr %_11, align 8
; call core::ptr::swap_nonoverlapping_bytes
  call void @_ZN4core3ptr25swap_nonoverlapping_bytes17hdf7a41ff9cafacadE(ptr %x, ptr %y, i64 %bytes1) #24
  br label %bb4

bb7:                                              ; preds = %bb3
  br label %bb4

bb4:                                              ; preds = %bb7, %bb5
  ret void

bb9:                                              ; No predecessors!
  unreachable
}

; core::ptr::swap_nonoverlapping::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_ZN4core3ptr19swap_nonoverlapping18precondition_check17hc613b462f7c945e2E(ptr %x, ptr %y, i64 %size, i64 %align, i64 %count, ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %zero_size = alloca [1 x i8], align 1
  %_8 = icmp eq i64 %size, 0
  br i1 %_8, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %1 = icmp eq i64 %count, 0
  %2 = zext i1 %1 to i8
  store i8 %2, ptr %zero_size, align 1
  br label %bb3

bb1:                                              ; preds = %start
  store i8 1, ptr %zero_size, align 1
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %3 = load i8, ptr %zero_size, align 1
  %is_zst = trunc nuw i8 %3 to i1
; invoke core::ptr::const_ptr::<impl *const T>::is_aligned_to
  %_17 = invoke zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13is_aligned_to17h0373b0b6ebab774eE"(ptr %x, i64 %align)
          to label %bb15 unwind label %terminate

terminate:                                        ; preds = %bb5, %bb4, %bb3
  %4 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_cannot_unwind
  call void @_ZN4core9panicking19panic_cannot_unwind17h9d41c6c1d0e0d4e5E() #26
  unreachable

bb15:                                             ; preds = %bb3
  br i1 %_17, label %bb11, label %bb12

bb12:                                             ; preds = %bb15
  br label %bb7

bb11:                                             ; preds = %bb15
  br i1 %is_zst, label %bb13, label %bb14

bb7:                                              ; preds = %bb14, %bb12
  br label %bb8

bb14:                                             ; preds = %bb11
  %_19 = ptrtoint ptr %x to i64
  %_18 = icmp eq i64 %_19, 0
  %_9 = xor i1 %_18, true
  br i1 %_9, label %bb4, label %bb7

bb13:                                             ; preds = %bb11
  br label %bb4

bb4:                                              ; preds = %bb13, %bb14
; invoke core::ptr::const_ptr::<impl *const T>::is_aligned_to
  %_20 = invoke zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13is_aligned_to17h0373b0b6ebab774eE"(ptr %y, i64 %align)
          to label %bb20 unwind label %terminate

bb8:                                              ; preds = %bb6, %bb7
  br label %bb9

bb20:                                             ; preds = %bb4
  br i1 %_20, label %bb16, label %bb17

bb17:                                             ; preds = %bb20
  br label %bb6

bb16:                                             ; preds = %bb20
  %5 = load i8, ptr %zero_size, align 1
  %6 = trunc nuw i8 %5 to i1
  br i1 %6, label %bb18, label %bb19

bb6:                                              ; preds = %bb19, %bb17
  br label %bb8

bb19:                                             ; preds = %bb16
  %_22 = ptrtoint ptr %y to i64
  %_21 = icmp eq i64 %_22, 0
  %_12 = xor i1 %_21, true
  br i1 %_12, label %bb5, label %bb6

bb18:                                             ; preds = %bb16
  br label %bb5

bb5:                                              ; preds = %bb18, %bb19
; invoke core::ub_checks::maybe_is_nonoverlapping::runtime
  %_6 = invoke zeroext i1 @_ZN4core9ub_checks23maybe_is_nonoverlapping7runtime17h47bfc9f76c1c4bd9E(ptr %x, ptr %y, i64 %size, i64 %count)
          to label %bb21 unwind label %terminate

bb9:                                              ; preds = %bb21, %bb8
; call core::panicking::panic_nounwind_fmt
  call void @_ZN4core9panicking18panic_nounwind_fmt17hf349702e3facb1fdE(ptr @alloc_2875d9f120b8cc0de1c30c014c7b6715, ptr inttoptr (i64 567 to ptr), i1 zeroext false, ptr align 8 %0) #22
  unreachable

bb21:                                             ; preds = %bb5
  br i1 %_6, label %bb10, label %bb9

bb10:                                             ; preds = %bb21
  ret void
}

; core::ptr::swap_nonoverlapping_bytes
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3ptr25swap_nonoverlapping_bytes17hdf7a41ff9cafacadE(ptr %x, ptr %y, i64 %bytes) unnamed_addr #1 {
start:
  %_13 = alloca [8 x i8], align 8
  %_7 = alloca [8 x i8], align 8
  %chunks = udiv i64 %bytes, 8
  %tail = urem i64 %bytes, 8
  store i64 %chunks, ptr %_7, align 8
  %0 = load i64, ptr %_7, align 8
  %1 = icmp eq i64 %0, 0
  %_8 = select i1 %1, i64 0, i64 1
  %2 = trunc nuw i64 %_8 to i1
  br i1 %2, label %bb1, label %bb3

bb1:                                              ; preds = %start
  %chunks1 = load i64, ptr %_7, align 8
; call core::ptr::swap_nonoverlapping_bytes::swap_nonoverlapping_chunks
  call void @_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17hefac4d4a551e3f39E(ptr %x, ptr %y, i64 %chunks1)
  br label %bb4

bb3:                                              ; preds = %start
  br label %bb4

bb4:                                              ; preds = %bb3, %bb1
  store i64 %tail, ptr %_13, align 8
  %3 = load i64, ptr %_13, align 8
  %4 = icmp eq i64 %3, 0
  %_14 = select i1 %4, i64 0, i64 1
  %5 = trunc nuw i64 %_14 to i1
  br i1 %5, label %bb5, label %bb7

bb5:                                              ; preds = %bb4
  %tail2 = load i64, ptr %_13, align 8
  %delta = mul i64 %chunks, 8
  %_18 = getelementptr inbounds nuw i8, ptr %x, i64 %delta
  %_19 = getelementptr inbounds nuw i8, ptr %y, i64 %delta
; call core::ptr::swap_nonoverlapping_bytes::swap_nonoverlapping_short
  call void @_ZN4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short17h916092560be03243E(ptr %_18, ptr %_19, i64 %tail2) #24
  br label %bb8

bb7:                                              ; preds = %bb4
  br label %bb8

bb8:                                              ; preds = %bb7, %bb5
  ret void

bb9:                                              ; No predecessors!
  unreachable
}

; core::ptr::swap_nonoverlapping_bytes::swap_nonoverlapping_short
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short17h916092560be03243E(ptr %x, ptr %y, i64 %bytes) unnamed_addr #1 {
start:
  %i = alloca [8 x i8], align 8
  store i64 0, ptr %i, align 8
  %_7 = and i64 %bytes, 4
  %_6 = icmp ne i64 %_7, 0
  br i1 %_6, label %bb1, label %bb3

bb3:                                              ; preds = %start
  br label %bb4

bb1:                                              ; preds = %start
  %count = load i64, ptr %i, align 8
  %self = getelementptr inbounds nuw i8, ptr %x, i64 %count
  %count1 = load i64, ptr %i, align 8
  %self2 = getelementptr inbounds nuw i8, ptr %y, i64 %count1
; call core::ptr::swap_chunk
  call void @_ZN4core3ptr10swap_chunk17hb98b3bd01284694dE(ptr align 1 %self, ptr align 1 %self2) #24
  %0 = load i64, ptr %i, align 8
  %1 = or i64 %0, 4
  store i64 %1, ptr %i, align 8
  br label %bb4

bb4:                                              ; preds = %bb1, %bb3
  %_18 = and i64 %bytes, 2
  %_17 = icmp ne i64 %_18, 0
  br i1 %_17, label %bb5, label %bb7

bb7:                                              ; preds = %bb4
  br label %bb8

bb5:                                              ; preds = %bb4
  %count3 = load i64, ptr %i, align 8
  %self4 = getelementptr inbounds nuw i8, ptr %x, i64 %count3
  %count5 = load i64, ptr %i, align 8
  %self6 = getelementptr inbounds nuw i8, ptr %y, i64 %count5
; call core::ptr::swap_chunk
  call void @_ZN4core3ptr10swap_chunk17h5b2438d212fed930E(ptr align 1 %self4, ptr align 1 %self6) #24
  %2 = load i64, ptr %i, align 8
  %3 = or i64 %2, 2
  store i64 %3, ptr %i, align 8
  br label %bb8

bb8:                                              ; preds = %bb5, %bb7
  %_29 = and i64 %bytes, 1
  %_28 = icmp ne i64 %_29, 0
  br i1 %_28, label %bb9, label %bb11

bb11:                                             ; preds = %bb8
  br label %bb12

bb9:                                              ; preds = %bb8
  %count7 = load i64, ptr %i, align 8
  %self8 = getelementptr inbounds nuw i8, ptr %x, i64 %count7
  %count9 = load i64, ptr %i, align 8
  %self10 = getelementptr inbounds nuw i8, ptr %y, i64 %count9
; call core::ptr::swap_chunk
  call void @_ZN4core3ptr10swap_chunk17he371327995eb7e02E(ptr align 1 %self8, ptr align 1 %self10) #24
  %4 = load i64, ptr %i, align 8
  %5 = or i64 %4, 1
  store i64 %5, ptr %i, align 8
  br label %bb12

bb12:                                             ; preds = %bb9, %bb11
  ret void
}

; core::ptr::swap_nonoverlapping_bytes::swap_nonoverlapping_chunks
; Function Attrs: nonlazybind uwtable
define void @_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17hefac4d4a551e3f39E(ptr %x, ptr %y, i64 %chunks) unnamed_addr #3 {
start:
  %_6 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  store i64 0, ptr %iter, align 8
  %0 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %chunks, ptr %0, align 8
  br label %bb1

bb1:                                              ; preds = %bb6, %start
  %_19 = load i64, ptr %iter, align 8
  %1 = getelementptr inbounds i8, ptr %iter, i64 8
  %_20 = load i64, ptr %1, align 8
  %_14 = icmp ult i64 %_19, %_20
  br i1 %_14, label %bb3, label %bb4

bb4:                                              ; preds = %bb1
  ret void

bb3:                                              ; preds = %bb1
  %old = load i64, ptr %iter, align 8
  br label %bb5

bb5:                                              ; preds = %bb3
; call core::num::<impl usize>::unchecked_add::precondition_check
  call void @"_ZN4core3num23_$LT$impl$u20$usize$GT$13unchecked_add18precondition_check17hbf8a98e7ca50b85fE"(i64 %old, i64 1, ptr align 8 @alloc_5a841786226b43ba606ae5b578f20831) #25
  br label %bb6

bb6:                                              ; preds = %bb5
  %_18 = add nuw i64 %old, 1
  store i64 %_18, ptr %iter, align 8
  %2 = getelementptr inbounds i8, ptr %_6, i64 8
  store i64 %old, ptr %2, align 8
  store i64 1, ptr %_6, align 8
  %3 = getelementptr inbounds i8, ptr %_6, i64 8
  %i = load i64, ptr %3, align 8
  %_11 = getelementptr inbounds nuw %"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>", ptr %x, i64 %i
  %_13 = getelementptr inbounds nuw %"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>", ptr %y, i64 %i
; call core::ptr::swap_chunk
  call void @_ZN4core3ptr10swap_chunk17h902d7b0077ac05c9E(ptr align 1 %_11, ptr align 1 %_13) #24
  br label %bb1
}

; core::ptr::drop_in_place<alloc::vec::Vec<i32>>
; Function Attrs: nonlazybind uwtable
define void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hb7ae730e0543c4b4E"(ptr align 8 %_1) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2a917e52e6e54e27E"(ptr align 8 %_1)
          to label %bb4 unwind label %cleanup

bb3:                                              ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::raw_vec::RawVec<i32>>
  invoke void @"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17hc78092e8e830aadfE"(ptr align 8 %_1) #28
          to label %bb1 unwind label %terminate

cleanup:                                          ; preds = %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb3

bb4:                                              ; preds = %start
; call core::ptr::drop_in_place<alloc::raw_vec::RawVec<i32>>
  call void @"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17hc78092e8e830aadfE"(ptr align 8 %_1)
  ret void

terminate:                                        ; preds = %bb3
  %5 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb1:                                              ; preds = %bb3
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds i8, ptr %0, i64 8
  %8 = load i32, ptr %7, align 8
  %9 = insertvalue { ptr, i32 } poison, ptr %6, 0
  %10 = insertvalue { ptr, i32 } %9, i32 %8, 1
  resume { ptr, i32 } %10
}

; core::ptr::drop_in_place<alloc::raw_vec::RawVec<i32>>
; Function Attrs: nonlazybind uwtable
define void @"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17hc78092e8e830aadfE"(ptr align 8 %_1) unnamed_addr #3 {
start:
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc92daf98dc298d77E"(ptr align 8 %_1)
  ret void
}

; core::ptr::drop_in_place<hashbrown::raw::RawTable<(i32,i32)>>
; Function Attrs: nonlazybind uwtable
define void @"_ZN4core3ptr70drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$i32$C$i32$RP$$GT$$GT$17ha4500afe9c89997dE"(ptr align 8 %_1) unnamed_addr #3 {
start:
; call <hashbrown::raw::RawTable<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0a96ee9768e3f12bE"(ptr align 8 %_1)
  ret void
}

; core::ptr::drop_in_place<core::array::iter::IntoIter<usize,2_usize>>
; Function Attrs: nonlazybind uwtable
define void @"_ZN4core3ptr71drop_in_place$LT$core..array..iter..IntoIter$LT$usize$C$2_usize$GT$$GT$17hbf5fcda9f390a905E"(ptr align 8 %_1) unnamed_addr #3 {
start:
; call <core::array::iter::IntoIter<T,_> as core::ops::drop::Drop>::drop
  call void @"_ZN82_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h96d88fdc6f0a6217E"(ptr align 8 %_1) #24
  ret void
}

; core::ptr::drop_in_place<std::collections::hash::map::HashMap<i32,i32>>
; Function Attrs: nonlazybind uwtable
define void @"_ZN4core3ptr74drop_in_place$LT$std..collections..hash..map..HashMap$LT$i32$C$i32$GT$$GT$17haecec49db4630a32E"(ptr align 8 %_1) unnamed_addr #3 {
start:
; call core::ptr::drop_in_place<hashbrown::map::HashMap<i32,i32,std::hash::random::RandomState>>
  call void @"_ZN4core3ptr94drop_in_place$LT$hashbrown..map..HashMap$LT$i32$C$i32$C$std..hash..random..RandomState$GT$$GT$17hb58494acf46a3698E"(ptr align 8 %_1)
  ret void
}

; core::ptr::drop_in_place<core::slice::sort::stable::merge::MergeState<i32>>
; Function Attrs: nonlazybind uwtable
define void @"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17he36c853752653ab1E"(ptr align 8 %_1) unnamed_addr #3 {
start:
; call <core::slice::sort::stable::merge::MergeState<T> as core::ops::drop::Drop>::drop
  call void @"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0365dedc9904ee7bE"(ptr align 8 %_1)
  ret void
}

; core::ptr::replace::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_ZN4core3ptr7replace18precondition_check17hde9b15d4298ab2bdE(ptr %addr, i64 %align, i1 zeroext %is_zst, ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
; invoke core::ptr::const_ptr::<impl *const T>::is_aligned_to
  %_8 = invoke zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13is_aligned_to17h0373b0b6ebab774eE"(ptr %addr, i64 %align)
          to label %bb7 unwind label %terminate

terminate:                                        ; preds = %start
  %1 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_cannot_unwind
  call void @_ZN4core9panicking19panic_cannot_unwind17h9d41c6c1d0e0d4e5E() #26
  unreachable

bb7:                                              ; preds = %start
  br i1 %_8, label %bb3, label %bb4

bb4:                                              ; preds = %bb7
  br label %bb2

bb3:                                              ; preds = %bb7
  br i1 %is_zst, label %bb5, label %bb6

bb2:                                              ; preds = %bb6, %bb4
; call core::panicking::panic_nounwind_fmt
  call void @_ZN4core9panicking18panic_nounwind_fmt17hf349702e3facb1fdE(ptr @alloc_5f856c9c5a649671acdbf03081b5c1d0, ptr inttoptr (i64 443 to ptr), i1 zeroext false, ptr align 8 %0) #22
  unreachable

bb6:                                              ; preds = %bb3
  %_10 = ptrtoint ptr %addr to i64
  %_9 = icmp eq i64 %_10, 0
  %_4 = xor i1 %_9, true
  br i1 %_4, label %bb1, label %bb2

bb5:                                              ; preds = %bb3
  br label %bb1

bb1:                                              ; preds = %bb5, %bb6
  ret void
}

; core::ptr::drop_in_place<core::slice::sort::shared::smallsort::CopyOnDrop<i32>>
; Function Attrs: nonlazybind uwtable
define void @"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h29b5ceebc9567873E"(ptr align 8 %_1) unnamed_addr #3 {
start:
; call <core::slice::sort::shared::smallsort::CopyOnDrop<T> as core::ops::drop::Drop>::drop
  call void @"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1cb39cb50bab9592E"(ptr align 8 %_1)
  ret void
}

; core::ptr::non_null::NonNull<T>::new_unchecked::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h8caaca3e946168e6E"(ptr %ptr, ptr align 8 %0) unnamed_addr #0 {
start:
  %_6 = ptrtoint ptr %ptr to i64
  %_2 = icmp eq i64 %_6, 0
  br i1 %_2, label %bb1, label %bb2

bb2:                                              ; preds = %start
  ret void

bb1:                                              ; preds = %start
; call core::panicking::panic_nounwind_fmt
  call void @_ZN4core9panicking18panic_nounwind_fmt17hf349702e3facb1fdE(ptr @alloc_560a59ed819b9d9a5841f6e731c4c8e5, ptr inttoptr (i64 421 to ptr), i1 zeroext false, ptr align 8 %0) #22
  unreachable
}

; core::ptr::drop_in_place<core::hint::select_unpredictable::DropOnPanic<*const i32>>
; Function Attrs: nonlazybind uwtable
define void @"_ZN4core3ptr91drop_in_place$LT$core..hint..select_unpredictable..DropOnPanic$LT$$BP$const$u20$i32$GT$$GT$17h9ffcbcab448d1a7eE"(ptr align 8 %_1) unnamed_addr #3 {
start:
; call <core::hint::select_unpredictable::DropOnPanic<T> as core::ops::drop::Drop>::drop
  call void @"_ZN96_$LT$core..hint..select_unpredictable..DropOnPanic$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h33478b3ad0c20415E"(ptr align 8 %_1)
  ret void
}

; core::ptr::drop_in_place<hashbrown::map::HashMap<i32,i32,std::hash::random::RandomState>>
; Function Attrs: nonlazybind uwtable
define void @"_ZN4core3ptr94drop_in_place$LT$hashbrown..map..HashMap$LT$i32$C$i32$C$std..hash..random..RandomState$GT$$GT$17hb58494acf46a3698E"(ptr align 8 %_1) unnamed_addr #3 {
start:
; call core::ptr::drop_in_place<hashbrown::raw::RawTable<(i32,i32)>>
  call void @"_ZN4core3ptr70drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$i32$C$i32$RP$$GT$$GT$17ha4500afe9c89997dE"(ptr align 8 %_1)
  ret void
}

; core::ptr::const_ptr::<impl *const T>::is_aligned_to
; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13is_aligned_to17h0373b0b6ebab774eE"(ptr %self, i64 %align) unnamed_addr #1 {
start:
  %0 = alloca [4 x i8], align 4
  %1 = call i64 @llvm.ctpop.i64(i64 %align)
  %2 = trunc i64 %1 to i32
  store i32 %2, ptr %0, align 4
  %_9 = load i32, ptr %0, align 4
  %_3 = icmp eq i32 %_9, 1
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr @alloc_fad0cd83b7d1858a846a172eb260e593, ptr inttoptr (i64 85 to ptr), ptr align 8 @alloc_3fa0cb230157e93f86c3228a58824d4a) #23
  unreachable

bb1:                                              ; preds = %start
  %_7 = ptrtoint ptr %self to i64
  %_8 = sub i64 %align, 1
  %_6 = and i64 %_7, %_8
  %_0 = icmp eq i64 %_6, 0
  ret i1 %_0
}

; core::ptr::const_ptr::<impl *const T>::offset_from_unsigned::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$20offset_from_unsigned18precondition_check17h5f483eec962d541fE"(ptr %this, ptr %origin, ptr align 8 %0) unnamed_addr #0 {
start:
  %_3 = icmp uge ptr %this, %origin
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
; call core::panicking::panic_nounwind_fmt
  call void @_ZN4core9panicking18panic_nounwind_fmt17hf349702e3facb1fdE(ptr @alloc_de4e626d456b04760e72bc785ed7e52a, ptr inttoptr (i64 403 to ptr), i1 zeroext false, ptr align 8 %0) #22
  unreachable

bb1:                                              ; preds = %start
  ret void
}

; core::hash::BuildHasher::hash_one
; Function Attrs: nonlazybind uwtable
define i64 @_ZN4core4hash11BuildHasher8hash_one17h1855698abe03691bE(ptr align 8 %self, ptr align 4 %0) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %1 = alloca [16 x i8], align 8
  %hasher = alloca [72 x i8], align 8
  %x = alloca [8 x i8], align 8
  store ptr %0, ptr %x, align 8
; invoke <std::hash::random::RandomState as core::hash::BuildHasher>::build_hasher
  invoke void @"_ZN74_$LT$std..hash..random..RandomState$u20$as$u20$core..hash..BuildHasher$GT$12build_hasher17h211287481b092482E"(ptr sret([72 x i8]) align 8 %hasher, ptr align 8 %self)
          to label %bb1 unwind label %cleanup

bb7:                                              ; preds = %bb6, %cleanup
  %2 = load ptr, ptr %1, align 8
  %3 = getelementptr inbounds i8, ptr %1, i64 8
  %4 = load i32, ptr %3, align 8
  %5 = insertvalue { ptr, i32 } poison, ptr %2, 0
  %6 = insertvalue { ptr, i32 } %5, i32 %4, 1
  resume { ptr, i32 } %6

cleanup:                                          ; preds = %start
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = extractvalue { ptr, i32 } %7, 1
  store ptr %8, ptr %1, align 8
  %10 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %9, ptr %10, align 8
  br label %bb7

bb1:                                              ; preds = %start
; invoke core::hash::impls::<impl core::hash::Hash for &T>::hash
  invoke void @"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17h52ecffb2dabfdc07E"(ptr align 8 %x, ptr align 8 %hasher)
          to label %bb2 unwind label %cleanup1

bb6:                                              ; preds = %cleanup1
  br label %bb7

cleanup1:                                         ; preds = %bb2, %bb1
  %11 = landingpad { ptr, i32 }
          cleanup
  %12 = extractvalue { ptr, i32 } %11, 0
  %13 = extractvalue { ptr, i32 } %11, 1
  store ptr %12, ptr %1, align 8
  %14 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %13, ptr %14, align 8
  br label %bb6

bb2:                                              ; preds = %bb1
; invoke <std::hash::random::DefaultHasher as core::hash::Hasher>::finish
  %_0 = invoke i64 @"_ZN71_$LT$std..hash..random..DefaultHasher$u20$as$u20$core..hash..Hasher$GT$6finish17haa9b381d8600bcd7E"(ptr align 8 %hasher)
          to label %bb3 unwind label %cleanup1

bb3:                                              ; preds = %bb2
  br label %bb4

bb4:                                              ; preds = %bb3
  ret i64 %_0
}

; core::hash::sip::Hasher<S>::reset
; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN4core4hash3sip15Hasher$LT$S$GT$5reset17hd688583f9d68e4b4E"(ptr align 8 %self) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds i8, ptr %self, i64 48
  store i64 0, ptr %0, align 8
  %1 = getelementptr inbounds i8, ptr %self, i64 32
  %_2 = load i64, ptr %1, align 8
  %2 = xor i64 %_2, 8317987319222330741
  store i64 %2, ptr %self, align 8
  %3 = getelementptr inbounds i8, ptr %self, i64 40
  %_3 = load i64, ptr %3, align 8
  %4 = getelementptr inbounds i8, ptr %self, i64 16
  %5 = xor i64 %_3, 7237128888997146477
  store i64 %5, ptr %4, align 8
  %6 = getelementptr inbounds i8, ptr %self, i64 32
  %_4 = load i64, ptr %6, align 8
  %7 = getelementptr inbounds i8, ptr %self, i64 8
  %8 = xor i64 %_4, 7816392313619706465
  store i64 %8, ptr %7, align 8
  %9 = getelementptr inbounds i8, ptr %self, i64 40
  %_5 = load i64, ptr %9, align 8
  %10 = getelementptr inbounds i8, ptr %self, i64 24
  %11 = xor i64 %_5, 8387220255154660723
  store i64 %11, ptr %10, align 8
  %12 = getelementptr inbounds i8, ptr %self, i64 64
  store i64 0, ptr %12, align 8
  ret void
}

; core::hash::sip::u8to64_le
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core4hash3sip9u8to64_le17hb9d36abdd6129967E(ptr align 1 %buf.0, i64 %buf.1, i64 %start1, i64 %len) unnamed_addr #1 {
start:
  %data2 = alloca [2 x i8], align 2
  %data = alloca [4 x i8], align 4
  %i = alloca [8 x i8], align 8
  %out = alloca [8 x i8], align 8
  store i64 0, ptr %i, align 8
  store i64 0, ptr %out, align 8
  %_7 = load i64, ptr %i, align 8
  %_6 = add i64 %_7, 3
  %_5 = icmp ult i64 %_6, %len
  br i1 %_5, label %bb1, label %bb2

bb2:                                              ; preds = %start
  br label %bb3

bb1:                                              ; preds = %start
  store i32 0, ptr %data, align 4
  %_12 = load i64, ptr %i, align 8
  %count = add i64 %start1, %_12
  %src = getelementptr inbounds nuw i8, ptr %buf.0, i64 %count
  br label %bb10

bb3:                                              ; preds = %bb12, %bb2
  %_18 = load i64, ptr %i, align 8
  %_17 = add i64 %_18, 1
  %_16 = icmp ult i64 %_17, %len
  br i1 %_16, label %bb4, label %bb5

bb10:                                             ; preds = %bb1
; call core::ptr::copy_nonoverlapping::precondition_check
  call void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17hc07330eb8860aa11E(ptr %src, ptr %data, i64 1, i64 1, i64 4, ptr align 8 @alloc_0d87c14e0afc26d18a0752880d43f0ed) #25
  br label %bb12

bb12:                                             ; preds = %bb10
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %data, ptr align 1 %src, i64 4, i1 false)
  %self = load i32, ptr %data, align 4
  %0 = zext i32 %self to i64
  store i64 %0, ptr %out, align 8
  %1 = load i64, ptr %i, align 8
  %2 = add i64 %1, 4
  store i64 %2, ptr %i, align 8
  br label %bb3

bb5:                                              ; preds = %bb3
  br label %bb6

bb4:                                              ; preds = %bb3
  store i16 0, ptr %data2, align 2
  %_25 = load i64, ptr %i, align 8
  %count3 = add i64 %start1, %_25
  %src4 = getelementptr inbounds nuw i8, ptr %buf.0, i64 %count3
  br label %bb13

bb6:                                              ; preds = %bb15, %bb5
  %_32 = load i64, ptr %i, align 8
  %_31 = icmp ult i64 %_32, %len
  br i1 %_31, label %bb7, label %bb8

bb13:                                             ; preds = %bb4
; call core::ptr::copy_nonoverlapping::precondition_check
  call void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17hc07330eb8860aa11E(ptr %src4, ptr %data2, i64 1, i64 1, i64 2, ptr align 8 @alloc_0d87c14e0afc26d18a0752880d43f0ed) #25
  br label %bb15

bb15:                                             ; preds = %bb13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %data2, ptr align 1 %src4, i64 2, i1 false)
  %self5 = load i16, ptr %data2, align 2
  %_20 = zext i16 %self5 to i64
  %_30 = load i64, ptr %i, align 8
  %_29 = mul i64 %_30, 8
  %3 = and i64 %_29, 63
  %_19 = shl i64 %_20, %3
  %4 = load i64, ptr %out, align 8
  %5 = or i64 %4, %_19
  store i64 %5, ptr %out, align 8
  %6 = load i64, ptr %i, align 8
  %7 = add i64 %6, 2
  store i64 %7, ptr %i, align 8
  br label %bb6

bb8:                                              ; preds = %bb6
  br label %bb9

bb7:                                              ; preds = %bb6
  %_37 = load i64, ptr %i, align 8
  %index = add i64 %start1, %_37
  br label %bb16

bb9:                                              ; preds = %bb18, %bb8
  %8 = load i64, ptr %out, align 8
  ret i64 %8

bb16:                                             ; preds = %bb7
; call <usize as core::slice::index::SliceIndex<[T]>>::get_unchecked::precondition_check
  call void @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked18precondition_check17hbcecab929959cfeeE"(i64 %index, i64 %buf.1, ptr align 8 @alloc_59a42ffae0e80e043da0de59b26d90a6) #25
  br label %bb18

bb18:                                             ; preds = %bb16
  %_53 = icmp ult i64 %index, %buf.1
  %_50 = getelementptr inbounds nuw i8, ptr %buf.0, i64 %index
  %_35 = load i8, ptr %_50, align 1
  %_34 = zext i8 %_35 to i64
  %_39 = load i64, ptr %i, align 8
  %_38 = mul i64 %_39, 8
  %9 = and i64 %_38, 63
  %_33 = shl i64 %_34, %9
  %10 = load i64, ptr %out, align 8
  %11 = or i64 %10, %_33
  store i64 %11, ptr %out, align 8
  %12 = load i64, ptr %i, align 8
  %13 = add i64 %12, 1
  store i64 %13, ptr %i, align 8
  br label %bb9
}

; core::hash::impls::<impl core::hash::Hash for i32>::hash
; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN4core4hash5impls50_$LT$impl$u20$core..hash..Hash$u20$for$u20$i32$GT$4hash17h1aef32ef9e3c75e1E"(ptr align 4 %self, ptr align 8 %state) unnamed_addr #1 {
start:
  %_3 = load i32, ptr %self, align 4
; call core::hash::Hasher::write_i32
  call void @_ZN4core4hash6Hasher9write_i3217hc7400e69f226ad0cE(ptr align 8 %state, i32 %_3) #24
  ret void
}

; core::hash::impls::<impl core::hash::Hash for &T>::hash
; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17h52ecffb2dabfdc07E"(ptr align 8 %self, ptr align 8 %state) unnamed_addr #1 {
start:
  %_4 = load ptr, ptr %self, align 8
; call core::hash::impls::<impl core::hash::Hash for i32>::hash
  call void @"_ZN4core4hash5impls50_$LT$impl$u20$core..hash..Hash$u20$for$u20$i32$GT$4hash17h1aef32ef9e3c75e1E"(ptr align 4 %_4, ptr align 8 %state) #24
  ret void
}

; core::hash::Hasher::write_i32
; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN4core4hash6Hasher9write_i3217hc7400e69f226ad0cE(ptr align 8 %self, i32 %i) unnamed_addr #1 {
start:
; call core::hash::Hasher::write_u32
  call void @_ZN4core4hash6Hasher9write_u3217h6122eaeb1aa5dffbE(ptr align 8 %self, i32 %i) #24
  ret void
}

; core::hash::Hasher::write_u32
; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN4core4hash6Hasher9write_u3217h6122eaeb1aa5dffbE(ptr align 8 %self, i32 %i) unnamed_addr #1 {
start:
  %_5 = alloca [4 x i8], align 1
  store i32 %i, ptr %_5, align 1
; call <std::hash::random::DefaultHasher as core::hash::Hasher>::write
  call void @"_ZN71_$LT$std..hash..random..DefaultHasher$u20$as$u20$core..hash..Hasher$GT$5write17h0ee41c1a8d4d5040E"(ptr align 8 %self, ptr align 1 %_5, i64 4) #24
  ret void
}

; core::hint::assert_unchecked::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_ZN4core4hint16assert_unchecked18precondition_check17hc4e741313529fd94E(i1 zeroext %cond, ptr align 8 %0) unnamed_addr #0 {
start:
  br i1 %cond, label %bb2, label %bb1

bb1:                                              ; preds = %start
; call core::panicking::panic_nounwind_fmt
  call void @_ZN4core9panicking18panic_nounwind_fmt17hf349702e3facb1fdE(ptr @alloc_64e308ef4babfeb8b6220184de794a17, ptr inttoptr (i64 443 to ptr), i1 zeroext false, ptr align 8 %0) #22
  unreachable

bb2:                                              ; preds = %start
  ret void
}

; core::iter::adapters::step_by::StepBy<I>::new
; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN4core4iter8adapters7step_by15StepBy$LT$I$GT$3new17h73eccdb027fc6f8eE"(ptr sret([32 x i8]) align 8 %_0, i64 %iter.0, i64 %iter.1, i64 %step) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_8 = alloca [1 x i8], align 1
  store i8 1, ptr %_8, align 1
  %_3 = icmp ne i64 %step, 0
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
; invoke core::panicking::panic
  invoke void @_ZN4core9panicking5panic17ha2e20a73227bb72eE(ptr align 1 @alloc_4aead6e2018a46d0df208d5729447de7, i64 27, ptr align 8 @alloc_c6550a5113f0a44ba453e7559721a669) #29
          to label %unreachable unwind label %cleanup

bb1:                                              ; preds = %start
  store i8 0, ptr %_8, align 1
; invoke <core::ops::range::Range<usize> as core::iter::adapters::step_by::SpecRangeSetup<core::ops::range::Range<usize>>>::setup
  %1 = invoke { i64, i64 } @"_ZN146_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..iter..adapters..step_by..SpecRangeSetup$LT$core..ops..range..Range$LT$usize$GT$$GT$$GT$5setup17hba0abddf1c13229bE"(i64 %iter.0, i64 %iter.1, i64 %step)
          to label %bb3 unwind label %cleanup

bb6:                                              ; preds = %cleanup
  %2 = load i8, ptr %_8, align 1
  %3 = trunc nuw i8 %2 to i1
  br i1 %3, label %bb5, label %bb4

cleanup:                                          ; preds = %bb1, %bb2
  %4 = landingpad { ptr, i32 }
          cleanup
  %5 = extractvalue { ptr, i32 } %4, 0
  %6 = extractvalue { ptr, i32 } %4, 1
  store ptr %5, ptr %0, align 8
  %7 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %6, ptr %7, align 8
  br label %bb6

unreachable:                                      ; preds = %bb2
  unreachable

bb3:                                              ; preds = %bb1
  %iter.01 = extractvalue { i64, i64 } %1, 0
  %iter.12 = extractvalue { i64, i64 } %1, 1
  %_7 = sub i64 %step, 1
  store i64 %iter.01, ptr %_0, align 8
  %8 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %iter.12, ptr %8, align 8
  %9 = getelementptr inbounds i8, ptr %_0, i64 16
  store i64 %_7, ptr %9, align 8
  %10 = getelementptr inbounds i8, ptr %_0, i64 24
  store i8 1, ptr %10, align 8
  ret void

bb4:                                              ; preds = %bb5, %bb6
  %11 = load ptr, ptr %0, align 8
  %12 = getelementptr inbounds i8, ptr %0, i64 8
  %13 = load i32, ptr %12, align 8
  %14 = insertvalue { ptr, i32 } poison, ptr %11, 0
  %15 = insertvalue { ptr, i32 } %14, i32 %13, 1
  resume { ptr, i32 } %15

bb5:                                              ; preds = %bb6
  br label %bb4
}

; core::array::iter::iter_inner::PolymorphicIter<[core::mem::maybe_uninit::MaybeUninit<T>]>::next
; Function Attrs: inlinehint nonlazybind uwtable
define { i64, i64 } @"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17heebf9cc75c05c6b9E"(ptr align 8 %self.0, i64 %self.1) unnamed_addr #1 {
start:
  %f = alloca [16 x i8], align 8
  %_4 = alloca [16 x i8], align 8
  %self = alloca [16 x i8], align 8
  %_0 = alloca [16 x i8], align 8
  %0 = getelementptr inbounds i8, ptr %self.0, i64 8
  %_9 = load i64, ptr %0, align 8
  %_10 = load i64, ptr %self.0, align 8
  %_6 = sub nuw i64 %_9, %_10
  %_5 = icmp ugt i64 %_6, 0
  br i1 %_5, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %1 = load i64, ptr @anon.56cfd62e22175d79f9a1a5afbd6cb4c8.1, align 8
  %2 = load i64, ptr getelementptr inbounds (i8, ptr @anon.56cfd62e22175d79f9a1a5afbd6cb4c8.1, i64 8), align 8
  store i64 %1, ptr %self, align 8
  %3 = getelementptr inbounds i8, ptr %self, i64 8
  store i64 %2, ptr %3, align 8
  %4 = getelementptr inbounds i8, ptr %self.0, i64 16
  store ptr %4, ptr %_4, align 8
  %5 = getelementptr inbounds i8, ptr %_4, i64 8
  store i64 %self.1, ptr %5, align 8
  %6 = load ptr, ptr %_4, align 8
  %7 = getelementptr inbounds i8, ptr %_4, i64 8
  %8 = load i64, ptr %7, align 8
  store ptr %6, ptr %f, align 8
  %9 = getelementptr inbounds i8, ptr %f, i64 8
  store i64 %8, ptr %9, align 8
  store i64 0, ptr %_0, align 8
  br label %bb5

bb1:                                              ; preds = %start
  %value = load i64, ptr %self.0, align 8
  br label %bb3

bb5:                                              ; preds = %bb8, %bb2
  %10 = load i64, ptr %_0, align 8
  %11 = getelementptr inbounds i8, ptr %_0, i64 8
  %12 = load i64, ptr %11, align 8
  %13 = insertvalue { i64, i64 } poison, i64 %10, 0
  %14 = insertvalue { i64, i64 } %13, i64 %12, 1
  ret { i64, i64 } %14

bb3:                                              ; preds = %bb1
; call core::num::<impl usize>::unchecked_add::precondition_check
  call void @"_ZN4core3num23_$LT$impl$u20$usize$GT$13unchecked_add18precondition_check17hbf8a98e7ca50b85fE"(i64 %value, i64 1, ptr align 8 @alloc_d6257b1bd6d71606f0c80579dc3f7df1) #25
  br label %bb4

bb4:                                              ; preds = %bb3
  %_11 = add nuw i64 %value, 1
  store i64 %_11, ptr %self.0, align 8
  %15 = getelementptr inbounds i8, ptr %self, i64 8
  store i64 %value, ptr %15, align 8
  store i64 1, ptr %self, align 8
  %16 = getelementptr inbounds i8, ptr %self.0, i64 16
  store ptr %16, ptr %_4, align 8
  %17 = getelementptr inbounds i8, ptr %_4, i64 8
  store i64 %self.1, ptr %17, align 8
  %18 = load ptr, ptr %_4, align 8
  %19 = getelementptr inbounds i8, ptr %_4, i64 8
  %20 = load i64, ptr %19, align 8
  store ptr %18, ptr %f, align 8
  %21 = getelementptr inbounds i8, ptr %f, i64 8
  store i64 %20, ptr %21, align 8
  %22 = getelementptr inbounds i8, ptr %self, i64 8
  %x = load i64, ptr %22, align 8
  %_25.0 = load ptr, ptr %_4, align 8
  %23 = getelementptr inbounds i8, ptr %_4, i64 8
  %_25.1 = load i64, ptr %23, align 8
  %self.01 = load ptr, ptr %_4, align 8
  %24 = getelementptr inbounds i8, ptr %_4, i64 8
  %self.12 = load i64, ptr %24, align 8
  br label %bb6

bb6:                                              ; preds = %bb4
  %25 = load ptr, ptr %_4, align 8
  %26 = getelementptr inbounds i8, ptr %_4, i64 8
  %_19 = load i64, ptr %26, align 8
; call <usize as core::slice::index::SliceIndex<[T]>>::get_unchecked::precondition_check
  call void @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked18precondition_check17hbcecab929959cfeeE"(i64 %x, i64 %_19, ptr align 8 @alloc_36ef99292643bd7886c9678fd53220ab) #25
  br label %bb8

bb8:                                              ; preds = %bb6
  %27 = load ptr, ptr %_4, align 8
  %28 = getelementptr inbounds i8, ptr %_4, i64 8
  %_21 = load i64, ptr %28, align 8
  %_20 = icmp ult i64 %x, %_21
  %29 = load ptr, ptr %_4, align 8
  %30 = getelementptr inbounds i8, ptr %_4, i64 8
  %31 = load i64, ptr %30, align 8
  %self3 = getelementptr inbounds nuw i64, ptr %29, i64 %x
  %_15 = load i64, ptr %self3, align 8
  %32 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %_15, ptr %32, align 8
  store i64 1, ptr %_0, align 8
  br label %bb5
}

; core::slice::<impl [T]>::split_at_mut
; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h292dc99e94580613E"(ptr sret([32 x i8]) align 8 %pair, ptr align 4 %self.0, i64 %self.1, i64 %mid, ptr align 8 %0) unnamed_addr #1 {
start:
  %_8 = alloca [32 x i8], align 8
  %_3 = alloca [32 x i8], align 8
  %_6 = icmp ule i64 %mid, %self.1
  br i1 %_6, label %bb1, label %bb3

bb3:                                              ; preds = %start
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr @alloc_d1084648e479974e70c9329824bf76f9, ptr inttoptr (i64 19 to ptr), ptr align 8 %0) #23
  unreachable

bb1:                                              ; preds = %start
; call core::slice::<impl [T]>::split_at_mut_unchecked
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$22split_at_mut_unchecked17h9dfefa29c5b7fb46E"(ptr sret([32 x i8]) align 8 %_8, ptr align 4 %self.0, i64 %self.1, i64 %mid, ptr align 8 @alloc_4837a04415930993040e3aa5c962029e) #24
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_3, ptr align 8 %_8, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pair, ptr align 8 %_3, i64 32, i1 false)
  ret void
}

; core::slice::<impl [T]>::split_at_mut_unchecked
; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$22split_at_mut_unchecked17h9dfefa29c5b7fb46E"(ptr sret([32 x i8]) align 8 %_0, ptr align 4 %self.0, i64 %self.1, i64 %mid, ptr align 8 %0) unnamed_addr #1 {
start:
  %len = alloca [8 x i8], align 8
  %data = alloca [8 x i8], align 8
  %_7 = alloca [16 x i8], align 8
  br label %bb1

bb1:                                              ; preds = %start
; call core::slice::<impl [T]>::split_at_mut_unchecked::precondition_check
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$22split_at_mut_unchecked18precondition_check17hcdbfdd6b5c07d1f0E"(i64 %mid, i64 %self.1, ptr align 8 %0) #25
  br label %bb3

bb3:                                              ; preds = %bb1
; call core::slice::raw::from_raw_parts_mut::precondition_check
  call void @_ZN4core5slice3raw18from_raw_parts_mut18precondition_check17hc47e7f86408f4a6dE(ptr %self.0, i64 4, i64 4, i64 %mid, ptr align 8 %0) #25
  store ptr %self.0, ptr %_7, align 8
  %1 = getelementptr inbounds i8, ptr %_7, i64 8
  store i64 %mid, ptr %1, align 8
  %2 = getelementptr inbounds nuw i32, ptr %self.0, i64 %mid
  store ptr %2, ptr %data, align 8
  %3 = sub nuw i64 %self.1, %mid
  store i64 %3, ptr %len, align 8
  %_20 = load ptr, ptr %data, align 8
  %4 = load i64, ptr %len, align 8
; call core::slice::raw::from_raw_parts_mut::precondition_check
  call void @_ZN4core5slice3raw18from_raw_parts_mut18precondition_check17hc47e7f86408f4a6dE(ptr %_20, i64 4, i64 4, i64 %4, ptr align 8 %0) #25
  br label %bb6

bb6:                                              ; preds = %bb3
  %_21.0 = load ptr, ptr %data, align 8
  %_21.1 = load i64, ptr %len, align 8
  %5 = load ptr, ptr %_7, align 8
  %6 = getelementptr inbounds i8, ptr %_7, i64 8
  %7 = load i64, ptr %6, align 8
  store ptr %5, ptr %_0, align 8
  %8 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %7, ptr %8, align 8
  %9 = getelementptr inbounds i8, ptr %_0, i64 16
  store ptr %_21.0, ptr %9, align 8
  %10 = getelementptr inbounds i8, ptr %9, i64 8
  store i64 %_21.1, ptr %10, align 8
  ret void

bb2:                                              ; No predecessors!
  unreachable

bb8:                                              ; No predecessors!
  unreachable
}

; core::slice::<impl [T]>::split_at_mut_unchecked::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$22split_at_mut_unchecked18precondition_check17hcdbfdd6b5c07d1f0E"(i64 %mid, i64 %len, ptr align 8 %0) unnamed_addr #0 {
start:
  %_3 = icmp ule i64 %mid, %len
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
; call core::panicking::panic_nounwind_fmt
  call void @_ZN4core9panicking18panic_nounwind_fmt17hf349702e3facb1fdE(ptr @alloc_6b0b11c9e93314b588b613b55005cf18, ptr inttoptr (i64 443 to ptr), i1 zeroext false, ptr align 8 %0) #22
  unreachable

bb1:                                              ; preds = %start
  ret void
}

; core::slice::<impl [T]>::reverse
; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h7dcd433349684bb7E"(ptr align 4 %self.0, i64 %self.1) unnamed_addr #1 {
start:
  %data = alloca [8 x i8], align 8
  %_5 = alloca [16 x i8], align 8
  %half_len = udiv i64 %self.1, 2
  %end = getelementptr inbounds nuw i32, ptr %self.0, i64 %self.1
  br label %bb2

bb2:                                              ; preds = %start
; call core::slice::raw::from_raw_parts_mut::precondition_check
  call void @_ZN4core5slice3raw18from_raw_parts_mut18precondition_check17hc47e7f86408f4a6dE(ptr %self.0, i64 4, i64 4, i64 %half_len, ptr align 8 @alloc_096c43b08ba4c02fd4fc646e4eb5f61d) #25
  store ptr %self.0, ptr %_5, align 8
  %0 = getelementptr inbounds i8, ptr %_5, i64 8
  store i64 %half_len, ptr %0, align 8
  br label %bb8

bb8:                                              ; preds = %bb2
  %_19 = sub nsw i64 0, %half_len
  %1 = getelementptr inbounds i32, ptr %end, i64 %_19
  store ptr %1, ptr %data, align 8
  br label %bb9

bb9:                                              ; preds = %bb8
  %_22 = load ptr, ptr %data, align 8
; call core::slice::raw::from_raw_parts_mut::precondition_check
  call void @_ZN4core5slice3raw18from_raw_parts_mut18precondition_check17hc47e7f86408f4a6dE(ptr %_22, i64 4, i64 4, i64 %half_len, ptr align 8 @alloc_2dc2a90639995f73564cefdb21b664ea) #25
  br label %bb5

bb5:                                              ; preds = %bb9
  %_23.0 = load ptr, ptr %data, align 8
  %front_half.0 = load ptr, ptr %_5, align 8
  %2 = getelementptr inbounds i8, ptr %_5, i64 8
  %front_half.1 = load i64, ptr %2, align 8
  %3 = load ptr, ptr %_5, align 8
  %4 = getelementptr inbounds i8, ptr %_5, i64 8
  %5 = load i64, ptr %4, align 8
; call core::slice::<impl [T]>::reverse::revswap
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h9d356c7084fee5b3E"(ptr align 4 %3, i64 %5, ptr align 4 %_23.0, i64 %half_len, i64 %half_len) #24
  ret void

bb6:                                              ; No predecessors!
  unreachable

bb7:                                              ; No predecessors!
  unreachable

bb10:                                             ; No predecessors!
  unreachable

bb11:                                             ; No predecessors!
  unreachable

bb12:                                             ; No predecessors!
  unreachable
}

; core::slice::<impl [T]>::reverse::revswap
; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h9d356c7084fee5b3E"(ptr align 4 %a.0, i64 %a.1, ptr align 4 %b.0, i64 %b.1, i64 %n) unnamed_addr #1 {
start:
  %i = alloca [8 x i8], align 8
  %_7 = alloca [32 x i8], align 8
  %_5 = alloca [32 x i8], align 8
; call core::slice::<impl [T]>::split_at_mut
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h292dc99e94580613E"(ptr sret([32 x i8]) align 8 %_5, ptr align 4 %a.0, i64 %a.1, i64 %n, ptr align 8 @alloc_7900b8a3ded616905abf7347699b78c6) #24
  %a.01 = load ptr, ptr %_5, align 8
  %0 = getelementptr inbounds i8, ptr %_5, i64 8
  %a.12 = load i64, ptr %0, align 8
; call core::slice::<impl [T]>::split_at_mut
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h292dc99e94580613E"(ptr sret([32 x i8]) align 8 %_7, ptr align 4 %b.0, i64 %b.1, i64 %n, ptr align 8 @alloc_c9d18df645f0bc0349c21334b5ffd9ca) #24
  %b.03 = load ptr, ptr %_7, align 8
  %1 = getelementptr inbounds i8, ptr %_7, i64 8
  %b.14 = load i64, ptr %1, align 8
  store i64 0, ptr %i, align 8
  br label %bb3

bb3:                                              ; preds = %bb6, %start
  %_10 = load i64, ptr %i, align 8
  %_9 = icmp ult i64 %_10, %n
  br i1 %_9, label %bb4, label %bb7

bb7:                                              ; preds = %bb3
  ret void

bb4:                                              ; preds = %bb3
  %_13 = load i64, ptr %i, align 8
  %_15 = icmp ult i64 %_13, %a.12
  br i1 %_15, label %bb5, label %panic

bb5:                                              ; preds = %bb4
  %x = getelementptr inbounds nuw i32, ptr %a.01, i64 %_13
  %_18 = sub i64 %n, 1
  %_19 = load i64, ptr %i, align 8
  %_17 = sub i64 %_18, %_19
  %_21 = icmp ult i64 %_17, %b.14
  br i1 %_21, label %bb6, label %panic5

panic:                                            ; preds = %bb4
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_13, i64 %a.12, ptr align 8 @alloc_b13d47af860a80b29d770888e367c8be) #23
  unreachable

bb6:                                              ; preds = %bb5
  %y = getelementptr inbounds nuw i32, ptr %b.03, i64 %_17
  %2 = load i32, ptr %x, align 4
  %3 = load i32, ptr %y, align 4
  store i32 %3, ptr %x, align 4
  store i32 %2, ptr %y, align 4
  %4 = load i64, ptr %i, align 8
  %5 = add i64 %4, 1
  store i64 %5, ptr %i, align 8
  br label %bb3

panic5:                                           ; preds = %bb5
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_17, i64 %b.14, ptr align 8 @alloc_dd358487823db0f6649bebca57528865) #23
  unreachable
}

; core::slice::raw::from_raw_parts_mut::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_ZN4core5slice3raw18from_raw_parts_mut18precondition_check17hc47e7f86408f4a6dE(ptr %data, i64 %size, i64 %align, i64 %len, ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %max_len = alloca [8 x i8], align 8
; invoke core::ptr::const_ptr::<impl *const T>::is_aligned_to
  %_11 = invoke zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13is_aligned_to17h0373b0b6ebab774eE"(ptr %data, i64 %align)
          to label %bb8 unwind label %terminate

terminate:                                        ; preds = %panic, %start
  %1 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_cannot_unwind
  call void @_ZN4core9panicking19panic_cannot_unwind17h9d41c6c1d0e0d4e5E() #26
  unreachable

bb8:                                              ; preds = %start
  br i1 %_11, label %bb6, label %bb7

bb7:                                              ; preds = %bb8
  br label %bb4

bb6:                                              ; preds = %bb8
  %_13 = ptrtoint ptr %data to i64
  %_12 = icmp eq i64 %_13, 0
  %_5 = xor i1 %_12, true
  br i1 %_5, label %bb1, label %bb4

bb4:                                              ; preds = %bb6, %bb7
  br label %bb5

bb1:                                              ; preds = %bb6
  %_15 = icmp eq i64 %size, 0
  br i1 %_15, label %bb9, label %bb10

bb5:                                              ; preds = %bb3, %bb4
; call core::panicking::panic_nounwind_fmt
  call void @_ZN4core9panicking18panic_nounwind_fmt17hf349702e3facb1fdE(ptr @alloc_5c1a2f972552229672fc942406cfc298, ptr inttoptr (i64 567 to ptr), i1 zeroext false, ptr align 8 %0) #22
  unreachable

bb10:                                             ; preds = %bb1
  br i1 %_15, label %panic, label %bb11

bb9:                                              ; preds = %bb1
  store i64 -1, ptr %max_len, align 8
  br label %bb12

bb11:                                             ; preds = %bb10
  %2 = udiv i64 9223372036854775807, %size
  store i64 %2, ptr %max_len, align 8
  br label %bb12

panic:                                            ; preds = %bb10
; invoke core::panicking::panic_const::panic_const_div_by_zero
  invoke void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr align 8 @alloc_611f58ae7c0cb6ecdf5f4642bc696b9a) #29
          to label %unreachable unwind label %terminate

unreachable:                                      ; preds = %panic
  unreachable

bb12:                                             ; preds = %bb9, %bb11
  %3 = load i64, ptr %max_len, align 8
  %_7 = icmp ule i64 %len, %3
  br i1 %_7, label %bb2, label %bb3

bb3:                                              ; preds = %bb12
  br label %bb5

bb2:                                              ; preds = %bb12
  ret void
}

; core::slice::sort::shared::pivot::median3_rec
; Function Attrs: nonlazybind uwtable
define ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h312ca1c06fa58cc3E(ptr %0, ptr %1, ptr %2, i64 %n, ptr align 8 %is_less) unnamed_addr #3 {
start:
  %_0.i = alloca [8 x i8], align 8
  %c = alloca [8 x i8], align 8
  %b = alloca [8 x i8], align 8
  %a = alloca [8 x i8], align 8
  store ptr %0, ptr %a, align 8
  store ptr %1, ptr %b, align 8
  store ptr %2, ptr %c, align 8
  %_7 = mul i64 %n, 8
  %_6 = icmp uge i64 %_7, 64
  br i1 %_6, label %bb1, label %bb5

bb5:                                              ; preds = %start
  br label %bb6

bb1:                                              ; preds = %start
  %n8 = udiv i64 %n, 8
  %_9 = load ptr, ptr %a, align 8
  %self = load ptr, ptr %a, align 8
  %count = mul i64 %n8, 4
  %_10 = getelementptr inbounds nuw i32, ptr %self, i64 %count
  %count1 = mul i64 %n8, 7
  %3 = load ptr, ptr %a, align 8
  %_13 = getelementptr inbounds nuw i32, ptr %3, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %4 = call ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h312ca1c06fa58cc3E(ptr %_9, ptr %_10, ptr %_13, i64 %n8, ptr align 8 %is_less)
  store ptr %4, ptr %a, align 8
  %_15 = load ptr, ptr %b, align 8
  %self2 = load ptr, ptr %b, align 8
  %_16 = getelementptr inbounds nuw i32, ptr %self2, i64 %count
  %5 = load ptr, ptr %b, align 8
  %_18 = getelementptr inbounds nuw i32, ptr %5, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %6 = call ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h312ca1c06fa58cc3E(ptr %_15, ptr %_16, ptr %_18, i64 %n8, ptr align 8 %is_less)
  store ptr %6, ptr %b, align 8
  %_19 = load ptr, ptr %c, align 8
  %self3 = load ptr, ptr %c, align 8
  %_20 = getelementptr inbounds nuw i32, ptr %self3, i64 %count
  %7 = load ptr, ptr %c, align 8
  %_22 = getelementptr inbounds nuw i32, ptr %7, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %8 = call ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h312ca1c06fa58cc3E(ptr %_19, ptr %_20, ptr %_22, i64 %n8, ptr align 8 %is_less)
  store ptr %8, ptr %c, align 8
  br label %bb6

bb6:                                              ; preds = %bb1, %bb5
  %_23 = load ptr, ptr %a, align 8
  %_24 = load ptr, ptr %b, align 8
  %_25 = load ptr, ptr %c, align 8
; call alloc::slice::<impl [T]>::sort_by::{{closure}}
  %x.i = call zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"(ptr align 8 %is_less, ptr align 4 %_23, ptr align 4 %_24) #24
; call alloc::slice::<impl [T]>::sort_by::{{closure}}
  %y.i = call zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"(ptr align 8 %is_less, ptr align 4 %_23, ptr align 4 %_25) #24
  %_9.i = icmp eq i1 %x.i, %y.i
  br i1 %_9.i, label %bb3.i, label %bb8.i

bb8.i:                                            ; preds = %bb6
  store ptr %_23, ptr %_0.i, align 8
  br label %_ZN4core5slice4sort6shared5pivot7median317h1989c5927d84e428E.exit

bb3.i:                                            ; preds = %bb6
; call alloc::slice::<impl [T]>::sort_by::{{closure}}
  %z.i = call zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"(ptr align 8 %is_less, ptr align 4 %_24, ptr align 4 %_25) #24
  %_12.i = xor i1 %z.i, %x.i
  br i1 %_12.i, label %bb5.i, label %bb6.i

bb6.i:                                            ; preds = %bb3.i
  store ptr %_24, ptr %_0.i, align 8
  br label %bb7.i

bb5.i:                                            ; preds = %bb3.i
  store ptr %_25, ptr %_0.i, align 8
  br label %bb7.i

bb7.i:                                            ; preds = %bb5.i, %bb6.i
  br label %_ZN4core5slice4sort6shared5pivot7median317h1989c5927d84e428E.exit

_ZN4core5slice4sort6shared5pivot7median317h1989c5927d84e428E.exit: ; preds = %bb8.i, %bb7.i
  %9 = load ptr, ptr %_0.i, align 8
  ret ptr %9
}

; core::slice::sort::shared::pivot::choose_pivot
; Function Attrs: inlinehint nonlazybind uwtable
define i64 @_ZN4core5slice4sort6shared5pivot12choose_pivot17h10dc2c1619e2aff0E(ptr align 4 %v.0, i64 %v.1, ptr align 8 %is_less) unnamed_addr #1 {
start:
  %_0.i = alloca [8 x i8], align 8
  %index = alloca [8 x i8], align 8
  %_4 = icmp ult i64 %v.1, 8
  br i1 %_4, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %len_div_8 = udiv i64 %v.1, 8
  %count = mul i64 %len_div_8, 4
  %b = getelementptr inbounds nuw i32, ptr %v.0, i64 %count
  %count1 = mul i64 %len_div_8, 7
  %c = getelementptr inbounds nuw i32, ptr %v.0, i64 %count1
  %_12 = icmp ult i64 %v.1, 64
  br i1 %_12, label %bb3, label %bb5

bb1:                                              ; preds = %start
  call void @llvm.trap()
  unreachable

bb5:                                              ; preds = %bb2
; call core::slice::sort::shared::pivot::median3_rec
  %self = call ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h312ca1c06fa58cc3E(ptr %v.0, ptr %b, ptr %c, i64 %len_div_8, ptr align 8 %is_less)
  br label %bb16

bb3:                                              ; preds = %bb2
; call alloc::slice::<impl [T]>::sort_by::{{closure}}
  %x.i = call zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"(ptr align 8 %is_less, ptr align 4 %v.0, ptr align 4 %b) #24
; call alloc::slice::<impl [T]>::sort_by::{{closure}}
  %y.i = call zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"(ptr align 8 %is_less, ptr align 4 %v.0, ptr align 4 %c) #24
  %_9.i = icmp eq i1 %x.i, %y.i
  br i1 %_9.i, label %bb3.i, label %bb8.i

bb8.i:                                            ; preds = %bb3
  store ptr %v.0, ptr %_0.i, align 8
  br label %_ZN4core5slice4sort6shared5pivot7median317h1989c5927d84e428E.exit

bb3.i:                                            ; preds = %bb3
; call alloc::slice::<impl [T]>::sort_by::{{closure}}
  %z.i = call zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"(ptr align 8 %is_less, ptr align 4 %b, ptr align 4 %c) #24
  %_12.i = xor i1 %z.i, %x.i
  br i1 %_12.i, label %bb5.i, label %bb6.i

bb6.i:                                            ; preds = %bb3.i
  store ptr %b, ptr %_0.i, align 8
  br label %bb7.i

bb5.i:                                            ; preds = %bb3.i
  store ptr %c, ptr %_0.i, align 8
  br label %bb7.i

bb7.i:                                            ; preds = %bb5.i, %bb6.i
  br label %_ZN4core5slice4sort6shared5pivot7median317h1989c5927d84e428E.exit

_ZN4core5slice4sort6shared5pivot7median317h1989c5927d84e428E.exit: ; preds = %bb8.i, %bb7.i
  %0 = load ptr, ptr %_0.i, align 8
  br label %bb9

bb16:                                             ; preds = %bb5
; call core::ptr::const_ptr::<impl *const T>::offset_from_unsigned::precondition_check
  call void @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$20offset_from_unsigned18precondition_check17h5f483eec962d541fE"(ptr %self, ptr %v.0, ptr align 8 @alloc_2f8e843c534c67cb96543761941a300b) #25
  br label %bb18

bb18:                                             ; preds = %bb16
  br label %bb19

bb19:                                             ; preds = %bb18
  br label %bb20

bb20:                                             ; preds = %bb19
  %1 = ptrtoint ptr %self to i64
  %2 = ptrtoint ptr %v.0 to i64
  %3 = sub nuw i64 %1, %2
  %4 = udiv exact i64 %3, 4
  store i64 %4, ptr %index, align 8
  br label %bb7

bb21:                                             ; No predecessors!
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17ha2e20a73227bb72eE(ptr align 1 @alloc_ec595fc0e82ef92fc59bd74f68296eae, i64 73, ptr align 8 @alloc_2f8e843c534c67cb96543761941a300b) #23
  unreachable

bb7:                                              ; preds = %bb13, %bb20
  %_19 = load i64, ptr %index, align 8
  %cond = icmp ult i64 %_19, %v.1
  br label %bb22

bb9:                                              ; preds = %_ZN4core5slice4sort6shared5pivot7median317h1989c5927d84e428E.exit
; call core::ptr::const_ptr::<impl *const T>::offset_from_unsigned::precondition_check
  call void @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$20offset_from_unsigned18precondition_check17h5f483eec962d541fE"(ptr %0, ptr %v.0, ptr align 8 @alloc_ae7688b138134f73080bc6d7b2676850) #25
  br label %bb11

bb11:                                             ; preds = %bb9
  br label %bb12

bb12:                                             ; preds = %bb11
  br label %bb13

bb13:                                             ; preds = %bb12
  %5 = ptrtoint ptr %0 to i64
  %6 = ptrtoint ptr %v.0 to i64
  %7 = sub nuw i64 %5, %6
  %8 = udiv exact i64 %7, 4
  store i64 %8, ptr %index, align 8
  br label %bb7

bb14:                                             ; No predecessors!
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17ha2e20a73227bb72eE(ptr align 1 @alloc_ec595fc0e82ef92fc59bd74f68296eae, i64 73, ptr align 8 @alloc_ae7688b138134f73080bc6d7b2676850) #23
  unreachable

bb22:                                             ; preds = %bb7
; call core::hint::assert_unchecked::precondition_check
  call void @_ZN4core4hint16assert_unchecked18precondition_check17hc4e741313529fd94E(i1 zeroext %cond, ptr align 8 @alloc_e29594f41086b4f3c0207ce0636713c2) #25
  br label %bb23

bb23:                                             ; preds = %bb22
  %9 = load i64, ptr %index, align 8
  ret i64 %9
}

; core::slice::sort::shared::smallsort::insert_tail
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort11insert_tail17hd66b5724334f6768E(ptr %begin, ptr %tail, ptr align 8 %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_20 = alloca [8 x i8], align 8
  %gap_guard = alloca [24 x i8], align 8
  %tmp = alloca [4 x i8], align 4
  %sift = alloca [8 x i8], align 8
  br label %bb17

bb17:                                             ; preds = %start
  %1 = getelementptr inbounds i32, ptr %tail, i64 -1
  store ptr %1, ptr %sift, align 8
  br label %bb15

bb15:                                             ; preds = %bb17
  %_8 = load ptr, ptr %sift, align 8
; call alloc::slice::<impl [T]>::sort_by::{{closure}}
  %_5 = call zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"(ptr align 8 %is_less, ptr align 4 %tail, ptr align 4 %_8) #24
  br i1 %_5, label %bb2, label %bb3

bb3:                                              ; preds = %bb15
  br label %bb12

bb2:                                              ; preds = %bb15
  %value = load i32, ptr %tail, align 4
  store i32 %value, ptr %tmp, align 4
  store ptr %tmp, ptr %gap_guard, align 8
  %2 = getelementptr inbounds i8, ptr %gap_guard, i64 8
  store ptr %tail, ptr %2, align 8
  %3 = getelementptr inbounds i8, ptr %gap_guard, i64 16
  store i64 1, ptr %3, align 8
  br label %bb4

bb12:                                             ; preds = %bb10, %bb3
  ret void

bb4:                                              ; preds = %bb8, %bb2
  %_15 = load ptr, ptr %sift, align 8
  %4 = getelementptr inbounds i8, ptr %gap_guard, i64 8
  %dst = load ptr, ptr %4, align 8
  br label %bb18

bb18:                                             ; preds = %bb4
; call core::ptr::copy_nonoverlapping::precondition_check
  call void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17hc07330eb8860aa11E(ptr %_15, ptr %dst, i64 4, i64 4, i64 1, ptr align 8 @alloc_0d87c14e0afc26d18a0752880d43f0ed) #25
  br label %bb20

bb20:                                             ; preds = %bb18
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %dst, ptr align 4 %_15, i64 4, i1 false)
  %_17 = load ptr, ptr %sift, align 8
  %5 = getelementptr inbounds i8, ptr %gap_guard, i64 8
  store ptr %_17, ptr %5, align 8
  %_19 = load ptr, ptr %sift, align 8
  %_18 = icmp eq ptr %_19, %begin
  br i1 %_18, label %bb5, label %bb6

bb6:                                              ; preds = %bb20
  br label %bb23

bb5:                                              ; preds = %bb20
  br label %bb10

bb23:                                             ; preds = %bb6
  %6 = load ptr, ptr %sift, align 8
  %7 = getelementptr inbounds i32, ptr %6, i64 -1
  store ptr %7, ptr %_20, align 8
  br label %bb21

bb21:                                             ; preds = %bb23
  %8 = load ptr, ptr %_20, align 8
  store ptr %8, ptr %sift, align 8
  %_25 = load ptr, ptr %sift, align 8
; invoke alloc::slice::<impl [T]>::sort_by::{{closure}}
  %_21 = invoke zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"(ptr align 8 %is_less, ptr align 4 %tmp, ptr align 4 %_25)
          to label %bb7 unwind label %cleanup

bb13:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<core::slice::sort::shared::smallsort::CopyOnDrop<i32>>
  invoke void @"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h29b5ceebc9567873E"(ptr align 8 %gap_guard) #28
          to label %bb14 unwind label %terminate

cleanup:                                          ; preds = %bb21
  %9 = landingpad { ptr, i32 }
          cleanup
  %10 = extractvalue { ptr, i32 } %9, 0
  %11 = extractvalue { ptr, i32 } %9, 1
  store ptr %10, ptr %0, align 8
  %12 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %11, ptr %12, align 8
  br label %bb13

bb7:                                              ; preds = %bb21
  br i1 %_21, label %bb8, label %bb9

bb9:                                              ; preds = %bb7
  br label %bb10

bb8:                                              ; preds = %bb7
  br label %bb4

bb10:                                             ; preds = %bb5, %bb9
; call core::ptr::drop_in_place<core::slice::sort::shared::smallsort::CopyOnDrop<i32>>
  call void @"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h29b5ceebc9567873E"(ptr align 8 %gap_guard)
  br label %bb12

terminate:                                        ; preds = %bb13
  %13 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb14:                                             ; preds = %bb13
  %14 = load ptr, ptr %0, align 8
  %15 = getelementptr inbounds i8, ptr %0, i64 8
  %16 = load i32, ptr %15, align 8
  %17 = insertvalue { ptr, i32 } poison, ptr %14, 0
  %18 = insertvalue { ptr, i32 } %17, i32 %16, 1
  resume { ptr, i32 } %18

bb16:                                             ; No predecessors!
  unreachable

bb22:                                             ; No predecessors!
  unreachable
}

; core::slice::sort::shared::smallsort::sort4_stable
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h144ecddaed5d1972E(ptr %v_base, ptr %dst, ptr align 8 %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [8 x i8], align 8
  %1 = alloca [8 x i8], align 8
  %self.i67 = alloca [8 x i8], align 8
  %guard.i68 = alloca [8 x i8], align 8
  %false_val2.i69 = alloca [8 x i8], align 8
  %true_val1.i70 = alloca [8 x i8], align 8
  %2 = alloca [8 x i8], align 8
  %3 = alloca [8 x i8], align 8
  %self.i57 = alloca [8 x i8], align 8
  %guard.i58 = alloca [8 x i8], align 8
  %false_val2.i59 = alloca [8 x i8], align 8
  %true_val1.i60 = alloca [8 x i8], align 8
  %4 = alloca [8 x i8], align 8
  %5 = alloca [8 x i8], align 8
  %self.i47 = alloca [8 x i8], align 8
  %guard.i48 = alloca [8 x i8], align 8
  %false_val2.i49 = alloca [8 x i8], align 8
  %true_val1.i50 = alloca [8 x i8], align 8
  %6 = alloca [8 x i8], align 8
  %7 = alloca [8 x i8], align 8
  %self.i37 = alloca [8 x i8], align 8
  %guard.i38 = alloca [8 x i8], align 8
  %false_val2.i39 = alloca [8 x i8], align 8
  %true_val1.i40 = alloca [8 x i8], align 8
  %8 = alloca [8 x i8], align 8
  %9 = alloca [8 x i8], align 8
  %self.i27 = alloca [8 x i8], align 8
  %guard.i28 = alloca [8 x i8], align 8
  %false_val2.i29 = alloca [8 x i8], align 8
  %true_val1.i30 = alloca [8 x i8], align 8
  %10 = alloca [8 x i8], align 8
  %11 = alloca [8 x i8], align 8
  %self.i17 = alloca [8 x i8], align 8
  %guard.i18 = alloca [8 x i8], align 8
  %false_val2.i19 = alloca [8 x i8], align 8
  %true_val1.i20 = alloca [8 x i8], align 8
  %12 = alloca [8 x i8], align 8
  %13 = alloca [8 x i8], align 8
  %self.i7 = alloca [8 x i8], align 8
  %guard.i8 = alloca [8 x i8], align 8
  %false_val2.i9 = alloca [8 x i8], align 8
  %true_val1.i10 = alloca [8 x i8], align 8
  %14 = alloca [8 x i8], align 8
  %15 = alloca [8 x i8], align 8
  %self.i = alloca [8 x i8], align 8
  %guard.i = alloca [8 x i8], align 8
  %false_val2.i = alloca [8 x i8], align 8
  %true_val1.i = alloca [8 x i8], align 8
  %self = alloca [8 x i8], align 8
  %dst1 = alloca [8 x i8], align 8
  %_7 = getelementptr inbounds nuw i32, ptr %v_base, i64 1
; call alloc::slice::<impl [T]>::sort_by::{{closure}}
  %c1 = call zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"(ptr align 8 %is_less, ptr align 4 %_7, ptr align 4 %v_base) #24
  %_12 = getelementptr inbounds nuw i32, ptr %v_base, i64 3
  %_14 = getelementptr inbounds nuw i32, ptr %v_base, i64 2
; call alloc::slice::<impl [T]>::sort_by::{{closure}}
  %c2 = call zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"(ptr align 8 %is_less, ptr align 4 %_12, ptr align 4 %_14) #24
  %count = zext i1 %c1 to i64
  %a = getelementptr inbounds nuw i32, ptr %v_base, i64 %count
  %_19 = xor i1 %c1, true
  %count2 = zext i1 %_19 to i64
  %b = getelementptr inbounds nuw i32, ptr %v_base, i64 %count2
  %_22 = zext i1 %c2 to i64
  %count3 = add i64 2, %_22
  %c = getelementptr inbounds nuw i32, ptr %v_base, i64 %count3
  %_26 = xor i1 %c2, true
  %_25 = zext i1 %_26 to i64
  %count4 = add i64 2, %_25
  %d = getelementptr inbounds nuw i32, ptr %v_base, i64 %count4
; call alloc::slice::<impl [T]>::sort_by::{{closure}}
  %c3 = call zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"(ptr align 8 %is_less, ptr align 4 %c, ptr align 4 %a) #24
; call alloc::slice::<impl [T]>::sort_by::{{closure}}
  %c4 = call zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"(ptr align 8 %is_less, ptr align 4 %d, ptr align 4 %b) #24
  store ptr %c, ptr %true_val1.i70, align 8
  store ptr %a, ptr %false_val2.i69, align 8
  %16 = select i1 %c3, ptr %true_val1.i70, ptr %false_val2.i69, !unpredictable !3
  store ptr %16, ptr %1, align 8
  %guard3.i71 = load ptr, ptr %1, align 8
  %17 = select i1 %c3, ptr %false_val2.i69, ptr %true_val1.i70, !unpredictable !3
  store ptr %17, ptr %0, align 8
  %drop.i72 = load ptr, ptr %0, align 8
  store ptr %guard3.i71, ptr %guard.i68, align 8
  %t.i73 = load ptr, ptr %guard.i68, align 8
  %_15.i74 = load ptr, ptr %true_val1.i70, align 8
  %_16.i75 = load ptr, ptr %false_val2.i69, align 8
  %18 = select i1 %c3, ptr %_15.i74, ptr %_16.i75, !unpredictable !3
  store ptr %18, ptr %self.i67, align 8
  %_0.i76 = load ptr, ptr %self.i67, align 8
  store ptr %b, ptr %true_val1.i60, align 8
  store ptr %d, ptr %false_val2.i59, align 8
  %19 = select i1 %c4, ptr %true_val1.i60, ptr %false_val2.i59, !unpredictable !3
  store ptr %19, ptr %3, align 8
  %guard3.i61 = load ptr, ptr %3, align 8
  %20 = select i1 %c4, ptr %false_val2.i59, ptr %true_val1.i60, !unpredictable !3
  store ptr %20, ptr %2, align 8
  %drop.i62 = load ptr, ptr %2, align 8
  store ptr %guard3.i61, ptr %guard.i58, align 8
  %t.i63 = load ptr, ptr %guard.i58, align 8
  %_15.i64 = load ptr, ptr %true_val1.i60, align 8
  %_16.i65 = load ptr, ptr %false_val2.i59, align 8
  %21 = select i1 %c4, ptr %_15.i64, ptr %_16.i65, !unpredictable !3
  store ptr %21, ptr %self.i57, align 8
  %_0.i66 = load ptr, ptr %self.i57, align 8
  store ptr %c, ptr %true_val1.i50, align 8
  store ptr %b, ptr %false_val2.i49, align 8
  %22 = select i1 %c4, ptr %true_val1.i50, ptr %false_val2.i49, !unpredictable !3
  store ptr %22, ptr %5, align 8
  %guard3.i51 = load ptr, ptr %5, align 8
  %23 = select i1 %c4, ptr %false_val2.i49, ptr %true_val1.i50, !unpredictable !3
  store ptr %23, ptr %4, align 8
  %drop.i52 = load ptr, ptr %4, align 8
  store ptr %guard3.i51, ptr %guard.i48, align 8
  %t.i53 = load ptr, ptr %guard.i48, align 8
  %_15.i54 = load ptr, ptr %true_val1.i50, align 8
  %_16.i55 = load ptr, ptr %false_val2.i49, align 8
  %24 = select i1 %c4, ptr %_15.i54, ptr %_16.i55, !unpredictable !3
  store ptr %24, ptr %self.i47, align 8
  %_0.i56 = load ptr, ptr %self.i47, align 8
  store ptr %a, ptr %true_val1.i40, align 8
  store ptr %_0.i56, ptr %false_val2.i39, align 8
  %25 = select i1 %c3, ptr %true_val1.i40, ptr %false_val2.i39, !unpredictable !3
  store ptr %25, ptr %7, align 8
  %guard3.i41 = load ptr, ptr %7, align 8
  %26 = select i1 %c3, ptr %false_val2.i39, ptr %true_val1.i40, !unpredictable !3
  store ptr %26, ptr %6, align 8
  %drop.i42 = load ptr, ptr %6, align 8
  store ptr %guard3.i41, ptr %guard.i38, align 8
  %t.i43 = load ptr, ptr %guard.i38, align 8
  %_15.i44 = load ptr, ptr %true_val1.i40, align 8
  %_16.i45 = load ptr, ptr %false_val2.i39, align 8
  %27 = select i1 %c3, ptr %_15.i44, ptr %_16.i45, !unpredictable !3
  store ptr %27, ptr %self.i37, align 8
  %_0.i46 = load ptr, ptr %self.i37, align 8
  store ptr %b, ptr %true_val1.i30, align 8
  store ptr %c, ptr %false_val2.i29, align 8
  %28 = select i1 %c3, ptr %true_val1.i30, ptr %false_val2.i29, !unpredictable !3
  store ptr %28, ptr %9, align 8
  %guard3.i31 = load ptr, ptr %9, align 8
  %29 = select i1 %c3, ptr %false_val2.i29, ptr %true_val1.i30, !unpredictable !3
  store ptr %29, ptr %8, align 8
  %drop.i32 = load ptr, ptr %8, align 8
  store ptr %guard3.i31, ptr %guard.i28, align 8
  %t.i33 = load ptr, ptr %guard.i28, align 8
  %_15.i34 = load ptr, ptr %true_val1.i30, align 8
  %_16.i35 = load ptr, ptr %false_val2.i29, align 8
  %30 = select i1 %c3, ptr %_15.i34, ptr %_16.i35, !unpredictable !3
  store ptr %30, ptr %self.i27, align 8
  %_0.i36 = load ptr, ptr %self.i27, align 8
  store ptr %d, ptr %true_val1.i20, align 8
  store ptr %_0.i36, ptr %false_val2.i19, align 8
  %31 = select i1 %c4, ptr %true_val1.i20, ptr %false_val2.i19, !unpredictable !3
  store ptr %31, ptr %11, align 8
  %guard3.i21 = load ptr, ptr %11, align 8
  %32 = select i1 %c4, ptr %false_val2.i19, ptr %true_val1.i20, !unpredictable !3
  store ptr %32, ptr %10, align 8
  %drop.i22 = load ptr, ptr %10, align 8
  store ptr %guard3.i21, ptr %guard.i18, align 8
  %t.i23 = load ptr, ptr %guard.i18, align 8
  %_15.i24 = load ptr, ptr %true_val1.i20, align 8
  %_16.i25 = load ptr, ptr %false_val2.i19, align 8
  %33 = select i1 %c4, ptr %_15.i24, ptr %_16.i25, !unpredictable !3
  store ptr %33, ptr %self.i17, align 8
  %_0.i26 = load ptr, ptr %self.i17, align 8
; call alloc::slice::<impl [T]>::sort_by::{{closure}}
  %c5 = call zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"(ptr align 8 %is_less, ptr align 4 %_0.i26, ptr align 4 %_0.i46) #24
  store ptr %_0.i26, ptr %true_val1.i10, align 8
  store ptr %_0.i46, ptr %false_val2.i9, align 8
  %34 = select i1 %c5, ptr %true_val1.i10, ptr %false_val2.i9, !unpredictable !3
  store ptr %34, ptr %13, align 8
  %guard3.i11 = load ptr, ptr %13, align 8
  %35 = select i1 %c5, ptr %false_val2.i9, ptr %true_val1.i10, !unpredictable !3
  store ptr %35, ptr %12, align 8
  %drop.i12 = load ptr, ptr %12, align 8
  store ptr %guard3.i11, ptr %guard.i8, align 8
  %t.i13 = load ptr, ptr %guard.i8, align 8
  %_15.i14 = load ptr, ptr %true_val1.i10, align 8
  %_16.i15 = load ptr, ptr %false_val2.i9, align 8
  %36 = select i1 %c5, ptr %_15.i14, ptr %_16.i15, !unpredictable !3
  store ptr %36, ptr %self.i7, align 8
  %_0.i16 = load ptr, ptr %self.i7, align 8
  store ptr %_0.i46, ptr %true_val1.i, align 8
  store ptr %_0.i26, ptr %false_val2.i, align 8
  %37 = select i1 %c5, ptr %true_val1.i, ptr %false_val2.i, !unpredictable !3
  store ptr %37, ptr %15, align 8
  %guard3.i = load ptr, ptr %15, align 8
  %38 = select i1 %c5, ptr %false_val2.i, ptr %true_val1.i, !unpredictable !3
  store ptr %38, ptr %14, align 8
  %drop.i = load ptr, ptr %14, align 8
  store ptr %guard3.i, ptr %guard.i, align 8
  %t.i = load ptr, ptr %guard.i, align 8
  %_15.i = load ptr, ptr %true_val1.i, align 8
  %_16.i = load ptr, ptr %false_val2.i, align 8
  %39 = select i1 %c5, ptr %_15.i, ptr %_16.i, !unpredictable !3
  store ptr %39, ptr %self.i, align 8
  %_0.i = load ptr, ptr %self.i, align 8
  br label %bb14

bb14:                                             ; preds = %start
; call core::ptr::copy_nonoverlapping::precondition_check
  call void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17hc07330eb8860aa11E(ptr %_0.i76, ptr %dst, i64 4, i64 4, i64 1, ptr align 8 @alloc_0d87c14e0afc26d18a0752880d43f0ed) #25
  br label %bb16

bb16:                                             ; preds = %bb14
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %dst, ptr align 4 %_0.i76, i64 4, i1 false)
  %dst5 = getelementptr inbounds nuw i32, ptr %dst, i64 1
  br label %bb17

bb17:                                             ; preds = %bb16
; call core::ptr::copy_nonoverlapping::precondition_check
  call void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17hc07330eb8860aa11E(ptr %_0.i16, ptr %dst5, i64 4, i64 4, i64 1, ptr align 8 @alloc_0d87c14e0afc26d18a0752880d43f0ed) #25
  br label %bb19

bb19:                                             ; preds = %bb17
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %dst5, ptr align 4 %_0.i16, i64 4, i1 false)
  %dst6 = getelementptr inbounds nuw i32, ptr %dst, i64 2
  br label %bb20

bb20:                                             ; preds = %bb19
; call core::ptr::copy_nonoverlapping::precondition_check
  call void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17hc07330eb8860aa11E(ptr %_0.i, ptr %dst6, i64 4, i64 4, i64 1, ptr align 8 @alloc_0d87c14e0afc26d18a0752880d43f0ed) #25
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %dst6, ptr align 4 %_0.i, i64 4, i1 false)
  store ptr %dst, ptr %self, align 8
  %40 = getelementptr inbounds nuw i32, ptr %dst, i64 3
  store ptr %40, ptr %dst1, align 8
  %_63 = load ptr, ptr %dst1, align 8
; call core::ptr::copy_nonoverlapping::precondition_check
  call void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17hc07330eb8860aa11E(ptr %_0.i66, ptr %_63, i64 4, i64 4, i64 1, ptr align 8 @alloc_0d87c14e0afc26d18a0752880d43f0ed) #25
  br label %bb23

bb24:                                             ; No predecessors!
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %dst6, ptr align 4 %_0.i, i64 4, i1 false)
  store ptr %dst, ptr %self, align 8
  %41 = getelementptr inbounds nuw i32, ptr %dst, i64 3
  store ptr %41, ptr %dst1, align 8
  br label %bb23

bb23:                                             ; preds = %bb20, %bb24
  %42 = load ptr, ptr %dst1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %42, ptr align 4 %_0.i66, i64 4, i1 false)
  ret void
}

; core::slice::sort::shared::smallsort::sort8_stable
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h279c1d0b1c14e64fE(ptr %v_base, ptr %dst, ptr %scratch_base, ptr align 8 %is_less) unnamed_addr #3 {
start:
; call core::slice::sort::shared::smallsort::sort4_stable
  call void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h144ecddaed5d1972E(ptr %v_base, ptr %scratch_base, ptr align 8 %is_less)
  %_9 = getelementptr inbounds nuw i32, ptr %v_base, i64 4
  %_10 = getelementptr inbounds nuw i32, ptr %scratch_base, i64 4
; call core::slice::sort::shared::smallsort::sort4_stable
  call void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h144ecddaed5d1972E(ptr %_9, ptr %_10, ptr align 8 %is_less)
; call core::slice::sort::shared::smallsort::bidirectional_merge
  call void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha5b44c109f16da34E(ptr align 4 %scratch_base, i64 8, ptr %dst, ptr align 8 %is_less)
  ret void
}

; core::slice::sort::shared::smallsort::bidirectional_merge
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha5b44c109f16da34E(ptr align 4 %v.0, i64 %v.1, ptr %0, ptr align 8 %is_less) unnamed_addr #3 {
start:
  %src.i4 = alloca [8 x i8], align 8
  %dst.i5 = alloca [8 x i8], align 8
  %right_src.i6 = alloca [8 x i8], align 8
  %left_src.i7 = alloca [8 x i8], align 8
  %1 = alloca [8 x i8], align 8
  %2 = alloca [8 x i8], align 8
  %_16.i = alloca [8 x i8], align 8
  %src.i = alloca [8 x i8], align 8
  %dst.i = alloca [8 x i8], align 8
  %right_src.i = alloca [8 x i8], align 8
  %left_src.i = alloca [8 x i8], align 8
  %3 = alloca [8 x i8], align 8
  %4 = alloca [8 x i8], align 8
  %last_src = alloca [8 x i8], align 8
  %_19 = alloca [24 x i8], align 8
  %dst_rev = alloca [8 x i8], align 8
  %right_rev = alloca [8 x i8], align 8
  %left_rev = alloca [8 x i8], align 8
  %_15 = alloca [24 x i8], align 8
  %right = alloca [8 x i8], align 8
  %left = alloca [8 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %dst = alloca [8 x i8], align 8
  store ptr %0, ptr %dst, align 8
  %len_div_2 = udiv i64 %v.1, 2
  %_7 = icmp ne i64 %len_div_2, 0
  store ptr %v.0, ptr %left, align 8
  %5 = getelementptr inbounds nuw i32, ptr %v.0, i64 %len_div_2
  store ptr %5, ptr %right, align 8
  %count = sub i64 %len_div_2, 1
  %6 = getelementptr inbounds nuw i32, ptr %v.0, i64 %count
  store ptr %6, ptr %left_rev, align 8
  %count1 = sub i64 %v.1, 1
  %7 = getelementptr inbounds nuw i32, ptr %v.0, i64 %count1
  store ptr %7, ptr %right_rev, align 8
  %self = load ptr, ptr %dst, align 8
  %8 = getelementptr inbounds nuw i32, ptr %self, i64 %count1
  store ptr %8, ptr %dst_rev, align 8
  store i64 0, ptr %iter, align 8
  %9 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %len_div_2, ptr %9, align 8
  br label %bb1

bb1:                                              ; preds = %_ZN4core5slice4sort6shared9smallsort10merge_down17hf04f9d4747dc391bE.exit, %start
  %_40 = load i64, ptr %iter, align 8
  %10 = getelementptr inbounds i8, ptr %iter, i64 8
  %_41 = load i64, ptr %10, align 8
  %_35 = icmp ult i64 %_40, %_41
  br i1 %_35, label %bb15, label %bb16

bb16:                                             ; preds = %bb1
  %11 = load ptr, ptr %left_rev, align 8
  %12 = getelementptr i32, ptr %11, i64 1
  store ptr %12, ptr %4, align 8
  %left_end = load ptr, ptr %4, align 8
  %13 = load ptr, ptr %right_rev, align 8
  %14 = getelementptr i32, ptr %13, i64 1
  store ptr %14, ptr %3, align 8
  %right_end = load ptr, ptr %3, align 8
  %_44 = urem i64 %v.1, 2
  %_22 = icmp eq i64 %_44, 0
  br i1 %_22, label %bb4, label %bb5

bb15:                                             ; preds = %bb1
  %old = load i64, ptr %iter, align 8
  br label %bb17

bb5:                                              ; preds = %bb16
  %_24 = load ptr, ptr %left, align 8
  %left_nonempty = icmp ult ptr %_24, %left_end
  br i1 %left_nonempty, label %bb6, label %bb7

bb4:                                              ; preds = %bb16
  br label %bb9

bb7:                                              ; preds = %bb5
  %15 = load ptr, ptr %right, align 8
  store ptr %15, ptr %last_src, align 8
  br label %bb8

bb6:                                              ; preds = %bb5
  %16 = load ptr, ptr %left, align 8
  store ptr %16, ptr %last_src, align 8
  br label %bb8

bb8:                                              ; preds = %bb6, %bb7
  br label %bb21

bb21:                                             ; preds = %bb8
  %_46 = load ptr, ptr %last_src, align 8
  %_47 = load ptr, ptr %dst, align 8
; call core::ptr::copy_nonoverlapping::precondition_check
  call void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17hc07330eb8860aa11E(ptr %_46, ptr %_47, i64 4, i64 4, i64 1, ptr align 8 @alloc_0d87c14e0afc26d18a0752880d43f0ed) #25
  br label %bb23

bb23:                                             ; preds = %bb21
  %17 = load ptr, ptr %dst, align 8
  %18 = load ptr, ptr %last_src, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %17, ptr align 4 %18, i64 4, i1 false)
  %count2 = zext i1 %left_nonempty to i64
  %19 = load ptr, ptr %left, align 8
  %_26 = getelementptr inbounds nuw i32, ptr %19, i64 %count2
  store ptr %_26, ptr %left, align 8
  %_30 = xor i1 %left_nonempty, true
  %count3 = zext i1 %_30 to i64
  %20 = load ptr, ptr %right, align 8
  %_28 = getelementptr inbounds nuw i32, ptr %20, i64 %count3
  store ptr %_28, ptr %right, align 8
  br label %bb9

bb9:                                              ; preds = %bb4, %bb23
  %21 = load ptr, ptr %left, align 8
  %_31 = icmp ne ptr %21, %left_end
  br i1 %_31, label %bb10, label %bb11

bb11:                                             ; preds = %bb9
  %22 = load ptr, ptr %right, align 8
  %_32 = icmp ne ptr %22, %right_end
  br i1 %_32, label %bb12, label %bb14

bb10:                                             ; preds = %bb9
  br label %bb13

bb14:                                             ; preds = %bb11
  ret void

bb12:                                             ; preds = %bb11
  br label %bb13

bb13:                                             ; preds = %bb10, %bb12
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #23
  unreachable

bb17:                                             ; preds = %bb15
; call core::num::<impl usize>::unchecked_add::precondition_check
  call void @"_ZN4core3num23_$LT$impl$u20$usize$GT$13unchecked_add18precondition_check17hbf8a98e7ca50b85fE"(i64 %old, i64 1, ptr align 8 @alloc_5a841786226b43ba606ae5b578f20831) #25
  br label %bb18

bb18:                                             ; preds = %bb17
  %_39 = add nuw i64 %old, 1
  store i64 %_39, ptr %iter, align 8
  %23 = load ptr, ptr %left, align 8
  %24 = load ptr, ptr %right, align 8
  %25 = load ptr, ptr %dst, align 8
  store ptr %23, ptr %left_src.i7, align 8
  store ptr %24, ptr %right_src.i6, align 8
  store ptr %25, ptr %dst.i5, align 8
  %_8.i8 = load ptr, ptr %right_src.i6, align 8
  %_9.i9 = load ptr, ptr %left_src.i7, align 8
; call alloc::slice::<impl [T]>::sort_by::{{closure}}
  %_6.i10 = call zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"(ptr align 8 %is_less, ptr align 4 %_8.i8, ptr align 4 %_9.i9) #24
  %is_l.i11 = xor i1 %_6.i10, true
  br i1 %is_l.i11, label %bb2.i20, label %bb3.i12

bb3.i12:                                          ; preds = %bb18
  %26 = load ptr, ptr %right_src.i6, align 8
  store ptr %26, ptr %src.i4, align 8
  br label %_ZN4core5slice4sort6shared9smallsort8merge_up17h8c1eb54c25e1e75cE.exit

bb2.i20:                                          ; preds = %bb18
  %27 = load ptr, ptr %left_src.i7, align 8
  store ptr %27, ptr %src.i4, align 8
  br label %_ZN4core5slice4sort6shared9smallsort8merge_up17h8c1eb54c25e1e75cE.exit

_ZN4core5slice4sort6shared9smallsort8merge_up17h8c1eb54c25e1e75cE.exit: ; preds = %bb3.i12, %bb2.i20
  %dst1.i13 = load ptr, ptr %dst.i5, align 8
  %_18.i14 = load ptr, ptr %src.i4, align 8
; call core::ptr::copy_nonoverlapping::precondition_check
  call void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17hc07330eb8860aa11E(ptr %_18.i14, ptr %dst1.i13, i64 4, i64 4, i64 1, ptr align 8 @alloc_0d87c14e0afc26d18a0752880d43f0ed) #25
  %28 = load ptr, ptr %src.i4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %dst1.i13, ptr align 4 %28, i64 4, i1 false)
  %count.i15 = zext i1 %_6.i10 to i64
  %29 = load ptr, ptr %right_src.i6, align 8
  %_12.i16 = getelementptr inbounds nuw i32, ptr %29, i64 %count.i15
  store ptr %_12.i16, ptr %right_src.i6, align 8
  %count2.i17 = zext i1 %is_l.i11 to i64
  %30 = load ptr, ptr %left_src.i7, align 8
  %_14.i18 = getelementptr inbounds nuw i32, ptr %30, i64 %count2.i17
  store ptr %_14.i18, ptr %left_src.i7, align 8
  %31 = load ptr, ptr %dst.i5, align 8
  %_16.i19 = getelementptr inbounds nuw i32, ptr %31, i64 1
  store ptr %_16.i19, ptr %dst.i5, align 8
  %32 = load ptr, ptr %left_src.i7, align 8
  store ptr %32, ptr %_15, align 8
  %33 = load ptr, ptr %right_src.i6, align 8
  %34 = getelementptr inbounds i8, ptr %_15, i64 8
  store ptr %33, ptr %34, align 8
  %35 = load ptr, ptr %dst.i5, align 8
  %36 = getelementptr inbounds i8, ptr %_15, i64 16
  store ptr %35, ptr %36, align 8
  %37 = load ptr, ptr %_15, align 8
  store ptr %37, ptr %left, align 8
  %38 = getelementptr inbounds i8, ptr %_15, i64 8
  %39 = load ptr, ptr %38, align 8
  store ptr %39, ptr %right, align 8
  %40 = getelementptr inbounds i8, ptr %_15, i64 16
  %41 = load ptr, ptr %40, align 8
  store ptr %41, ptr %dst, align 8
  %42 = load ptr, ptr %left_rev, align 8
  %43 = load ptr, ptr %right_rev, align 8
  %44 = load ptr, ptr %dst_rev, align 8
  store ptr %42, ptr %left_src.i, align 8
  store ptr %43, ptr %right_src.i, align 8
  store ptr %44, ptr %dst.i, align 8
  %_8.i = load ptr, ptr %right_src.i, align 8
  %_9.i = load ptr, ptr %left_src.i, align 8
; call alloc::slice::<impl [T]>::sort_by::{{closure}}
  %_6.i = call zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"(ptr align 8 %is_less, ptr align 4 %_8.i, ptr align 4 %_9.i) #24
  %is_l.i = xor i1 %_6.i, true
  br i1 %is_l.i, label %bb2.i, label %bb3.i

bb3.i:                                            ; preds = %_ZN4core5slice4sort6shared9smallsort8merge_up17h8c1eb54c25e1e75cE.exit
  %45 = load ptr, ptr %left_src.i, align 8
  store ptr %45, ptr %src.i, align 8
  br label %_ZN4core5slice4sort6shared9smallsort10merge_down17hf04f9d4747dc391bE.exit

bb2.i:                                            ; preds = %_ZN4core5slice4sort6shared9smallsort8merge_up17h8c1eb54c25e1e75cE.exit
  %46 = load ptr, ptr %right_src.i, align 8
  store ptr %46, ptr %src.i, align 8
  br label %_ZN4core5slice4sort6shared9smallsort10merge_down17hf04f9d4747dc391bE.exit

_ZN4core5slice4sort6shared9smallsort10merge_down17hf04f9d4747dc391bE.exit: ; preds = %bb3.i, %bb2.i
  %dst1.i = load ptr, ptr %dst.i, align 8
  %_18.i = load ptr, ptr %src.i, align 8
; call core::ptr::copy_nonoverlapping::precondition_check
  call void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17hc07330eb8860aa11E(ptr %_18.i, ptr %dst1.i, i64 4, i64 4, i64 1, ptr align 8 @alloc_0d87c14e0afc26d18a0752880d43f0ed) #25
  %47 = load ptr, ptr %src.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %dst1.i, ptr align 4 %47, i64 4, i1 false)
  %count.i = zext i1 %is_l.i to i64
  %count2.i = sub i64 0, %count.i
  %48 = load ptr, ptr %right_src.i, align 8
  %49 = getelementptr i32, ptr %48, i64 %count2.i
  store ptr %49, ptr %2, align 8
  %_12.i = load ptr, ptr %2, align 8
  store ptr %_12.i, ptr %right_src.i, align 8
  %count3.i = zext i1 %_6.i to i64
  %count4.i = sub i64 0, %count3.i
  %50 = load ptr, ptr %left_src.i, align 8
  %51 = getelementptr i32, ptr %50, i64 %count4.i
  store ptr %51, ptr %1, align 8
  %_14.i = load ptr, ptr %1, align 8
  store ptr %_14.i, ptr %left_src.i, align 8
  %52 = load ptr, ptr %dst.i, align 8
  %53 = getelementptr inbounds i32, ptr %52, i64 -1
  store ptr %53, ptr %_16.i, align 8
  %54 = load ptr, ptr %_16.i, align 8
  store ptr %54, ptr %dst.i, align 8
  %55 = load ptr, ptr %left_src.i, align 8
  store ptr %55, ptr %_19, align 8
  %56 = load ptr, ptr %right_src.i, align 8
  %57 = getelementptr inbounds i8, ptr %_19, i64 8
  store ptr %56, ptr %57, align 8
  %58 = load ptr, ptr %dst.i, align 8
  %59 = getelementptr inbounds i8, ptr %_19, i64 16
  store ptr %58, ptr %59, align 8
  %60 = load ptr, ptr %_19, align 8
  store ptr %60, ptr %left_rev, align 8
  %61 = getelementptr inbounds i8, ptr %_19, i64 8
  %62 = load ptr, ptr %61, align 8
  store ptr %62, ptr %right_rev, align 8
  %63 = getelementptr inbounds i8, ptr %_19, i64 16
  %64 = load ptr, ptr %63, align 8
  store ptr %64, ptr %dst_rev, align 8
  br label %bb1
}

; core::slice::sort::shared::smallsort::insertion_sort_shift_left
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h0491f74e5af5fb5dE(ptr align 4 %v.0, i64 %v.1, i64 %offset, ptr align 8 %is_less) unnamed_addr #3 {
start:
  %tail = alloca [8 x i8], align 8
  %_5 = icmp eq i64 %offset, 0
  br i1 %_5, label %bb2, label %bb1

bb1:                                              ; preds = %start
  %_6 = icmp ugt i64 %offset, %v.1
  br i1 %_6, label %bb2, label %bb3

bb2:                                              ; preds = %bb1, %start
  call void @llvm.trap()
  unreachable

bb3:                                              ; preds = %bb1
  %v_end = getelementptr inbounds nuw i32, ptr %v.0, i64 %v.1
  %0 = getelementptr inbounds nuw i32, ptr %v.0, i64 %offset
  store ptr %0, ptr %tail, align 8
  br label %bb4

bb4:                                              ; preds = %bb5, %bb3
  %_12 = load ptr, ptr %tail, align 8
  %_11 = icmp ne ptr %_12, %v_end
  br i1 %_11, label %bb5, label %bb7

bb7:                                              ; preds = %bb4
  ret void

bb5:                                              ; preds = %bb4
  %_14 = load ptr, ptr %tail, align 8
; call core::slice::sort::shared::smallsort::insert_tail
  call void @_ZN4core5slice4sort6shared9smallsort11insert_tail17hd66b5724334f6768E(ptr %v.0, ptr %_14, ptr align 8 %is_less)
  %1 = load ptr, ptr %tail, align 8
  %_15 = getelementptr inbounds nuw i32, ptr %1, i64 1
  store ptr %_15, ptr %tail, align 8
  br label %bb4
}

; core::slice::sort::shared::smallsort::small_sort_general_with_scratch
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h5b12088cec49b9c1E(ptr align 4 %v.0, i64 %v.1, ptr align 4 %scratch.0, i64 %scratch.1, ptr align 8 %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_77 = alloca [32 x i8], align 8
  %_76 = alloca [32 x i8], align 8
  %_75 = alloca [16 x i8], align 8
  %drop_guard = alloca [24 x i8], align 8
  %_50 = alloca [16 x i8], align 8
  %iter1 = alloca [16 x i8], align 8
  %desired_len = alloca [8 x i8], align 8
  %_40 = alloca [16 x i8], align 8
  %iter = alloca [32 x i8], align 8
  %self = alloca [16 x i8], align 8
  %_37 = alloca [32 x i8], align 8
  %dst = alloca [8 x i8], align 8
  %src = alloca [8 x i8], align 8
  %presorted_len = alloca [8 x i8], align 8
  %_5 = icmp ult i64 %v.1, 2
  br i1 %_5, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_8 = add i64 %v.1, 16
  %_6 = icmp ult i64 %scratch.1, %_8
  br i1 %_6, label %bb3, label %bb4

bb1:                                              ; preds = %start
  br label %bb29

bb4:                                              ; preds = %bb2
  %len_div_2 = udiv i64 %v.1, 2
  br label %bb5

bb3:                                              ; preds = %bb2
  call void @llvm.trap()
  unreachable

bb5:                                              ; preds = %bb4
  %_14 = icmp uge i64 %v.1, 16
  br i1 %_14, label %bb6, label %bb9

bb9:                                              ; preds = %bb5
  %_22 = icmp uge i64 %v.1, 8
  br i1 %_22, label %bb10, label %bb13

bb6:                                              ; preds = %bb5
  %_16 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %v.1
; call core::slice::sort::shared::smallsort::sort8_stable
  call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h279c1d0b1c14e64fE(ptr %v.0, ptr %scratch.0, ptr %_16, ptr align 8 %is_less)
  %_18 = getelementptr inbounds nuw i32, ptr %v.0, i64 %len_div_2
  %_19 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_2
  %count = add i64 %v.1, 8
  %_20 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %count
; call core::slice::sort::shared::smallsort::sort8_stable
  call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h279c1d0b1c14e64fE(ptr %_18, ptr %_19, ptr %_20, ptr align 8 %is_less)
  store i64 8, ptr %presorted_len, align 8
  br label %bb15

bb13:                                             ; preds = %bb9
  br label %bb33

bb10:                                             ; preds = %bb9
; call core::slice::sort::shared::smallsort::sort4_stable
  call void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h144ecddaed5d1972E(ptr %v.0, ptr %scratch.0, ptr align 8 %is_less)
  %_27 = getelementptr inbounds nuw i32, ptr %v.0, i64 %len_div_2
  %_28 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_2
; call core::slice::sort::shared::smallsort::sort4_stable
  call void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h144ecddaed5d1972E(ptr %_27, ptr %_28, ptr align 8 %is_less)
  store i64 4, ptr %presorted_len, align 8
  br label %bb14

bb33:                                             ; preds = %bb13
; call core::ptr::copy_nonoverlapping::precondition_check
  call void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17hc07330eb8860aa11E(ptr %v.0, ptr %scratch.0, i64 4, i64 4, i64 1, ptr align 8 @alloc_0d87c14e0afc26d18a0752880d43f0ed) #25
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scratch.0, ptr align 4 %v.0, i64 4, i1 false)
  %_31 = getelementptr inbounds nuw i32, ptr %v.0, i64 %len_div_2
  store ptr %_31, ptr %src, align 8
  %1 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_2
  store ptr %1, ptr %dst, align 8
  %_74 = load ptr, ptr %dst, align 8
; call core::ptr::copy_nonoverlapping::precondition_check
  call void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17hc07330eb8860aa11E(ptr %_31, ptr %_74, i64 4, i64 4, i64 1, ptr align 8 @alloc_0d87c14e0afc26d18a0752880d43f0ed) #25
  br label %bb36

bb36:                                             ; preds = %bb33
  %2 = load ptr, ptr %dst, align 8
  %3 = load ptr, ptr %src, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr align 4 %3, i64 4, i1 false)
  store i64 1, ptr %presorted_len, align 8
  br label %bb14

bb14:                                             ; preds = %bb10, %bb36
  br label %bb15

bb15:                                             ; preds = %bb6, %bb14
  %4 = getelementptr inbounds nuw i64, ptr %self, i64 0
  store i64 0, ptr %4, align 8
  %5 = getelementptr inbounds nuw i64, ptr %self, i64 1
  store i64 %len_div_2, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_75, ptr align 8 %self, i64 16, i1 false)
  store i64 0, ptr %_76, align 8
  %6 = getelementptr inbounds i8, ptr %_76, i64 8
  store i64 2, ptr %6, align 8
  %7 = getelementptr inbounds i8, ptr %_76, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %_75, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_77, ptr align 8 %_76, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_37, ptr align 8 %_77, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %iter, ptr align 8 %_37, i64 32, i1 false)
  br label %bb16

bb16:                                             ; preds = %bb25, %bb15
; invoke core::array::iter::iter_inner::PolymorphicIter<[core::mem::maybe_uninit::MaybeUninit<T>]>::next
  %8 = invoke { i64, i64 } @"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17heebf9cc75c05c6b9E"(ptr align 8 %iter, i64 2)
          to label %bb37 unwind label %cleanup

bb30:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<core::array::iter::IntoIter<usize,2_usize>>
  invoke void @"_ZN4core3ptr71drop_in_place$LT$core..array..iter..IntoIter$LT$usize$C$2_usize$GT$$GT$17hbf5fcda9f390a905E"(ptr align 8 %iter) #28
          to label %bb31 unwind label %terminate

cleanup:                                          ; preds = %bb45, %bb16
  %9 = landingpad { ptr, i32 }
          cleanup
  %10 = extractvalue { ptr, i32 } %9, 0
  %11 = extractvalue { ptr, i32 } %9, 1
  store ptr %10, ptr %0, align 8
  %12 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %11, ptr %12, align 8
  br label %bb30

bb37:                                             ; preds = %bb16
  %13 = extractvalue { i64, i64 } %8, 0
  %14 = extractvalue { i64, i64 } %8, 1
  store i64 %13, ptr %_40, align 8
  %15 = getelementptr inbounds i8, ptr %_40, i64 8
  store i64 %14, ptr %15, align 8
  %_42 = load i64, ptr %_40, align 8
  %16 = getelementptr inbounds i8, ptr %_40, i64 8
  %17 = load i64, ptr %16, align 8
  %18 = trunc nuw i64 %_42 to i1
  br i1 %18, label %bb18, label %bb19

bb18:                                             ; preds = %bb37
  %19 = getelementptr inbounds i8, ptr %_40, i64 8
  %offset = load i64, ptr %19, align 8
  %src5 = getelementptr inbounds nuw i32, ptr %v.0, i64 %offset
  %dst6 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %offset
  %_47 = icmp eq i64 %offset, 0
  br i1 %_47, label %bb20, label %bb21

bb19:                                             ; preds = %bb37
; call core::ptr::drop_in_place<core::array::iter::IntoIter<usize,2_usize>>
  call void @"_ZN4core3ptr71drop_in_place$LT$core..array..iter..IntoIter$LT$usize$C$2_usize$GT$$GT$17hbf5fcda9f390a905E"(ptr align 8 %iter)
  store ptr %scratch.0, ptr %drop_guard, align 8
  %20 = getelementptr inbounds i8, ptr %drop_guard, i64 8
  store ptr %v.0, ptr %20, align 8
  %21 = getelementptr inbounds i8, ptr %drop_guard, i64 16
  store i64 %v.1, ptr %21, align 8
  %data = load ptr, ptr %drop_guard, align 8
  %22 = getelementptr inbounds i8, ptr %drop_guard, i64 16
  %len = load i64, ptr %22, align 8
  %23 = getelementptr inbounds i8, ptr %drop_guard, i64 8
  %_65 = load ptr, ptr %23, align 8
; invoke core::slice::sort::shared::smallsort::bidirectional_merge
  invoke void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha5b44c109f16da34E(ptr align 4 %data, i64 %len, ptr %_65, ptr align 8 %is_less)
          to label %bb28 unwind label %cleanup2

bb32:                                             ; preds = %cleanup2
; invoke core::ptr::drop_in_place<core::slice::sort::shared::smallsort::CopyOnDrop<i32>>
  invoke void @"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h29b5ceebc9567873E"(ptr align 8 %drop_guard) #28
          to label %bb31 unwind label %terminate

cleanup2:                                         ; preds = %bb19
  %24 = landingpad { ptr, i32 }
          cleanup
  %25 = extractvalue { ptr, i32 } %24, 0
  %26 = extractvalue { ptr, i32 } %24, 1
  store ptr %25, ptr %0, align 8
  %27 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %26, ptr %27, align 8
  br label %bb32

bb28:                                             ; preds = %bb19
  %t = load ptr, ptr %drop_guard, align 8
  %28 = getelementptr inbounds i8, ptr %drop_guard, i64 8
  %t3 = load ptr, ptr %28, align 8
  %29 = getelementptr inbounds i8, ptr %drop_guard, i64 16
  %t4 = load i64, ptr %29, align 8
  br label %bb29

bb29:                                             ; preds = %bb1, %bb28
  ret void

terminate:                                        ; preds = %bb30, %bb32
  %30 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb31:                                             ; preds = %bb30, %bb32
  %31 = load ptr, ptr %0, align 8
  %32 = getelementptr inbounds i8, ptr %0, i64 8
  %33 = load i32, ptr %32, align 8
  %34 = insertvalue { ptr, i32 } poison, ptr %31, 0
  %35 = insertvalue { ptr, i32 } %34, i32 %33, 1
  resume { ptr, i32 } %35

bb21:                                             ; preds = %bb18
  %36 = sub i64 %v.1, %len_div_2
  store i64 %36, ptr %desired_len, align 8
  br label %bb22

bb20:                                             ; preds = %bb18
  store i64 %len_div_2, ptr %desired_len, align 8
  br label %bb22

bb22:                                             ; preds = %bb20, %bb21
  %_49 = load i64, ptr %presorted_len, align 8
  store i64 %_49, ptr %iter1, align 8
  %37 = load i64, ptr %desired_len, align 8
  %38 = getelementptr inbounds i8, ptr %iter1, i64 8
  store i64 %37, ptr %38, align 8
  br label %bb23

bb23:                                             ; preds = %bb26, %bb22
  %_85 = load i64, ptr %iter1, align 8
  %39 = getelementptr inbounds i8, ptr %iter1, i64 8
  %_86 = load i64, ptr %39, align 8
  %_80 = icmp ult i64 %_85, %_86
  br i1 %_80, label %bb38, label %bb39

bb39:                                             ; preds = %bb23
  %40 = load i64, ptr @anon.56cfd62e22175d79f9a1a5afbd6cb4c8.1, align 8
  %41 = load i64, ptr getelementptr inbounds (i8, ptr @anon.56cfd62e22175d79f9a1a5afbd6cb4c8.1, i64 8), align 8
  store i64 %40, ptr %_50, align 8
  %42 = getelementptr inbounds i8, ptr %_50, i64 8
  store i64 %41, ptr %42, align 8
  br label %bb40

bb38:                                             ; preds = %bb23
  %old = load i64, ptr %iter1, align 8
  br label %bb41

bb40:                                             ; preds = %bb42, %bb39
  %_52 = load i64, ptr %_50, align 8
  %43 = getelementptr inbounds i8, ptr %_50, i64 8
  %44 = load i64, ptr %43, align 8
  %45 = trunc nuw i64 %_52 to i1
  br i1 %45, label %bb24, label %bb25

bb41:                                             ; preds = %bb38
; call core::num::<impl usize>::unchecked_add::precondition_check
  call void @"_ZN4core3num23_$LT$impl$u20$usize$GT$13unchecked_add18precondition_check17hbf8a98e7ca50b85fE"(i64 %old, i64 1, ptr align 8 @alloc_5a841786226b43ba606ae5b578f20831) #25
  br label %bb42

bb42:                                             ; preds = %bb41
  %_84 = add nuw i64 %old, 1
  store i64 %_84, ptr %iter1, align 8
  %46 = getelementptr inbounds i8, ptr %_50, i64 8
  store i64 %old, ptr %46, align 8
  store i64 1, ptr %_50, align 8
  br label %bb40

bb24:                                             ; preds = %bb40
  %47 = getelementptr inbounds i8, ptr %_50, i64 8
  %i = load i64, ptr %47, align 8
  %_55 = getelementptr inbounds nuw i32, ptr %src5, i64 %i
  %dst7 = getelementptr inbounds nuw i32, ptr %dst6, i64 %i
  br label %bb43

bb25:                                             ; preds = %bb40
  br label %bb16

bb43:                                             ; preds = %bb24
; call core::ptr::copy_nonoverlapping::precondition_check
  call void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17hc07330eb8860aa11E(ptr %_55, ptr %dst7, i64 4, i64 4, i64 1, ptr align 8 @alloc_0d87c14e0afc26d18a0752880d43f0ed) #25
  br label %bb45

bb45:                                             ; preds = %bb43
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %dst7, ptr align 4 %_55, i64 4, i1 false)
; invoke core::slice::sort::shared::smallsort::insert_tail
  invoke void @_ZN4core5slice4sort6shared9smallsort11insert_tail17hd66b5724334f6768E(ptr %dst6, ptr %dst7, ptr align 8 %is_less)
          to label %bb26 unwind label %cleanup

bb26:                                             ; preds = %bb45
  br label %bb23

bb17:                                             ; No predecessors!
  unreachable

bb46:                                             ; No predecessors!
  unreachable
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17h12d5075cddc1e8d1E(ptr align 4 %v.0, i64 %v.1, ptr align 8 %is_less) unnamed_addr #6 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_25 = alloca [4096 x i8], align 1
  %_24 = alloca [1 x i8], align 1
  %_18 = alloca [24 x i8], align 8
  %stack_scratch = alloca [16 x i8], align 8
  %heap_buf = alloca [24 x i8], align 8
  %stack_buf = alloca [4096 x i8], align 4
  store i8 0, ptr %_24, align 1
  %_10 = udiv i64 %v.1, 2
  %v1 = sub i64 %v.1, %_10
; call core::cmp::Ord::min
  %v2 = call i64 @_ZN4core3cmp3Ord3min17h7c75fca9e61457a4E(i64 %v.1, i64 2000000) #24
; call core::cmp::Ord::max
  %v11 = call i64 @_ZN4core3cmp3Ord3max17h3f4564a9a660ee8bE(i64 %v1, i64 %v2) #24
; call core::cmp::Ord::max
  %alloc_len = call i64 @_ZN4core3cmp3Ord3max17h3f4564a9a660ee8bE(i64 %v11, i64 48) #24
  call void @llvm.memset.p0.i64(ptr align 1 %_25, i8 undef, i64 4096, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %stack_buf, ptr align 1 %_25, i64 4096, i1 false)
; call core::slice::sort::stable::AlignedStorage<T,_>::as_uninit_slice_mut
  %1 = call { ptr, i64 } @"_ZN4core5slice4sort6stable27AlignedStorage$LT$T$C$_$GT$19as_uninit_slice_mut17h970e709c0fc57400E"(ptr align 4 %stack_buf)
  %2 = extractvalue { ptr, i64 } %1, 0
  %3 = extractvalue { ptr, i64 } %1, 1
  store ptr %2, ptr %stack_scratch, align 8
  %4 = getelementptr inbounds i8, ptr %stack_scratch, i64 8
  store i64 %3, ptr %4, align 8
  %5 = load ptr, ptr %stack_scratch, align 8
  %6 = getelementptr inbounds i8, ptr %stack_scratch, i64 8
  %_16 = load i64, ptr %6, align 8
  %_15 = icmp uge i64 %_16, %alloc_len
  br i1 %_15, label %bb3, label %bb4

bb4:                                              ; preds = %start
; invoke alloc::slice::<impl core::slice::sort::stable::BufGuard<T> for alloc::vec::Vec<T>>::with_capacity
  invoke void @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7956de82b204896eE"(ptr sret([24 x i8]) align 8 %_18, i64 %alloc_len)
          to label %bb5 unwind label %cleanup

bb3:                                              ; preds = %start
  br label %bb7

bb14:                                             ; preds = %cleanup
  %7 = load i8, ptr %_24, align 1
  %8 = trunc nuw i8 %7 to i1
  br i1 %8, label %bb13, label %bb11

cleanup:                                          ; preds = %bb8, %bb5, %bb4
  %9 = landingpad { ptr, i32 }
          cleanup
  %10 = extractvalue { ptr, i32 } %9, 0
  %11 = extractvalue { ptr, i32 } %9, 1
  store ptr %10, ptr %0, align 8
  %12 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %11, ptr %12, align 8
  br label %bb14

bb5:                                              ; preds = %bb4
  store i8 1, ptr %_24, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %heap_buf, ptr align 8 %_18, i64 24, i1 false)
; invoke alloc::slice::<impl core::slice::sort::stable::BufGuard<T> for alloc::vec::Vec<T>>::as_uninit_slice_mut
  %13 = invoke { ptr, i64 } @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$19as_uninit_slice_mut17h983752d17ff2fa0bE"(ptr align 8 %heap_buf)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %14 = extractvalue { ptr, i64 } %13, 0
  %15 = extractvalue { ptr, i64 } %13, 1
  store ptr %14, ptr %stack_scratch, align 8
  %16 = getelementptr inbounds i8, ptr %stack_scratch, i64 8
  store i64 %15, ptr %16, align 8
  br label %bb7

bb7:                                              ; preds = %bb3, %bb6
  br label %bb8

bb8:                                              ; preds = %bb7
  %_21 = mul i64 32, 2
  %eager_sort = icmp ule i64 %v.1, %_21
  %17 = load ptr, ptr %stack_scratch, align 8
  %18 = getelementptr inbounds i8, ptr %stack_scratch, i64 8
  %19 = load i64, ptr %18, align 8
; invoke core::slice::sort::stable::drift::sort
  invoke void @_ZN4core5slice4sort6stable5drift4sort17h33ed42dafbc2c528E(ptr align 4 %v.0, i64 %v.1, ptr align 4 %17, i64 %19, i1 zeroext %eager_sort, ptr align 8 %is_less)
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
  %20 = load i8, ptr %_24, align 1
  %21 = trunc nuw i8 %20 to i1
  br i1 %21, label %bb12, label %bb10

bb10:                                             ; preds = %bb12, %bb9
  ret void

bb12:                                             ; preds = %bb9
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hb7ae730e0543c4b4E"(ptr align 8 %heap_buf)
  br label %bb10

bb11:                                             ; preds = %bb13, %bb14
  %22 = load ptr, ptr %0, align 8
  %23 = getelementptr inbounds i8, ptr %0, i64 8
  %24 = load i32, ptr %23, align 8
  %25 = insertvalue { ptr, i32 } poison, ptr %22, 0
  %26 = insertvalue { ptr, i32 } %25, i32 %24, 1
  resume { ptr, i32 } %26

bb13:                                             ; preds = %bb14
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hb7ae730e0543c4b4E"(ptr align 8 %heap_buf) #28
          to label %bb11 unwind label %terminate

terminate:                                        ; preds = %bb13
  %27 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable
}

; core::slice::sort::stable::AlignedStorage<T,_>::as_uninit_slice_mut
; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @"_ZN4core5slice4sort6stable27AlignedStorage$LT$T$C$_$GT$19as_uninit_slice_mut17h970e709c0fc57400E"(ptr align 4 %self) unnamed_addr #3 {
start:
  br label %bb2

bb2:                                              ; preds = %start
; call core::slice::raw::from_raw_parts_mut::precondition_check
  call void @_ZN4core5slice3raw18from_raw_parts_mut18precondition_check17hc47e7f86408f4a6dE(ptr %self, i64 4, i64 4, i64 1024, ptr align 8 @alloc_8eb5e10561a52e3e21ddcc4331476765) #25
  br label %bb4

bb4:                                              ; preds = %bb2
  %0 = insertvalue { ptr, i64 } poison, ptr %self, 0
  %1 = insertvalue { ptr, i64 } %0, i64 1024, 1
  ret { ptr, i64 } %1
}

; core::slice::sort::stable::drift::create_run
; Function Attrs: nonlazybind uwtable
define i64 @_ZN4core5slice4sort6stable5drift10create_run17h93c2a62186e14e00E(ptr align 4 %v.0, i64 %v.1, ptr align 4 %scratch.0, i64 %scratch.1, i64 %min_good_run_len, i1 zeroext %eager_sort, ptr align 8 %is_less) unnamed_addr #3 {
start:
  %_43.i = alloca [1 x i8], align 1
  %_41.i = alloca [8 x i8], align 8
  %_37.i = alloca [1 x i8], align 1
  %_35.i = alloca [8 x i8], align 8
  %_27.i = alloca [8 x i8], align 8
  %index1.i = alloca [8 x i8], align 8
  %_23.i = alloca [8 x i8], align 8
  %_18.i = alloca [8 x i8], align 8
  %index.i = alloca [8 x i8], align 8
  %_14.i = alloca [8 x i8], align 8
  %_8.i = alloca [8 x i8], align 8
  %run_len.i = alloca [8 x i8], align 8
  %_0.i = alloca [16 x i8], align 8
  %_0 = alloca [8 x i8], align 8
  %_7 = icmp uge i64 %v.1, %min_good_run_len
  br i1 %_7, label %bb1, label %bb7

bb7:                                              ; preds = %bb6, %start
  br i1 %eager_sort, label %bb8, label %bb11

bb1:                                              ; preds = %start
  %_4.i = icmp ult i64 %v.1, 2
  br i1 %_4.i, label %bb1.i, label %bb2.i

bb2.i:                                            ; preds = %bb1
  store i64 2, ptr %run_len.i, align 8
; call <usize as core::slice::index::SliceIndex<[T]>>::get_unchecked::precondition_check
  call void @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked18precondition_check17hbcecab929959cfeeE"(i64 1, i64 %v.1, ptr align 8 @alloc_931634cb509211d43117f85a624f7ad4) #25
  %_30.i = icmp ult i64 1, %v.1
  %_28.i = getelementptr inbounds nuw i32, ptr %v.0, i64 1
  store ptr %_28.i, ptr %_8.i, align 8
; call <usize as core::slice::index::SliceIndex<[T]>>::get_unchecked::precondition_check
  call void @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked18precondition_check17hbcecab929959cfeeE"(i64 0, i64 %v.1, ptr align 8 @alloc_d26f09907ab98f304fcfaaceadb9cb06) #25
  %_34.i = icmp ult i64 0, %v.1
  %_7.0.i = load ptr, ptr %_8.i, align 8
; call alloc::slice::<impl [T]>::sort_by::{{closure}}
  %strictly_descending.i = call zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"(ptr align 8 %is_less, ptr align 4 %_7.0.i, ptr align 4 %v.0) #24
  br i1 %strictly_descending.i, label %bb4.i, label %bb11.i

bb1.i:                                            ; preds = %bb1
  store i64 %v.1, ptr %_0.i, align 8
  %0 = getelementptr inbounds i8, ptr %_0.i, i64 8
  store i8 0, ptr %0, align 8
  br label %_ZN4core5slice4sort6shared17find_existing_run17h002da38516f675a8E.exit

bb11.i:                                           ; preds = %bb15.i, %bb2.i
  %_20.i = load i64, ptr %run_len.i, align 8
  %_19.i = icmp ult i64 %_20.i, %v.1
  br i1 %_19.i, label %bb12.i, label %bb16.i

bb4.i:                                            ; preds = %bb7.i, %bb2.i
  %_11.i = load i64, ptr %run_len.i, align 8
  %_10.i = icmp ult i64 %_11.i, %v.1
  br i1 %_10.i, label %bb5.i, label %bb9.i

bb16.i:                                           ; preds = %bb11.i
  br label %bb17.i

bb12.i:                                           ; preds = %bb11.i
  %index2.i = load i64, ptr %run_len.i, align 8
; call <usize as core::slice::index::SliceIndex<[T]>>::get_unchecked::precondition_check
  call void @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked18precondition_check17hbcecab929959cfeeE"(i64 %index2.i, i64 %v.1, ptr align 8 @alloc_b830dbc42590bec8f67c3fc14fb9facc) #25
  %1 = icmp ult i64 %index2.i, %v.1
  %2 = zext i1 %1 to i8
  store i8 %2, ptr %_43.i, align 1
  %3 = load i8, ptr %_43.i, align 1
  %4 = trunc nuw i8 %3 to i1
  %5 = getelementptr inbounds nuw i32, ptr %v.0, i64 %index2.i
  store ptr %5, ptr %_41.i, align 8
  %6 = load ptr, ptr %_41.i, align 8
  store ptr %6, ptr %_23.i, align 8
  %7 = load i64, ptr %run_len.i, align 8
  store i64 %7, ptr %_27.i, align 8
  %8 = load i64, ptr %_27.i, align 8
  %9 = sub i64 %8, 1
  store i64 %9, ptr %index1.i, align 8
  %10 = load i64, ptr %index1.i, align 8
; call <usize as core::slice::index::SliceIndex<[T]>>::get_unchecked::precondition_check
  call void @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked18precondition_check17hbcecab929959cfeeE"(i64 %10, i64 %v.1, ptr align 8 @alloc_3701b49a4e08b388bcd00c0795da0c1c) #25
  %11 = load i64, ptr %index1.i, align 8
  %_46.i = icmp ult i64 %11, %v.1
  %12 = load i64, ptr %index1.i, align 8
  %_44.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %12
  %_22.0.i = load ptr, ptr %_23.i, align 8
; call alloc::slice::<impl [T]>::sort_by::{{closure}}
  %_21.i = call zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"(ptr align 8 %is_less, ptr align 4 %_22.0.i, ptr align 4 %_44.i) #24
  br i1 %_21.i, label %bb14.i, label %bb15.i

bb17.i:                                           ; preds = %bb14.i, %bb16.i
  br label %bb18.i

bb15.i:                                           ; preds = %bb12.i
  %13 = load i64, ptr %run_len.i, align 8
  %14 = add i64 %13, 1
  store i64 %14, ptr %run_len.i, align 8
  br label %bb11.i

bb14.i:                                           ; preds = %bb12.i
  br label %bb17.i

bb18.i:                                           ; preds = %bb10.i, %bb17.i
  %15 = load i64, ptr %run_len.i, align 8
  store i64 %15, ptr %_0.i, align 8
  %16 = getelementptr inbounds i8, ptr %_0.i, i64 8
  %17 = zext i1 %strictly_descending.i to i8
  store i8 %17, ptr %16, align 8
  br label %_ZN4core5slice4sort6shared17find_existing_run17h002da38516f675a8E.exit

bb9.i:                                            ; preds = %bb4.i
  br label %bb10.i

bb5.i:                                            ; preds = %bb4.i
  %index3.i = load i64, ptr %run_len.i, align 8
; call <usize as core::slice::index::SliceIndex<[T]>>::get_unchecked::precondition_check
  call void @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked18precondition_check17hbcecab929959cfeeE"(i64 %index3.i, i64 %v.1, ptr align 8 @alloc_c9924649d23fa0226bb48f8af095d24c) #25
  %18 = icmp ult i64 %index3.i, %v.1
  %19 = zext i1 %18 to i8
  store i8 %19, ptr %_37.i, align 1
  %20 = load i8, ptr %_37.i, align 1
  %21 = trunc nuw i8 %20 to i1
  %22 = getelementptr inbounds nuw i32, ptr %v.0, i64 %index3.i
  store ptr %22, ptr %_35.i, align 8
  %23 = load ptr, ptr %_35.i, align 8
  store ptr %23, ptr %_14.i, align 8
  %24 = load i64, ptr %run_len.i, align 8
  store i64 %24, ptr %_18.i, align 8
  %25 = load i64, ptr %_18.i, align 8
  %26 = sub i64 %25, 1
  store i64 %26, ptr %index.i, align 8
  %27 = load i64, ptr %index.i, align 8
; call <usize as core::slice::index::SliceIndex<[T]>>::get_unchecked::precondition_check
  call void @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked18precondition_check17hbcecab929959cfeeE"(i64 %27, i64 %v.1, ptr align 8 @alloc_67a08c562ab3625beb2431e16f5ae16d) #25
  %28 = load i64, ptr %index.i, align 8
  %_40.i = icmp ult i64 %28, %v.1
  %29 = load i64, ptr %index.i, align 8
  %_38.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %29
  %_13.0.i = load ptr, ptr %_14.i, align 8
; call alloc::slice::<impl [T]>::sort_by::{{closure}}
  %_12.i = call zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"(ptr align 8 %is_less, ptr align 4 %_13.0.i, ptr align 4 %_38.i) #24
  br i1 %_12.i, label %bb7.i, label %bb8.i

bb10.i:                                           ; preds = %bb8.i, %bb9.i
  br label %bb18.i

bb8.i:                                            ; preds = %bb5.i
  br label %bb10.i

bb7.i:                                            ; preds = %bb5.i
  %30 = load i64, ptr %run_len.i, align 8
  %31 = add i64 %30, 1
  store i64 %31, ptr %run_len.i, align 8
  br label %bb4.i

_ZN4core5slice4sort6shared17find_existing_run17h002da38516f675a8E.exit: ; preds = %bb1.i, %bb18.i
  %32 = load i64, ptr %_0.i, align 8
  %33 = getelementptr inbounds i8, ptr %_0.i, i64 8
  %34 = load i8, ptr %33, align 8
  %35 = trunc nuw i8 %34 to i1
  %36 = insertvalue { i64, i1 } poison, i64 %32, 0
  %37 = insertvalue { i64, i1 } %36, i1 %35, 1
  %_10.0 = extractvalue { i64, i1 } %37, 0
  %_10.1 = extractvalue { i64, i1 } %37, 1
  %_12 = icmp ule i64 %_10.0, %v.1
  %_13 = icmp uge i64 %_10.0, %min_good_run_len
  br i1 %_13, label %bb3, label %bb6

bb6:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h002da38516f675a8E.exit
  br label %bb7

bb3:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h002da38516f675a8E.exit
  br i1 %_10.1, label %bb4, label %bb5

bb11:                                             ; preds = %bb7
; call core::cmp::Ord::min
  %length = call i64 @_ZN4core3cmp3Ord3min17h7c75fca9e61457a4E(i64 %min_good_run_len, i64 %v.1) #24
  %_36 = shl i64 %length, 1
  store i64 %_36, ptr %_0, align 8
  br label %bb12

bb8:                                              ; preds = %bb7
; call core::cmp::Ord::min
  %eager_run_len = call i64 @_ZN4core3cmp3Ord3min17h7c75fca9e61457a4E(i64 32, i64 %v.1) #24
  %_32 = icmp ult i64 %eager_run_len, 0
  br i1 %_32, label %bb18, label %bb19

bb12:                                             ; preds = %bb5, %bb16, %bb11
  %38 = load i64, ptr %_0, align 8
  ret i64 %38

bb19:                                             ; preds = %bb8
  %_28 = icmp ule i64 %eager_run_len, %v.1
  br i1 %_28, label %bb16, label %bb17

bb18:                                             ; preds = %bb8
  br label %bb17

bb17:                                             ; preds = %bb18, %bb19
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 0, i64 %eager_run_len, i64 %v.1, ptr align 8 @alloc_f2dd5660ec991d158c5ddbba70411c0e) #23
  unreachable

bb16:                                             ; preds = %bb19
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h7d5ef47d16b62464E(ptr align 4 %v.0, i64 %eager_run_len, ptr align 4 %scratch.0, i64 %scratch.1, i32 0, ptr align 4 null, ptr align 8 %is_less) #30
  %_35 = shl i64 %eager_run_len, 1
  %_34 = or i64 %_35, 1
  store i64 %_34, ptr %_0, align 8
  br label %bb12

bb5:                                              ; preds = %bb14, %bb3
  %_27 = shl i64 %_10.0, 1
  %_26 = or i64 %_27, 1
  store i64 %_26, ptr %_0, align 8
  br label %bb12

bb4:                                              ; preds = %bb3
  %_24 = icmp ult i64 %_10.0, 0
  br i1 %_24, label %bb13, label %bb14

bb14:                                             ; preds = %bb4
; call core::slice::<impl [T]>::reverse
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h7dcd433349684bb7E"(ptr align 4 %v.0, i64 %_10.0) #24
  br label %bb5

bb13:                                             ; preds = %bb4
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 0, i64 %_10.0, i64 %v.1, ptr align 8 @alloc_bf881e017c9f72abf8140fb789efdd66) #23
  unreachable
}

; core::slice::sort::stable::drift::stable_quicksort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift16stable_quicksort17h89519477e2fd00a1E(ptr align 4 %v.0, i64 %v.1, ptr align 4 %scratch.0, i64 %scratch.1, ptr align 8 %is_less) unnamed_addr #3 {
start:
  %0 = alloca [4 x i8], align 4
  %_9 = alloca [8 x i8], align 8
  %self = or i64 %v.1, 1
  store i64 %self, ptr %_9, align 8
  %1 = load i64, ptr %_9, align 8
  %2 = icmp eq i64 %1, 0
  %_10 = select i1 %2, i64 0, i64 1
  %3 = trunc nuw i64 %_10 to i1
  br i1 %3, label %bb4, label %bb3

bb4:                                              ; preds = %start
  %x = load i64, ptr %_9, align 8
  %4 = call i64 @llvm.ctlz.i64(i64 %x, i1 true)
  %5 = trunc i64 %4 to i32
  store i32 %5, ptr %0, align 4
  %_13 = load i32, ptr %0, align 4
  %log = sub i32 63, %_13
  %limit = mul i32 2, %log
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h7d5ef47d16b62464E(ptr align 4 %v.0, i64 %v.1, ptr align 4 %scratch.0, i64 %scratch.1, i32 %limit, ptr align 4 null, ptr align 8 %is_less) #30
  ret void

bb3:                                              ; preds = %start
; call core::num::int_log10::panic_for_nonpositive_argument
  call void @_ZN4core3num9int_log1030panic_for_nonpositive_argument17h529998da0ef96c11E(ptr align 8 @alloc_cff96582350e2216c1a180fa3875da7f) #29
  unreachable

bb2:                                              ; No predecessors!
  unreachable
}

; core::slice::sort::stable::drift::sort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift4sort17h33ed42dafbc2c528E(ptr align 4 %v.0, i64 %v.1, ptr align 4 %scratch.0, i64 %scratch.1, i1 zeroext %eager_sort, ptr align 8 %is_less) unnamed_addr #3 {
start:
  %_0.i = alloca [8 x i8], align 8
  %0 = alloca [4 x i8], align 4
  %prev_run = alloca [8 x i8], align 8
  %desired_depth = alloca [1 x i8], align 1
  %next_run = alloca [8 x i8], align 8
  %scan_idx = alloca [8 x i8], align 8
  %desired_depth_storage = alloca [66 x i8], align 1
  %run_storage = alloca [528 x i8], align 8
  %stack_len = alloca [8 x i8], align 8
  %min_good_run_len = alloca [8 x i8], align 8
  %scale_factor = alloca [8 x i8], align 8
  %_6 = icmp ult i64 %v.1, 2
  br i1 %_6, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_71 = icmp eq i64 %v.1, 0
  br i1 %_71, label %panic, label %bb23

bb1:                                              ; preds = %start
  br label %bb22

bb23:                                             ; preds = %bb2
  %d = udiv i64 4611686018427387904, %v.1
  br i1 %_71, label %panic1, label %bb24

panic:                                            ; preds = %bb2
; call core::panicking::panic_const::panic_const_div_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr align 8 @alloc_84f25bd43668db495db7efe11a447939) #23
  unreachable

bb24:                                             ; preds = %bb23
  %r = urem i64 4611686018427387904, %v.1
  %_73 = icmp ugt i64 %r, 0
  br i1 %_73, label %bb25, label %bb26

panic1:                                           ; preds = %bb23
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_84f25bd43668db495db7efe11a447939) #23
  unreachable

bb26:                                             ; preds = %bb24
  store i64 %d, ptr %scale_factor, align 8
  br label %bb27

bb25:                                             ; preds = %bb24
  %1 = add i64 %d, 1
  store i64 %1, ptr %scale_factor, align 8
  br label %bb27

bb27:                                             ; preds = %bb25, %bb26
  %_9 = icmp ule i64 %v.1, 4096
  br i1 %_9, label %bb3, label %bb4

bb4:                                              ; preds = %bb27
; call core::slice::sort::stable::drift::sqrt_approx
  %2 = call i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h72a4dc1ae46294f4E(i64 %v.1)
  store i64 %2, ptr %min_good_run_len, align 8
  br label %bb5

bb3:                                              ; preds = %bb27
  %_11 = udiv i64 %v.1, 2
  %v1 = sub i64 %v.1, %_11
; call core::cmp::Ord::min
  %3 = call i64 @_ZN4core3cmp3Ord3min17h7c75fca9e61457a4E(i64 %v1, i64 64) #24
  store i64 %3, ptr %min_good_run_len, align 8
  br label %bb5

bb5:                                              ; preds = %bb3, %bb4
  store i64 0, ptr %stack_len, align 8
  store i64 0, ptr %scan_idx, align 8
  store i64 1, ptr %prev_run, align 8
  br label %bb6

bb6:                                              ; preds = %bb19, %bb5
  %_23 = load i64, ptr %scan_idx, align 8
  %_22 = icmp ult i64 %_23, %v.1
  br i1 %_22, label %bb7, label %bb9

bb9:                                              ; preds = %bb6
  store i64 1, ptr %next_run, align 8
  store i8 0, ptr %desired_depth, align 1
  br label %bb10

bb7:                                              ; preds = %bb6
  %index = load i64, ptr %scan_idx, align 8
  %_76 = icmp ugt i64 %index, %v.1
  br i1 %_76, label %bb29, label %bb30

bb10:                                             ; preds = %bb30, %bb9
  br label %bb11

bb30:                                             ; preds = %bb7
  %new_len = sub nuw i64 %v.1, %index
  %_82 = getelementptr inbounds nuw i32, ptr %v.0, i64 %index
  %_27 = load i64, ptr %min_good_run_len, align 8
; call core::slice::sort::stable::drift::create_run
  %4 = call i64 @_ZN4core5slice4sort6stable5drift10create_run17h93c2a62186e14e00E(ptr align 4 %_82, i64 %new_len, ptr align 4 %scratch.0, i64 %scratch.1, i64 %_27, i1 zeroext %eager_sort, ptr align 8 %is_less)
  store i64 %4, ptr %next_run, align 8
  %_30 = load i64, ptr %scan_idx, align 8
  %self = load i64, ptr %prev_run, align 8
  %_31 = lshr i64 %self, 1
  %left = sub i64 %_30, %_31
  %mid = load i64, ptr %scan_idx, align 8
  %_34 = load i64, ptr %scan_idx, align 8
  %self2 = load i64, ptr %next_run, align 8
  %_35 = lshr i64 %self2, 1
  %right = add i64 %_34, %_35
  %scale_factor3 = load i64, ptr %scale_factor, align 8
  %x = add i64 %left, %mid
  %y = add i64 %mid, %right
  %_90 = mul i64 %scale_factor3, %x
  %_91 = mul i64 %scale_factor3, %y
  %self4 = xor i64 %_90, %_91
  %5 = call i64 @llvm.ctlz.i64(i64 %self4, i1 false)
  %6 = trunc i64 %5 to i32
  store i32 %6, ptr %0, align 4
  %_88 = load i32, ptr %0, align 4
  %7 = trunc i32 %_88 to i8
  store i8 %7, ptr %desired_depth, align 1
  br label %bb10

bb29:                                             ; preds = %bb7
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 %index, i64 %v.1, i64 %v.1, ptr align 8 @alloc_5d7c848934990784b7fee386098c4213) #23
  unreachable

bb11:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h61345f0bc9f8b861E.exit, %bb10
  %_38 = load i64, ptr %stack_len, align 8
  %_37 = icmp ugt i64 %_38, 1
  br i1 %_37, label %bb12, label %bb16

bb16:                                             ; preds = %bb11
  br label %bb17

bb12:                                             ; preds = %bb11
  %_43 = load i64, ptr %stack_len, align 8
  %count = sub i64 %_43, 1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1
  %_44 = load i8, ptr %desired_depth, align 1
  %_39 = icmp uge i8 %_40, %_44
  br i1 %_39, label %bb13, label %bb15

bb17:                                             ; preds = %bb15, %bb16
  %_58 = load i64, ptr %prev_run, align 8
  %count5 = load i64, ptr %stack_len, align 8
  %_59 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %count5
  store i64 %_58, ptr %_59, align 8
  %count6 = load i64, ptr %stack_len, align 8
  %_61 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count6
  %8 = load i8, ptr %desired_depth, align 1
  store i8 %8, ptr %_61, align 1
  %9 = load i64, ptr %stack_len, align 8
  %10 = add i64 %9, 1
  store i64 %10, ptr %stack_len, align 8
  %_64 = load i64, ptr %scan_idx, align 8
  %_63 = icmp uge i64 %_64, %v.1
  br i1 %_63, label %bb18, label %bb19

bb15:                                             ; preds = %bb12
  br label %bb17

bb13:                                             ; preds = %bb12
  %_48 = load i64, ptr %stack_len, align 8
  %count9 = sub i64 %_48, 1
  %_46 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %count9
  %left10 = load i64, ptr %_46, align 8
  %_50 = lshr i64 %left10, 1
  %self11 = load i64, ptr %prev_run, align 8
  %_51 = lshr i64 %self11, 1
  %merged_len = add i64 %_50, %_51
  %_53 = load i64, ptr %scan_idx, align 8
  %merge_start_idx = sub i64 %_53, %merged_len
  %index12 = load i64, ptr %scan_idx, align 8
  br label %bb32

bb19:                                             ; preds = %bb17
  %self7 = load i64, ptr %next_run, align 8
  %_65 = lshr i64 %self7, 1
  %11 = load i64, ptr %scan_idx, align 8
  %12 = add i64 %11, %_65
  store i64 %12, ptr %scan_idx, align 8
  %13 = load i64, ptr %next_run, align 8
  store i64 %13, ptr %prev_run, align 8
  br label %bb6

bb18:                                             ; preds = %bb17
  %self8 = load i64, ptr %prev_run, align 8
  %_99 = and i64 %self8, 1
  %_66 = icmp eq i64 %_99, 1
  br i1 %_66, label %bb21, label %bb20

bb20:                                             ; preds = %bb18
; call core::slice::sort::stable::drift::stable_quicksort
  call void @_ZN4core5slice4sort6stable5drift16stable_quicksort17h89519477e2fd00a1E(ptr align 4 %v.0, i64 %v.1, ptr align 4 %scratch.0, i64 %scratch.1, ptr align 8 %is_less)
  br label %bb21

bb21:                                             ; preds = %bb20, %bb18
  br label %bb22

bb22:                                             ; preds = %bb1, %bb21
  ret void

bb32:                                             ; preds = %bb13
; call <core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::get_unchecked_mut::precondition_check
  call void @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut18precondition_check17hc9e15d2710d3e185E"(i64 %merge_start_idx, i64 %index12, i64 %v.1, ptr align 8 @alloc_17aa6ea520746a7a30b50afbbedf5259) #25
  br label %bb33

bb33:                                             ; preds = %bb32
  %new_len13 = sub nuw i64 %index12, %merge_start_idx
  %_98 = getelementptr inbounds nuw i32, ptr %v.0, i64 %merge_start_idx
  %_57 = load i64, ptr %prev_run, align 8
  %can_fit_in_scratch.i = icmp ule i64 %new_len13, %scratch.1
  br i1 %can_fit_in_scratch.i, label %bb1.i, label %bb3.i

bb3.i:                                            ; preds = %bb2.i, %bb1.i, %bb33
  %_23.i = and i64 %left10, 1
  %_11.i = icmp eq i64 %_23.i, 1
  br i1 %_11.i, label %bb5.i, label %bb4.i

bb1.i:                                            ; preds = %bb33
  %_21.i = and i64 %left10, 1
  %_9.i = icmp eq i64 %_21.i, 1
  br i1 %_9.i, label %bb3.i, label %bb2.i

bb2.i:                                            ; preds = %bb1.i
  %_22.i = and i64 %_57, 1
  %_10.i = icmp eq i64 %_22.i, 1
  br i1 %_10.i, label %bb3.i, label %bb9.i

bb9.i:                                            ; preds = %bb2.i
  %_40.i = shl i64 %new_len13, 1
  store i64 %_40.i, ptr %_0.i, align 8
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h61345f0bc9f8b861E.exit

bb4.i:                                            ; preds = %bb3.i
  %index.i = lshr i64 %left10, 1
  %_24.i = icmp ule i64 %index.i, %new_len13
  br i1 %_24.i, label %bb11.i, label %bb12.i

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  %_30.i = and i64 %_57, 1
  %_15.i = icmp eq i64 %_30.i, 1
  br i1 %_15.i, label %bb7.i, label %bb6.i

bb12.i:                                           ; preds = %bb4.i
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 0, i64 %index.i, i64 %new_len13, ptr align 8 @alloc_5f8af39c37d5f8ee2e9894ce845741a6) #23
  unreachable

bb11.i:                                           ; preds = %bb4.i
; call core::slice::sort::stable::drift::stable_quicksort
  call void @_ZN4core5slice4sort6stable5drift16stable_quicksort17h89519477e2fd00a1E(ptr align 4 %_98, i64 %index.i, ptr align 4 %scratch.0, i64 %scratch.1, ptr align 8 %is_less)
  br label %bb5.i

bb6.i:                                            ; preds = %bb5.i
  %index1.i = lshr i64 %left10, 1
  %_31.i = icmp ugt i64 %index1.i, %new_len13
  br i1 %_31.i, label %bb15.i, label %bb16.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  %_20.i = lshr i64 %left10, 1
; call core::slice::sort::stable::merge::merge
  call void @_ZN4core5slice4sort6stable5merge5merge17h7cc0b173c91abb5eE(ptr align 4 %_98, i64 %new_len13, ptr align 4 %scratch.0, i64 %scratch.1, i64 %_20.i, ptr align 8 %is_less)
  %_39.i = shl i64 %new_len13, 1
  %_38.i = or i64 %_39.i, 1
  store i64 %_38.i, ptr %_0.i, align 8
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h61345f0bc9f8b861E.exit

bb16.i:                                           ; preds = %bb6.i
  %new_len.i = sub nuw i64 %new_len13, %index1.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %index1.i
; call core::slice::sort::stable::drift::stable_quicksort
  call void @_ZN4core5slice4sort6stable5drift16stable_quicksort17h89519477e2fd00a1E(ptr align 4 %_37.i, i64 %new_len.i, ptr align 4 %scratch.0, i64 %scratch.1, ptr align 8 %is_less)
  br label %bb7.i

bb15.i:                                           ; preds = %bb6.i
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 %index1.i, i64 %new_len13, i64 %new_len13, ptr align 8 @alloc_5be8b393046eedb82fc40754d45c03a6) #23
  unreachable

_ZN4core5slice4sort6stable5drift13logical_merge17h61345f0bc9f8b861E.exit: ; preds = %bb9.i, %bb7.i
  %14 = load i64, ptr %_0.i, align 8
  store i64 %14, ptr %prev_run, align 8
  %15 = load i64, ptr %stack_len, align 8
  %16 = sub i64 %15, 1
  store i64 %16, ptr %stack_len, align 8
  br label %bb11
}

; core::slice::sort::stable::merge::MergeState<T>::merge_down
; Function Attrs: nonlazybind uwtable
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h50b3f4f9cf1213a5E"(ptr align 8 %self, ptr %left_end, ptr %right_end, ptr %0, ptr align 8 %is_less) unnamed_addr #3 {
start:
  %src = alloca [8 x i8], align 8
  %_10 = alloca [8 x i8], align 8
  %right = alloca [8 x i8], align 8
  %left = alloca [8 x i8], align 8
  %out = alloca [8 x i8], align 8
  store ptr %0, ptr %out, align 8
  br label %bb1

bb1:                                              ; preds = %bb8, %start
  %1 = getelementptr inbounds i8, ptr %self, i64 16
  %self1 = load ptr, ptr %1, align 8
  br label %bb11

bb11:                                             ; preds = %bb1
  %2 = getelementptr inbounds i32, ptr %self1, i64 -1
  store ptr %2, ptr %left, align 8
  br label %bb9

bb9:                                              ; preds = %bb11
  %3 = getelementptr inbounds i8, ptr %self, i64 8
  %self2 = load ptr, ptr %3, align 8
  br label %bb14

bb14:                                             ; preds = %bb9
  %4 = getelementptr inbounds i32, ptr %self2, i64 -1
  store ptr %4, ptr %right, align 8
  br label %bb12

bb12:                                             ; preds = %bb14
  br label %bb17

bb17:                                             ; preds = %bb12
  %5 = load ptr, ptr %out, align 8
  %6 = getelementptr inbounds i32, ptr %5, i64 -1
  store ptr %6, ptr %_10, align 8
  br label %bb15

bb15:                                             ; preds = %bb17
  %7 = load ptr, ptr %_10, align 8
  store ptr %7, ptr %out, align 8
  %_13 = load ptr, ptr %right, align 8
  %_14 = load ptr, ptr %left, align 8
; call alloc::slice::<impl [T]>::sort_by::{{closure}}
  %consume_left = call zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"(ptr align 8 %is_less, ptr align 4 %_13, ptr align 4 %_14) #24
  br i1 %consume_left, label %bb3, label %bb4

bb4:                                              ; preds = %bb15
  %8 = load ptr, ptr %right, align 8
  store ptr %8, ptr %src, align 8
  br label %bb5

bb3:                                              ; preds = %bb15
  %9 = load ptr, ptr %left, align 8
  store ptr %9, ptr %src, align 8
  br label %bb5

bb5:                                              ; preds = %bb3, %bb4
  %src3 = load ptr, ptr %src, align 8
  %dst = load ptr, ptr %out, align 8
  br label %bb18

bb18:                                             ; preds = %bb5
  %_30 = load ptr, ptr %src, align 8
; call core::ptr::copy_nonoverlapping::precondition_check
  call void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17hc07330eb8860aa11E(ptr %_30, ptr %dst, i64 4, i64 4, i64 1, ptr align 8 @alloc_0d87c14e0afc26d18a0752880d43f0ed) #25
  br label %bb20

bb20:                                             ; preds = %bb18
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %dst, ptr align 4 %src3, i64 4, i1 false)
  %_20 = xor i1 %consume_left, true
  %count = zext i1 %_20 to i64
  %10 = load ptr, ptr %left, align 8
  %_18 = getelementptr inbounds nuw i32, ptr %10, i64 %count
  %11 = getelementptr inbounds i8, ptr %self, i64 16
  store ptr %_18, ptr %11, align 8
  %count4 = zext i1 %consume_left to i64
  %12 = load ptr, ptr %right, align 8
  %_21 = getelementptr inbounds nuw i32, ptr %12, i64 %count4
  %13 = getelementptr inbounds i8, ptr %self, i64 8
  store ptr %_21, ptr %13, align 8
  %14 = getelementptr inbounds i8, ptr %self, i64 16
  %_25 = load ptr, ptr %14, align 8
  %_23 = icmp eq ptr %_25, %left_end
  br i1 %_23, label %bb7, label %bb6

bb6:                                              ; preds = %bb20
  %15 = getelementptr inbounds i8, ptr %self, i64 8
  %_28 = load ptr, ptr %15, align 8
  %_26 = icmp eq ptr %_28, %right_end
  br i1 %_26, label %bb7, label %bb8

bb7:                                              ; preds = %bb6, %bb20
  ret void

bb8:                                              ; preds = %bb6
  br label %bb1

bb10:                                             ; No predecessors!
  unreachable

bb13:                                             ; No predecessors!
  unreachable

bb16:                                             ; No predecessors!
  unreachable
}

; core::slice::sort::stable::merge::MergeState<T>::merge_up
; Function Attrs: nonlazybind uwtable
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h6b836eea6eccfc19E"(ptr align 8 %self, ptr %0, ptr %right_end, ptr align 8 %is_less) unnamed_addr #3 {
start:
  %src = alloca [8 x i8], align 8
  %right = alloca [8 x i8], align 8
  store ptr %0, ptr %right, align 8
  br label %bb1

bb1:                                              ; preds = %bb12, %start
  %_8 = load ptr, ptr %self, align 8
  %1 = getelementptr inbounds i8, ptr %self, i64 8
  %_9 = load ptr, ptr %1, align 8
  %_7 = icmp ne ptr %_8, %_9
  br i1 %_7, label %bb2, label %bb8

bb8:                                              ; preds = %bb1
  br label %bb9

bb2:                                              ; preds = %bb1
  %_11 = load ptr, ptr %right, align 8
  %_10 = icmp ne ptr %_11, %right_end
  br i1 %_10, label %bb3, label %bb9

bb9:                                              ; preds = %bb2, %bb8
  ret void

bb3:                                              ; preds = %bb2
  %_15 = load ptr, ptr %right, align 8
  %_27 = load ptr, ptr %self, align 8
; call alloc::slice::<impl [T]>::sort_by::{{closure}}
  %_13 = call zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"(ptr align 8 %is_less, ptr align 4 %_15, ptr align 4 %_27) #24
  %consume_left = xor i1 %_13, true
  br i1 %consume_left, label %bb5, label %bb6

bb6:                                              ; preds = %bb3
  %2 = load ptr, ptr %right, align 8
  store ptr %2, ptr %src, align 8
  br label %bb7

bb5:                                              ; preds = %bb3
  %_18 = load ptr, ptr %self, align 8
  store ptr %_18, ptr %src, align 8
  br label %bb7

bb7:                                              ; preds = %bb5, %bb6
  %3 = getelementptr inbounds i8, ptr %self, i64 16
  %dst = load ptr, ptr %3, align 8
  br label %bb10

bb10:                                             ; preds = %bb7
  %_29 = load ptr, ptr %src, align 8
; call core::ptr::copy_nonoverlapping::precondition_check
  call void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17hc07330eb8860aa11E(ptr %_29, ptr %dst, i64 4, i64 4, i64 1, ptr align 8 @alloc_0d87c14e0afc26d18a0752880d43f0ed) #25
  br label %bb12

bb12:                                             ; preds = %bb10
  %4 = load ptr, ptr %src, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %dst, ptr align 4 %4, i64 4, i1 false)
  %self1 = load ptr, ptr %self, align 8
  %count = zext i1 %consume_left to i64
  %_20 = getelementptr inbounds nuw i32, ptr %self1, i64 %count
  store ptr %_20, ptr %self, align 8
  %count2 = zext i1 %_13 to i64
  %5 = load ptr, ptr %right, align 8
  %_23 = getelementptr inbounds nuw i32, ptr %5, i64 %count2
  store ptr %_23, ptr %right, align 8
  %6 = getelementptr inbounds i8, ptr %self, i64 16
  %self3 = load ptr, ptr %6, align 8
  %_25 = getelementptr inbounds nuw i32, ptr %self3, i64 1
  %7 = getelementptr inbounds i8, ptr %self, i64 16
  store ptr %_25, ptr %7, align 8
  br label %bb1
}

; core::slice::sort::stable::merge::merge
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5merge5merge17h7cc0b173c91abb5eE(ptr align 4 %v.0, i64 %v.1, ptr align 4 %scratch.0, i64 %scratch.1, i64 %0, ptr align 8 %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %1 = alloca [16 x i8], align 8
  %merge_state = alloca [24 x i8], align 8
  %v_base = alloca [8 x i8], align 8
  %mid = alloca [8 x i8], align 8
  store i64 %0, ptr %mid, align 8
  %2 = load i64, ptr %mid, align 8
  %_6 = icmp eq i64 %2, 0
  br i1 %_6, label %bb4, label %bb1

bb1:                                              ; preds = %start
  %3 = load i64, ptr %mid, align 8
  %_7 = icmp uge i64 %3, %v.1
  br i1 %_7, label %bb4, label %bb2

bb4:                                              ; preds = %bb3, %bb1, %start
  br label %bb18

bb2:                                              ; preds = %bb1
  %4 = load i64, ptr %mid, align 8
  %right_len = sub i64 %v.1, %4
  %5 = load i64, ptr %mid, align 8
; call core::cmp::Ord::min
  %_10 = call i64 @_ZN4core3cmp3Ord3min17h7c75fca9e61457a4E(i64 %5, i64 %right_len) #24
  %_8 = icmp ult i64 %scratch.1, %_10
  br i1 %_8, label %bb3, label %bb5

bb5:                                              ; preds = %bb2
  store ptr %v.0, ptr %v_base, align 8
  %6 = load ptr, ptr %v_base, align 8
  %7 = load i64, ptr %mid, align 8
  %v_mid = getelementptr inbounds nuw i32, ptr %6, i64 %7
  %8 = load ptr, ptr %v_base, align 8
  %v_end = getelementptr inbounds nuw i32, ptr %8, i64 %v.1
  %9 = load i64, ptr %mid, align 8
  %left_is_shorter = icmp ule i64 %9, %right_len
  br i1 %left_is_shorter, label %bb6, label %bb7

bb3:                                              ; preds = %bb2
  br label %bb4

bb7:                                              ; preds = %bb5
  store ptr %v_mid, ptr %v_base, align 8
  br label %bb8

bb6:                                              ; preds = %bb5
  br label %bb8

bb8:                                              ; preds = %bb6, %bb7
  br i1 %left_is_shorter, label %bb9, label %bb10

bb10:                                             ; preds = %bb8
  store i64 %right_len, ptr %mid, align 8
  br label %bb11

bb9:                                              ; preds = %bb8
  br label %bb11

bb11:                                             ; preds = %bb9, %bb10
  %_19 = load ptr, ptr %v_base, align 8
  %count = load i64, ptr %mid, align 8
  br label %bb22

bb22:                                             ; preds = %bb11
; call core::ptr::copy_nonoverlapping::precondition_check
  call void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17hc07330eb8860aa11E(ptr %_19, ptr %scratch.0, i64 4, i64 4, i64 %count, ptr align 8 @alloc_0d87c14e0afc26d18a0752880d43f0ed) #25
  br label %bb24

bb24:                                             ; preds = %bb22
  %10 = mul i64 %count, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scratch.0, ptr align 4 %_19, i64 %10, i1 false)
  %11 = load i64, ptr %mid, align 8
  %_22 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %11
  store ptr %scratch.0, ptr %merge_state, align 8
  %12 = getelementptr inbounds i8, ptr %merge_state, i64 8
  store ptr %_22, ptr %12, align 8
  %13 = load ptr, ptr %v_base, align 8
  %14 = getelementptr inbounds i8, ptr %merge_state, i64 16
  store ptr %13, ptr %14, align 8
  br i1 %left_is_shorter, label %bb12, label %bb14

bb14:                                             ; preds = %bb24
; invoke core::slice::sort::stable::merge::MergeState<T>::merge_down
  invoke void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h50b3f4f9cf1213a5E"(ptr align 8 %merge_state, ptr %v.0, ptr %scratch.0, ptr %v_end, ptr align 8 %is_less)
          to label %bb15 unwind label %cleanup

bb12:                                             ; preds = %bb24
; invoke core::slice::sort::stable::merge::MergeState<T>::merge_up
  invoke void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17h6b836eea6eccfc19E"(ptr align 8 %merge_state, ptr %v_mid, ptr %v_end, ptr align 8 %is_less)
          to label %bb13 unwind label %cleanup

bb19:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<core::slice::sort::stable::merge::MergeState<i32>>
  invoke void @"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17he36c853752653ab1E"(ptr align 8 %merge_state) #28
          to label %bb20 unwind label %terminate

cleanup:                                          ; preds = %bb12, %bb14
  %15 = landingpad { ptr, i32 }
          cleanup
  %16 = extractvalue { ptr, i32 } %15, 0
  %17 = extractvalue { ptr, i32 } %15, 1
  store ptr %16, ptr %1, align 8
  %18 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %17, ptr %18, align 8
  br label %bb19

bb15:                                             ; preds = %bb14
  br label %bb16

bb16:                                             ; preds = %bb13, %bb15
; call core::ptr::drop_in_place<core::slice::sort::stable::merge::MergeState<i32>>
  call void @"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17he36c853752653ab1E"(ptr align 8 %merge_state)
  br label %bb18

bb13:                                             ; preds = %bb12
  br label %bb16

bb18:                                             ; preds = %bb4, %bb16
  ret void

terminate:                                        ; preds = %bb19
  %19 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb20:                                             ; preds = %bb19
  %20 = load ptr, ptr %1, align 8
  %21 = getelementptr inbounds i8, ptr %1, i64 8
  %22 = load i32, ptr %21, align 8
  %23 = insertvalue { ptr, i32 } poison, ptr %20, 0
  %24 = insertvalue { ptr, i32 } %23, i32 %22, 1
  resume { ptr, i32 } %24
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nonlazybind uwtable
define i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h0a705b4c72c6ae77E(ptr align 4 %v.0, i64 %v.1, ptr align 4 %scratch.0, i64 %scratch.1, i64 %0, i1 zeroext %pivot_goes_left, ptr align 8 %is_less) unnamed_addr #3 {
start:
  %1 = alloca [8 x i8], align 8
  %_101 = alloca [8 x i8], align 8
  %_77 = alloca [8 x i8], align 8
  %count2 = alloca [8 x i8], align 8
  %self1 = alloca [8 x i8], align 8
  %dst = alloca [8 x i8], align 8
  %_73 = alloca [8 x i8], align 8
  %count = alloca [8 x i8], align 8
  %self = alloca [8 x i8], align 8
  %_70 = alloca [8 x i8], align 8
  %src = alloca [8 x i8], align 8
  %i = alloca [8 x i8], align 8
  %_67 = alloca [8 x i8], align 8
  %_65 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %pivot_in_scratch = alloca [8 x i8], align 8
  %state = alloca [32 x i8], align 8
  %b = alloca [1 x i8], align 1
  %pivot_pos = alloca [8 x i8], align 8
  store i64 %0, ptr %pivot_pos, align 8
  %_8 = icmp ult i64 %scratch.1, %v.1
  br i1 %_8, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %2 = load i64, ptr %pivot_pos, align 8
  %3 = icmp uge i64 %2, %v.1
  %4 = zext i1 %3 to i8
  store i8 %4, ptr %b, align 1
  %5 = load i8, ptr %b, align 1
  %6 = trunc nuw i8 %5 to i1
  br i1 %6, label %bb31, label %bb33

bb1:                                              ; preds = %start
  store i8 1, ptr %b, align 1
  br label %bb31

bb33:                                             ; preds = %bb2
  %7 = load i64, ptr %pivot_pos, align 8
  %pivot = getelementptr inbounds nuw i32, ptr %v.0, i64 %7
  %_86 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %v.1
  store ptr %scratch.0, ptr %state, align 8
  %8 = getelementptr inbounds i8, ptr %state, i64 8
  store ptr %v.0, ptr %8, align 8
  %9 = getelementptr inbounds i8, ptr %state, i64 16
  store i64 0, ptr %9, align 8
  %10 = getelementptr inbounds i8, ptr %state, i64 24
  store ptr %_86, ptr %10, align 8
  store ptr null, ptr %pivot_in_scratch, align 8
  br label %bb3

bb31:                                             ; preds = %bb1, %bb2
  call void @llvm.trap()
  unreachable

bb3:                                              ; preds = %bb23, %bb33
  br label %bb4

bb4:                                              ; preds = %bb3
  %self3 = load i64, ptr %pivot_pos, align 8
  %11 = call i64 @llvm.usub.sat.i64(i64 %self3, i64 3)
  store i64 %11, ptr %1, align 8
  %count4 = load i64, ptr %1, align 8
  %unroll_end = getelementptr inbounds nuw i32, ptr %v.0, i64 %count4
  br label %bb5

bb5:                                              ; preds = %bb6, %bb4
  %12 = getelementptr inbounds i8, ptr %state, i64 8
  %_20 = load ptr, ptr %12, align 8
  %_19 = icmp ult ptr %_20, %unroll_end
  br i1 %_19, label %bb6, label %bb15

bb15:                                             ; preds = %bb5
  br label %bb16

bb6:                                              ; preds = %bb5
  %13 = getelementptr inbounds i8, ptr %state, i64 8
  %_78 = load ptr, ptr %13, align 8
; call alloc::slice::<impl [T]>::sort_by::{{closure}}
  %_23 = call zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"(ptr align 8 %is_less, ptr align 4 %_78, ptr align 4 %pivot) #24
; call core::slice::sort::stable::quicksort::PartitionState<T>::partition_one
  %_21 = call ptr @"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E"(ptr align 8 %state, i1 zeroext %_23)
  %14 = getelementptr inbounds i8, ptr %state, i64 8
  %_79 = load ptr, ptr %14, align 8
; call alloc::slice::<impl [T]>::sort_by::{{closure}}
  %_29 = call zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"(ptr align 8 %is_less, ptr align 4 %_79, ptr align 4 %pivot) #24
; call core::slice::sort::stable::quicksort::PartitionState<T>::partition_one
  %_27 = call ptr @"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E"(ptr align 8 %state, i1 zeroext %_29)
  %15 = getelementptr inbounds i8, ptr %state, i64 8
  %_80 = load ptr, ptr %15, align 8
; call alloc::slice::<impl [T]>::sort_by::{{closure}}
  %_35 = call zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"(ptr align 8 %is_less, ptr align 4 %_80, ptr align 4 %pivot) #24
; call core::slice::sort::stable::quicksort::PartitionState<T>::partition_one
  %_33 = call ptr @"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E"(ptr align 8 %state, i1 zeroext %_35)
  %16 = getelementptr inbounds i8, ptr %state, i64 8
  %_81 = load ptr, ptr %16, align 8
; call alloc::slice::<impl [T]>::sort_by::{{closure}}
  %_41 = call zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"(ptr align 8 %is_less, ptr align 4 %_81, ptr align 4 %pivot) #24
; call core::slice::sort::stable::quicksort::PartitionState<T>::partition_one
  %_39 = call ptr @"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E"(ptr align 8 %state, i1 zeroext %_41)
  br label %bb5

bb16:                                             ; preds = %bb15
  %count5 = load i64, ptr %pivot_pos, align 8
  %loop_end = getelementptr inbounds nuw i32, ptr %v.0, i64 %count5
  br label %bb17

bb17:                                             ; preds = %bb18, %bb16
  %17 = getelementptr inbounds i8, ptr %state, i64 8
  %_48 = load ptr, ptr %17, align 8
  %_47 = icmp ult ptr %_48, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb21:                                             ; preds = %bb17
  %18 = load i64, ptr %pivot_pos, align 8
  %_55 = icmp eq i64 %18, %v.1
  br i1 %_55, label %bb22, label %bb23

bb18:                                             ; preds = %bb17
  %19 = getelementptr inbounds i8, ptr %state, i64 8
  %_82 = load ptr, ptr %19, align 8
; call alloc::slice::<impl [T]>::sort_by::{{closure}}
  %_51 = call zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"(ptr align 8 %is_less, ptr align 4 %_82, ptr align 4 %pivot) #24
; call core::slice::sort::stable::quicksort::PartitionState<T>::partition_one
  %_49 = call ptr @"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E"(ptr align 8 %state, i1 zeroext %_51)
  br label %bb17

bb23:                                             ; preds = %bb21
; call core::slice::sort::stable::quicksort::PartitionState<T>::partition_one
  %20 = call ptr @"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E"(ptr align 8 %state, i1 zeroext %pivot_goes_left)
  store ptr %20, ptr %pivot_in_scratch, align 8
  store i64 %v.1, ptr %pivot_pos, align 8
  br label %bb3

bb22:                                             ; preds = %bb21
; call <T as core::slice::sort::stable::quicksort::IsFreeze>::is_freeze
  %_87 = call zeroext i1 @"_ZN68_$LT$T$u20$as$u20$core..slice..sort..stable..quicksort..IsFreeze$GT$9is_freeze17h1fa2a1d613562e27E"()
  %_58 = xor i1 %_87, true
  br i1 %_58, label %bb25, label %bb26

bb26:                                             ; preds = %bb38, %bb22
  %21 = getelementptr inbounds i8, ptr %state, i64 16
  %count6 = load i64, ptr %21, align 8
  br label %bb39

bb25:                                             ; preds = %bb22
  br label %bb36

bb36:                                             ; preds = %bb25
  %_90 = load ptr, ptr %pivot_in_scratch, align 8
; call core::ptr::copy_nonoverlapping::precondition_check
  call void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17hc07330eb8860aa11E(ptr %pivot, ptr %_90, i64 4, i64 4, i64 1, ptr align 8 @alloc_0d87c14e0afc26d18a0752880d43f0ed) #25
  br label %bb38

bb38:                                             ; preds = %bb36
  %22 = load ptr, ptr %pivot_in_scratch, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %22, ptr align 4 %pivot, i64 4, i1 false)
  br label %bb26

bb39:                                             ; preds = %bb26
; call core::ptr::copy_nonoverlapping::precondition_check
  call void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17hc07330eb8860aa11E(ptr %scratch.0, ptr %v.0, i64 4, i64 4, i64 %count6, ptr align 8 @alloc_0d87c14e0afc26d18a0752880d43f0ed) #25
  br label %bb41

bb41:                                             ; preds = %bb39
  %23 = mul i64 %count6, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %v.0, ptr align 4 %scratch.0, i64 %23, i1 false)
  %24 = getelementptr inbounds i8, ptr %state, i64 16
  %_64 = load i64, ptr %24, align 8
  %_63 = sub i64 %v.1, %_64
  store i64 0, ptr %iter, align 8
  %25 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_63, ptr %25, align 8
  br label %bb27

bb27:                                             ; preds = %bb47, %bb41
  %_102 = load i64, ptr %iter, align 8
  %26 = getelementptr inbounds i8, ptr %iter, i64 8
  %_103 = load i64, ptr %26, align 8
  %_97 = icmp ult i64 %_102, %_103
  br i1 %_97, label %bb42, label %bb43

bb43:                                             ; preds = %bb27
  %27 = load i64, ptr @anon.56cfd62e22175d79f9a1a5afbd6cb4c8.1, align 8
  %28 = load i64, ptr getelementptr inbounds (i8, ptr @anon.56cfd62e22175d79f9a1a5afbd6cb4c8.1, i64 8), align 8
  store i64 %27, ptr %_65, align 8
  %29 = getelementptr inbounds i8, ptr %_65, i64 8
  store i64 %28, ptr %29, align 8
  %30 = load i64, ptr %_65, align 8
  %31 = getelementptr inbounds i8, ptr %_65, i64 8
  %32 = load i64, ptr %31, align 8
  store i64 %30, ptr %_67, align 8
  %33 = load i64, ptr %_67, align 8
  %34 = trunc nuw i64 %33 to i1
  br i1 %34, label %bb29, label %bb30

bb42:                                             ; preds = %bb27
  %old = load i64, ptr %iter, align 8
  br label %bb44

bb29:                                             ; preds = %bb43
  %35 = getelementptr inbounds i8, ptr %_65, i64 8
  %36 = load i64, ptr %35, align 8
  store i64 %36, ptr %i, align 8
  store ptr %scratch.0, ptr %self, align 8
  %37 = sub i64 %v.1, 1
  store i64 %37, ptr %_73, align 8
  %38 = load i64, ptr %_73, align 8
  %39 = load i64, ptr %i, align 8
  %40 = sub i64 %38, %39
  store i64 %40, ptr %count, align 8
  %41 = load i64, ptr %count, align 8
  %42 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %41
  store ptr %42, ptr %_70, align 8
  %43 = load ptr, ptr %_70, align 8
  store ptr %43, ptr %src, align 8
  store ptr %v.0, ptr %self1, align 8
  %44 = getelementptr inbounds i8, ptr %state, i64 16
  %45 = load i64, ptr %44, align 8
  store i64 %45, ptr %_77, align 8
  %46 = load i64, ptr %_77, align 8
  %47 = load i64, ptr %i, align 8
  %48 = add i64 %46, %47
  store i64 %48, ptr %count2, align 8
  %49 = load i64, ptr %count2, align 8
  %50 = getelementptr inbounds nuw i32, ptr %v.0, i64 %49
  store ptr %50, ptr %dst, align 8
  br label %bb45

bb30:                                             ; preds = %bb44, %bb48, %bb43
  %51 = getelementptr inbounds i8, ptr %state, i64 16
  %_0 = load i64, ptr %51, align 8
  ret i64 %_0

bb45:                                             ; preds = %bb50, %bb29
  %_106 = load ptr, ptr %_70, align 8
  %_107 = load ptr, ptr %dst, align 8
; call core::ptr::copy_nonoverlapping::precondition_check
  call void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17hc07330eb8860aa11E(ptr %_106, ptr %_107, i64 4, i64 4, i64 1, ptr align 8 @alloc_0d87c14e0afc26d18a0752880d43f0ed) #25
  br label %bb47

bb44:                                             ; preds = %bb42
; call core::num::<impl usize>::unchecked_add::precondition_check
  call void @"_ZN4core3num23_$LT$impl$u20$usize$GT$13unchecked_add18precondition_check17hbf8a98e7ca50b85fE"(i64 %old, i64 1, ptr align 8 @alloc_5a841786226b43ba606ae5b578f20831) #25
  %52 = add nuw i64 %old, 1
  store i64 %52, ptr %_101, align 8
  %53 = load i64, ptr %_101, align 8
  store i64 %53, ptr %iter, align 8
  %54 = getelementptr inbounds i8, ptr %_65, i64 8
  store i64 %old, ptr %54, align 8
  store i64 1, ptr %_65, align 8
  %55 = load i64, ptr %_65, align 8
  %56 = getelementptr inbounds i8, ptr %_65, i64 8
  %57 = load i64, ptr %56, align 8
  store i64 %55, ptr %_67, align 8
  %58 = load i64, ptr %_67, align 8
  %59 = trunc nuw i64 %58 to i1
  br i1 %59, label %bb50, label %bb30

bb48:                                             ; No predecessors!
  %60 = add nuw i64 %old, 1
  store i64 %60, ptr %_101, align 8
  %61 = load i64, ptr %_101, align 8
  store i64 %61, ptr %iter, align 8
  %62 = getelementptr inbounds i8, ptr %_65, i64 8
  store i64 %old, ptr %62, align 8
  store i64 1, ptr %_65, align 8
  %63 = load i64, ptr %_65, align 8
  %64 = getelementptr inbounds i8, ptr %_65, i64 8
  %65 = load i64, ptr %64, align 8
  store i64 %63, ptr %_67, align 8
  %66 = load i64, ptr %_67, align 8
  %67 = trunc nuw i64 %66 to i1
  br i1 %67, label %bb51, label %bb30

bb51:                                             ; preds = %bb48
  %68 = getelementptr inbounds i8, ptr %_65, i64 8
  %69 = load i64, ptr %68, align 8
  store i64 %69, ptr %i, align 8
  store ptr %scratch.0, ptr %self, align 8
  %70 = sub i64 %v.1, 1
  store i64 %70, ptr %_73, align 8
  %71 = load i64, ptr %_73, align 8
  %72 = load i64, ptr %i, align 8
  %73 = sub i64 %71, %72
  store i64 %73, ptr %count, align 8
  %74 = load i64, ptr %count, align 8
  %75 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %74
  store ptr %75, ptr %_70, align 8
  %76 = load ptr, ptr %_70, align 8
  store ptr %76, ptr %src, align 8
  store ptr %v.0, ptr %self1, align 8
  %77 = getelementptr inbounds i8, ptr %state, i64 16
  %78 = load i64, ptr %77, align 8
  store i64 %78, ptr %_77, align 8
  %79 = load i64, ptr %_77, align 8
  %80 = load i64, ptr %i, align 8
  %81 = add i64 %79, %80
  store i64 %81, ptr %count2, align 8
  %82 = load i64, ptr %count2, align 8
  %83 = getelementptr inbounds nuw i32, ptr %v.0, i64 %82
  store ptr %83, ptr %dst, align 8
  br label %bb47

bb47:                                             ; preds = %bb45, %bb51
  %84 = load ptr, ptr %dst, align 8
  %85 = load ptr, ptr %src, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %84, ptr align 4 %85, i64 4, i1 false)
  br label %bb27

bb50:                                             ; preds = %bb44
  %86 = getelementptr inbounds i8, ptr %_65, i64 8
  %87 = load i64, ptr %86, align 8
  store i64 %87, ptr %i, align 8
  store ptr %scratch.0, ptr %self, align 8
  %88 = sub i64 %v.1, 1
  store i64 %88, ptr %_73, align 8
  %89 = load i64, ptr %_73, align 8
  %90 = load i64, ptr %i, align 8
  %91 = sub i64 %89, %90
  store i64 %91, ptr %count, align 8
  %92 = load i64, ptr %count, align 8
  %93 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %92
  store ptr %93, ptr %_70, align 8
  %94 = load ptr, ptr %_70, align 8
  store ptr %94, ptr %src, align 8
  store ptr %v.0, ptr %self1, align 8
  %95 = getelementptr inbounds i8, ptr %state, i64 16
  %96 = load i64, ptr %95, align 8
  store i64 %96, ptr %_77, align 8
  %97 = load i64, ptr %_77, align 8
  %98 = load i64, ptr %i, align 8
  %99 = add i64 %97, %98
  store i64 %99, ptr %count2, align 8
  %100 = load i64, ptr %count2, align 8
  %101 = getelementptr inbounds nuw i32, ptr %v.0, i64 %100
  store ptr %101, ptr %dst, align 8
  br label %bb45

bb28:                                             ; No predecessors!
  unreachable
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nonlazybind uwtable
define i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h3a7d494d270a0aa6E(ptr align 4 %v.0, i64 %v.1, ptr align 4 %scratch.0, i64 %scratch.1, i64 %0, i1 zeroext %pivot_goes_left, ptr align 8 %is_less) unnamed_addr #3 {
start:
  %1 = alloca [8 x i8], align 8
  %_101 = alloca [8 x i8], align 8
  %_77 = alloca [8 x i8], align 8
  %count2 = alloca [8 x i8], align 8
  %self1 = alloca [8 x i8], align 8
  %dst = alloca [8 x i8], align 8
  %_73 = alloca [8 x i8], align 8
  %count = alloca [8 x i8], align 8
  %self = alloca [8 x i8], align 8
  %_70 = alloca [8 x i8], align 8
  %src = alloca [8 x i8], align 8
  %i = alloca [8 x i8], align 8
  %_67 = alloca [8 x i8], align 8
  %_65 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %pivot_in_scratch = alloca [8 x i8], align 8
  %state = alloca [32 x i8], align 8
  %b = alloca [1 x i8], align 1
  %pivot_pos = alloca [8 x i8], align 8
  store i64 %0, ptr %pivot_pos, align 8
  %_8 = icmp ult i64 %scratch.1, %v.1
  br i1 %_8, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %2 = load i64, ptr %pivot_pos, align 8
  %3 = icmp uge i64 %2, %v.1
  %4 = zext i1 %3 to i8
  store i8 %4, ptr %b, align 1
  %5 = load i8, ptr %b, align 1
  %6 = trunc nuw i8 %5 to i1
  br i1 %6, label %bb31, label %bb33

bb1:                                              ; preds = %start
  store i8 1, ptr %b, align 1
  br label %bb31

bb33:                                             ; preds = %bb2
  %7 = load i64, ptr %pivot_pos, align 8
  %pivot = getelementptr inbounds nuw i32, ptr %v.0, i64 %7
  %_86 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %v.1
  store ptr %scratch.0, ptr %state, align 8
  %8 = getelementptr inbounds i8, ptr %state, i64 8
  store ptr %v.0, ptr %8, align 8
  %9 = getelementptr inbounds i8, ptr %state, i64 16
  store i64 0, ptr %9, align 8
  %10 = getelementptr inbounds i8, ptr %state, i64 24
  store ptr %_86, ptr %10, align 8
  store ptr null, ptr %pivot_in_scratch, align 8
  br label %bb3

bb31:                                             ; preds = %bb1, %bb2
  call void @llvm.trap()
  unreachable

bb3:                                              ; preds = %bb23, %bb33
  br label %bb4

bb4:                                              ; preds = %bb3
  %self3 = load i64, ptr %pivot_pos, align 8
  %11 = call i64 @llvm.usub.sat.i64(i64 %self3, i64 3)
  store i64 %11, ptr %1, align 8
  %count4 = load i64, ptr %1, align 8
  %unroll_end = getelementptr inbounds nuw i32, ptr %v.0, i64 %count4
  br label %bb5

bb5:                                              ; preds = %bb6, %bb4
  %12 = getelementptr inbounds i8, ptr %state, i64 8
  %_20 = load ptr, ptr %12, align 8
  %_19 = icmp ult ptr %_20, %unroll_end
  br i1 %_19, label %bb6, label %bb15

bb15:                                             ; preds = %bb5
  br label %bb16

bb6:                                              ; preds = %bb5
  %13 = getelementptr inbounds i8, ptr %state, i64 8
  %_78 = load ptr, ptr %13, align 8
; call core::slice::sort::stable::quicksort::quicksort::{{closure}}
  %_23 = call zeroext i1 @"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h765278c3b1aab14fE"(ptr align 8 %is_less, ptr align 4 %_78, ptr align 4 %pivot) #24
; call core::slice::sort::stable::quicksort::PartitionState<T>::partition_one
  %_21 = call ptr @"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E"(ptr align 8 %state, i1 zeroext %_23)
  %14 = getelementptr inbounds i8, ptr %state, i64 8
  %_79 = load ptr, ptr %14, align 8
; call core::slice::sort::stable::quicksort::quicksort::{{closure}}
  %_29 = call zeroext i1 @"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h765278c3b1aab14fE"(ptr align 8 %is_less, ptr align 4 %_79, ptr align 4 %pivot) #24
; call core::slice::sort::stable::quicksort::PartitionState<T>::partition_one
  %_27 = call ptr @"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E"(ptr align 8 %state, i1 zeroext %_29)
  %15 = getelementptr inbounds i8, ptr %state, i64 8
  %_80 = load ptr, ptr %15, align 8
; call core::slice::sort::stable::quicksort::quicksort::{{closure}}
  %_35 = call zeroext i1 @"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h765278c3b1aab14fE"(ptr align 8 %is_less, ptr align 4 %_80, ptr align 4 %pivot) #24
; call core::slice::sort::stable::quicksort::PartitionState<T>::partition_one
  %_33 = call ptr @"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E"(ptr align 8 %state, i1 zeroext %_35)
  %16 = getelementptr inbounds i8, ptr %state, i64 8
  %_81 = load ptr, ptr %16, align 8
; call core::slice::sort::stable::quicksort::quicksort::{{closure}}
  %_41 = call zeroext i1 @"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h765278c3b1aab14fE"(ptr align 8 %is_less, ptr align 4 %_81, ptr align 4 %pivot) #24
; call core::slice::sort::stable::quicksort::PartitionState<T>::partition_one
  %_39 = call ptr @"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E"(ptr align 8 %state, i1 zeroext %_41)
  br label %bb5

bb16:                                             ; preds = %bb15
  %count5 = load i64, ptr %pivot_pos, align 8
  %loop_end = getelementptr inbounds nuw i32, ptr %v.0, i64 %count5
  br label %bb17

bb17:                                             ; preds = %bb18, %bb16
  %17 = getelementptr inbounds i8, ptr %state, i64 8
  %_48 = load ptr, ptr %17, align 8
  %_47 = icmp ult ptr %_48, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb21:                                             ; preds = %bb17
  %18 = load i64, ptr %pivot_pos, align 8
  %_55 = icmp eq i64 %18, %v.1
  br i1 %_55, label %bb22, label %bb23

bb18:                                             ; preds = %bb17
  %19 = getelementptr inbounds i8, ptr %state, i64 8
  %_82 = load ptr, ptr %19, align 8
; call core::slice::sort::stable::quicksort::quicksort::{{closure}}
  %_51 = call zeroext i1 @"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h765278c3b1aab14fE"(ptr align 8 %is_less, ptr align 4 %_82, ptr align 4 %pivot) #24
; call core::slice::sort::stable::quicksort::PartitionState<T>::partition_one
  %_49 = call ptr @"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E"(ptr align 8 %state, i1 zeroext %_51)
  br label %bb17

bb23:                                             ; preds = %bb21
; call core::slice::sort::stable::quicksort::PartitionState<T>::partition_one
  %20 = call ptr @"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E"(ptr align 8 %state, i1 zeroext %pivot_goes_left)
  store ptr %20, ptr %pivot_in_scratch, align 8
  store i64 %v.1, ptr %pivot_pos, align 8
  br label %bb3

bb22:                                             ; preds = %bb21
; call <T as core::slice::sort::stable::quicksort::IsFreeze>::is_freeze
  %_87 = call zeroext i1 @"_ZN68_$LT$T$u20$as$u20$core..slice..sort..stable..quicksort..IsFreeze$GT$9is_freeze17h1fa2a1d613562e27E"()
  %_58 = xor i1 %_87, true
  br i1 %_58, label %bb25, label %bb26

bb26:                                             ; preds = %bb38, %bb22
  %21 = getelementptr inbounds i8, ptr %state, i64 16
  %count6 = load i64, ptr %21, align 8
  br label %bb39

bb25:                                             ; preds = %bb22
  br label %bb36

bb36:                                             ; preds = %bb25
  %_90 = load ptr, ptr %pivot_in_scratch, align 8
; call core::ptr::copy_nonoverlapping::precondition_check
  call void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17hc07330eb8860aa11E(ptr %pivot, ptr %_90, i64 4, i64 4, i64 1, ptr align 8 @alloc_0d87c14e0afc26d18a0752880d43f0ed) #25
  br label %bb38

bb38:                                             ; preds = %bb36
  %22 = load ptr, ptr %pivot_in_scratch, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %22, ptr align 4 %pivot, i64 4, i1 false)
  br label %bb26

bb39:                                             ; preds = %bb26
; call core::ptr::copy_nonoverlapping::precondition_check
  call void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17hc07330eb8860aa11E(ptr %scratch.0, ptr %v.0, i64 4, i64 4, i64 %count6, ptr align 8 @alloc_0d87c14e0afc26d18a0752880d43f0ed) #25
  br label %bb41

bb41:                                             ; preds = %bb39
  %23 = mul i64 %count6, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %v.0, ptr align 4 %scratch.0, i64 %23, i1 false)
  %24 = getelementptr inbounds i8, ptr %state, i64 16
  %_64 = load i64, ptr %24, align 8
  %_63 = sub i64 %v.1, %_64
  store i64 0, ptr %iter, align 8
  %25 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_63, ptr %25, align 8
  br label %bb27

bb27:                                             ; preds = %bb47, %bb41
  %_102 = load i64, ptr %iter, align 8
  %26 = getelementptr inbounds i8, ptr %iter, i64 8
  %_103 = load i64, ptr %26, align 8
  %_97 = icmp ult i64 %_102, %_103
  br i1 %_97, label %bb42, label %bb43

bb43:                                             ; preds = %bb27
  %27 = load i64, ptr @anon.56cfd62e22175d79f9a1a5afbd6cb4c8.1, align 8
  %28 = load i64, ptr getelementptr inbounds (i8, ptr @anon.56cfd62e22175d79f9a1a5afbd6cb4c8.1, i64 8), align 8
  store i64 %27, ptr %_65, align 8
  %29 = getelementptr inbounds i8, ptr %_65, i64 8
  store i64 %28, ptr %29, align 8
  %30 = load i64, ptr %_65, align 8
  %31 = getelementptr inbounds i8, ptr %_65, i64 8
  %32 = load i64, ptr %31, align 8
  store i64 %30, ptr %_67, align 8
  %33 = load i64, ptr %_67, align 8
  %34 = trunc nuw i64 %33 to i1
  br i1 %34, label %bb29, label %bb30

bb42:                                             ; preds = %bb27
  %old = load i64, ptr %iter, align 8
  br label %bb44

bb29:                                             ; preds = %bb43
  %35 = getelementptr inbounds i8, ptr %_65, i64 8
  %36 = load i64, ptr %35, align 8
  store i64 %36, ptr %i, align 8
  store ptr %scratch.0, ptr %self, align 8
  %37 = sub i64 %v.1, 1
  store i64 %37, ptr %_73, align 8
  %38 = load i64, ptr %_73, align 8
  %39 = load i64, ptr %i, align 8
  %40 = sub i64 %38, %39
  store i64 %40, ptr %count, align 8
  %41 = load i64, ptr %count, align 8
  %42 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %41
  store ptr %42, ptr %_70, align 8
  %43 = load ptr, ptr %_70, align 8
  store ptr %43, ptr %src, align 8
  store ptr %v.0, ptr %self1, align 8
  %44 = getelementptr inbounds i8, ptr %state, i64 16
  %45 = load i64, ptr %44, align 8
  store i64 %45, ptr %_77, align 8
  %46 = load i64, ptr %_77, align 8
  %47 = load i64, ptr %i, align 8
  %48 = add i64 %46, %47
  store i64 %48, ptr %count2, align 8
  %49 = load i64, ptr %count2, align 8
  %50 = getelementptr inbounds nuw i32, ptr %v.0, i64 %49
  store ptr %50, ptr %dst, align 8
  br label %bb45

bb30:                                             ; preds = %bb44, %bb48, %bb43
  %51 = getelementptr inbounds i8, ptr %state, i64 16
  %_0 = load i64, ptr %51, align 8
  ret i64 %_0

bb45:                                             ; preds = %bb50, %bb29
  %_106 = load ptr, ptr %_70, align 8
  %_107 = load ptr, ptr %dst, align 8
; call core::ptr::copy_nonoverlapping::precondition_check
  call void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17hc07330eb8860aa11E(ptr %_106, ptr %_107, i64 4, i64 4, i64 1, ptr align 8 @alloc_0d87c14e0afc26d18a0752880d43f0ed) #25
  br label %bb47

bb44:                                             ; preds = %bb42
; call core::num::<impl usize>::unchecked_add::precondition_check
  call void @"_ZN4core3num23_$LT$impl$u20$usize$GT$13unchecked_add18precondition_check17hbf8a98e7ca50b85fE"(i64 %old, i64 1, ptr align 8 @alloc_5a841786226b43ba606ae5b578f20831) #25
  %52 = add nuw i64 %old, 1
  store i64 %52, ptr %_101, align 8
  %53 = load i64, ptr %_101, align 8
  store i64 %53, ptr %iter, align 8
  %54 = getelementptr inbounds i8, ptr %_65, i64 8
  store i64 %old, ptr %54, align 8
  store i64 1, ptr %_65, align 8
  %55 = load i64, ptr %_65, align 8
  %56 = getelementptr inbounds i8, ptr %_65, i64 8
  %57 = load i64, ptr %56, align 8
  store i64 %55, ptr %_67, align 8
  %58 = load i64, ptr %_67, align 8
  %59 = trunc nuw i64 %58 to i1
  br i1 %59, label %bb50, label %bb30

bb48:                                             ; No predecessors!
  %60 = add nuw i64 %old, 1
  store i64 %60, ptr %_101, align 8
  %61 = load i64, ptr %_101, align 8
  store i64 %61, ptr %iter, align 8
  %62 = getelementptr inbounds i8, ptr %_65, i64 8
  store i64 %old, ptr %62, align 8
  store i64 1, ptr %_65, align 8
  %63 = load i64, ptr %_65, align 8
  %64 = getelementptr inbounds i8, ptr %_65, i64 8
  %65 = load i64, ptr %64, align 8
  store i64 %63, ptr %_67, align 8
  %66 = load i64, ptr %_67, align 8
  %67 = trunc nuw i64 %66 to i1
  br i1 %67, label %bb51, label %bb30

bb51:                                             ; preds = %bb48
  %68 = getelementptr inbounds i8, ptr %_65, i64 8
  %69 = load i64, ptr %68, align 8
  store i64 %69, ptr %i, align 8
  store ptr %scratch.0, ptr %self, align 8
  %70 = sub i64 %v.1, 1
  store i64 %70, ptr %_73, align 8
  %71 = load i64, ptr %_73, align 8
  %72 = load i64, ptr %i, align 8
  %73 = sub i64 %71, %72
  store i64 %73, ptr %count, align 8
  %74 = load i64, ptr %count, align 8
  %75 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %74
  store ptr %75, ptr %_70, align 8
  %76 = load ptr, ptr %_70, align 8
  store ptr %76, ptr %src, align 8
  store ptr %v.0, ptr %self1, align 8
  %77 = getelementptr inbounds i8, ptr %state, i64 16
  %78 = load i64, ptr %77, align 8
  store i64 %78, ptr %_77, align 8
  %79 = load i64, ptr %_77, align 8
  %80 = load i64, ptr %i, align 8
  %81 = add i64 %79, %80
  store i64 %81, ptr %count2, align 8
  %82 = load i64, ptr %count2, align 8
  %83 = getelementptr inbounds nuw i32, ptr %v.0, i64 %82
  store ptr %83, ptr %dst, align 8
  br label %bb47

bb47:                                             ; preds = %bb45, %bb51
  %84 = load ptr, ptr %dst, align 8
  %85 = load ptr, ptr %src, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %84, ptr align 4 %85, i64 4, i1 false)
  br label %bb27

bb50:                                             ; preds = %bb44
  %86 = getelementptr inbounds i8, ptr %_65, i64 8
  %87 = load i64, ptr %86, align 8
  store i64 %87, ptr %i, align 8
  store ptr %scratch.0, ptr %self, align 8
  %88 = sub i64 %v.1, 1
  store i64 %88, ptr %_73, align 8
  %89 = load i64, ptr %_73, align 8
  %90 = load i64, ptr %i, align 8
  %91 = sub i64 %89, %90
  store i64 %91, ptr %count, align 8
  %92 = load i64, ptr %count, align 8
  %93 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %92
  store ptr %93, ptr %_70, align 8
  %94 = load ptr, ptr %_70, align 8
  store ptr %94, ptr %src, align 8
  store ptr %v.0, ptr %self1, align 8
  %95 = getelementptr inbounds i8, ptr %state, i64 16
  %96 = load i64, ptr %95, align 8
  store i64 %96, ptr %_77, align 8
  %97 = load i64, ptr %_77, align 8
  %98 = load i64, ptr %i, align 8
  %99 = add i64 %97, %98
  store i64 %99, ptr %count2, align 8
  %100 = load i64, ptr %count2, align 8
  %101 = getelementptr inbounds nuw i32, ptr %v.0, i64 %100
  store ptr %101, ptr %dst, align 8
  br label %bb45

bb28:                                             ; No predecessors!
  unreachable
}

; core::slice::sort::stable::quicksort::PartitionState<T>::partition_one
; Function Attrs: nonlazybind uwtable
define ptr @"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h8e7c987dd7215355E"(ptr align 8 %self, i1 zeroext %towards_left) unnamed_addr #3 {
start:
  %dst_base = alloca [8 x i8], align 8
  %_3 = alloca [8 x i8], align 8
  %0 = getelementptr inbounds i8, ptr %self, i64 24
  %self1 = load ptr, ptr %0, align 8
  br label %bb6

bb6:                                              ; preds = %start
  %1 = getelementptr inbounds i32, ptr %self1, i64 -1
  store ptr %1, ptr %_3, align 8
  br label %bb4

bb4:                                              ; preds = %bb6
  %2 = getelementptr inbounds i8, ptr %self, i64 24
  %3 = load ptr, ptr %_3, align 8
  store ptr %3, ptr %2, align 8
  br i1 %towards_left, label %bb1, label %bb2

bb2:                                              ; preds = %bb4
  %4 = getelementptr inbounds i8, ptr %self, i64 24
  %5 = load ptr, ptr %4, align 8
  store ptr %5, ptr %dst_base, align 8
  br label %bb3

bb1:                                              ; preds = %bb4
  %6 = load ptr, ptr %self, align 8
  store ptr %6, ptr %dst_base, align 8
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %7 = getelementptr inbounds i8, ptr %self, i64 16
  %count = load i64, ptr %7, align 8
  %8 = load ptr, ptr %dst_base, align 8
  %dst = getelementptr inbounds nuw i32, ptr %8, i64 %count
  %9 = getelementptr inbounds i8, ptr %self, i64 8
  %src = load ptr, ptr %9, align 8
  br label %bb7

bb7:                                              ; preds = %bb3
; call core::ptr::copy_nonoverlapping::precondition_check
  call void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17hc07330eb8860aa11E(ptr %src, ptr %dst, i64 4, i64 4, i64 1, ptr align 8 @alloc_0d87c14e0afc26d18a0752880d43f0ed) #25
  br label %bb9

bb9:                                              ; preds = %bb7
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %dst, ptr align 4 %src, i64 4, i1 false)
  %_8 = zext i1 %towards_left to i64
  %10 = getelementptr inbounds i8, ptr %self, i64 16
  %11 = getelementptr inbounds i8, ptr %self, i64 16
  %12 = load i64, ptr %11, align 8
  %13 = add i64 %12, %_8
  store i64 %13, ptr %10, align 8
  %14 = getelementptr inbounds i8, ptr %self, i64 8
  %self2 = load ptr, ptr %14, align 8
  %_9 = getelementptr inbounds nuw i32, ptr %self2, i64 1
  %15 = getelementptr inbounds i8, ptr %self, i64 8
  store ptr %_9, ptr %15, align 8
  ret ptr %dst

bb5:                                              ; No predecessors!
  unreachable
}

; core::slice::sort::stable::quicksort::quicksort
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h7d5ef47d16b62464E(ptr align 4 %0, i64 %1, ptr align 4 %scratch.0, i64 %scratch.1, i32 %2, ptr align 4 %3, ptr align 8 %is_less) unnamed_addr #6 {
start:
  %_43 = alloca [32 x i8], align 8
  %_41 = alloca [8 x i8], align 8
  %left_partition_len = alloca [8 x i8], align 8
  %perform_equal_partition = alloca [1 x i8], align 1
  %pivot_ref = alloca [8 x i8], align 8
  %pivot_copy = alloca [4 x i8], align 4
  %left_ancestor_pivot = alloca [8 x i8], align 8
  %limit = alloca [4 x i8], align 4
  %v = alloca [16 x i8], align 8
  store ptr %0, ptr %v, align 8
  %4 = getelementptr inbounds i8, ptr %v, i64 8
  store i64 %1, ptr %4, align 8
  store i32 %2, ptr %limit, align 4
  store ptr %3, ptr %left_ancestor_pivot, align 8
  br label %bb1

bb1:                                              ; preds = %bb28, %bb19, %start
  %_7.0 = load ptr, ptr %v, align 8
  %5 = getelementptr inbounds i8, ptr %v, i64 8
  %_7.1 = load i64, ptr %5, align 8
  %_8 = icmp ule i64 %_7.1, 32
  br i1 %_8, label %bb3, label %bb5

bb5:                                              ; preds = %bb1
  %_12 = load i32, ptr %limit, align 4
  %_11 = icmp eq i32 %_12, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb1
  %6 = load ptr, ptr %v, align 8
  %7 = getelementptr inbounds i8, ptr %v, i64 8
  %8 = load i64, ptr %7, align 8
; call core::slice::sort::shared::smallsort::small_sort_general_with_scratch
  call void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h5b12088cec49b9c1E(ptr align 4 %6, i64 %8, ptr align 4 %scratch.0, i64 %scratch.1, ptr align 8 %is_less)
  br label %bb22

bb7:                                              ; preds = %bb5
  %9 = load i32, ptr %limit, align 4
  %10 = sub i32 %9, 1
  store i32 %10, ptr %limit, align 4
  %_15.0 = load ptr, ptr %v, align 8
  %11 = getelementptr inbounds i8, ptr %v, i64 8
  %_15.1 = load i64, ptr %11, align 8
; call core::slice::sort::shared::pivot::choose_pivot
  %pivot_pos = call i64 @_ZN4core5slice4sort6shared5pivot12choose_pivot17h10dc2c1619e2aff0E(ptr align 4 %_15.0, i64 %_15.1, ptr align 8 %is_less) #24
  %_19.0 = load ptr, ptr %v, align 8
  %12 = getelementptr inbounds i8, ptr %v, i64 8
  %_19.1 = load i64, ptr %12, align 8
  %_21 = icmp ult i64 %pivot_pos, %_19.1
  br i1 %_21, label %bb10, label %panic

bb6:                                              ; preds = %bb5
  %13 = load ptr, ptr %v, align 8
  %14 = getelementptr inbounds i8, ptr %v, i64 8
  %15 = load i64, ptr %14, align 8
; call core::slice::sort::stable::drift::sort
  call void @_ZN4core5slice4sort6stable5drift4sort17h33ed42dafbc2c528E(ptr align 4 %13, i64 %15, ptr align 4 %scratch.0, i64 %scratch.1, i1 zeroext true, ptr align 8 %is_less)
  br label %bb22

bb10:                                             ; preds = %bb7
  %16 = load ptr, ptr %v, align 8
  %17 = getelementptr inbounds i8, ptr %v, i64 8
  %18 = load i64, ptr %17, align 8
  %src = getelementptr inbounds nuw i32, ptr %16, i64 %pivot_pos
  %value = load i32, ptr %src, align 4
  store i32 %value, ptr %pivot_copy, align 4
; call <T as core::slice::sort::stable::quicksort::IsFreeze>::is_freeze
  %self = call zeroext i1 @"_ZN68_$LT$T$u20$as$u20$core..slice..sort..stable..quicksort..IsFreeze$GT$9is_freeze17h1fa2a1d613562e27E"()
  br i1 %self, label %bb25, label %bb26

panic:                                            ; preds = %bb7
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %pivot_pos, i64 %_19.1, ptr align 8 @alloc_77210a9a58e6f675b0a4debce2a91e63) #23
  unreachable

bb26:                                             ; preds = %bb10
  store ptr null, ptr %pivot_ref, align 8
  br label %bb24

bb25:                                             ; preds = %bb10
  store ptr %pivot_copy, ptr %pivot_ref, align 8
  br label %bb24

bb24:                                             ; preds = %bb25, %bb26
  store i8 0, ptr %perform_equal_partition, align 1
  %19 = load ptr, ptr %left_ancestor_pivot, align 8
  %20 = ptrtoint ptr %19 to i64
  %21 = icmp eq i64 %20, 0
  %_26 = select i1 %21, i64 0, i64 1
  %22 = trunc nuw i64 %_26 to i1
  br i1 %22, label %bb11, label %bb30

bb11:                                             ; preds = %bb24
  %la_pivot = load ptr, ptr %left_ancestor_pivot, align 8
  %_31.0 = load ptr, ptr %v, align 8
  %23 = getelementptr inbounds i8, ptr %v, i64 8
  %_31.1 = load i64, ptr %23, align 8
  %_33 = icmp ult i64 %pivot_pos, %_31.1
  br i1 %_33, label %bb12, label %panic1

bb30:                                             ; preds = %bb24
  store i64 0, ptr %left_partition_len, align 8
  br label %bb14

bb12:                                             ; preds = %bb11
  %24 = load ptr, ptr %v, align 8
  %25 = getelementptr inbounds i8, ptr %v, i64 8
  %26 = load i64, ptr %25, align 8
  %_30 = getelementptr inbounds nuw i32, ptr %24, i64 %pivot_pos
; call alloc::slice::<impl [T]>::sort_by::{{closure}}
  %_28 = call zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"(ptr align 8 %is_less, ptr align 4 %la_pivot, ptr align 4 %_30) #24
  %27 = xor i1 %_28, true
  %28 = zext i1 %27 to i8
  store i8 %28, ptr %perform_equal_partition, align 1
  store i64 0, ptr %left_partition_len, align 8
  %29 = load i8, ptr %perform_equal_partition, align 1
  %_34 = trunc nuw i8 %29 to i1
  br i1 %_34, label %bb16, label %bb14

panic1:                                           ; preds = %bb11
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %pivot_pos, i64 %_31.1, ptr align 8 @alloc_2adac2ead9e3dc93f204caf01caf89ce) #23
  unreachable

bb14:                                             ; preds = %bb30, %bb12
  %_36.0 = load ptr, ptr %v, align 8
  %30 = getelementptr inbounds i8, ptr %v, i64 8
  %_36.1 = load i64, ptr %30, align 8
; call core::slice::sort::stable::quicksort::stable_partition
  %31 = call i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h0a705b4c72c6ae77E(ptr align 4 %_36.0, i64 %_36.1, ptr align 4 %scratch.0, i64 %scratch.1, i64 %pivot_pos, i1 zeroext false, ptr align 8 %is_less)
  store i64 %31, ptr %left_partition_len, align 8
  %_37 = load i64, ptr %left_partition_len, align 8
  %32 = icmp eq i64 %_37, 0
  %33 = zext i1 %32 to i8
  store i8 %33, ptr %perform_equal_partition, align 1
  br label %bb16

bb16:                                             ; preds = %bb14, %bb12
  %34 = load i8, ptr %perform_equal_partition, align 1
  %35 = trunc nuw i8 %34 to i1
  br i1 %35, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %36 = load ptr, ptr %v, align 8
  %37 = getelementptr inbounds i8, ptr %v, i64 8
  %38 = load i64, ptr %37, align 8
  %39 = load i64, ptr %left_partition_len, align 8
; call core::slice::<impl [T]>::split_at_mut
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h292dc99e94580613E"(ptr sret([32 x i8]) align 8 %_43, ptr align 4 %36, i64 %38, i64 %39, ptr align 8 @alloc_58d434a1e795f965ef82c8e9c5db822a) #24
  %40 = load ptr, ptr %_43, align 8
  %41 = getelementptr inbounds i8, ptr %_43, i64 8
  %42 = load i64, ptr %41, align 8
  store ptr %40, ptr %v, align 8
  %43 = getelementptr inbounds i8, ptr %v, i64 8
  store i64 %42, ptr %43, align 8
  %44 = getelementptr inbounds i8, ptr %_43, i64 16
  %right.0 = load ptr, ptr %44, align 8
  %45 = getelementptr inbounds i8, ptr %44, i64 8
  %right.1 = load i64, ptr %45, align 8
  %_45 = load i32, ptr %limit, align 4
  %46 = load ptr, ptr %pivot_ref, align 8
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h7d5ef47d16b62464E(ptr align 4 %right.0, i64 %right.1, ptr align 4 %scratch.0, i64 %scratch.1, i32 %_45, ptr align 4 %46, ptr align 8 %is_less) #30
  br label %bb1

bb17:                                             ; preds = %bb16
  %_39.0 = load ptr, ptr %v, align 8
  %47 = getelementptr inbounds i8, ptr %v, i64 8
  %_39.1 = load i64, ptr %47, align 8
  store ptr %is_less, ptr %_41, align 8
; call core::slice::sort::stable::quicksort::stable_partition
  %mid_eq = call i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h3a7d494d270a0aa6E(ptr align 4 %_39.0, i64 %_39.1, ptr align 4 %scratch.0, i64 %scratch.1, i64 %pivot_pos, i1 zeroext true, ptr align 8 %_41)
  %48 = load ptr, ptr %v, align 8
  %49 = getelementptr inbounds i8, ptr %v, i64 8
  %_48 = load i64, ptr %49, align 8
  %_47 = icmp ugt i64 %mid_eq, %_48
  br i1 %_47, label %bb27, label %bb28

bb28:                                             ; preds = %bb17
  %new_len = sub nuw i64 %_48, %mid_eq
  %ptr.0 = load ptr, ptr %v, align 8
  %50 = getelementptr inbounds i8, ptr %v, i64 8
  %ptr.1 = load i64, ptr %50, align 8
  %_54 = getelementptr inbounds nuw i32, ptr %ptr.0, i64 %mid_eq
  store ptr %_54, ptr %v, align 8
  %51 = getelementptr inbounds i8, ptr %v, i64 8
  store i64 %new_len, ptr %51, align 8
  store ptr null, ptr %left_ancestor_pivot, align 8
  br label %bb1

bb27:                                             ; preds = %bb17
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 %mid_eq, i64 %_48, i64 %_48, ptr align 8 @alloc_0766b232215672ee1bd2195fdb153938) #23
  unreachable

bb29:                                             ; No predecessors!
  unreachable

bb22:                                             ; preds = %bb3, %bb6
  ret void
}

; core::slice::sort::stable::quicksort::quicksort::{{closure}}
; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h765278c3b1aab14fE"(ptr align 8 %_1, ptr align 4 %a, ptr align 4 %b) unnamed_addr #1 {
start:
  %_6 = load ptr, ptr %_1, align 8
; call alloc::slice::<impl [T]>::sort_by::{{closure}}
  %_4 = call zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"(ptr align 8 %_6, ptr align 4 %b, ptr align 4 %a) #24
  %_0 = xor i1 %_4, true
  ret i1 %_0
}

; core::core_arch::x86::sse2::_mm_or_si128
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4core9core_arch3x864sse212_mm_or_si12817h0e83b5ca29997360E(ptr sret([16 x i8]) align 16 %_0, ptr align 16 %a, ptr align 16 %b) unnamed_addr #7 {
start:
  %0 = load <2 x i64>, ptr %a, align 16
  %1 = load <2 x i64>, ptr %b, align 16
  %2 = or <2 x i64> %0, %1
  store <2 x i64> %2, ptr %_0, align 16
  ret void
}

; core::core_arch::x86::sse2::_mm_set1_epi8
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4core9core_arch3x864sse213_mm_set1_epi817h0d692b8354759098E(ptr sret([16 x i8]) align 16 %_0, i8 %a) unnamed_addr #7 {
start:
  %_17.i = alloca [16 x i8], align 1
  %0 = alloca [16 x i8], align 16
  store i8 %a, ptr %_17.i, align 1
  %1 = getelementptr inbounds nuw i8, ptr %_17.i, i64 1
  store i8 %a, ptr %1, align 1
  %2 = getelementptr inbounds nuw i8, ptr %_17.i, i64 2
  store i8 %a, ptr %2, align 1
  %3 = getelementptr inbounds nuw i8, ptr %_17.i, i64 3
  store i8 %a, ptr %3, align 1
  %4 = getelementptr inbounds nuw i8, ptr %_17.i, i64 4
  store i8 %a, ptr %4, align 1
  %5 = getelementptr inbounds nuw i8, ptr %_17.i, i64 5
  store i8 %a, ptr %5, align 1
  %6 = getelementptr inbounds nuw i8, ptr %_17.i, i64 6
  store i8 %a, ptr %6, align 1
  %7 = getelementptr inbounds nuw i8, ptr %_17.i, i64 7
  store i8 %a, ptr %7, align 1
  %8 = getelementptr inbounds nuw i8, ptr %_17.i, i64 8
  store i8 %a, ptr %8, align 1
  %9 = getelementptr inbounds nuw i8, ptr %_17.i, i64 9
  store i8 %a, ptr %9, align 1
  %10 = getelementptr inbounds nuw i8, ptr %_17.i, i64 10
  store i8 %a, ptr %10, align 1
  %11 = getelementptr inbounds nuw i8, ptr %_17.i, i64 11
  store i8 %a, ptr %11, align 1
  %12 = getelementptr inbounds nuw i8, ptr %_17.i, i64 12
  store i8 %a, ptr %12, align 1
  %13 = getelementptr inbounds nuw i8, ptr %_17.i, i64 13
  store i8 %a, ptr %13, align 1
  %14 = getelementptr inbounds nuw i8, ptr %_17.i, i64 14
  store i8 %a, ptr %14, align 1
  %15 = getelementptr inbounds nuw i8, ptr %_17.i, i64 15
  store i8 %a, ptr %15, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %0, ptr align 1 %_17.i, i64 16, i1 false)
  %_2 = load <16 x i8>, ptr %0, align 16
  store <16 x i8> %_2, ptr %_0, align 16
  ret void
}

; core::core_arch::x86::sse2::_mm_cmpeq_epi8
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4core9core_arch3x864sse214_mm_cmpeq_epi817h5663e4860e31e574E(ptr sret([16 x i8]) align 16 %_0, ptr align 16 %a, ptr align 16 %b) unnamed_addr #7 {
start:
  %0 = alloca [16 x i8], align 16
  %1 = alloca [16 x i8], align 16
  %2 = alloca [16 x i8], align 16
  %3 = alloca [16 x i8], align 16
  %4 = alloca [16 x i8], align 16
  %5 = load <2 x i64>, ptr %a, align 16
  store <2 x i64> %5, ptr %3, align 16
; call core::core_arch::x86::__m128i::as_i8x16
  call void @_ZN4core9core_arch3x867__m128i8as_i8x1617h4b0a747f8b94c51dE(ptr sret([16 x i8]) align 16 %4, ptr align 16 %3) #24
  %_4 = load <16 x i8>, ptr %4, align 16
  %6 = load <2 x i64>, ptr %b, align 16
  store <2 x i64> %6, ptr %1, align 16
; call core::core_arch::x86::__m128i::as_i8x16
  call void @_ZN4core9core_arch3x867__m128i8as_i8x1617h4b0a747f8b94c51dE(ptr sret([16 x i8]) align 16 %2, ptr align 16 %1) #24
  %_5 = load <16 x i8>, ptr %2, align 16
  %7 = icmp eq <16 x i8> %_4, %_5
  %8 = sext <16 x i1> %7 to <16 x i8>
  store <16 x i8> %8, ptr %0, align 16
  %_3 = load <16 x i8>, ptr %0, align 16
  store <16 x i8> %_3, ptr %_0, align 16
  ret void
}

; core::core_arch::x86::sse2::_mm_cmpgt_epi8
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4core9core_arch3x864sse214_mm_cmpgt_epi817h0b24c5381a0adb1eE(ptr sret([16 x i8]) align 16 %_0, ptr align 16 %a, ptr align 16 %b) unnamed_addr #7 {
start:
  %0 = alloca [16 x i8], align 16
  %1 = alloca [16 x i8], align 16
  %2 = alloca [16 x i8], align 16
  %3 = alloca [16 x i8], align 16
  %4 = alloca [16 x i8], align 16
  %5 = load <2 x i64>, ptr %a, align 16
  store <2 x i64> %5, ptr %3, align 16
; call core::core_arch::x86::__m128i::as_i8x16
  call void @_ZN4core9core_arch3x867__m128i8as_i8x1617h4b0a747f8b94c51dE(ptr sret([16 x i8]) align 16 %4, ptr align 16 %3) #24
  %_4 = load <16 x i8>, ptr %4, align 16
  %6 = load <2 x i64>, ptr %b, align 16
  store <2 x i64> %6, ptr %1, align 16
; call core::core_arch::x86::__m128i::as_i8x16
  call void @_ZN4core9core_arch3x867__m128i8as_i8x1617h4b0a747f8b94c51dE(ptr sret([16 x i8]) align 16 %2, ptr align 16 %1) #24
  %_5 = load <16 x i8>, ptr %2, align 16
  %7 = icmp sgt <16 x i8> %_4, %_5
  %8 = sext <16 x i1> %7 to <16 x i8>
  store <16 x i8> %8, ptr %0, align 16
  %_3 = load <16 x i8>, ptr %0, align 16
  store <16 x i8> %_3, ptr %_0, align 16
  ret void
}

; core::core_arch::x86::sse2::_mm_load_si128
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4core9core_arch3x864sse214_mm_load_si12817h430b54e23949212aE(ptr sret([16 x i8]) align 16 %_0, ptr %mem_addr) unnamed_addr #7 {
start:
  %0 = load <2 x i64>, ptr %mem_addr, align 16
  store <2 x i64> %0, ptr %_0, align 16
  ret void
}

; core::core_arch::x86::sse2::_mm_loadu_si128
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4core9core_arch3x864sse215_mm_loadu_si12817h564f784647a6e9d3E(ptr sret([16 x i8]) align 16 %_0, ptr %mem_addr) unnamed_addr #7 {
start:
  %dst = alloca [16 x i8], align 16
  store <2 x i64> zeroinitializer, ptr %dst, align 16
; call core::ptr::copy_nonoverlapping::precondition_check
  call void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17hc07330eb8860aa11E(ptr %mem_addr, ptr %dst, i64 1, i64 1, i64 16, ptr align 8 @alloc_0d87c14e0afc26d18a0752880d43f0ed) #25
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %dst, ptr align 1 %mem_addr, i64 16, i1 false)
  %0 = load <2 x i64>, ptr %dst, align 16
  store <2 x i64> %0, ptr %_0, align 16
  ret void
}

; core::core_arch::x86::sse2::_mm_store_si128
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4core9core_arch3x864sse215_mm_store_si12817h275c16f77549aa56E(ptr %mem_addr, ptr align 16 %a) unnamed_addr #7 {
start:
  %0 = load <2 x i64>, ptr %a, align 16
  store <2 x i64> %0, ptr %mem_addr, align 16
  ret void
}

; core::core_arch::x86::sse2::_mm_movemask_epi8
; Function Attrs: nonlazybind uwtable
define internal i32 @_ZN4core9core_arch3x864sse217_mm_movemask_epi817h6dafdd63c17132afE(ptr align 16 %a) unnamed_addr #7 {
start:
  %0 = alloca [2 x i8], align 2
  %1 = alloca [16 x i8], align 16
  %2 = alloca [16 x i8], align 16
  %3 = alloca [16 x i8], align 16
  %4 = load <2 x i64>, ptr %a, align 16
  store <2 x i64> %4, ptr %2, align 16
; call core::core_arch::x86::__m128i::as_i8x16
  call void @_ZN4core9core_arch3x867__m128i8as_i8x1617h4b0a747f8b94c51dE(ptr sret([16 x i8]) align 16 %3, ptr align 16 %2) #24
  %_3 = load <16 x i8>, ptr %3, align 16
  %5 = icmp slt <16 x i8> %_3, zeroinitializer
  %6 = sext <16 x i1> %5 to <16 x i8>
  store <16 x i8> %6, ptr %1, align 16
  %m = load <16 x i8>, ptr %1, align 16
  %7 = lshr <16 x i8> %m, splat (i8 7)
  %8 = trunc <16 x i8> %7 to <16 x i1>
  %9 = bitcast <16 x i1> %8 to i16
  store i16 %9, ptr %0, align 2
  %_5 = load i16, ptr %0, align 2
  %_4 = zext i16 %_5 to i32
  ret i32 %_4
}

; core::core_arch::x86::sse2::_mm_setzero_si128
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4core9core_arch3x864sse217_mm_setzero_si12817h9bc1a2cd283b95dcE(ptr sret([16 x i8]) align 16 %_0) unnamed_addr #7 {
start:
  store <2 x i64> zeroinitializer, ptr %_0, align 16
  ret void
}

; core::core_arch::x86::__m128i::as_i8x16
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core9core_arch3x867__m128i8as_i8x1617h4b0a747f8b94c51dE(ptr sret([16 x i8]) align 16 %_0, ptr align 16 %self) unnamed_addr #1 {
start:
  %0 = load <2 x i64>, ptr %self, align 16
  store <2 x i64> %0, ptr %_0, align 16
  ret void
}

; core::ub_checks::maybe_is_nonoverlapping::runtime
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @_ZN4core9ub_checks23maybe_is_nonoverlapping7runtime17h47bfc9f76c1c4bd9E(ptr %src, ptr %dst, i64 %size, i64 %count) unnamed_addr #1 {
start:
  %diff = alloca [8 x i8], align 8
  %_9 = alloca [16 x i8], align 8
  %src_usize = ptrtoint ptr %src to i64
  %dst_usize = ptrtoint ptr %dst to i64
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %size, i64 %count)
  %_13.0 = extractvalue { i64, i1 } %0, 0
  %_13.1 = extractvalue { i64, i1 } %0, 1
  br i1 %_13.1, label %bb1, label %bb3

bb3:                                              ; preds = %start
  %1 = getelementptr inbounds i8, ptr %_9, i64 8
  store i64 %_13.0, ptr %1, align 8
  store i64 1, ptr %_9, align 8
  %2 = getelementptr inbounds i8, ptr %_9, i64 8
  %size1 = load i64, ptr %2, align 8
  %_21 = icmp ult i64 %src_usize, %dst_usize
  br i1 %_21, label %bb4, label %bb5

bb1:                                              ; preds = %start
; call core::panicking::panic_nounwind
  call void @_ZN4core9panicking14panic_nounwind17h9a55331e46709e5fE(ptr align 1 @alloc_763310d78c99c2c1ad3f8a9821e942f3, i64 61) #22
  unreachable

bb5:                                              ; preds = %bb3
  %3 = sub i64 %src_usize, %dst_usize
  store i64 %3, ptr %diff, align 8
  br label %bb6

bb4:                                              ; preds = %bb3
  %4 = sub i64 %dst_usize, %src_usize
  store i64 %4, ptr %diff, align 8
  br label %bb6

bb6:                                              ; preds = %bb4, %bb5
  %5 = load i64, ptr %diff, align 8
  %_0 = icmp uge i64 %5, %size1
  ret i1 %_0
}

; <T as core::borrow::Borrow<T>>::borrow
; Function Attrs: nonlazybind uwtable
define align 4 ptr @"_ZN51_$LT$T$u20$as$u20$core..borrow..Borrow$LT$T$GT$$GT$6borrow17h7fe9a0a226438022E"(ptr align 4 %self) unnamed_addr #3 {
start:
  ret ptr %self
}

; <Q as hashbrown::Equivalent<K>>::equivalent
; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17h5463d2eafb616768E"(ptr align 4 %self, ptr align 4 %key) unnamed_addr #3 {
start:
; call <T as core::borrow::Borrow<T>>::borrow
  %_5 = call align 4 ptr @"_ZN51_$LT$T$u20$as$u20$core..borrow..Borrow$LT$T$GT$$GT$6borrow17h7fe9a0a226438022E"(ptr align 4 %key)
; call core::cmp::impls::<impl core::cmp::PartialEq for i32>::eq
  %_0 = call zeroext i1 @"_ZN4core3cmp5impls54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$i32$GT$2eq17h6799684013b7c6aeE"(ptr align 4 %self, ptr align 4 %_5) #24
  ret i1 %_0
}

; alloc::alloc::Global::alloc_impl
; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h7c4d6b7e63a24606E(ptr align 1 %self, i64 %layout.0, i64 %layout.1, i1 zeroext %zeroed) unnamed_addr #1 {
start:
  %self2 = alloca [8 x i8], align 8
  %self1 = alloca [8 x i8], align 8
  %_10 = alloca [8 x i8], align 8
  %raw_ptr = alloca [8 x i8], align 8
  %_0 = alloca [16 x i8], align 8
  %0 = icmp eq i64 %layout.1, 0
  br i1 %0, label %bb2, label %bb1

bb2:                                              ; preds = %start
  %_17 = inttoptr i64 %layout.0 to ptr
  %data = inttoptr i64 %layout.0 to ptr
  br label %bb7

bb1:                                              ; preds = %start
  br i1 %zeroed, label %bb3, label %bb4

bb7:                                              ; preds = %bb2
  %_21 = inttoptr i64 %layout.0 to ptr
; call core::ptr::non_null::NonNull<T>::new_unchecked::precondition_check
  call void @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h8caaca3e946168e6E"(ptr %_21, ptr align 8 @alloc_fdb6657c631269a6e3489ff48171e168) #25
  br label %bb9

bb9:                                              ; preds = %bb7
  store ptr %data, ptr %_0, align 8
  %1 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 0, ptr %1, align 8
  br label %bb6

bb6:                                              ; preds = %bb14, %bb21, %bb9
  %2 = load ptr, ptr %_0, align 8
  %3 = getelementptr inbounds i8, ptr %_0, i64 8
  %4 = load i64, ptr %3, align 8
  %5 = insertvalue { ptr, i64 } poison, ptr %2, 0
  %6 = insertvalue { ptr, i64 } %5, i64 %4, 1
  ret { ptr, i64 } %6

bb4:                                              ; preds = %bb1
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31
; call __rustc::__rust_alloc
  %7 = call ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 %layout.1, i64 %layout.0) #31
  store ptr %7, ptr %raw_ptr, align 8
  br label %bb5

bb3:                                              ; preds = %bb1
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31
; call __rustc::__rust_alloc_zeroed
  %8 = call ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 %layout.1, i64 %layout.0) #31
  store ptr %8, ptr %raw_ptr, align 8
  br label %bb5

bb5:                                              ; preds = %bb3, %bb4
  %_36 = load ptr, ptr %raw_ptr, align 8
  %9 = load ptr, ptr %raw_ptr, align 8
  %_37 = ptrtoint ptr %9 to i64
  %_34 = icmp eq i64 %_37, 0
  br i1 %_34, label %bb14, label %bb15

bb15:                                             ; preds = %bb5
  br label %bb16

bb14:                                             ; preds = %bb5
  store ptr null, ptr %self2, align 8
  store ptr null, ptr %self1, align 8
  %10 = load ptr, ptr @anon.56cfd62e22175d79f9a1a5afbd6cb4c8.1, align 8
  %11 = load i64, ptr getelementptr inbounds (i8, ptr @anon.56cfd62e22175d79f9a1a5afbd6cb4c8.1, i64 8), align 8
  store ptr %10, ptr %_0, align 8
  %12 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %11, ptr %12, align 8
  br label %bb6

bb16:                                             ; preds = %bb15
  %_39 = load ptr, ptr %raw_ptr, align 8
; call core::ptr::non_null::NonNull<T>::new_unchecked::precondition_check
  call void @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h8caaca3e946168e6E"(ptr %_39, ptr align 8 @alloc_27104ca7c14678ebf4bd4b54287b255e) #25
  br label %bb18

bb18:                                             ; preds = %bb16
  store ptr %_36, ptr %self2, align 8
  %v = load ptr, ptr %self2, align 8
  store ptr %v, ptr %self1, align 8
  %v3 = load ptr, ptr %self1, align 8
  store ptr %v3, ptr %_10, align 8
  %ptr = load ptr, ptr %_10, align 8
  br label %bb19

bb19:                                             ; preds = %bb18
; call core::ptr::non_null::NonNull<T>::new_unchecked::precondition_check
  call void @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h8caaca3e946168e6E"(ptr %ptr, ptr align 8 @alloc_fdb6657c631269a6e3489ff48171e168) #25
  br label %bb21

bb21:                                             ; preds = %bb19
  store ptr %ptr, ptr %_0, align 8
  %13 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %layout.1, ptr %13, align 8
  br label %bb6
}

; alloc::slice::stable_sort
; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN5alloc5slice11stable_sort17hedeef39d2ce4d690E(ptr align 4 %v.0, i64 %v.1, ptr align 1 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %1 = alloca [16 x i8], align 8
  %is_less = alloca [8 x i8], align 8
  store ptr %0, ptr %is_less, align 8
  br label %bb5

bb5:                                              ; preds = %start
  %b = icmp ult i64 %v.1, 2
  br i1 %b, label %bb6, label %bb7

bb7:                                              ; preds = %bb5
  %b1 = icmp ule i64 %v.1, 20
  br i1 %b1, label %bb9, label %bb10

bb6:                                              ; preds = %bb5
  br label %bb4

bb10:                                             ; preds = %bb7
; invoke core::slice::sort::stable::driftsort_main
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17h12d5075cddc1e8d1E(ptr align 4 %v.0, i64 %v.1, ptr align 8 %is_less)
          to label %bb13 unwind label %cleanup

bb9:                                              ; preds = %bb7
; invoke core::slice::sort::shared::smallsort::insertion_sort_shift_left
  invoke void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h0491f74e5af5fb5dE(ptr align 4 %v.0, i64 %v.1, i64 1, ptr align 8 %is_less)
          to label %bb12 unwind label %cleanup

bb2:                                              ; preds = %cleanup
  %2 = load ptr, ptr %1, align 8
  %3 = getelementptr inbounds i8, ptr %1, i64 8
  %4 = load i32, ptr %3, align 8
  %5 = insertvalue { ptr, i32 } poison, ptr %2, 0
  %6 = insertvalue { ptr, i32 } %5, i32 %4, 1
  resume { ptr, i32 } %6

cleanup:                                          ; preds = %bb9, %bb10
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = extractvalue { ptr, i32 } %7, 1
  store ptr %8, ptr %1, align 8
  %10 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %9, ptr %10, align 8
  br label %bb2

bb13:                                             ; preds = %bb10
  br label %bb4

bb4:                                              ; preds = %bb6, %bb12, %bb13
  ret void

bb12:                                             ; preds = %bb9
  br label %bb4
}

; alloc::slice::<impl [T]>::sort_by
; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hb5335e09377b4facE"(ptr align 4 %self.0, i64 %self.1) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %compare = alloca [0 x i8], align 1
; invoke alloc::slice::stable_sort
  invoke void @_ZN5alloc5slice11stable_sort17hedeef39d2ce4d690E(ptr align 4 %self.0, i64 %self.1, ptr align 1 %compare)
          to label %bb1 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  %1 = load ptr, ptr %0, align 8
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  %3 = load i32, ptr %2, align 8
  %4 = insertvalue { ptr, i32 } poison, ptr %1, 0
  %5 = insertvalue { ptr, i32 } %4, i32 %3, 1
  resume { ptr, i32 } %5

cleanup:                                          ; preds = %start
  %6 = landingpad { ptr, i32 }
          cleanup
  %7 = extractvalue { ptr, i32 } %6, 0
  %8 = extractvalue { ptr, i32 } %6, 1
  store ptr %7, ptr %0, align 8
  %9 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %8, ptr %9, align 8
  br label %bb3

bb1:                                              ; preds = %start
  ret void
}

; alloc::slice::<impl [T]>::sort_by::{{closure}}
; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he77f6fb165360dbcE"(ptr align 8 %_1, ptr align 4 %a, ptr align 4 %b) unnamed_addr #1 {
start:
  %_7 = load ptr, ptr %_1, align 8
; call core::ops::function::FnMut::call_mut
  %_5 = call i8 @_ZN4core3ops8function5FnMut8call_mut17hfdaebbc4127ebd2fE(ptr align 1 %_7, ptr align 4 %a, ptr align 4 %b) #24
  %_0 = icmp eq i8 %_5, -1
  ret i1 %_0
}

; alloc::slice::<impl core::slice::sort::stable::BufGuard<T> for alloc::vec::Vec<T>>::with_capacity
; Function Attrs: nonlazybind uwtable
define void @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h7956de82b204896eE"(ptr sret([24 x i8]) align 8 %_0, i64 %capacity) unnamed_addr #3 {
start:
; call alloc::raw_vec::RawVecInner<A>::with_capacity_in
  %0 = call { i64, ptr } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h90641477060d719fE"(i64 %capacity, i64 4, i64 4) #24
  %_3.0 = extractvalue { i64, ptr } %0, 0
  %_3.1 = extractvalue { i64, ptr } %0, 1
  store i64 %_3.0, ptr %_0, align 8
  %1 = getelementptr inbounds i8, ptr %_0, i64 8
  store ptr %_3.1, ptr %1, align 8
  %2 = getelementptr inbounds i8, ptr %_0, i64 16
  store i64 0, ptr %2, align 8
  ret void
}

; alloc::slice::<impl core::slice::sort::stable::BufGuard<T> for alloc::vec::Vec<T>>::as_uninit_slice_mut
; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$19as_uninit_slice_mut17h983752d17ff2fa0bE"(ptr align 8 %self) unnamed_addr #3 {
start:
  %_7 = alloca [8 x i8], align 8
  %0 = getelementptr inbounds i8, ptr %self, i64 8
  %_10 = load ptr, ptr %0, align 8
  %1 = getelementptr inbounds i8, ptr %self, i64 16
  %count = load i64, ptr %1, align 8
  %_3 = getelementptr inbounds nuw i32, ptr %_10, i64 %count
  br label %bb2

bb2:                                              ; preds = %start
  %self1 = load i64, ptr %self, align 8
  store i64 %self1, ptr %_7, align 8
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %2 = getelementptr inbounds i8, ptr %self, i64 16
  %_9 = load i64, ptr %2, align 8
  %3 = load i64, ptr %_7, align 8
  %len = sub i64 %3, %_9
  br label %bb4

bb1:                                              ; No predecessors!
  store i64 -1, ptr %_7, align 8
  br label %bb3

bb4:                                              ; preds = %bb3
; call core::slice::raw::from_raw_parts_mut::precondition_check
  call void @_ZN4core5slice3raw18from_raw_parts_mut18precondition_check17hc47e7f86408f4a6dE(ptr %_3, i64 4, i64 4, i64 %len, ptr align 8 @alloc_90bbe98427952d250653de279965c424) #25
  br label %bb6

bb6:                                              ; preds = %bb4
  %4 = insertvalue { ptr, i64 } poison, ptr %_3, 0
  %5 = insertvalue { ptr, i64 } %4, i64 %len, 1
  ret { ptr, i64 } %5
}

; alloc::raw_vec::RawVecInner<A>::with_capacity_in
; Function Attrs: inlinehint nonlazybind uwtable
define { i64, ptr } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h90641477060d719fE"(i64 %capacity, i64 %elem_layout.0, i64 %elem_layout.1) unnamed_addr #1 {
start:
  %self = alloca [8 x i8], align 8
  %_4 = alloca [24 x i8], align 8
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr sret([24 x i8]) align 8 %_4, i64 %capacity, i1 zeroext false, i64 %elem_layout.0, i64 %elem_layout.1)
  %_5 = load i64, ptr %_4, align 8
  %0 = trunc nuw i64 %_5 to i1
  br i1 %0, label %bb3, label %bb4

bb3:                                              ; preds = %start
  %1 = getelementptr inbounds i8, ptr %_4, i64 8
  %err.0 = load i64, ptr %1, align 8
  %2 = getelementptr inbounds i8, ptr %1, i64 8
  %err.1 = load i64, ptr %2, align 8
; call alloc::raw_vec::handle_error
  call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 %err.0, i64 %err.1) #29
  unreachable

bb4:                                              ; preds = %start
  %3 = getelementptr inbounds i8, ptr %_4, i64 8
  %this.0 = load i64, ptr %3, align 8
  %4 = getelementptr inbounds i8, ptr %3, i64 8
  %this.1 = load ptr, ptr %4, align 8
  %_15 = icmp eq i64 %elem_layout.1, 0
  br i1 %_15, label %bb5, label %bb6

bb6:                                              ; preds = %bb4
  store i64 %this.0, ptr %self, align 8
  br label %bb7

bb5:                                              ; preds = %bb4
  store i64 -1, ptr %self, align 8
  br label %bb7

bb7:                                              ; preds = %bb5, %bb6
  %5 = load i64, ptr %self, align 8
  %_11 = sub i64 %5, 0
  %_7 = icmp ugt i64 %capacity, %_11
  %cond = xor i1 %_7, true
  br label %bb8

bb8:                                              ; preds = %bb7
; call core::hint::assert_unchecked::precondition_check
  call void @_ZN4core4hint16assert_unchecked18precondition_check17hc4e741313529fd94E(i1 zeroext %cond, ptr align 8 @alloc_eb8575322eb46aedd166f4660e76bf8c) #25
  br label %bb9

bb9:                                              ; preds = %bb8
  %6 = insertvalue { i64, ptr } poison, i64 %this.0, 0
  %7 = insertvalue { i64, ptr } %6, ptr %this.1, 1
  ret { i64, ptr } %7

bb2:                                              ; No predecessors!
  unreachable
}

; <alloc::alloc::Global as core::alloc::Allocator>::deallocate
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h7c1e367ea80b3fa1E"(ptr align 1 %self, ptr %ptr, i64 %layout.0, i64 %layout.1) unnamed_addr #1 {
start:
  %_4 = icmp ne i64 %layout.1, 0
  br i1 %_4, label %bb1, label %bb2

bb2:                                              ; preds = %bb1, %start
  ret void

bb1:                                              ; preds = %start
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr %ptr, i64 %layout.1, i64 %layout.0) #31
  br label %bb2
}

; <alloc::alloc::Global as core::alloc::Allocator>::allocate
; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hfcf7a94480ed1436E"(ptr align 1 %self, i64 %layout.0, i64 %layout.1) unnamed_addr #1 {
start:
; call alloc::alloc::Global::alloc_impl
  %0 = call { ptr, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h7c4d6b7e63a24606E(ptr align 1 %self, i64 %layout.0, i64 %layout.1, i1 zeroext false) #24
  %_0.0 = extractvalue { ptr, i64 } %0, 0
  %_0.1 = extractvalue { ptr, i64 } %0, 1
  %1 = insertvalue { ptr, i64 } poison, ptr %_0.0, 0
  %2 = insertvalue { ptr, i64 } %1, i64 %_0.1, 1
  ret { ptr, i64 } %2
}

; <u64 as core::intrinsics::fallback::FunnelShift>::unchecked_funnel_shl
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @"_ZN63_$LT$u64$u20$as$u20$core..intrinsics..fallback..FunnelShift$GT$20unchecked_funnel_shl17h7ff26f9eaf66c875E"(i64 %self, i64 %rhs, i32 %shift) unnamed_addr #1 {
start:
  %_0 = alloca [8 x i8], align 8
  %_4 = icmp ult i32 %shift, 64
  %_5 = icmp eq i32 %shift, 0
  br i1 %_5, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %0 = zext i32 %shift to i64
  %_6 = shl i64 %self, %0
  %_8 = sub i32 64, %shift
  %1 = zext i32 %_8 to i64
  %_7 = lshr i64 %rhs, %1
  %2 = or disjoint i64 %_6, %_7
  store i64 %2, ptr %_0, align 8
  br label %bb4

bb1:                                              ; preds = %start
  store i64 %self, ptr %_0, align 8
  br label %bb4

bb4:                                              ; preds = %bb1, %bb2
  %3 = load i64, ptr %_0, align 8
  ret i64 %3
}

; <u64 as core::intrinsics::fallback::DisjointBitOr>::disjoint_bitor
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @"_ZN65_$LT$u64$u20$as$u20$core..intrinsics..fallback..DisjointBitOr$GT$14disjoint_bitor17h924ebd5b30109c75E"(i64 %self, i64 %other) unnamed_addr #1 {
start:
  %_4 = and i64 %self, %other
  %_3 = icmp eq i64 %_4, 0
  %_0 = or i64 %self, %other
  ret i64 %_0
}

; <T as core::slice::sort::stable::quicksort::IsFreeze>::is_freeze
; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN68_$LT$T$u20$as$u20$core..slice..sort..stable..quicksort..IsFreeze$GT$9is_freeze17h1fa2a1d613562e27E"() unnamed_addr #3 {
start:
  ret i1 true
}

; <core::hash::sip::Sip13Rounds as core::hash::sip::Sip>::c_rounds
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN69_$LT$core..hash..sip..Sip13Rounds$u20$as$u20$core..hash..sip..Sip$GT$8c_rounds17hb716c09b6de09063E"(ptr align 8 %state) unnamed_addr #1 {
start:
  %0 = alloca [8 x i8], align 8
  %1 = alloca [8 x i8], align 8
  %2 = alloca [8 x i8], align 8
  %3 = alloca [8 x i8], align 8
  %4 = alloca [8 x i8], align 8
  %5 = alloca [8 x i8], align 8
  %self = load i64, ptr %state, align 8
  %6 = getelementptr inbounds i8, ptr %state, i64 16
  %rhs = load i64, ptr %6, align 8
  %_2 = add i64 %self, %rhs
  store i64 %_2, ptr %state, align 8
  %7 = getelementptr inbounds i8, ptr %state, i64 8
  %self1 = load i64, ptr %7, align 8
  %8 = getelementptr inbounds i8, ptr %state, i64 24
  %rhs2 = load i64, ptr %8, align 8
  %_5 = add i64 %self1, %rhs2
  %9 = getelementptr inbounds i8, ptr %state, i64 8
  store i64 %_5, ptr %9, align 8
  %10 = getelementptr inbounds i8, ptr %state, i64 16
  %self3 = load i64, ptr %10, align 8
; call core::intrinsics::rotate_left
  %_8 = call i64 @_ZN4core10intrinsics11rotate_left17h9ca3b233ad5f4184E(i64 %self3, i32 13) #31
  %11 = getelementptr inbounds i8, ptr %state, i64 16
  store i64 %_8, ptr %11, align 8
  %_10 = load i64, ptr %state, align 8
  %12 = getelementptr inbounds i8, ptr %state, i64 16
  %13 = getelementptr inbounds i8, ptr %state, i64 16
  %14 = load i64, ptr %13, align 8
  %15 = xor i64 %14, %_10
  store i64 %15, ptr %12, align 8
  %16 = getelementptr inbounds i8, ptr %state, i64 24
  %self4 = load i64, ptr %16, align 8
; call core::intrinsics::rotate_left
  %_11 = call i64 @_ZN4core10intrinsics11rotate_left17h9ca3b233ad5f4184E(i64 %self4, i32 16) #31
  %17 = getelementptr inbounds i8, ptr %state, i64 24
  store i64 %_11, ptr %17, align 8
  %18 = getelementptr inbounds i8, ptr %state, i64 8
  %_13 = load i64, ptr %18, align 8
  %19 = getelementptr inbounds i8, ptr %state, i64 24
  %20 = getelementptr inbounds i8, ptr %state, i64 24
  %21 = load i64, ptr %20, align 8
  %22 = xor i64 %21, %_13
  store i64 %22, ptr %19, align 8
  %self5 = load i64, ptr %state, align 8
; call core::intrinsics::rotate_left
  %_14 = call i64 @_ZN4core10intrinsics11rotate_left17h9ca3b233ad5f4184E(i64 %self5, i32 32) #31
  store i64 %_14, ptr %state, align 8
  %23 = getelementptr inbounds i8, ptr %state, i64 8
  %self6 = load i64, ptr %23, align 8
  %24 = getelementptr inbounds i8, ptr %state, i64 16
  %rhs7 = load i64, ptr %24, align 8
  %_16 = add i64 %self6, %rhs7
  %25 = getelementptr inbounds i8, ptr %state, i64 8
  store i64 %_16, ptr %25, align 8
  %self8 = load i64, ptr %state, align 8
  %26 = getelementptr inbounds i8, ptr %state, i64 24
  %rhs9 = load i64, ptr %26, align 8
  %_19 = add i64 %self8, %rhs9
  store i64 %_19, ptr %state, align 8
  %27 = getelementptr inbounds i8, ptr %state, i64 16
  %self10 = load i64, ptr %27, align 8
; call core::intrinsics::rotate_left
  %_22 = call i64 @_ZN4core10intrinsics11rotate_left17h9ca3b233ad5f4184E(i64 %self10, i32 17) #31
  %28 = getelementptr inbounds i8, ptr %state, i64 16
  store i64 %_22, ptr %28, align 8
  %29 = getelementptr inbounds i8, ptr %state, i64 8
  %_24 = load i64, ptr %29, align 8
  %30 = getelementptr inbounds i8, ptr %state, i64 16
  %31 = getelementptr inbounds i8, ptr %state, i64 16
  %32 = load i64, ptr %31, align 8
  %33 = xor i64 %32, %_24
  store i64 %33, ptr %30, align 8
  %34 = getelementptr inbounds i8, ptr %state, i64 24
  %self11 = load i64, ptr %34, align 8
; call core::intrinsics::rotate_left
  %_25 = call i64 @_ZN4core10intrinsics11rotate_left17h9ca3b233ad5f4184E(i64 %self11, i32 21) #31
  %35 = getelementptr inbounds i8, ptr %state, i64 24
  store i64 %_25, ptr %35, align 8
  %_27 = load i64, ptr %state, align 8
  %36 = getelementptr inbounds i8, ptr %state, i64 24
  %37 = getelementptr inbounds i8, ptr %state, i64 24
  %38 = load i64, ptr %37, align 8
  %39 = xor i64 %38, %_27
  store i64 %39, ptr %36, align 8
  %40 = getelementptr inbounds i8, ptr %state, i64 8
  %self12 = load i64, ptr %40, align 8
; call core::intrinsics::rotate_left
  %_28 = call i64 @_ZN4core10intrinsics11rotate_left17h9ca3b233ad5f4184E(i64 %self12, i32 32) #31
  %41 = getelementptr inbounds i8, ptr %state, i64 8
  store i64 %_28, ptr %41, align 8
  ret void
}

; <core::hash::sip::Sip13Rounds as core::hash::sip::Sip>::d_rounds
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN69_$LT$core..hash..sip..Sip13Rounds$u20$as$u20$core..hash..sip..Sip$GT$8d_rounds17hebd6ec85aa21a06aE"(ptr align 8 %state) unnamed_addr #1 {
start:
  %0 = alloca [8 x i8], align 8
  %1 = alloca [8 x i8], align 8
  %2 = alloca [8 x i8], align 8
  %3 = alloca [8 x i8], align 8
  %4 = alloca [8 x i8], align 8
  %5 = alloca [8 x i8], align 8
  %6 = alloca [8 x i8], align 8
  %7 = alloca [8 x i8], align 8
  %8 = alloca [8 x i8], align 8
  %9 = alloca [8 x i8], align 8
  %10 = alloca [8 x i8], align 8
  %11 = alloca [8 x i8], align 8
  %12 = alloca [8 x i8], align 8
  %13 = alloca [8 x i8], align 8
  %14 = alloca [8 x i8], align 8
  %15 = alloca [8 x i8], align 8
  %16 = alloca [8 x i8], align 8
  %17 = alloca [8 x i8], align 8
  %self = load i64, ptr %state, align 8
  %18 = getelementptr inbounds i8, ptr %state, i64 16
  %rhs = load i64, ptr %18, align 8
  %_2 = add i64 %self, %rhs
  store i64 %_2, ptr %state, align 8
  %19 = getelementptr inbounds i8, ptr %state, i64 8
  %self1 = load i64, ptr %19, align 8
  %20 = getelementptr inbounds i8, ptr %state, i64 24
  %rhs2 = load i64, ptr %20, align 8
  %_5 = add i64 %self1, %rhs2
  %21 = getelementptr inbounds i8, ptr %state, i64 8
  store i64 %_5, ptr %21, align 8
  %22 = getelementptr inbounds i8, ptr %state, i64 16
  %self3 = load i64, ptr %22, align 8
; call core::intrinsics::rotate_left
  %_8 = call i64 @_ZN4core10intrinsics11rotate_left17h9ca3b233ad5f4184E(i64 %self3, i32 13) #31
  %23 = getelementptr inbounds i8, ptr %state, i64 16
  store i64 %_8, ptr %23, align 8
  %_10 = load i64, ptr %state, align 8
  %24 = getelementptr inbounds i8, ptr %state, i64 16
  %25 = getelementptr inbounds i8, ptr %state, i64 16
  %26 = load i64, ptr %25, align 8
  %27 = xor i64 %26, %_10
  store i64 %27, ptr %24, align 8
  %28 = getelementptr inbounds i8, ptr %state, i64 24
  %self4 = load i64, ptr %28, align 8
; call core::intrinsics::rotate_left
  %_11 = call i64 @_ZN4core10intrinsics11rotate_left17h9ca3b233ad5f4184E(i64 %self4, i32 16) #31
  %29 = getelementptr inbounds i8, ptr %state, i64 24
  store i64 %_11, ptr %29, align 8
  %30 = getelementptr inbounds i8, ptr %state, i64 8
  %_13 = load i64, ptr %30, align 8
  %31 = getelementptr inbounds i8, ptr %state, i64 24
  %32 = getelementptr inbounds i8, ptr %state, i64 24
  %33 = load i64, ptr %32, align 8
  %34 = xor i64 %33, %_13
  store i64 %34, ptr %31, align 8
  %self5 = load i64, ptr %state, align 8
; call core::intrinsics::rotate_left
  %_14 = call i64 @_ZN4core10intrinsics11rotate_left17h9ca3b233ad5f4184E(i64 %self5, i32 32) #31
  store i64 %_14, ptr %state, align 8
  %35 = getelementptr inbounds i8, ptr %state, i64 8
  %self6 = load i64, ptr %35, align 8
  %36 = getelementptr inbounds i8, ptr %state, i64 16
  %rhs7 = load i64, ptr %36, align 8
  %_16 = add i64 %self6, %rhs7
  %37 = getelementptr inbounds i8, ptr %state, i64 8
  store i64 %_16, ptr %37, align 8
  %self8 = load i64, ptr %state, align 8
  %38 = getelementptr inbounds i8, ptr %state, i64 24
  %rhs9 = load i64, ptr %38, align 8
  %_19 = add i64 %self8, %rhs9
  store i64 %_19, ptr %state, align 8
  %39 = getelementptr inbounds i8, ptr %state, i64 16
  %self10 = load i64, ptr %39, align 8
; call core::intrinsics::rotate_left
  %_22 = call i64 @_ZN4core10intrinsics11rotate_left17h9ca3b233ad5f4184E(i64 %self10, i32 17) #31
  %40 = getelementptr inbounds i8, ptr %state, i64 16
  store i64 %_22, ptr %40, align 8
  %41 = getelementptr inbounds i8, ptr %state, i64 8
  %_24 = load i64, ptr %41, align 8
  %42 = getelementptr inbounds i8, ptr %state, i64 16
  %43 = getelementptr inbounds i8, ptr %state, i64 16
  %44 = load i64, ptr %43, align 8
  %45 = xor i64 %44, %_24
  store i64 %45, ptr %42, align 8
  %46 = getelementptr inbounds i8, ptr %state, i64 24
  %self11 = load i64, ptr %46, align 8
; call core::intrinsics::rotate_left
  %_25 = call i64 @_ZN4core10intrinsics11rotate_left17h9ca3b233ad5f4184E(i64 %self11, i32 21) #31
  %47 = getelementptr inbounds i8, ptr %state, i64 24
  store i64 %_25, ptr %47, align 8
  %_27 = load i64, ptr %state, align 8
  %48 = getelementptr inbounds i8, ptr %state, i64 24
  %49 = getelementptr inbounds i8, ptr %state, i64 24
  %50 = load i64, ptr %49, align 8
  %51 = xor i64 %50, %_27
  store i64 %51, ptr %48, align 8
  %52 = getelementptr inbounds i8, ptr %state, i64 8
  %self12 = load i64, ptr %52, align 8
; call core::intrinsics::rotate_left
  %_28 = call i64 @_ZN4core10intrinsics11rotate_left17h9ca3b233ad5f4184E(i64 %self12, i32 32) #31
  %53 = getelementptr inbounds i8, ptr %state, i64 8
  store i64 %_28, ptr %53, align 8
  %self13 = load i64, ptr %state, align 8
  %54 = getelementptr inbounds i8, ptr %state, i64 16
  %rhs14 = load i64, ptr %54, align 8
  %_30 = add i64 %self13, %rhs14
  store i64 %_30, ptr %state, align 8
  %55 = getelementptr inbounds i8, ptr %state, i64 8
  %self15 = load i64, ptr %55, align 8
  %56 = getelementptr inbounds i8, ptr %state, i64 24
  %rhs16 = load i64, ptr %56, align 8
  %_33 = add i64 %self15, %rhs16
  %57 = getelementptr inbounds i8, ptr %state, i64 8
  store i64 %_33, ptr %57, align 8
  %58 = getelementptr inbounds i8, ptr %state, i64 16
  %self17 = load i64, ptr %58, align 8
; call core::intrinsics::rotate_left
  %_36 = call i64 @_ZN4core10intrinsics11rotate_left17h9ca3b233ad5f4184E(i64 %self17, i32 13) #31
  %59 = getelementptr inbounds i8, ptr %state, i64 16
  store i64 %_36, ptr %59, align 8
  %_38 = load i64, ptr %state, align 8
  %60 = getelementptr inbounds i8, ptr %state, i64 16
  %61 = getelementptr inbounds i8, ptr %state, i64 16
  %62 = load i64, ptr %61, align 8
  %63 = xor i64 %62, %_38
  store i64 %63, ptr %60, align 8
  %64 = getelementptr inbounds i8, ptr %state, i64 24
  %self18 = load i64, ptr %64, align 8
; call core::intrinsics::rotate_left
  %_39 = call i64 @_ZN4core10intrinsics11rotate_left17h9ca3b233ad5f4184E(i64 %self18, i32 16) #31
  %65 = getelementptr inbounds i8, ptr %state, i64 24
  store i64 %_39, ptr %65, align 8
  %66 = getelementptr inbounds i8, ptr %state, i64 8
  %_41 = load i64, ptr %66, align 8
  %67 = getelementptr inbounds i8, ptr %state, i64 24
  %68 = getelementptr inbounds i8, ptr %state, i64 24
  %69 = load i64, ptr %68, align 8
  %70 = xor i64 %69, %_41
  store i64 %70, ptr %67, align 8
  %self19 = load i64, ptr %state, align 8
; call core::intrinsics::rotate_left
  %_42 = call i64 @_ZN4core10intrinsics11rotate_left17h9ca3b233ad5f4184E(i64 %self19, i32 32) #31
  store i64 %_42, ptr %state, align 8
  %71 = getelementptr inbounds i8, ptr %state, i64 8
  %self20 = load i64, ptr %71, align 8
  %72 = getelementptr inbounds i8, ptr %state, i64 16
  %rhs21 = load i64, ptr %72, align 8
  %_44 = add i64 %self20, %rhs21
  %73 = getelementptr inbounds i8, ptr %state, i64 8
  store i64 %_44, ptr %73, align 8
  %self22 = load i64, ptr %state, align 8
  %74 = getelementptr inbounds i8, ptr %state, i64 24
  %rhs23 = load i64, ptr %74, align 8
  %_47 = add i64 %self22, %rhs23
  store i64 %_47, ptr %state, align 8
  %75 = getelementptr inbounds i8, ptr %state, i64 16
  %self24 = load i64, ptr %75, align 8
; call core::intrinsics::rotate_left
  %_50 = call i64 @_ZN4core10intrinsics11rotate_left17h9ca3b233ad5f4184E(i64 %self24, i32 17) #31
  %76 = getelementptr inbounds i8, ptr %state, i64 16
  store i64 %_50, ptr %76, align 8
  %77 = getelementptr inbounds i8, ptr %state, i64 8
  %_52 = load i64, ptr %77, align 8
  %78 = getelementptr inbounds i8, ptr %state, i64 16
  %79 = getelementptr inbounds i8, ptr %state, i64 16
  %80 = load i64, ptr %79, align 8
  %81 = xor i64 %80, %_52
  store i64 %81, ptr %78, align 8
  %82 = getelementptr inbounds i8, ptr %state, i64 24
  %self25 = load i64, ptr %82, align 8
; call core::intrinsics::rotate_left
  %_53 = call i64 @_ZN4core10intrinsics11rotate_left17h9ca3b233ad5f4184E(i64 %self25, i32 21) #31
  %83 = getelementptr inbounds i8, ptr %state, i64 24
  store i64 %_53, ptr %83, align 8
  %_55 = load i64, ptr %state, align 8
  %84 = getelementptr inbounds i8, ptr %state, i64 24
  %85 = getelementptr inbounds i8, ptr %state, i64 24
  %86 = load i64, ptr %85, align 8
  %87 = xor i64 %86, %_55
  store i64 %87, ptr %84, align 8
  %88 = getelementptr inbounds i8, ptr %state, i64 8
  %self26 = load i64, ptr %88, align 8
; call core::intrinsics::rotate_left
  %_56 = call i64 @_ZN4core10intrinsics11rotate_left17h9ca3b233ad5f4184E(i64 %self26, i32 32) #31
  %89 = getelementptr inbounds i8, ptr %state, i64 8
  store i64 %_56, ptr %89, align 8
  %self27 = load i64, ptr %state, align 8
  %90 = getelementptr inbounds i8, ptr %state, i64 16
  %rhs28 = load i64, ptr %90, align 8
  %_58 = add i64 %self27, %rhs28
  store i64 %_58, ptr %state, align 8
  %91 = getelementptr inbounds i8, ptr %state, i64 8
  %self29 = load i64, ptr %91, align 8
  %92 = getelementptr inbounds i8, ptr %state, i64 24
  %rhs30 = load i64, ptr %92, align 8
  %_61 = add i64 %self29, %rhs30
  %93 = getelementptr inbounds i8, ptr %state, i64 8
  store i64 %_61, ptr %93, align 8
  %94 = getelementptr inbounds i8, ptr %state, i64 16
  %self31 = load i64, ptr %94, align 8
; call core::intrinsics::rotate_left
  %_64 = call i64 @_ZN4core10intrinsics11rotate_left17h9ca3b233ad5f4184E(i64 %self31, i32 13) #31
  %95 = getelementptr inbounds i8, ptr %state, i64 16
  store i64 %_64, ptr %95, align 8
  %_66 = load i64, ptr %state, align 8
  %96 = getelementptr inbounds i8, ptr %state, i64 16
  %97 = getelementptr inbounds i8, ptr %state, i64 16
  %98 = load i64, ptr %97, align 8
  %99 = xor i64 %98, %_66
  store i64 %99, ptr %96, align 8
  %100 = getelementptr inbounds i8, ptr %state, i64 24
  %self32 = load i64, ptr %100, align 8
; call core::intrinsics::rotate_left
  %_67 = call i64 @_ZN4core10intrinsics11rotate_left17h9ca3b233ad5f4184E(i64 %self32, i32 16) #31
  %101 = getelementptr inbounds i8, ptr %state, i64 24
  store i64 %_67, ptr %101, align 8
  %102 = getelementptr inbounds i8, ptr %state, i64 8
  %_69 = load i64, ptr %102, align 8
  %103 = getelementptr inbounds i8, ptr %state, i64 24
  %104 = getelementptr inbounds i8, ptr %state, i64 24
  %105 = load i64, ptr %104, align 8
  %106 = xor i64 %105, %_69
  store i64 %106, ptr %103, align 8
  %self33 = load i64, ptr %state, align 8
; call core::intrinsics::rotate_left
  %_70 = call i64 @_ZN4core10intrinsics11rotate_left17h9ca3b233ad5f4184E(i64 %self33, i32 32) #31
  store i64 %_70, ptr %state, align 8
  %107 = getelementptr inbounds i8, ptr %state, i64 8
  %self34 = load i64, ptr %107, align 8
  %108 = getelementptr inbounds i8, ptr %state, i64 16
  %rhs35 = load i64, ptr %108, align 8
  %_72 = add i64 %self34, %rhs35
  %109 = getelementptr inbounds i8, ptr %state, i64 8
  store i64 %_72, ptr %109, align 8
  %self36 = load i64, ptr %state, align 8
  %110 = getelementptr inbounds i8, ptr %state, i64 24
  %rhs37 = load i64, ptr %110, align 8
  %_75 = add i64 %self36, %rhs37
  store i64 %_75, ptr %state, align 8
  %111 = getelementptr inbounds i8, ptr %state, i64 16
  %self38 = load i64, ptr %111, align 8
; call core::intrinsics::rotate_left
  %_78 = call i64 @_ZN4core10intrinsics11rotate_left17h9ca3b233ad5f4184E(i64 %self38, i32 17) #31
  %112 = getelementptr inbounds i8, ptr %state, i64 16
  store i64 %_78, ptr %112, align 8
  %113 = getelementptr inbounds i8, ptr %state, i64 8
  %_80 = load i64, ptr %113, align 8
  %114 = getelementptr inbounds i8, ptr %state, i64 16
  %115 = getelementptr inbounds i8, ptr %state, i64 16
  %116 = load i64, ptr %115, align 8
  %117 = xor i64 %116, %_80
  store i64 %117, ptr %114, align 8
  %118 = getelementptr inbounds i8, ptr %state, i64 24
  %self39 = load i64, ptr %118, align 8
; call core::intrinsics::rotate_left
  %_81 = call i64 @_ZN4core10intrinsics11rotate_left17h9ca3b233ad5f4184E(i64 %self39, i32 21) #31
  %119 = getelementptr inbounds i8, ptr %state, i64 24
  store i64 %_81, ptr %119, align 8
  %_83 = load i64, ptr %state, align 8
  %120 = getelementptr inbounds i8, ptr %state, i64 24
  %121 = getelementptr inbounds i8, ptr %state, i64 24
  %122 = load i64, ptr %121, align 8
  %123 = xor i64 %122, %_83
  store i64 %123, ptr %120, align 8
  %124 = getelementptr inbounds i8, ptr %state, i64 8
  %self40 = load i64, ptr %124, align 8
; call core::intrinsics::rotate_left
  %_84 = call i64 @_ZN4core10intrinsics11rotate_left17h9ca3b233ad5f4184E(i64 %self40, i32 32) #31
  %125 = getelementptr inbounds i8, ptr %state, i64 8
  store i64 %_84, ptr %125, align 8
  ret void
}

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2a917e52e6e54e27E"(ptr align 8 %self) unnamed_addr #3 {
start:
  %0 = getelementptr inbounds i8, ptr %self, i64 8
  %_5 = load ptr, ptr %0, align 8
  %1 = getelementptr inbounds i8, ptr %self, i64 16
  %len = load i64, ptr %1, align 8
  ret void
}

; <core::hash::sip::Hasher<S> as core::hash::Hasher>::write
; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h9524b7e339206d9cE"(ptr align 8 %self, ptr align 1 %msg.0, i64 %msg.1) unnamed_addr #1 {
start:
  %data = alloca [8 x i8], align 8
  %needed = alloca [8 x i8], align 8
  %0 = getelementptr inbounds i8, ptr %self, i64 48
  %1 = getelementptr inbounds i8, ptr %self, i64 48
  %2 = load i64, ptr %1, align 8
  %3 = add i64 %2, %msg.1
  store i64 %3, ptr %0, align 8
  store i64 0, ptr %needed, align 8
  %4 = getelementptr inbounds i8, ptr %self, i64 64
  %_6 = load i64, ptr %4, align 8
  %_5 = icmp ne i64 %_6, 0
  br i1 %_5, label %bb1, label %bb6

bb6:                                              ; preds = %start
  br label %bb7

bb1:                                              ; preds = %start
  %5 = getelementptr inbounds i8, ptr %self, i64 64
  %_7 = load i64, ptr %5, align 8
  %6 = sub i64 8, %_7
  store i64 %6, ptr %needed, align 8
  %v2 = load i64, ptr %needed, align 8
; call core::cmp::Ord::min
  %_10 = call i64 @_ZN4core3cmp3Ord3min17h7c75fca9e61457a4E(i64 %msg.1, i64 %v2) #24
; call core::hash::sip::u8to64_le
  %_9 = call i64 @_ZN4core4hash3sip9u8to64_le17hb9d36abdd6129967E(ptr align 1 %msg.0, i64 %msg.1, i64 0, i64 %_10) #24
  %7 = getelementptr inbounds i8, ptr %self, i64 64
  %_13 = load i64, ptr %7, align 8
  %_12 = mul i64 8, %_13
  %8 = and i64 %_12, 63
  %_8 = shl i64 %_9, %8
  %9 = getelementptr inbounds i8, ptr %self, i64 56
  %10 = getelementptr inbounds i8, ptr %self, i64 56
  %11 = load i64, ptr %10, align 8
  %12 = or i64 %11, %_8
  store i64 %12, ptr %9, align 8
  %_15 = load i64, ptr %needed, align 8
  %_14 = icmp ult i64 %msg.1, %_15
  br i1 %_14, label %bb3, label %bb4

bb7:                                              ; preds = %bb4, %bb6
  %_21 = load i64, ptr %needed, align 8
  %len = sub i64 %msg.1, %_21
  %left = and i64 %len, 7
  br label %bb8

bb4:                                              ; preds = %bb1
  %13 = getelementptr inbounds i8, ptr %self, i64 56
  %_16 = load i64, ptr %13, align 8
  %14 = getelementptr inbounds i8, ptr %self, i64 24
  %15 = getelementptr inbounds i8, ptr %self, i64 24
  %16 = load i64, ptr %15, align 8
  %17 = xor i64 %16, %_16
  store i64 %17, ptr %14, align 8
; call <core::hash::sip::Sip13Rounds as core::hash::sip::Sip>::c_rounds
  call void @"_ZN69_$LT$core..hash..sip..Sip13Rounds$u20$as$u20$core..hash..sip..Sip$GT$8c_rounds17hb716c09b6de09063E"(ptr align 8 %self) #24
  %18 = getelementptr inbounds i8, ptr %self, i64 56
  %_19 = load i64, ptr %18, align 8
  %19 = load i64, ptr %self, align 8
  %20 = xor i64 %19, %_19
  store i64 %20, ptr %self, align 8
  %21 = getelementptr inbounds i8, ptr %self, i64 64
  store i64 0, ptr %21, align 8
  br label %bb7

bb3:                                              ; preds = %bb1
  %22 = getelementptr inbounds i8, ptr %self, i64 64
  %23 = getelementptr inbounds i8, ptr %self, i64 64
  %24 = load i64, ptr %23, align 8
  %25 = add i64 %24, %msg.1
  store i64 %25, ptr %22, align 8
  br label %bb13

bb8:                                              ; preds = %bb17, %bb7
  %_24 = load i64, ptr %needed, align 8
  %_25 = sub i64 %len, %left
  %_23 = icmp ult i64 %_24, %_25
  br i1 %_23, label %bb9, label %bb11

bb11:                                             ; preds = %bb8
  %26 = load i64, ptr %needed, align 8
; call core::hash::sip::u8to64_le
  %_35 = call i64 @_ZN4core4hash3sip9u8to64_le17hb9d36abdd6129967E(ptr align 1 %msg.0, i64 %msg.1, i64 %26, i64 %left) #24
  %27 = getelementptr inbounds i8, ptr %self, i64 56
  store i64 %_35, ptr %27, align 8
  %28 = getelementptr inbounds i8, ptr %self, i64 64
  store i64 %left, ptr %28, align 8
  br label %bb13

bb9:                                              ; preds = %bb8
  store i64 0, ptr %data, align 8
  %count = load i64, ptr %needed, align 8
  %src = getelementptr inbounds nuw i8, ptr %msg.0, i64 %count
  br label %bb15

bb13:                                             ; preds = %bb3, %bb11
  ret void

bb15:                                             ; preds = %bb9
; call core::ptr::copy_nonoverlapping::precondition_check
  call void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17hc07330eb8860aa11E(ptr %src, ptr %data, i64 1, i64 1, i64 8, ptr align 8 @alloc_0d87c14e0afc26d18a0752880d43f0ed) #25
  br label %bb17

bb17:                                             ; preds = %bb15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %data, ptr align 1 %src, i64 8, i1 false)
  %mi = load i64, ptr %data, align 8
  %29 = getelementptr inbounds i8, ptr %self, i64 24
  %30 = getelementptr inbounds i8, ptr %self, i64 24
  %31 = load i64, ptr %30, align 8
  %32 = xor i64 %31, %mi
  store i64 %32, ptr %29, align 8
; call <core::hash::sip::Sip13Rounds as core::hash::sip::Sip>::c_rounds
  call void @"_ZN69_$LT$core..hash..sip..Sip13Rounds$u20$as$u20$core..hash..sip..Sip$GT$8c_rounds17hb716c09b6de09063E"(ptr align 8 %self) #24
  %33 = load i64, ptr %self, align 8
  %34 = xor i64 %33, %mi
  store i64 %34, ptr %self, align 8
  %35 = load i64, ptr %needed, align 8
  %36 = add i64 %35, 8
  store i64 %36, ptr %needed, align 8
  br label %bb8
}

; <core::hash::sip::Hasher<S> as core::hash::Hasher>::finish
; Function Attrs: inlinehint nonlazybind uwtable
define i64 @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$6finish17h1c80691e7398f0eeE"(ptr align 8 %self) unnamed_addr #1 {
start:
  %state = alloca [32 x i8], align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %state, ptr align 8 %self, i64 32, i1 false)
  %0 = getelementptr inbounds i8, ptr %self, i64 48
  %_7 = load i64, ptr %0, align 8
  %_5 = and i64 %_7, 255
  %_4 = shl i64 %_5, 56
  %1 = getelementptr inbounds i8, ptr %self, i64 56
  %_8 = load i64, ptr %1, align 8
  %b = or i64 %_4, %_8
  %2 = getelementptr inbounds i8, ptr %state, i64 24
  %3 = getelementptr inbounds i8, ptr %state, i64 24
  %4 = load i64, ptr %3, align 8
  %5 = xor i64 %4, %b
  store i64 %5, ptr %2, align 8
; call <core::hash::sip::Sip13Rounds as core::hash::sip::Sip>::c_rounds
  call void @"_ZN69_$LT$core..hash..sip..Sip13Rounds$u20$as$u20$core..hash..sip..Sip$GT$8c_rounds17hb716c09b6de09063E"(ptr align 8 %state) #24
  %6 = load i64, ptr %state, align 8
  %7 = xor i64 %6, %b
  store i64 %7, ptr %state, align 8
  %8 = getelementptr inbounds i8, ptr %state, i64 8
  %9 = getelementptr inbounds i8, ptr %state, i64 8
  %10 = load i64, ptr %9, align 8
  %11 = xor i64 %10, 255
  store i64 %11, ptr %8, align 8
; call <core::hash::sip::Sip13Rounds as core::hash::sip::Sip>::d_rounds
  call void @"_ZN69_$LT$core..hash..sip..Sip13Rounds$u20$as$u20$core..hash..sip..Sip$GT$8d_rounds17hebd6ec85aa21a06aE"(ptr align 8 %state) #24
  %_15 = load i64, ptr %state, align 8
  %12 = getelementptr inbounds i8, ptr %state, i64 16
  %_16 = load i64, ptr %12, align 8
  %_14 = xor i64 %_15, %_16
  %13 = getelementptr inbounds i8, ptr %state, i64 8
  %_17 = load i64, ptr %13, align 8
  %_13 = xor i64 %_14, %_17
  %14 = getelementptr inbounds i8, ptr %state, i64 24
  %_18 = load i64, ptr %14, align 8
  %_0 = xor i64 %_13, %_18
  ret i64 %_0
}

; <std::hash::random::DefaultHasher as core::hash::Hasher>::write
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN71_$LT$std..hash..random..DefaultHasher$u20$as$u20$core..hash..Hasher$GT$5write17h0ee41c1a8d4d5040E"(ptr align 8 %self, ptr align 1 %msg.0, i64 %msg.1) unnamed_addr #1 {
start:
; call <core::hash::sip::Hasher<S> as core::hash::Hasher>::write
  call void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h9524b7e339206d9cE"(ptr align 8 %self, ptr align 1 %msg.0, i64 %msg.1) #24
  ret void
}

; <std::hash::random::DefaultHasher as core::hash::Hasher>::finish
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @"_ZN71_$LT$std..hash..random..DefaultHasher$u20$as$u20$core..hash..Hasher$GT$6finish17haa9b381d8600bcd7E"(ptr align 8 %self) unnamed_addr #1 {
start:
; call <core::hash::sip::Hasher<S> as core::hash::Hasher>::finish
  %_0 = call i64 @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$6finish17h1c80691e7398f0eeE"(ptr align 8 %self) #24
  ret i64 %_0
}

; <std::hash::random::RandomState as core::hash::BuildHasher>::build_hasher
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN74_$LT$std..hash..random..RandomState$u20$as$u20$core..hash..BuildHasher$GT$12build_hasher17h211287481b092482E"(ptr sret([72 x i8]) align 8 %_0, ptr align 8 %self) unnamed_addr #1 {
start:
  %_7 = alloca [32 x i8], align 8
  %state = alloca [72 x i8], align 8
  %_5 = alloca [72 x i8], align 8
  %_2 = alloca [72 x i8], align 8
  %key0 = load i64, ptr %self, align 8
  %0 = getelementptr inbounds i8, ptr %self, i64 8
  %key1 = load i64, ptr %0, align 8
  store i64 0, ptr %_7, align 8
  %1 = getelementptr inbounds i8, ptr %_7, i64 8
  store i64 0, ptr %1, align 8
  %2 = getelementptr inbounds i8, ptr %_7, i64 16
  store i64 0, ptr %2, align 8
  %3 = getelementptr inbounds i8, ptr %_7, i64 24
  store i64 0, ptr %3, align 8
  %4 = getelementptr inbounds i8, ptr %state, i64 32
  store i64 %key0, ptr %4, align 8
  %5 = getelementptr inbounds i8, ptr %state, i64 40
  store i64 %key1, ptr %5, align 8
  %6 = getelementptr inbounds i8, ptr %state, i64 48
  store i64 0, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %state, ptr align 8 %_7, i64 32, i1 false)
  %7 = getelementptr inbounds i8, ptr %state, i64 56
  store i64 0, ptr %7, align 8
  %8 = getelementptr inbounds i8, ptr %state, i64 64
  store i64 0, ptr %8, align 8
; call core::hash::sip::Hasher<S>::reset
  call void @"_ZN4core4hash3sip15Hasher$LT$S$GT$5reset17hd688583f9d68e4b4E"(ptr align 8 %state) #24
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_5, ptr align 8 %state, i64 72, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_2, ptr align 8 %_5, i64 72, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %_2, i64 72, i1 false)
  ret void
}

; <usize as core::slice::index::SliceIndex<[T]>>::get_unchecked::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked18precondition_check17hbcecab929959cfeeE"(i64 %this, i64 %len, ptr align 8 %0) unnamed_addr #0 {
start:
  %_3 = icmp ult i64 %this, %len
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
; call core::panicking::panic_nounwind_fmt
  call void @_ZN4core9panicking18panic_nounwind_fmt17hf349702e3facb1fdE(ptr @alloc_97d92cbf2a68a6ac45a1b13da79836e4, ptr inttoptr (i64 429 to ptr), i1 zeroext false, ptr align 8 %0) #22
  unreachable

bb1:                                              ; preds = %start
  ret void
}

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc92daf98dc298d77E"(ptr align 8 %self) unnamed_addr #3 {
start:
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr align 8 %self, i64 4, i64 4)
  ret void
}

; <! as std::sys::thread_local::native::lazy::DestroyedState>::register_dtor
; Function Attrs: nonlazybind uwtable
define void @"_ZN78_$LT$$u21$$u20$as$u20$std..sys..thread_local..native..lazy..DestroyedState$GT$13register_dtor17h2d8d33cfdc8cc844E"(ptr align 8 %_1) unnamed_addr #3 {
start:
  ret void
}

; <hashbrown::raw::RawTable<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0a96ee9768e3f12bE"(ptr align 8 %self) unnamed_addr #3 {
start:
  %_4 = getelementptr inbounds i8, ptr %self, i64 32
; call hashbrown::raw::RawTableInner::drop_inner_table
  call void @_ZN9hashbrown3raw13RawTableInner16drop_inner_table17hdb88847ed13daaebE(ptr align 8 %self, ptr align 1 %_4, i64 8, i64 16)
  ret void
}

; <core::array::iter::IntoIter<T,_> as core::ops::drop::Drop>::drop
; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN82_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h96d88fdc6f0a6217E"(ptr align 8 %self) unnamed_addr #1 {
start:
  br label %bb2

bb2:                                              ; preds = %start
  ret void

bb1:                                              ; No predecessors!
  unreachable

bb3:                                              ; No predecessors!
  unreachable
}

; <hashbrown::scopeguard::ScopeGuard<T,F> as core::ops::drop::Drop>::drop
; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3348fd9ff5f36a97E"(ptr align 8 %self) unnamed_addr #1 {
start:
  %_3 = getelementptr inbounds i8, ptr %self, i64 8
; call hashbrown::raw::RawTableInner::rehash_in_place::{{closure}}
  call void @"_ZN9hashbrown3raw13RawTableInner15rehash_in_place28_$u7b$$u7b$closure$u7d$$u7d$17h24ee928a5f43d5b6E"(ptr align 8 %_3, ptr align 8 %self) #24
  ret void
}

; <hashbrown::scopeguard::ScopeGuard<T,F> as core::ops::drop::Drop>::drop
; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc8cc4207d19f3cabE"(ptr align 8 %self) unnamed_addr #1 {
start:
  %_5 = getelementptr inbounds i8, ptr %self, i64 24
; call hashbrown::raw::RawTableInner::prepare_resize::{{closure}}
  call void @"_ZN9hashbrown3raw13RawTableInner14prepare_resize28_$u7b$$u7b$closure$u7d$$u7d$17h0781ead78ab8a9b7E"(ptr align 8 %self, ptr align 8 %_5) #24
  ret void
}

; <core::slice::sort::stable::merge::MergeState<T> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define void @"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0365dedc9904ee7bE"(ptr align 8 %self) unnamed_addr #3 {
start:
  %dst = alloca [8 x i8], align 8
  %src = alloca [8 x i8], align 8
  %len = alloca [8 x i8], align 8
  %0 = getelementptr inbounds i8, ptr %self, i64 8
  %self1 = load ptr, ptr %0, align 8
  %_5 = load ptr, ptr %self, align 8
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::const_ptr::<impl *const T>::offset_from_unsigned::precondition_check
  call void @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$20offset_from_unsigned18precondition_check17h5f483eec962d541fE"(ptr %self1, ptr %_5, ptr align 8 @alloc_6f43bd4a6d6fed264215c60a43663872) #25
  br label %bb7

bb7:                                              ; preds = %bb1
  br label %bb8

bb8:                                              ; preds = %bb7
  %1 = ptrtoint ptr %self1 to i64
  %2 = ptrtoint ptr %_5 to i64
  %3 = sub nuw i64 %1, %2
  %4 = udiv exact i64 %3, 4
  store i64 %4, ptr %len, align 8
  %_7 = load ptr, ptr %self, align 8
  store ptr %_7, ptr %src, align 8
  %5 = getelementptr inbounds i8, ptr %self, i64 16
  %6 = load ptr, ptr %5, align 8
  store ptr %6, ptr %dst, align 8
  %count = load i64, ptr %len, align 8
  %_21 = load ptr, ptr %dst, align 8
  %7 = load i64, ptr %len, align 8
; call core::ptr::copy_nonoverlapping::precondition_check
  call void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17hc07330eb8860aa11E(ptr %_7, ptr %_21, i64 4, i64 4, i64 %7, ptr align 8 @alloc_0d87c14e0afc26d18a0752880d43f0ed) #25
  br label %bb5

bb3:                                              ; No predecessors!
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17ha2e20a73227bb72eE(ptr align 1 @alloc_ec595fc0e82ef92fc59bd74f68296eae, i64 73, ptr align 8 @alloc_6f43bd4a6d6fed264215c60a43663872) #23
  unreachable

bb5:                                              ; preds = %bb8
  %8 = load ptr, ptr %dst, align 8
  %9 = load ptr, ptr %src, align 8
  %10 = load i64, ptr %len, align 8
  %11 = mul i64 %10, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %8, ptr align 4 %9, i64 %11, i1 false)
  ret void

bb6:                                              ; No predecessors!
  unreachable

bb10:                                             ; No predecessors!
  unreachable

bb11:                                             ; No predecessors!
  unreachable

bb12:                                             ; No predecessors!
  unreachable
}

; <core::hint::select_unpredictable::DropOnPanic<T> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define void @"_ZN96_$LT$core..hint..select_unpredictable..DropOnPanic$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h33478b3ad0c20415E"(ptr align 8 %self) unnamed_addr #3 {
start:
  %self1 = load ptr, ptr %self, align 8
  ret void
}

; <core::slice::sort::shared::smallsort::CopyOnDrop<T> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define void @"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1cb39cb50bab9592E"(ptr align 8 %self) unnamed_addr #3 {
start:
  %src = load ptr, ptr %self, align 8
  %0 = getelementptr inbounds i8, ptr %self, i64 8
  %dst = load ptr, ptr %0, align 8
  %1 = getelementptr inbounds i8, ptr %self, i64 16
  %count = load i64, ptr %1, align 8
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::copy_nonoverlapping::precondition_check
  call void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17hc07330eb8860aa11E(ptr %src, ptr %dst, i64 4, i64 4, i64 %count, ptr align 8 @alloc_0d87c14e0afc26d18a0752880d43f0ed) #25
  br label %bb3

bb3:                                              ; preds = %bb1
  %2 = mul i64 %count, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %dst, ptr align 4 %src, i64 %2, i1 false)
  ret void
}

; hashbrown::map::make_hasher::{{closure}}
; Function Attrs: inlinehint nonlazybind uwtable
define i64 @"_ZN9hashbrown3map11make_hasher28_$u7b$$u7b$closure$u7d$$u7d$17hcf36c344707da63fE"(ptr align 8 %_1, ptr align 4 %val) unnamed_addr #1 {
start:
  %hash_builder = load ptr, ptr %_1, align 8
; call core::hash::BuildHasher::hash_one
  %_0 = call i64 @_ZN4core4hash11BuildHasher8hash_one17h1855698abe03691bE(ptr align 8 %hash_builder, ptr align 4 %val)
  ret i64 %_0
}

; hashbrown::map::equivalent_key::{{closure}}
; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @"_ZN9hashbrown3map14equivalent_key28_$u7b$$u7b$closure$u7d$$u7d$17hcd8ee0e393e2f483E"(ptr align 8 %_1, ptr align 4 %x) unnamed_addr #1 {
start:
  %_4 = load ptr, ptr %_1, align 8
; call <Q as hashbrown::Equivalent<K>>::equivalent
  %_0 = call zeroext i1 @"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17h5463d2eafb616768E"(ptr align 4 %_4, ptr align 4 %x)
  ret i1 %_0
}

; hashbrown::map::HashMap<K,V,S,A>::get
; Function Attrs: inlinehint nonlazybind uwtable
define align 4 ptr @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$3get17hde3daca946872274E"(ptr align 8 %self, ptr align 4 %k) unnamed_addr #1 {
start:
  %_17 = alloca [8 x i8], align 8
  %_13 = alloca [8 x i8], align 8
  %_7 = alloca [8 x i8], align 8
  %_0 = alloca [8 x i8], align 8
  %0 = getelementptr inbounds i8, ptr %self, i64 24
  %_12 = load i64, ptr %0, align 8
  %_3 = icmp eq i64 %_12, 0
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %hash_builder = getelementptr inbounds i8, ptr %self, i64 32
; call core::hash::BuildHasher::hash_one
  %hash = call i64 @_ZN4core4hash11BuildHasher8hash_one17h1855698abe03691bE(ptr align 8 %hash_builder, ptr align 4 %k)
; call hashbrown::raw::RawTable<T,A>::find
  %1 = call ptr @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h8ccb979eb3c8b261E"(ptr align 8 %self, i64 %hash, ptr align 4 %k) #24
  store ptr %1, ptr %_13, align 8
  %2 = load ptr, ptr %_13, align 8
  %3 = ptrtoint ptr %2 to i64
  %4 = icmp eq i64 %3, 0
  %_14 = select i1 %4, i64 0, i64 1
  %5 = trunc nuw i64 %_14 to i1
  br i1 %5, label %bb9, label %bb8

bb1:                                              ; preds = %start
  store ptr null, ptr %_0, align 8
  br label %bb5

bb9:                                              ; preds = %bb2
  %bucket = load ptr, ptr %_13, align 8
  br label %bb12

bb8:                                              ; preds = %bb2
  store ptr null, ptr %_0, align 8
  br label %bb4

bb4:                                              ; preds = %bb10, %bb8
  br label %bb5

bb12:                                             ; preds = %bb9
  br label %bb15

bb15:                                             ; preds = %bb12
  %6 = getelementptr inbounds { i32, i32 }, ptr %bucket, i64 -1
  store ptr %6, ptr %_17, align 8
  br label %bb13

bb13:                                             ; preds = %bb15
  br label %bb10

bb10:                                             ; preds = %bb13
  %_15 = load ptr, ptr %_17, align 8
  store ptr %_15, ptr %_7, align 8
  %_11 = load ptr, ptr %_7, align 8
  %v = getelementptr inbounds i8, ptr %_11, i64 4
  store ptr %v, ptr %_0, align 8
  br label %bb4

bb5:                                              ; preds = %bb1, %bb4
  %7 = load ptr, ptr %_0, align 8
  ret ptr %7

bb3:                                              ; No predecessors!
  unreachable

bb11:                                             ; No predecessors!
  unreachable

bb14:                                             ; No predecessors!
  unreachable
}

; hashbrown::map::HashMap<K,V,S,A>::insert
; Function Attrs: nonlazybind uwtable
define { i32, i32 } @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h3f2ebe8d303a8ca8E"(ptr align 8 %self, i32 %0, i32 %v) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %1 = alloca [16 x i8], align 8
  %_32 = alloca [8 x i8], align 8
  %_23 = alloca [1 x i8], align 1
  %_22 = alloca [1 x i8], align 1
  %_7 = alloca [16 x i8], align 8
  %_0 = alloca [8 x i8], align 4
  %k = alloca [4 x i8], align 4
  store i32 %0, ptr %k, align 4
  store i8 1, ptr %_22, align 1
  store i8 1, ptr %_23, align 1
  %hash_builder = getelementptr inbounds i8, ptr %self, i64 32
; invoke core::hash::BuildHasher::hash_one
  %hash = invoke i64 @_ZN4core4hash11BuildHasher8hash_one17h1855698abe03691bE(ptr align 8 %hash_builder, ptr align 4 %k)
          to label %bb10 unwind label %cleanup

bb8:                                              ; preds = %cleanup
  %2 = load i8, ptr %_23, align 1
  %3 = trunc nuw i8 %2 to i1
  br i1 %3, label %bb7, label %bb5

cleanup:                                          ; preds = %bb2, %bb10, %start
  %4 = landingpad { ptr, i32 }
          cleanup
  %5 = extractvalue { ptr, i32 } %4, 0
  %6 = extractvalue { ptr, i32 } %4, 1
  store ptr %5, ptr %1, align 8
  %7 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %6, ptr %7, align 8
  br label %bb8

bb10:                                             ; preds = %start
  %hash_builder1 = getelementptr inbounds i8, ptr %self, i64 32
; invoke hashbrown::raw::RawTable<T,A>::find_or_find_insert_index
  %8 = invoke { i64, ptr } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$25find_or_find_insert_index17ha45d5bd688ebceaeE"(ptr align 8 %self, i64 %hash, ptr align 4 %k, ptr align 8 %hash_builder1)
          to label %bb11 unwind label %cleanup

bb11:                                             ; preds = %bb10
  %9 = extractvalue { i64, ptr } %8, 0
  %10 = extractvalue { i64, ptr } %8, 1
  store i64 %9, ptr %_7, align 8
  %11 = getelementptr inbounds i8, ptr %_7, i64 8
  store ptr %10, ptr %11, align 8
  %_9 = load i64, ptr %_7, align 8
  %12 = getelementptr inbounds i8, ptr %_7, i64 8
  %13 = load ptr, ptr %12, align 8
  %14 = trunc nuw i64 %_9 to i1
  br i1 %14, label %bb2, label %bb3

bb2:                                              ; preds = %bb11
  %15 = getelementptr inbounds i8, ptr %_7, i64 8
  %index = load i64, ptr %15, align 8
  store i8 0, ptr %_22, align 1
  %_20 = load i32, ptr %k, align 4
  store i8 0, ptr %_23, align 1
  %_29 = lshr i64 %hash, 57
  %_31 = and i64 %_29, 127
  %_30 = trunc i64 %_31 to i8
; invoke hashbrown::raw::RawTable<T,A>::insert_tagged_at_index
  %_17 = invoke ptr @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$22insert_tagged_at_index17h812ce0c1ba82202dE"(ptr align 8 %self, i8 %_30, i64 %index, i32 %_20, i32 %v)
          to label %bb12 unwind label %cleanup

bb3:                                              ; preds = %bb11
  %16 = getelementptr inbounds i8, ptr %_7, i64 8
  %bucket = load ptr, ptr %16, align 8
  br label %bb15

bb15:                                             ; preds = %bb3
  br label %bb18

bb18:                                             ; preds = %bb15
  %17 = getelementptr inbounds { i32, i32 }, ptr %bucket, i64 -1
  store ptr %17, ptr %_32, align 8
  br label %bb16

bb16:                                             ; preds = %bb18
  br label %bb13

bb13:                                             ; preds = %bb16
  %_13 = load ptr, ptr %_32, align 8
  %18 = getelementptr inbounds i8, ptr %_13, i64 4
  %_11 = load i32, ptr %18, align 4
  %19 = getelementptr inbounds i8, ptr %_13, i64 4
  store i32 %v, ptr %19, align 4
  %20 = getelementptr inbounds i8, ptr %_0, i64 4
  store i32 %_11, ptr %20, align 4
  store i32 1, ptr %_0, align 4
  br label %bb4

bb4:                                              ; preds = %bb12, %bb13
  %21 = load i32, ptr %_0, align 4
  %22 = getelementptr inbounds i8, ptr %_0, i64 4
  %23 = load i32, ptr %22, align 4
  %24 = insertvalue { i32, i32 } poison, i32 %21, 0
  %25 = insertvalue { i32, i32 } %24, i32 %23, 1
  ret { i32, i32 } %25

bb12:                                             ; preds = %bb2
  store i32 0, ptr %_0, align 4
  br label %bb4

bb1:                                              ; No predecessors!
  unreachable

bb5:                                              ; preds = %bb7, %bb8
  %26 = load i8, ptr %_22, align 1
  %27 = trunc nuw i8 %26 to i1
  br i1 %27, label %bb9, label %bb6

bb7:                                              ; preds = %bb8
  br label %bb5

bb6:                                              ; preds = %bb9, %bb5
  %28 = load ptr, ptr %1, align 8
  %29 = getelementptr inbounds i8, ptr %1, i64 8
  %30 = load i32, ptr %29, align 8
  %31 = insertvalue { ptr, i32 } poison, ptr %28, 0
  %32 = insertvalue { ptr, i32 } %31, i32 %30, 1
  resume { ptr, i32 } %32

bb9:                                              ; preds = %bb5
  br label %bb6

bb14:                                             ; No predecessors!
  unreachable

bb17:                                             ; No predecessors!
  unreachable
}

; hashbrown::raw::TableLayout::calculate_layout_for
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hbd11d4e5f193dc12E(ptr sret([24 x i8]) align 8 %_0, i64 %self.0, i64 %self.1, i64 %buckets) unnamed_addr #1 {
start:
  %_21 = alloca [24 x i8], align 8
  %self2 = alloca [16 x i8], align 8
  %_15 = alloca [16 x i8], align 8
  %self1 = alloca [16 x i8], align 8
  %_9 = alloca [16 x i8], align 8
  %self = alloca [16 x i8], align 8
  %_7 = alloca [16 x i8], align 8
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %self.0, i64 %buckets)
  %_25.0 = extractvalue { i64, i1 } %0, 0
  %_25.1 = extractvalue { i64, i1 } %0, 1
  br i1 %_25.1, label %bb6, label %bb8

bb8:                                              ; preds = %start
  %1 = getelementptr inbounds i8, ptr %self1, i64 8
  store i64 %_25.0, ptr %1, align 8
  store i64 1, ptr %self1, align 8
  %2 = getelementptr inbounds i8, ptr %self1, i64 8
  %v = load i64, ptr %2, align 8
  %3 = getelementptr inbounds i8, ptr %_9, i64 8
  store i64 %v, ptr %3, align 8
  store i64 0, ptr %_9, align 8
  %4 = getelementptr inbounds i8, ptr %_9, i64 8
  %val = load i64, ptr %4, align 8
  %rhs = sub i64 %self.1, 1
  %_32.0 = add i64 %val, %rhs
  %_32.1 = icmp ult i64 %_32.0, %val
  br i1 %_32.1, label %bb9, label %bb11

bb6:                                              ; preds = %start
  %5 = load i64, ptr @anon.56cfd62e22175d79f9a1a5afbd6cb4c8.1, align 8
  %6 = load i64, ptr getelementptr inbounds (i8, ptr @anon.56cfd62e22175d79f9a1a5afbd6cb4c8.1, i64 8), align 8
  store i64 %5, ptr %self1, align 8
  %7 = getelementptr inbounds i8, ptr %self1, i64 8
  store i64 %6, ptr %7, align 8
  store i64 0, ptr %_0, align 8
  br label %bb4

bb11:                                             ; preds = %bb8
  %_33 = add nuw i64 %val, %rhs
  %8 = getelementptr inbounds i8, ptr %self, i64 8
  store i64 %_33, ptr %8, align 8
  store i64 1, ptr %self, align 8
  %9 = getelementptr inbounds i8, ptr %self, i64 8
  %v3 = load i64, ptr %9, align 8
  %10 = getelementptr inbounds i8, ptr %_7, i64 8
  store i64 %v3, ptr %10, align 8
  store i64 0, ptr %_7, align 8
  %11 = getelementptr inbounds i8, ptr %_7, i64 8
  %val4 = load i64, ptr %11, align 8
  %_14 = xor i64 %rhs, -1
  %ctrl_offset = and i64 %val4, %_14
  %rhs5 = add i64 %buckets, 16
  %_37.0 = add i64 %ctrl_offset, %rhs5
  %_37.1 = icmp ult i64 %_37.0, %ctrl_offset
  br i1 %_37.1, label %bb12, label %bb14

bb9:                                              ; preds = %bb8
  %12 = load i64, ptr @anon.56cfd62e22175d79f9a1a5afbd6cb4c8.1, align 8
  %13 = load i64, ptr getelementptr inbounds (i8, ptr @anon.56cfd62e22175d79f9a1a5afbd6cb4c8.1, i64 8), align 8
  store i64 %12, ptr %self, align 8
  %14 = getelementptr inbounds i8, ptr %self, i64 8
  store i64 %13, ptr %14, align 8
  store i64 0, ptr %_0, align 8
  br label %bb4

bb14:                                             ; preds = %bb11
  %_38 = add nuw i64 %ctrl_offset, %rhs5
  %15 = getelementptr inbounds i8, ptr %self2, i64 8
  store i64 %_38, ptr %15, align 8
  store i64 1, ptr %self2, align 8
  %16 = getelementptr inbounds i8, ptr %self2, i64 8
  %v6 = load i64, ptr %16, align 8
  %17 = getelementptr inbounds i8, ptr %_15, i64 8
  store i64 %v6, ptr %17, align 8
  store i64 0, ptr %_15, align 8
  %18 = getelementptr inbounds i8, ptr %_15, i64 8
  %len = load i64, ptr %18, align 8
  %_20 = sub i64 9223372036854775807, %rhs
  %_19 = icmp ugt i64 %len, %_20
  br i1 %_19, label %bb1, label %bb2

bb12:                                             ; preds = %bb11
  %19 = load i64, ptr @anon.56cfd62e22175d79f9a1a5afbd6cb4c8.1, align 8
  %20 = load i64, ptr getelementptr inbounds (i8, ptr @anon.56cfd62e22175d79f9a1a5afbd6cb4c8.1, i64 8), align 8
  store i64 %19, ptr %self2, align 8
  %21 = getelementptr inbounds i8, ptr %self2, i64 8
  store i64 %20, ptr %21, align 8
  store i64 0, ptr %_0, align 8
  br label %bb3

bb2:                                              ; preds = %bb14
  store i64 %self.1, ptr %_21, align 8
  %22 = getelementptr inbounds i8, ptr %_21, i64 8
  store i64 %len, ptr %22, align 8
  %23 = getelementptr inbounds i8, ptr %_21, i64 16
  store i64 %ctrl_offset, ptr %23, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %_21, i64 24, i1 false)
  br label %bb5

bb1:                                              ; preds = %bb14
  store i64 0, ptr %_0, align 8
  br label %bb3

bb5:                                              ; preds = %bb4, %bb3, %bb2
  ret void

bb3:                                              ; preds = %bb12, %bb1
  br label %bb5

bb4:                                              ; preds = %bb6, %bb9
  br label %bb5
}

; hashbrown::raw::RawTableInner::drop_elements
; Function Attrs: nonlazybind uwtable
define void @_ZN9hashbrown3raw13RawTableInner13drop_elements17h84f4cba9ffb4e470E(ptr align 8 %self) unnamed_addr #3 {
start:
  br label %bb8

bb8:                                              ; preds = %start
  ret void

bb1:                                              ; No predecessors!
  unreachable

bb2:                                              ; No predecessors!
  unreachable

bb3:                                              ; No predecessors!
  unreachable

bb4:                                              ; No predecessors!
  unreachable

bb5:                                              ; No predecessors!
  unreachable

bb6:                                              ; No predecessors!
  unreachable

bb7:                                              ; No predecessors!
  unreachable

bb9:                                              ; No predecessors!
  unreachable

bb10:                                             ; No predecessors!
  unreachable

bb11:                                             ; No predecessors!
  unreachable

bb12:                                             ; No predecessors!
  unreachable

bb13:                                             ; No predecessors!
  unreachable

bb14:                                             ; No predecessors!
  unreachable

bb15:                                             ; No predecessors!
  unreachable

bb16:                                             ; No predecessors!
  unreachable

bb17:                                             ; No predecessors!
  unreachable

bb18:                                             ; No predecessors!
  unreachable

bb19:                                             ; No predecessors!
  unreachable

bb20:                                             ; No predecessors!
  unreachable

bb21:                                             ; No predecessors!
  unreachable

bb22:                                             ; No predecessors!
  unreachable
}

; hashbrown::raw::RawTableInner::prepare_resize::{{closure}}
; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN9hashbrown3raw13RawTableInner14prepare_resize28_$u7b$$u7b$closure$u7d$$u7d$17h0781ead78ab8a9b7E"(ptr align 8 %_1, ptr align 8 %self_) unnamed_addr #1 {
start:
  %_9 = alloca [24 x i8], align 8
  %0 = getelementptr inbounds i8, ptr %self_, i64 8
  %_6 = load i64, ptr %0, align 8
  %_3 = icmp eq i64 %_6, 0
  br i1 %_3, label %bb2, label %bb1

bb1:                                              ; preds = %start
  %alloc = load ptr, ptr %_1, align 8
  %1 = getelementptr inbounds i8, ptr %_1, i64 8
  %table_layout.0 = load i64, ptr %1, align 8
  %2 = getelementptr inbounds i8, ptr %1, i64 8
  %table_layout.1 = load i64, ptr %2, align 8
  %3 = getelementptr inbounds i8, ptr %self_, i64 8
  %_17 = load i64, ptr %3, align 8
  %_10 = add i64 %_17, 1
; call hashbrown::raw::TableLayout::calculate_layout_for
  call void @_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hbd11d4e5f193dc12E(ptr sret([24 x i8]) align 8 %_9, i64 %table_layout.0, i64 %table_layout.1, i64 %_10) #24
  %4 = load i64, ptr %_9, align 8
  %5 = icmp eq i64 %4, 0
  %_11 = select i1 %5, i64 0, i64 1
  %_23 = icmp eq i64 %_11, 1
  %layout.0 = load i64, ptr %_9, align 8
  %6 = getelementptr inbounds i8, ptr %_9, i64 8
  %layout.1 = load i64, ptr %6, align 8
  %7 = getelementptr inbounds i8, ptr %_9, i64 16
  %ctrl_offset = load i64, ptr %7, align 8
  %self = load ptr, ptr %self_, align 8
  %_18 = sub nsw i64 0, %ctrl_offset
  %ptr = getelementptr inbounds i8, ptr %self, i64 %_18
; call <alloc::alloc::Global as core::alloc::Allocator>::deallocate
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h7c1e367ea80b3fa1E"(ptr align 1 %alloc, ptr %ptr, i64 %layout.0, i64 %layout.1) #24
  br label %bb2

bb2:                                              ; preds = %bb1, %start
  ret void
}

; hashbrown::raw::RawTableInner::rehash_in_place
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h92dfb2b2df635e11E(ptr align 8 %self, ptr align 1 %hasher.0, ptr align 8 %hasher.1, i64 %size_of, ptr %drop) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %bucket_mask = alloca [8 x i8], align 8
  %_11 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %guard = alloca [24 x i8], align 8
; call hashbrown::raw::RawTableInner::prepare_rehash_in_place
  call void @_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17h65624c3987baea2fE(ptr align 8 %self) #24
  %1 = getelementptr inbounds i8, ptr %guard, i64 8
  store ptr %drop, ptr %1, align 8
  %2 = getelementptr inbounds i8, ptr %1, i64 8
  store i64 %size_of, ptr %2, align 8
  store ptr %self, ptr %guard, align 8
  %self1 = load ptr, ptr %guard, align 8
  %3 = getelementptr inbounds i8, ptr %self1, i64 8
  %_61 = load i64, ptr %3, align 8
  %_9 = add i64 %_61, 1
  store i64 0, ptr %iter, align 8
  %4 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_9, ptr %4, align 8
  br label %bb2

bb2:                                              ; preds = %bb14, %start
  %_67 = load i64, ptr %iter, align 8
  %5 = getelementptr inbounds i8, ptr %iter, i64 8
  %_68 = load i64, ptr %5, align 8
  %_62 = icmp ult i64 %_67, %_68
  br i1 %_62, label %bb17, label %bb18

bb18:                                             ; preds = %bb2
  %6 = load i64, ptr @anon.56cfd62e22175d79f9a1a5afbd6cb4c8.1, align 8
  %7 = load i64, ptr getelementptr inbounds (i8, ptr @anon.56cfd62e22175d79f9a1a5afbd6cb4c8.1, i64 8), align 8
  store i64 %6, ptr %_11, align 8
  %8 = getelementptr inbounds i8, ptr %_11, i64 8
  store i64 %7, ptr %8, align 8
  br label %bb19

bb17:                                             ; preds = %bb2
  %old = load i64, ptr %iter, align 8
  %_66 = add nuw i64 %old, 1
  store i64 %_66, ptr %iter, align 8
  %9 = getelementptr inbounds i8, ptr %_11, i64 8
  store i64 %old, ptr %9, align 8
  store i64 1, ptr %_11, align 8
  br label %bb19

bb19:                                             ; preds = %bb17, %bb18
  %_13 = load i64, ptr %_11, align 8
  %10 = getelementptr inbounds i8, ptr %_11, i64 8
  %11 = load i64, ptr %10, align 8
  %12 = trunc nuw i64 %_13 to i1
  br i1 %12, label %bb4, label %bb5

bb4:                                              ; preds = %bb19
  %13 = getelementptr inbounds i8, ptr %_11, i64 8
  %i = load i64, ptr %13, align 8
  %self4 = load ptr, ptr %guard, align 8
  %_71 = load ptr, ptr %self4, align 8
  %_69 = getelementptr inbounds nuw i8, ptr %_71, i64 %i
  %_73 = load i8, ptr %_69, align 1
  %_72 = icmp eq i8 %_73, -128
  %_15 = xor i1 %_72, true
  br i1 %_15, label %bb6, label %bb7

bb5:                                              ; preds = %bb19
  %_58 = load ptr, ptr %guard, align 8
  %14 = getelementptr inbounds i8, ptr %_58, i64 8
  %15 = load i64, ptr %14, align 8
  store i64 %15, ptr %bucket_mask, align 8
  %16 = load i64, ptr %bucket_mask, align 8
  %_145 = icmp ult i64 %16, 8
  br i1 %_145, label %bb23, label %bb24

bb24:                                             ; preds = %bb5
  %17 = load i64, ptr %bucket_mask, align 8
  %_147 = add i64 %17, 1
  %_146 = udiv i64 %_147, 8
  %18 = mul i64 %_146, 7
  store i64 %18, ptr %bucket_mask, align 8
  br label %bb25

bb23:                                             ; preds = %bb5
  br label %bb25

bb25:                                             ; preds = %bb23, %bb24
  %_59 = load ptr, ptr %guard, align 8
  %19 = getelementptr inbounds i8, ptr %_59, i64 24
  %_45 = load i64, ptr %19, align 8
  %_60 = load ptr, ptr %guard, align 8
  %20 = getelementptr inbounds i8, ptr %_60, i64 16
  %21 = load i64, ptr %bucket_mask, align 8
  %22 = sub i64 %21, %_45
  store i64 %22, ptr %20, align 8
  %23 = getelementptr inbounds i8, ptr %guard, i64 8
  %t = load ptr, ptr %23, align 8
  %24 = getelementptr inbounds i8, ptr %guard, i64 8
  %25 = getelementptr inbounds i8, ptr %24, i64 8
  %t2 = load i64, ptr %25, align 8
  %t3 = load ptr, ptr %guard, align 8
  ret void

bb7:                                              ; preds = %bb4
  %self5 = load ptr, ptr %guard, align 8
  %_77 = load ptr, ptr %self5, align 8
  %_76 = add i64 %i, 1
  %_75 = mul i64 %_76, %size_of
  %_78 = sub nsw i64 0, %_75
  %i_p = getelementptr inbounds i8, ptr %_77, i64 %_78
  br label %bb8

bb6:                                              ; preds = %bb4
  br label %bb14

bb8:                                              ; preds = %bb13, %bb7
  %_51 = load ptr, ptr %guard, align 8
  %26 = getelementptr inbounds i8, ptr %hasher.1, i64 40
  %27 = load ptr, ptr %26, align 8, !invariant.load !3, !nonnull !3
  %hash = invoke i64 %27(ptr align 1 %hasher.0, ptr align 8 %_51, i64 %i)
          to label %bb9 unwind label %cleanup

bb16:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<hashbrown::scopeguard::ScopeGuard<&mut hashbrown::raw::RawTableInner,hashbrown::raw::RawTableInner::rehash_in_place::{{closure}}>>
  invoke void @"_ZN4core3ptr181drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h2a8c35f2a64ba647E"(ptr align 8 %guard) #28
          to label %bb15 unwind label %terminate

cleanup:                                          ; preds = %bb12, %bb9, %bb8
  %28 = landingpad { ptr, i32 }
          cleanup
  %29 = extractvalue { ptr, i32 } %28, 0
  %30 = extractvalue { ptr, i32 } %28, 1
  store ptr %29, ptr %0, align 8
  %31 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %30, ptr %31, align 8
  br label %bb16

bb9:                                              ; preds = %bb8
  %_52 = load ptr, ptr %guard, align 8
; invoke hashbrown::raw::RawTableInner::find_insert_index
  %new_i = invoke i64 @_ZN9hashbrown3raw13RawTableInner17find_insert_index17h3b6e254288707eedE(ptr align 8 %_52, i64 %hash)
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb9
  %self6 = load ptr, ptr %guard, align 8
  %32 = getelementptr inbounds i8, ptr %self6, i64 8
  %_84 = load i64, ptr %32, align 8
  %_82 = and i64 %hash, %_84
  %_86 = sub i64 %i, %_82
  %_85 = and i64 %_86, %_84
  %_80 = udiv i64 %_85, 16
  %_88 = sub i64 %new_i, %_82
  %_87 = and i64 %_88, %_84
  %_81 = udiv i64 %_87, 16
  %b = icmp eq i64 %_80, %_81
  br i1 %b, label %bb20, label %bb21

bb21:                                             ; preds = %bb10
  %self7 = load ptr, ptr %guard, align 8
  %_109 = load ptr, ptr %self7, align 8
  %_108 = add i64 %new_i, 1
  %_107 = mul i64 %_108, %size_of
  %_110 = sub nsw i64 0, %_107
  %new_i_p = getelementptr inbounds i8, ptr %_109, i64 %_110
  %self8 = load ptr, ptr %guard, align 8
  %_115 = load ptr, ptr %self8, align 8
  %_113 = getelementptr inbounds nuw i8, ptr %_115, i64 %new_i
  %prev_ctrl = load i8, ptr %_113, align 1
  %_117 = lshr i64 %hash, 57
  %_119 = and i64 %_117, 127
  %_118 = trunc i64 %_119 to i8
  %_122 = sub i64 %new_i, 16
  %33 = getelementptr inbounds i8, ptr %self8, i64 8
  %_123 = load i64, ptr %33, align 8
  %_121 = and i64 %_122, %_123
  %_120 = add i64 %_121, 16
  %_128 = load ptr, ptr %self8, align 8
  %_126 = getelementptr inbounds nuw i8, ptr %_128, i64 %new_i
  store i8 %_118, ptr %_126, align 1
  %_131 = load ptr, ptr %self8, align 8
  %_129 = getelementptr inbounds nuw i8, ptr %_131, i64 %_120
  store i8 %_118, ptr %_129, align 1
  %_33 = icmp eq i8 %prev_ctrl, -1
  br i1 %_33, label %bb11, label %bb12

bb20:                                             ; preds = %bb10
  %self10 = load ptr, ptr %guard, align 8
  %_91 = lshr i64 %hash, 57
  %_93 = and i64 %_91, 127
  %_92 = trunc i64 %_93 to i8
  %_96 = sub i64 %i, 16
  %34 = getelementptr inbounds i8, ptr %self10, i64 8
  %_97 = load i64, ptr %34, align 8
  %_95 = and i64 %_96, %_97
  %_94 = add i64 %_95, 16
  %_102 = load ptr, ptr %self10, align 8
  %_100 = getelementptr inbounds nuw i8, ptr %_102, i64 %i
  store i8 %_92, ptr %_100, align 1
  %_105 = load ptr, ptr %self10, align 8
  %_103 = getelementptr inbounds nuw i8, ptr %_105, i64 %_94
  store i8 %_92, ptr %_103, align 1
  br label %bb14

bb12:                                             ; preds = %bb21
; invoke core::ptr::swap_nonoverlapping
  invoke void @_ZN4core3ptr19swap_nonoverlapping17h46d7bf4669a0f70bE(ptr %i_p, ptr %new_i_p, i64 %size_of, ptr align 8 @alloc_ee9f3aa49cf56e0ad554277e2e2e75f2)
          to label %bb13 unwind label %cleanup

bb11:                                             ; preds = %bb21
  %self9 = load ptr, ptr %guard, align 8
  %_135 = sub i64 %i, 16
  %35 = getelementptr inbounds i8, ptr %self9, i64 8
  %_136 = load i64, ptr %35, align 8
  %_134 = and i64 %_135, %_136
  %_133 = add i64 %_134, 16
  %_141 = load ptr, ptr %self9, align 8
  %_139 = getelementptr inbounds nuw i8, ptr %_141, i64 %i
  store i8 -1, ptr %_139, align 1
  %_144 = load ptr, ptr %self9, align 8
  %_142 = getelementptr inbounds nuw i8, ptr %_144, i64 %_133
  store i8 -1, ptr %_142, align 1
  %36 = mul i64 %size_of, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %new_i_p, ptr align 1 %i_p, i64 %36, i1 false)
  br label %bb14

bb13:                                             ; preds = %bb12
  br label %bb8

bb14:                                             ; preds = %bb6, %bb20, %bb11
  br label %bb2

terminate:                                        ; preds = %bb16
  %37 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb15:                                             ; preds = %bb16
  %38 = load ptr, ptr %0, align 8
  %39 = getelementptr inbounds i8, ptr %0, i64 8
  %40 = load i32, ptr %39, align 8
  %41 = insertvalue { ptr, i32 } poison, ptr %38, 0
  %42 = insertvalue { ptr, i32 } %41, i32 %40, 1
  resume { ptr, i32 } %42

bb3:                                              ; No predecessors!
  unreachable
}

; hashbrown::raw::RawTableInner::rehash_in_place::{{closure}}
; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN9hashbrown3raw13RawTableInner15rehash_in_place28_$u7b$$u7b$closure$u7d$$u7d$17h24ee928a5f43d5b6E"(ptr align 8 %_1, ptr align 8 %self_) unnamed_addr #1 {
start:
  %bucket_mask = alloca [8 x i8], align 8
  %_7 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %0 = load ptr, ptr %_1, align 8
  %1 = ptrtoint ptr %0 to i64
  %2 = icmp eq i64 %1, 0
  %_3 = select i1 %2, i64 0, i64 1
  %3 = trunc nuw i64 %_3 to i1
  br i1 %3, label %bb1, label %bb7

bb1:                                              ; preds = %start
  %drop = load ptr, ptr %_1, align 8
  %self = load ptr, ptr %self_, align 8
  %4 = getelementptr inbounds i8, ptr %self, i64 8
  %_26 = load i64, ptr %4, align 8
  %_6 = add i64 %_26, 1
  store i64 0, ptr %iter, align 8
  %5 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_6, ptr %5, align 8
  br label %bb2

bb7:                                              ; preds = %bb9, %start
  %_23 = load ptr, ptr %self_, align 8
  %6 = getelementptr inbounds i8, ptr %_23, i64 8
  %7 = load i64, ptr %6, align 8
  store i64 %7, ptr %bucket_mask, align 8
  %8 = load i64, ptr %bucket_mask, align 8
  %_56 = icmp ult i64 %8, 8
  br i1 %_56, label %bb10, label %bb11

bb2:                                              ; preds = %bb6, %bb1
  %_32 = load i64, ptr %iter, align 8
  %9 = getelementptr inbounds i8, ptr %iter, i64 8
  %_33 = load i64, ptr %9, align 8
  %_27 = icmp ult i64 %_32, %_33
  br i1 %_27, label %bb8, label %bb9

bb9:                                              ; preds = %bb2
  br label %bb7

bb8:                                              ; preds = %bb2
  %old = load i64, ptr %iter, align 8
  %_31 = add nuw i64 %old, 1
  store i64 %_31, ptr %iter, align 8
  %10 = getelementptr inbounds i8, ptr %_7, i64 8
  store i64 %old, ptr %10, align 8
  store i64 1, ptr %_7, align 8
  %11 = getelementptr inbounds i8, ptr %_7, i64 8
  %i = load i64, ptr %11, align 8
  %self1 = load ptr, ptr %self_, align 8
  %_36 = load ptr, ptr %self1, align 8
  %_34 = getelementptr inbounds nuw i8, ptr %_36, i64 %i
  %_37 = load i8, ptr %_34, align 1
  %_10 = icmp eq i8 %_37, -128
  br i1 %_10, label %bb4, label %bb6

bb6:                                              ; preds = %bb4, %bb8
  br label %bb2

bb4:                                              ; preds = %bb8
  %self2 = load ptr, ptr %self_, align 8
  %_40 = sub i64 %i, 16
  %12 = getelementptr inbounds i8, ptr %self2, i64 8
  %_41 = load i64, ptr %12, align 8
  %_39 = and i64 %_40, %_41
  %_38 = add i64 %_39, 16
  %_46 = load ptr, ptr %self2, align 8
  %_44 = getelementptr inbounds nuw i8, ptr %_46, i64 %i
  store i8 -1, ptr %_44, align 1
  %_49 = load ptr, ptr %self2, align 8
  %_47 = getelementptr inbounds nuw i8, ptr %_49, i64 %_38
  store i8 -1, ptr %_47, align 1
  %self3 = load ptr, ptr %self_, align 8
  %13 = getelementptr inbounds i8, ptr %_1, i64 8
  %size_of = load i64, ptr %13, align 8
  %_53 = load ptr, ptr %self3, align 8
  %_52 = add i64 %i, 1
  %_51 = mul i64 %_52, %size_of
  %_54 = sub nsw i64 0, %_51
  %_13 = getelementptr inbounds i8, ptr %_53, i64 %_54
  call void %drop(ptr %_13)
  %_21 = load ptr, ptr %self_, align 8
  %_22 = load ptr, ptr %self_, align 8
  %14 = getelementptr inbounds i8, ptr %_21, i64 24
  %15 = getelementptr inbounds i8, ptr %_22, i64 24
  %16 = load i64, ptr %15, align 8
  %17 = sub i64 %16, 1
  store i64 %17, ptr %14, align 8
  br label %bb6

bb11:                                             ; preds = %bb7
  %18 = load i64, ptr %bucket_mask, align 8
  %_58 = add i64 %18, 1
  %_57 = udiv i64 %_58, 8
  %19 = mul i64 %_57, 7
  store i64 %19, ptr %bucket_mask, align 8
  br label %bb12

bb10:                                             ; preds = %bb7
  br label %bb12

bb12:                                             ; preds = %bb10, %bb11
  %_24 = load ptr, ptr %self_, align 8
  %20 = getelementptr inbounds i8, ptr %_24, i64 24
  %_16 = load i64, ptr %20, align 8
  %_25 = load ptr, ptr %self_, align 8
  %21 = getelementptr inbounds i8, ptr %_25, i64 16
  %22 = load i64, ptr %bucket_mask, align 8
  %23 = sub i64 %22, %_16
  store i64 %23, ptr %21, align 8
  ret void

bb3:                                              ; No predecessors!
  unreachable
}

; hashbrown::raw::RawTableInner::drop_inner_table
; Function Attrs: nonlazybind uwtable
define void @_ZN9hashbrown3raw13RawTableInner16drop_inner_table17hdb88847ed13daaebE(ptr align 8 %self, ptr align 1 %alloc, i64 %table_layout.0, i64 %table_layout.1) unnamed_addr #3 {
start:
  %_9 = alloca [24 x i8], align 8
  %0 = getelementptr inbounds i8, ptr %self, i64 8
  %_6 = load i64, ptr %0, align 8
  %_4 = icmp eq i64 %_6, 0
  br i1 %_4, label %bb3, label %bb1

bb1:                                              ; preds = %start
; call hashbrown::raw::RawTableInner::drop_elements
  call void @_ZN9hashbrown3raw13RawTableInner13drop_elements17h84f4cba9ffb4e470E(ptr align 8 %self)
  %1 = getelementptr inbounds i8, ptr %self, i64 8
  %_17 = load i64, ptr %1, align 8
  %_10 = add i64 %_17, 1
; call hashbrown::raw::TableLayout::calculate_layout_for
  call void @_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hbd11d4e5f193dc12E(ptr sret([24 x i8]) align 8 %_9, i64 %table_layout.0, i64 %table_layout.1, i64 %_10) #24
  %2 = load i64, ptr %_9, align 8
  %3 = icmp eq i64 %2, 0
  %_11 = select i1 %3, i64 0, i64 1
  %_23 = icmp eq i64 %_11, 1
  %layout.0 = load i64, ptr %_9, align 8
  %4 = getelementptr inbounds i8, ptr %_9, i64 8
  %layout.1 = load i64, ptr %4, align 8
  %5 = getelementptr inbounds i8, ptr %_9, i64 16
  %ctrl_offset = load i64, ptr %5, align 8
  %self1 = load ptr, ptr %self, align 8
  %_18 = sub nsw i64 0, %ctrl_offset
  %ptr = getelementptr inbounds i8, ptr %self1, i64 %_18
; call <alloc::alloc::Global as core::alloc::Allocator>::deallocate
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h7c1e367ea80b3fa1E"(ptr align 1 %alloc, ptr %ptr, i64 %layout.0, i64 %layout.1) #24
  br label %bb3

bb3:                                              ; preds = %bb1, %start
  ret void
}

; hashbrown::raw::RawTableInner::fix_insert_index
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN9hashbrown3raw13RawTableInner16fix_insert_index17hee650fc7517ce1b7E(ptr align 8 %self, i64 %0) unnamed_addr #1 {
start:
  %1 = alloca [4 x i8], align 4
  %2 = alloca [16 x i8], align 16
  %3 = alloca [16 x i8], align 16
  %_22 = alloca [2 x i8], align 2
  %self1 = alloca [16 x i8], align 8
  %index = alloca [8 x i8], align 8
  store i64 %0, ptr %index, align 8
  %index2 = load i64, ptr %index, align 8
  %_10 = load ptr, ptr %self, align 8
  %_8 = getelementptr inbounds nuw i8, ptr %_10, i64 %index2
  %_12 = load i8, ptr %_8, align 1
  %_11 = and i8 %_12, -128
  %b = icmp eq i8 %_11, 0
  br i1 %b, label %bb2, label %bb4

bb4:                                              ; preds = %start
  br label %bb1

bb2:                                              ; preds = %start
  %_14 = load ptr, ptr %self, align 8
; call core::core_arch::x86::sse2::_mm_load_si128
  call void @_ZN4core9core_arch3x864sse214_mm_load_si12817h430b54e23949212aE(ptr sret([16 x i8]) align 16 %3, ptr %_14) #24
  %self3 = load <2 x i64>, ptr %3, align 16
  store <2 x i64> %self3, ptr %2, align 16
; call core::core_arch::x86::sse2::_mm_movemask_epi8
  %_21 = call i32 @_ZN4core9core_arch3x864sse217_mm_movemask_epi817h6dafdd63c17132afE(ptr align 16 %2) #24
  %self4 = trunc i32 %_21 to i16
  store i16 %self4, ptr %_22, align 2
  %4 = load i16, ptr %_22, align 2
  %5 = icmp eq i16 %4, 0
  %_23 = select i1 %5, i64 0, i64 1
  %6 = trunc nuw i64 %_23 to i1
  br i1 %6, label %bb7, label %bb8

bb1:                                              ; preds = %bb7, %bb4
  %_0 = load i64, ptr %index, align 8
  ret i64 %_0

bb7:                                              ; preds = %bb2
  %nonzero = load i16, ptr %_22, align 2
  %7 = call i16 @llvm.cttz.i16(i16 %nonzero, i1 true)
  %8 = zext i16 %7 to i32
  store i32 %8, ptr %1, align 4
  %_28 = load i32, ptr %1, align 4
  %_25 = zext i32 %_28 to i64
  %9 = getelementptr inbounds i8, ptr %self1, i64 8
  store i64 %_25, ptr %9, align 8
  store i64 1, ptr %self1, align 8
  %10 = getelementptr inbounds i8, ptr %self1, i64 8
  %11 = load i64, ptr %10, align 8
  store i64 %11, ptr %index, align 8
  br label %bb1

bb8:                                              ; preds = %bb2
  %12 = load i64, ptr @anon.56cfd62e22175d79f9a1a5afbd6cb4c8.1, align 8
  %13 = load i64, ptr getelementptr inbounds (i8, ptr @anon.56cfd62e22175d79f9a1a5afbd6cb4c8.1, i64 8), align 8
  store i64 %12, ptr %self1, align 8
  %14 = getelementptr inbounds i8, ptr %self1, i64 8
  store i64 %13, ptr %14, align 8
  unreachable

bb10:                                             ; No predecessors!
  unreachable
}

; hashbrown::raw::RawTableInner::find_insert_index
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN9hashbrown3raw13RawTableInner17find_insert_index17h3b6e254288707eedE(ptr align 8 %self, i64 %hash) unnamed_addr #1 {
start:
  %0 = alloca [16 x i8], align 16
  %index = alloca [16 x i8], align 8
  %group = alloca [16 x i8], align 16
  %probe_seq = alloca [16 x i8], align 8
  %1 = getelementptr inbounds i8, ptr %self, i64 8
  %_17 = load i64, ptr %1, align 8
  %_15 = and i64 %hash, %_17
  store i64 %_15, ptr %probe_seq, align 8
  %2 = getelementptr inbounds i8, ptr %probe_seq, i64 8
  store i64 0, ptr %2, align 8
  br label %bb1

bb1:                                              ; preds = %bb6, %start
  %index1 = load i64, ptr %probe_seq, align 8
  %_20 = load ptr, ptr %self, align 8
  %_18 = getelementptr inbounds nuw i8, ptr %_20, i64 %index1
; call core::core_arch::x86::sse2::_mm_loadu_si128
  call void @_ZN4core9core_arch3x864sse215_mm_loadu_si12817h564f784647a6e9d3E(ptr sret([16 x i8]) align 16 %0, ptr %_18) #24
  %_21 = load <2 x i64>, ptr %0, align 16
  store <2 x i64> %_21, ptr %group, align 16
; call hashbrown::raw::RawTableInner::find_insert_index_in_group
  %3 = call { i64, i64 } @_ZN9hashbrown3raw13RawTableInner26find_insert_index_in_group17hef669f9872d442baE(ptr align 8 %self, ptr align 16 %group, ptr align 8 %probe_seq) #24
  %4 = extractvalue { i64, i64 } %3, 0
  %5 = extractvalue { i64, i64 } %3, 1
  store i64 %4, ptr %index, align 8
  %6 = getelementptr inbounds i8, ptr %index, i64 8
  store i64 %5, ptr %6, align 8
  %_23 = load i64, ptr %index, align 8
  %7 = getelementptr inbounds i8, ptr %index, i64 8
  %8 = load i64, ptr %7, align 8
  %b = icmp eq i64 %_23, 1
  br i1 %b, label %bb5, label %bb6

bb6:                                              ; preds = %bb1
  %9 = getelementptr inbounds i8, ptr %self, i64 8
  %bucket_mask = load i64, ptr %9, align 8
  %10 = getelementptr inbounds i8, ptr %probe_seq, i64 8
  %11 = getelementptr inbounds i8, ptr %probe_seq, i64 8
  %12 = load i64, ptr %11, align 8
  %13 = add i64 %12, 16
  store i64 %13, ptr %10, align 8
  %14 = getelementptr inbounds i8, ptr %probe_seq, i64 8
  %_25 = load i64, ptr %14, align 8
  %15 = load i64, ptr %probe_seq, align 8
  %16 = add i64 %15, %_25
  store i64 %16, ptr %probe_seq, align 8
  %17 = load i64, ptr %probe_seq, align 8
  %18 = and i64 %17, %bucket_mask
  store i64 %18, ptr %probe_seq, align 8
  br label %bb1

bb5:                                              ; preds = %bb1
  %19 = trunc nuw i64 %_23 to i1
  br i1 %19, label %bb9, label %bb8

bb9:                                              ; preds = %bb5
  %20 = getelementptr inbounds i8, ptr %index, i64 8
  %val = load i64, ptr %20, align 8
; call hashbrown::raw::RawTableInner::fix_insert_index
  %_0 = call i64 @_ZN9hashbrown3raw13RawTableInner16fix_insert_index17hee650fc7517ce1b7E(ptr align 8 %self, i64 %val) #24
  ret i64 %_0

bb8:                                              ; preds = %bb5
  unreachable
}

; hashbrown::raw::RawTableInner::new_uninitialized
; Function Attrs: nonlazybind uwtable
define void @_ZN9hashbrown3raw13RawTableInner17new_uninitialized17hd5b45c5239ed3bf0E(ptr sret([32 x i8]) align 8 %_0, ptr align 1 %alloc, i64 %table_layout.0, i64 %table_layout.1, i64 %0, i1 zeroext %fallibility) unnamed_addr #3 {
start:
  %ctrl_offset = alloca [8 x i8], align 8
  %_29 = alloca [16 x i8], align 8
  %bucket_mask = alloca [8 x i8], align 8
  %_25 = alloca [32 x i8], align 8
  %_17 = alloca [24 x i8], align 8
  %_11 = alloca [16 x i8], align 8
  %_6 = alloca [24 x i8], align 8
  %buckets = alloca [8 x i8], align 8
  store i64 %0, ptr %buckets, align 8
  %_7 = load i64, ptr %buckets, align 8
; call hashbrown::raw::TableLayout::calculate_layout_for
  call void @_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hbd11d4e5f193dc12E(ptr sret([24 x i8]) align 8 %_6, i64 %table_layout.0, i64 %table_layout.1, i64 %_7) #24
  %1 = load i64, ptr %_6, align 8
  %2 = icmp eq i64 %1, 0
  %_8 = select i1 %2, i64 0, i64 1
  %3 = trunc nuw i64 %_8 to i1
  br i1 %3, label %bb4, label %bb3

bb4:                                              ; preds = %start
  %layout.0 = load i64, ptr %_6, align 8
  %4 = getelementptr inbounds i8, ptr %_6, i64 8
  %layout.1 = load i64, ptr %4, align 8
  %5 = getelementptr inbounds i8, ptr %_6, i64 16
  %6 = load i64, ptr %5, align 8
  store i64 %6, ptr %ctrl_offset, align 8
; call <alloc::alloc::Global as core::alloc::Allocator>::allocate
  %7 = call { ptr, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hfcf7a94480ed1436E"(ptr align 1 %alloc, i64 %layout.0, i64 %layout.1) #24
  %8 = extractvalue { ptr, i64 } %7, 0
  %9 = extractvalue { ptr, i64 } %7, 1
  store ptr %8, ptr %_29, align 8
  %10 = getelementptr inbounds i8, ptr %_29, i64 8
  store i64 %9, ptr %10, align 8
  %11 = load ptr, ptr %_29, align 8
  %12 = getelementptr inbounds i8, ptr %_29, i64 8
  %13 = load i64, ptr %12, align 8
  %14 = ptrtoint ptr %11 to i64
  %15 = icmp eq i64 %14, 0
  %_30 = select i1 %15, i64 1, i64 0
  %16 = trunc nuw i64 %_30 to i1
  br i1 %16, label %bb15, label %bb16

bb3:                                              ; preds = %start
; call hashbrown::raw::Fallibility::capacity_overflow
  %17 = call { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h2ba85003cd4f3895E(i1 zeroext %fallibility)
  %_9.0 = extractvalue { i64, i64 } %17, 0
  %_9.1 = extractvalue { i64, i64 } %17, 1
  %18 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %_9.0, ptr %18, align 8
  %19 = getelementptr inbounds i8, ptr %18, i64 8
  store i64 %_9.1, ptr %19, align 8
  store ptr null, ptr %_0, align 8
  br label %bb13

bb13:                                             ; preds = %bb15, %bb19, %bb3
  ret void

bb15:                                             ; preds = %bb4
; call hashbrown::raw::Fallibility::alloc_err
  %20 = call { i64, i64 } @_ZN9hashbrown3raw11Fallibility9alloc_err17hdec7f04e13c07ca8E(i1 zeroext %fallibility, i64 %layout.0, i64 %layout.1)
  %_21.0 = extractvalue { i64, i64 } %20, 0
  %_21.1 = extractvalue { i64, i64 } %20, 1
  %21 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %_21.0, ptr %21, align 8
  %22 = getelementptr inbounds i8, ptr %21, i64 8
  store i64 %_21.1, ptr %22, align 8
  store ptr null, ptr %_0, align 8
  br label %bb13

bb16:                                             ; preds = %bb4
  %ptr.0 = load ptr, ptr %_29, align 8
  %23 = getelementptr inbounds i8, ptr %_29, i64 8
  %ptr.1 = load i64, ptr %23, align 8
  store ptr %ptr.0, ptr %_11, align 8
  %24 = getelementptr inbounds i8, ptr %_11, i64 8
  store i64 %ptr.1, ptr %24, align 8
  %block.0 = load ptr, ptr %_11, align 8
  %25 = getelementptr inbounds i8, ptr %_11, i64 8
  %block.1 = load i64, ptr %25, align 8
  %_13 = icmp ne i64 %block.1, %layout.1
  br i1 %_13, label %bb6, label %bb10

bb10:                                             ; preds = %bb16
  br label %bb11

bb6:                                              ; preds = %bb16
; call hashbrown::raw::maximum_buckets_in
  %26 = call i64 @_ZN9hashbrown3raw18maximum_buckets_in17h78a87b289606f479E(i64 %block.1, i64 %table_layout.0, i64 %table_layout.1, i64 16)
  store i64 %26, ptr %buckets, align 8
  %27 = load i64, ptr %buckets, align 8
; call hashbrown::raw::TableLayout::calculate_layout_for
  call void @_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hbd11d4e5f193dc12E(ptr sret([24 x i8]) align 8 %_17, i64 %table_layout.0, i64 %table_layout.1, i64 %27) #24
  %28 = load i64, ptr %_17, align 8
  %29 = icmp eq i64 %28, 0
  %_18 = select i1 %29, i64 0, i64 1
  %30 = trunc nuw i64 %_18 to i1
  br i1 %30, label %bb9, label %bb2

bb11:                                             ; preds = %bb9, %bb10
  %31 = load i64, ptr %ctrl_offset, align 8
  %ptr = getelementptr inbounds nuw i8, ptr %block.0, i64 %31
  %_27 = load i64, ptr %buckets, align 8
  %_26 = sub i64 %_27, 1
  %32 = load i64, ptr %buckets, align 8
  %33 = sub i64 %32, 1
  store i64 %33, ptr %bucket_mask, align 8
  %34 = load i64, ptr %bucket_mask, align 8
  %_35 = icmp ult i64 %34, 8
  br i1 %_35, label %bb17, label %bb18

bb9:                                              ; preds = %bb6
  %oversized_layout.0 = load i64, ptr %_17, align 8
  %35 = getelementptr inbounds i8, ptr %_17, i64 8
  %oversized_layout.1 = load i64, ptr %35, align 8
  %36 = getelementptr inbounds i8, ptr %_17, i64 16
  %37 = load i64, ptr %36, align 8
  store i64 %37, ptr %ctrl_offset, align 8
  br label %bb11

bb2:                                              ; preds = %bb6
  unreachable

bb18:                                             ; preds = %bb11
  %38 = load i64, ptr %bucket_mask, align 8
  %_37 = add i64 %38, 1
  %_36 = udiv i64 %_37, 8
  %39 = mul i64 %_36, 7
  store i64 %39, ptr %bucket_mask, align 8
  br label %bb19

bb17:                                             ; preds = %bb11
  br label %bb19

bb19:                                             ; preds = %bb17, %bb18
  %40 = getelementptr inbounds i8, ptr %_25, i64 8
  store i64 %_26, ptr %40, align 8
  store ptr %ptr, ptr %_25, align 8
  %41 = load i64, ptr %bucket_mask, align 8
  %42 = getelementptr inbounds i8, ptr %_25, i64 16
  store i64 %41, ptr %42, align 8
  %43 = getelementptr inbounds i8, ptr %_25, i64 24
  store i64 0, ptr %43, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %_25, i64 32, i1 false)
  br label %bb13
}

; hashbrown::raw::RawTableInner::fallible_with_capacity
; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h82eb3b2f6ae7aa56E(ptr sret([32 x i8]) align 8 %_0, ptr align 1 %alloc, i64 %table_layout.0, i64 %table_layout.1, i64 %capacity, i1 zeroext %fallibility) unnamed_addr #1 {
start:
  %v = alloca [32 x i8], align 8
  %result = alloca [32 x i8], align 8
  %self2 = alloca [32 x i8], align 8
  %_12 = alloca [32 x i8], align 8
  %self1 = alloca [16 x i8], align 8
  %self = alloca [16 x i8], align 8
  %_6 = alloca [16 x i8], align 8
  %_5 = icmp eq i64 %capacity, 0
  br i1 %_5, label %bb1, label %bb2

bb2:                                              ; preds = %start
; call hashbrown::raw::capacity_to_buckets
  %0 = call { i64, i64 } @_ZN9hashbrown3raw19capacity_to_buckets17h0664f1a02f6e503fE(i64 %capacity, i64 %table_layout.0, i64 %table_layout.1) #24
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = extractvalue { i64, i64 } %0, 1
  store i64 %1, ptr %self1, align 8
  %3 = getelementptr inbounds i8, ptr %self1, i64 8
  store i64 %2, ptr %3, align 8
  %_19 = load i64, ptr %self1, align 8
  %4 = getelementptr inbounds i8, ptr %self1, i64 8
  %5 = load i64, ptr %4, align 8
  %6 = trunc nuw i64 %_19 to i1
  br i1 %6, label %bb10, label %bb9

bb1:                                              ; preds = %start
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 @anon.56cfd62e22175d79f9a1a5afbd6cb4c8.0, i64 32, i1 false)
  br label %bb6

bb10:                                             ; preds = %bb2
  %7 = getelementptr inbounds i8, ptr %self1, i64 8
  %v3 = load i64, ptr %7, align 8
  %8 = getelementptr inbounds i8, ptr %self, i64 8
  store i64 %v3, ptr %8, align 8
  store i64 -9223372036854775807, ptr %self, align 8
  %9 = getelementptr inbounds i8, ptr %self, i64 8
  %v4 = load i64, ptr %9, align 8
  %10 = getelementptr inbounds i8, ptr %_6, i64 8
  store i64 %v4, ptr %10, align 8
  store i64 -9223372036854775807, ptr %_6, align 8
  %11 = getelementptr inbounds i8, ptr %_6, i64 8
  %buckets = load i64, ptr %11, align 8
; call hashbrown::raw::RawTableInner::new_uninitialized
  call void @_ZN9hashbrown3raw13RawTableInner17new_uninitialized17hd5b45c5239ed3bf0E(ptr sret([32 x i8]) align 8 %self2, ptr align 1 %alloc, i64 %table_layout.0, i64 %table_layout.1, i64 %buckets, i1 zeroext %fallibility)
  %12 = load ptr, ptr %self2, align 8
  %13 = ptrtoint ptr %12 to i64
  %14 = icmp eq i64 %13, 0
  %_26 = select i1 %14, i64 1, i64 0
  %15 = trunc nuw i64 %_26 to i1
  br i1 %15, label %bb12, label %bb13

bb9:                                              ; preds = %bb2
; call hashbrown::raw::Fallibility::capacity_overflow
  %16 = call { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h2ba85003cd4f3895E(i1 zeroext %fallibility)
  %_21.0 = extractvalue { i64, i64 } %16, 0
  %_21.1 = extractvalue { i64, i64 } %16, 1
  store i64 %_21.0, ptr %self, align 8
  %17 = getelementptr inbounds i8, ptr %self, i64 8
  store i64 %_21.1, ptr %17, align 8
  %e.0 = load i64, ptr %self, align 8
  %18 = getelementptr inbounds i8, ptr %self, i64 8
  %e.1 = load i64, ptr %18, align 8
  store i64 %e.0, ptr %_6, align 8
  %19 = getelementptr inbounds i8, ptr %_6, i64 8
  store i64 %e.1, ptr %19, align 8
  %residual.0 = load i64, ptr %_6, align 8
  %20 = getelementptr inbounds i8, ptr %_6, i64 8
  %residual.1 = load i64, ptr %20, align 8
  %21 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %residual.0, ptr %21, align 8
  %22 = getelementptr inbounds i8, ptr %21, i64 8
  store i64 %residual.1, ptr %22, align 8
  store ptr null, ptr %_0, align 8
  br label %bb7

bb7:                                              ; preds = %bb12, %bb9
  br label %bb8

bb12:                                             ; preds = %bb10
  %23 = getelementptr inbounds i8, ptr %self2, i64 8
  %e.05 = load i64, ptr %23, align 8
  %24 = getelementptr inbounds i8, ptr %23, i64 8
  %e.16 = load i64, ptr %24, align 8
  %25 = getelementptr inbounds i8, ptr %_12, i64 8
  store i64 %e.05, ptr %25, align 8
  %26 = getelementptr inbounds i8, ptr %25, i64 8
  store i64 %e.16, ptr %26, align 8
  store ptr null, ptr %_12, align 8
  %27 = getelementptr inbounds i8, ptr %_12, i64 8
  %residual.07 = load i64, ptr %27, align 8
  %28 = getelementptr inbounds i8, ptr %27, i64 8
  %residual.18 = load i64, ptr %28, align 8
  %29 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %residual.07, ptr %29, align 8
  %30 = getelementptr inbounds i8, ptr %29, i64 8
  store i64 %residual.18, ptr %30, align 8
  store ptr null, ptr %_0, align 8
  br label %bb7

bb13:                                             ; preds = %bb10
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %v, ptr align 8 %self2, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_12, ptr align 8 %v, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %result, ptr align 8 %_12, i64 32, i1 false)
  %_31 = load ptr, ptr %result, align 8
  %31 = getelementptr inbounds i8, ptr %result, i64 8
  %_34 = load i64, ptr %31, align 8
  %_33 = add i64 %_34, 1
  %count = add i64 %_33, 16
  %32 = mul i64 1, %count
  call void @llvm.memset.p0.i64(ptr align 1 %_31, i8 -1, i64 %32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %result, i64 32, i1 false)
  br label %bb6

bb6:                                              ; preds = %bb1, %bb13
  br label %bb8

bb8:                                              ; preds = %bb6, %bb7
  ret void

bb4:                                              ; No predecessors!
  unreachable
}

; hashbrown::raw::RawTableInner::prepare_rehash_in_place
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17h65624c3987baea2fE(ptr align 8 %self) unnamed_addr #1 {
start:
  %0 = alloca [16 x i8], align 16
  %1 = alloca [16 x i8], align 16
  %2 = alloca [16 x i8], align 16
  %3 = alloca [16 x i8], align 16
  %_32 = alloca [8 x i8], align 8
  %_5 = alloca [16 x i8], align 8
  %iter = alloca [32 x i8], align 8
  %4 = getelementptr inbounds i8, ptr %self, i64 8
  %_22 = load i64, ptr %4, align 8
  %_4 = add i64 %_22, 1
; call core::iter::adapters::step_by::StepBy<I>::new
  call void @"_ZN4core4iter8adapters7step_by15StepBy$LT$I$GT$3new17h73eccdb027fc6f8eE"(ptr sret([32 x i8]) align 8 %iter, i64 0, i64 %_4, i64 16) #24
  br label %bb1

bb1:                                              ; preds = %bb6, %start
  %5 = getelementptr inbounds i8, ptr %iter, i64 16
  %_31 = load i64, ptr %5, align 8
  %n = add nuw i64 %_31, 1
  store i64 %n, ptr %_32, align 8
  %6 = load i64, ptr %_32, align 8
  %7 = icmp eq i64 %6, 0
  %_33 = select i1 %7, i64 0, i64 1
  %8 = trunc nuw i64 %_33 to i1
  br i1 %8, label %bb8, label %bb2

bb8:                                              ; preds = %bb1
  %n1 = load i64, ptr %_32, align 8
  %9 = getelementptr inbounds i8, ptr %iter, i64 8
  %remaining = load i64, ptr %9, align 8
  %_27 = icmp ugt i64 %remaining, 0
  br i1 %_27, label %bb6, label %bb7

bb2:                                              ; preds = %bb1
  unreachable

bb7:                                              ; preds = %bb8
  %10 = getelementptr inbounds i8, ptr %self, i64 8
  %_37 = load i64, ptr %10, align 8
  %_13 = add i64 %_37, 1
  %b = icmp ult i64 %_13, 16
  br i1 %b, label %bb11, label %bb13

bb6:                                              ; preds = %bb8
  %val = load i64, ptr %iter, align 8
  %_29 = add i64 %val, %n1
  store i64 %_29, ptr %iter, align 8
  %11 = getelementptr inbounds i8, ptr %iter, i64 8
  %12 = sub i64 %remaining, 1
  store i64 %12, ptr %11, align 8
  %13 = getelementptr inbounds i8, ptr %_5, i64 8
  store i64 %val, ptr %13, align 8
  store i64 1, ptr %_5, align 8
  %14 = getelementptr inbounds i8, ptr %_5, i64 8
  %i = load i64, ptr %14, align 8
  %_36 = load ptr, ptr %self, align 8
  %_34 = getelementptr inbounds nuw i8, ptr %_36, i64 %i
; call core::core_arch::x86::sse2::_mm_load_si128
  call void @_ZN4core9core_arch3x864sse214_mm_load_si12817h430b54e23949212aE(ptr sret([16 x i8]) align 16 %3, ptr %_34) #24
  %_41 = load <2 x i64>, ptr %3, align 16
  store <2 x i64> %_41, ptr %1, align 16
; call hashbrown::control::group::sse2::Group::convert_special_to_empty_and_full_to_deleted
  call void @_ZN9hashbrown7control5group4sse25Group44convert_special_to_empty_and_full_to_deleted17h17c276b14413bd24E(ptr sret([16 x i8]) align 16 %2, ptr align 16 %1) #24
  %group = load <2 x i64>, ptr %2, align 16
  %_45 = load ptr, ptr %self, align 8
  %_43 = getelementptr inbounds nuw i8, ptr %_45, i64 %i
  store <2 x i64> %group, ptr %0, align 16
; call core::core_arch::x86::sse2::_mm_store_si128
  call void @_ZN4core9core_arch3x864sse215_mm_store_si12817h275c16f77549aa56E(ptr %_43, ptr align 16 %0) #24
  br label %bb1

bb13:                                             ; preds = %bb7
  %_58 = load ptr, ptr %self, align 8
  %15 = getelementptr inbounds i8, ptr %self, i64 8
  %_59 = load i64, ptr %15, align 8
  %index = add i64 %_59, 1
  %_62 = load ptr, ptr %self, align 8
  %_60 = getelementptr inbounds nuw i8, ptr %_62, i64 %index
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %_60, ptr align 1 %_58, i64 16, i1 false)
  br label %bb4

bb11:                                             ; preds = %bb7
  %_52 = load ptr, ptr %self, align 8
  %_55 = load ptr, ptr %self, align 8
  %_53 = getelementptr inbounds nuw i8, ptr %_55, i64 16
  %16 = getelementptr inbounds i8, ptr %self, i64 8
  %_56 = load i64, ptr %16, align 8
  %count = add i64 %_56, 1
  %17 = mul i64 1, %count
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %_53, ptr align 1 %_52, i64 %17, i1 false)
  br label %bb4

bb4:                                              ; preds = %bb11, %bb13
  ret void
}

; hashbrown::raw::RawTableInner::find_insert_index_in_group
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @_ZN9hashbrown3raw13RawTableInner26find_insert_index_in_group17hef669f9872d442baE(ptr align 8 %self, ptr align 16 %group, ptr align 8 %probe_seq) unnamed_addr #1 {
start:
  %0 = alloca [4 x i8], align 4
  %1 = alloca [16 x i8], align 16
  %_25 = alloca [8 x i8], align 8
  %_14 = alloca [2 x i8], align 2
  %b = alloca [1 x i8], align 1
  %bit = alloca [16 x i8], align 8
  %_0 = alloca [16 x i8], align 8
  %self1 = load <2 x i64>, ptr %group, align 16
  store <2 x i64> %self1, ptr %1, align 16
; call core::core_arch::x86::sse2::_mm_movemask_epi8
  %_13 = call i32 @_ZN4core9core_arch3x864sse217_mm_movemask_epi817h6dafdd63c17132afE(ptr align 16 %1) #24
  %self2 = trunc i32 %_13 to i16
  store i16 %self2, ptr %_14, align 2
  %2 = load i16, ptr %_14, align 2
  %3 = icmp eq i16 %2, 0
  %_15 = select i1 %3, i64 0, i64 1
  %4 = trunc nuw i64 %_15 to i1
  br i1 %4, label %bb3, label %bb4

bb3:                                              ; preds = %start
  %nonzero = load i16, ptr %_14, align 2
  %5 = call i16 @llvm.cttz.i16(i16 %nonzero, i1 true)
  %6 = zext i16 %5 to i32
  store i32 %6, ptr %0, align 4
  %_20 = load i32, ptr %0, align 4
  %_17 = zext i32 %_20 to i64
  %7 = getelementptr inbounds i8, ptr %bit, i64 8
  store i64 %_17, ptr %7, align 8
  store i64 1, ptr %bit, align 8
  %8 = load i64, ptr %bit, align 8
  %9 = getelementptr inbounds i8, ptr %bit, i64 8
  %10 = load i64, ptr %9, align 8
  store i64 %8, ptr %_25, align 8
  %11 = load i64, ptr %_25, align 8
  %12 = icmp eq i64 %11, 1
  %13 = zext i1 %12 to i8
  store i8 %13, ptr %b, align 1
  %_9 = load i64, ptr %probe_seq, align 8
  %14 = getelementptr inbounds i8, ptr %bit, i64 8
  %val = load i64, ptr %14, align 8
  %_8 = add i64 %_9, %val
  %15 = getelementptr inbounds i8, ptr %self, i64 8
  %_11 = load i64, ptr %15, align 8
  %_7 = and i64 %_8, %_11
  %16 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %_7, ptr %16, align 8
  store i64 1, ptr %_0, align 8
  br label %bb1

bb4:                                              ; preds = %start
  %17 = load i64, ptr @anon.56cfd62e22175d79f9a1a5afbd6cb4c8.1, align 8
  %18 = load i64, ptr getelementptr inbounds (i8, ptr @anon.56cfd62e22175d79f9a1a5afbd6cb4c8.1, i64 8), align 8
  store i64 %17, ptr %bit, align 8
  %19 = getelementptr inbounds i8, ptr %bit, i64 8
  store i64 %18, ptr %19, align 8
  %20 = load i64, ptr %bit, align 8
  %21 = getelementptr inbounds i8, ptr %bit, i64 8
  %22 = load i64, ptr %21, align 8
  store i64 %20, ptr %_25, align 8
  %23 = load i64, ptr %_25, align 8
  %24 = icmp eq i64 %23, 1
  %25 = zext i1 %24 to i8
  store i8 %25, ptr %b, align 1
  %26 = load i64, ptr @anon.56cfd62e22175d79f9a1a5afbd6cb4c8.1, align 8
  %27 = load i64, ptr getelementptr inbounds (i8, ptr @anon.56cfd62e22175d79f9a1a5afbd6cb4c8.1, i64 8), align 8
  store i64 %26, ptr %_0, align 8
  %28 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %27, ptr %28, align 8
  br label %bb1

bb1:                                              ; preds = %bb4, %bb3
  %29 = load i64, ptr %_0, align 8
  %30 = getelementptr inbounds i8, ptr %_0, i64 8
  %31 = load i64, ptr %30, align 8
  %32 = insertvalue { i64, i64 } poison, i64 %29, 0
  %33 = insertvalue { i64, i64 } %32, i64 %31, 1
  ret { i64, i64 } %33

bb6:                                              ; No predecessors!
  unreachable
}

; hashbrown::raw::RawTableInner::find_or_find_insert_index_inner
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @_ZN9hashbrown3raw13RawTableInner31find_or_find_insert_index_inner17h398c21114acda450E(ptr align 8 %self, i64 %hash, ptr align 1 %eq.0, ptr align 8 %eq.1) unnamed_addr #1 {
start:
  %0 = alloca [16 x i8], align 16
  %1 = alloca [16 x i8], align 16
  %2 = alloca [16 x i8], align 16
  %3 = alloca [16 x i8], align 16
  %4 = alloca [16 x i8], align 16
  %5 = alloca [4 x i8], align 4
  %6 = alloca [16 x i8], align 16
  %7 = alloca [16 x i8], align 16
  %8 = alloca [16 x i8], align 16
  %9 = alloca [16 x i8], align 16
  %10 = alloca [16 x i8], align 16
  %11 = alloca [16 x i8], align 16
  %_48 = alloca [2 x i8], align 2
  %self1 = alloca [16 x i8], align 8
  %insert_index = alloca [16 x i8], align 8
  %_10 = alloca [16 x i8], align 8
  %iter = alloca [2 x i8], align 2
  %group = alloca [16 x i8], align 16
  %probe_seq = alloca [16 x i8], align 8
  %_0 = alloca [16 x i8], align 8
  %12 = load i64, ptr @anon.56cfd62e22175d79f9a1a5afbd6cb4c8.1, align 8
  %13 = load i64, ptr getelementptr inbounds (i8, ptr @anon.56cfd62e22175d79f9a1a5afbd6cb4c8.1, i64 8), align 8
  store i64 %12, ptr %insert_index, align 8
  %14 = getelementptr inbounds i8, ptr %insert_index, i64 8
  store i64 %13, ptr %14, align 8
  %_30 = lshr i64 %hash, 57
  %_32 = and i64 %_30, 127
  %tag_hash = trunc i64 %_32 to i8
  %15 = getelementptr inbounds i8, ptr %self, i64 8
  %_35 = load i64, ptr %15, align 8
  %_33 = and i64 %hash, %_35
  store i64 %_33, ptr %probe_seq, align 8
  %16 = getelementptr inbounds i8, ptr %probe_seq, i64 8
  store i64 0, ptr %16, align 8
  br label %bb1

bb1:                                              ; preds = %bb9, %start
  %index = load i64, ptr %probe_seq, align 8
  %_38 = load ptr, ptr %self, align 8
  %_36 = getelementptr inbounds nuw i8, ptr %_38, i64 %index
; call core::core_arch::x86::sse2::_mm_loadu_si128
  call void @_ZN4core9core_arch3x864sse215_mm_loadu_si12817h564f784647a6e9d3E(ptr sret([16 x i8]) align 16 %11, ptr %_36) #24
  %self2 = load <2 x i64>, ptr %11, align 16
  store <2 x i64> %self2, ptr %group, align 16
; call core::core_arch::x86::sse2::_mm_set1_epi8
  call void @_ZN4core9core_arch3x864sse213_mm_set1_epi817h0d692b8354759098E(ptr sret([16 x i8]) align 16 %10, i8 %tag_hash) #24
  %_42 = load <2 x i64>, ptr %10, align 16
  store <2 x i64> %self2, ptr %8, align 16
  store <2 x i64> %_42, ptr %7, align 16
; call core::core_arch::x86::sse2::_mm_cmpeq_epi8
  call void @_ZN4core9core_arch3x864sse214_mm_cmpeq_epi817h5663e4860e31e574E(ptr sret([16 x i8]) align 16 %9, ptr align 16 %8, ptr align 16 %7) #24
  %cmp = load <2 x i64>, ptr %9, align 16
  store <2 x i64> %cmp, ptr %6, align 16
; call core::core_arch::x86::sse2::_mm_movemask_epi8
  %_45 = call i32 @_ZN4core9core_arch3x864sse217_mm_movemask_epi817h6dafdd63c17132afE(ptr align 16 %6) #24
  %_44 = trunc i32 %_45 to i16
  store i16 %_44, ptr %iter, align 2
  br label %bb2

bb2:                                              ; preds = %bb19, %bb1
  %self3 = load i16, ptr %iter, align 2
  store i16 %self3, ptr %_48, align 2
  %17 = load i16, ptr %_48, align 2
  %18 = icmp eq i16 %17, 0
  %_49 = select i1 %18, i64 0, i64 1
  %19 = trunc nuw i64 %_49 to i1
  br i1 %19, label %bb15, label %bb16

bb15:                                             ; preds = %bb2
  %nonzero = load i16, ptr %_48, align 2
  %20 = call i16 @llvm.cttz.i16(i16 %nonzero, i1 true)
  %21 = zext i16 %20 to i32
  store i32 %21, ptr %5, align 4
  %_54 = load i32, ptr %5, align 4
  %_51 = zext i32 %_54 to i64
  %22 = getelementptr inbounds i8, ptr %self1, i64 8
  store i64 %_51, ptr %22, align 8
  store i64 1, ptr %self1, align 8
  %23 = getelementptr inbounds i8, ptr %self1, i64 8
  %bit = load i64, ptr %23, align 8
  %self4 = load i16, ptr %iter, align 2
  %_61 = sub i16 %self4, 1
  %_60 = and i16 %self4, %_61
  store i16 %_60, ptr %iter, align 2
  %24 = getelementptr inbounds i8, ptr %_10, i64 8
  store i64 %bit, ptr %24, align 8
  store i64 1, ptr %_10, align 8
  %25 = getelementptr inbounds i8, ptr %_10, i64 8
  %bit5 = load i64, ptr %25, align 8
  %_15 = load i64, ptr %probe_seq, align 8
  %_14 = add i64 %_15, %bit5
  %26 = getelementptr inbounds i8, ptr %self, i64 8
  %_16 = load i64, ptr %26, align 8
  %index6 = and i64 %_14, %_16
  %27 = getelementptr inbounds i8, ptr %eq.1, i64 32
  %28 = load ptr, ptr %27, align 8, !invariant.load !3, !nonnull !3
  %b = call zeroext i1 %28(ptr align 1 %eq.0, i64 %index6) #24
  br i1 %b, label %bb18, label %bb19

bb16:                                             ; preds = %bb2
  %29 = load i64, ptr @anon.56cfd62e22175d79f9a1a5afbd6cb4c8.1, align 8
  %30 = load i64, ptr getelementptr inbounds (i8, ptr @anon.56cfd62e22175d79f9a1a5afbd6cb4c8.1, i64 8), align 8
  store i64 %29, ptr %self1, align 8
  %31 = getelementptr inbounds i8, ptr %self1, i64 8
  store i64 %30, ptr %31, align 8
  %_65 = load i64, ptr %insert_index, align 8
  %32 = getelementptr inbounds i8, ptr %insert_index, i64 8
  %33 = load i64, ptr %32, align 8
  %_64 = icmp eq i64 %_65, 1
  %b7 = xor i1 %_64, true
  br i1 %b7, label %bb21, label %bb22

bb19:                                             ; preds = %bb15
  br label %bb2

bb18:                                             ; preds = %bb15
  %34 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %index6, ptr %34, align 8
  store i64 0, ptr %_0, align 8
  br label %bb10

bb10:                                             ; preds = %bb27, %bb18
  %35 = load i64, ptr %_0, align 8
  %36 = getelementptr inbounds i8, ptr %_0, i64 8
  %37 = load i64, ptr %36, align 8
  %38 = insertvalue { i64, i64 } poison, i64 %35, 0
  %39 = insertvalue { i64, i64 } %38, i64 %37, 1
  ret { i64, i64 } %39

bb22:                                             ; preds = %bb16
  br label %bb6

bb21:                                             ; preds = %bb16
; call hashbrown::raw::RawTableInner::find_insert_index_in_group
  %40 = call { i64, i64 } @_ZN9hashbrown3raw13RawTableInner26find_insert_index_in_group17hef669f9872d442baE(ptr align 8 %self, ptr align 16 %group, ptr align 8 %probe_seq) #24
  %41 = extractvalue { i64, i64 } %40, 0
  %42 = extractvalue { i64, i64 } %40, 1
  store i64 %41, ptr %insert_index, align 8
  %43 = getelementptr inbounds i8, ptr %insert_index, i64 8
  store i64 %42, ptr %43, align 8
  br label %bb6

bb6:                                              ; preds = %bb21, %bb22
  %_24 = load i64, ptr %insert_index, align 8
  %44 = getelementptr inbounds i8, ptr %insert_index, i64 8
  %45 = load i64, ptr %44, align 8
  %46 = trunc nuw i64 %_24 to i1
  br i1 %46, label %bb7, label %bb9

bb7:                                              ; preds = %bb6
  %47 = getelementptr inbounds i8, ptr %insert_index, i64 8
  %insert_index8 = load i64, ptr %47, align 8
; call core::core_arch::x86::sse2::_mm_set1_epi8
  call void @_ZN4core9core_arch3x864sse213_mm_set1_epi817h0d692b8354759098E(ptr sret([16 x i8]) align 16 %4, i8 -1) #24
  %_69 = load <2 x i64>, ptr %4, align 16
  store <2 x i64> %self2, ptr %2, align 16
  store <2 x i64> %_69, ptr %1, align 16
; call core::core_arch::x86::sse2::_mm_cmpeq_epi8
  call void @_ZN4core9core_arch3x864sse214_mm_cmpeq_epi817h5663e4860e31e574E(ptr sret([16 x i8]) align 16 %3, ptr align 16 %2, ptr align 16 %1) #24
  %cmp9 = load <2 x i64>, ptr %3, align 16
  store <2 x i64> %cmp9, ptr %0, align 16
; call core::core_arch::x86::sse2::_mm_movemask_epi8
  %_71 = call i32 @_ZN4core9core_arch3x864sse217_mm_movemask_epi817h6dafdd63c17132afE(ptr align 16 %0) #24
  %self10 = trunc i32 %_71 to i16
  %b11 = icmp ne i16 %self10, 0
  br i1 %b11, label %bb27, label %bb28

bb9:                                              ; preds = %bb28, %bb6
  %48 = getelementptr inbounds i8, ptr %self, i64 8
  %bucket_mask = load i64, ptr %48, align 8
  %49 = getelementptr inbounds i8, ptr %probe_seq, i64 8
  %50 = getelementptr inbounds i8, ptr %probe_seq, i64 8
  %51 = load i64, ptr %50, align 8
  %52 = add i64 %51, 16
  store i64 %52, ptr %49, align 8
  %53 = getelementptr inbounds i8, ptr %probe_seq, i64 8
  %_73 = load i64, ptr %53, align 8
  %54 = load i64, ptr %probe_seq, align 8
  %55 = add i64 %54, %_73
  store i64 %55, ptr %probe_seq, align 8
  %56 = load i64, ptr %probe_seq, align 8
  %57 = and i64 %56, %bucket_mask
  store i64 %57, ptr %probe_seq, align 8
  br label %bb1

bb28:                                             ; preds = %bb7
  br label %bb9

bb27:                                             ; preds = %bb7
; call hashbrown::raw::RawTableInner::fix_insert_index
  %_27 = call i64 @_ZN9hashbrown3raw13RawTableInner16fix_insert_index17hee650fc7517ce1b7E(ptr align 8 %self, i64 %insert_index8) #24
  %58 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %_27, ptr %58, align 8
  store i64 1, ptr %_0, align 8
  br label %bb10

bb3:                                              ; No predecessors!
  unreachable
}

; hashbrown::raw::capacity_to_buckets
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @_ZN9hashbrown3raw19capacity_to_buckets17h0664f1a02f6e503fE(i64 %cap, i64 %table_layout.0, i64 %table_layout.1) unnamed_addr #1 {
start:
  %0 = alloca [4 x i8], align 4
  %prod1 = alloca [8 x i8], align 8
  %_38 = alloca [8 x i8], align 8
  %prod = alloca [8 x i8], align 8
  %self = alloca [16 x i8], align 8
  %_19 = alloca [16 x i8], align 8
  %buckets = alloca [8 x i8], align 8
  %min_cap = alloca [8 x i8], align 8
  %_0 = alloca [16 x i8], align 8
  %_6 = icmp ult i64 %cap, 15
  br i1 %_6, label %bb1, label %bb16

bb16:                                             ; preds = %start
  %1 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %cap, i64 8)
  %_33.0 = extractvalue { i64, i1 } %1, 0
  %_33.1 = extractvalue { i64, i1 } %1, 1
  br i1 %_33.1, label %bb23, label %bb25

bb1:                                              ; preds = %start
  %_11 = icmp ule i64 0, %table_layout.0
  br i1 %_11, label %bb7, label %bb4

bb25:                                             ; preds = %bb16
  %2 = getelementptr inbounds i8, ptr %self, i64 8
  store i64 %_33.0, ptr %2, align 8
  store i64 1, ptr %self, align 8
  %3 = getelementptr inbounds i8, ptr %self, i64 8
  %v = load i64, ptr %3, align 8
  %4 = getelementptr inbounds i8, ptr %_19, i64 8
  store i64 %v, ptr %4, align 8
  store i64 0, ptr %_19, align 8
  %5 = getelementptr inbounds i8, ptr %_19, i64 8
  %val = load i64, ptr %5, align 8
  %adjusted_cap = udiv i64 %val, 7
  %_40 = icmp ule i64 %adjusted_cap, 1
  br i1 %_40, label %bb28, label %bb29

bb23:                                             ; preds = %bb16
  %6 = load i64, ptr @anon.56cfd62e22175d79f9a1a5afbd6cb4c8.1, align 8
  %7 = load i64, ptr getelementptr inbounds (i8, ptr @anon.56cfd62e22175d79f9a1a5afbd6cb4c8.1, i64 8), align 8
  store i64 %6, ptr %self, align 8
  %8 = getelementptr inbounds i8, ptr %self, i64 8
  store i64 %7, ptr %8, align 8
  %9 = load i64, ptr @anon.56cfd62e22175d79f9a1a5afbd6cb4c8.1, align 8
  %10 = load i64, ptr getelementptr inbounds (i8, ptr @anon.56cfd62e22175d79f9a1a5afbd6cb4c8.1, i64 8), align 8
  store i64 %9, ptr %_0, align 8
  %11 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %10, ptr %11, align 8
  br label %bb17

bb29:                                             ; preds = %bb25
  %p = sub i64 %adjusted_cap, 1
  %12 = call i64 @llvm.ctlz.i64(i64 %p, i1 true)
  %13 = trunc i64 %12 to i32
  store i32 %13, ptr %0, align 4
  %z = load i32, ptr %0, align 4
  %14 = and i32 %z, 63
  %15 = zext i32 %14 to i64
  %16 = lshr i64 -1, %15
  store i64 %16, ptr %_38, align 8
  br label %bb27

bb28:                                             ; preds = %bb25
  store i64 0, ptr %_38, align 8
  br label %bb27

bb27:                                             ; preds = %bb28, %bb29
  %17 = load i64, ptr %_38, align 8
  %_39.0 = add i64 %17, 1
  %_39.1 = icmp ult i64 %_39.0, %17
  br i1 %_39.1, label %panic, label %bb26

bb26:                                             ; preds = %bb27
  %_43 = icmp ne i64 %table_layout.0, 0
  br i1 %_43, label %bb31, label %bb32

panic:                                            ; preds = %bb27
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_c569f7b2d50f3d148c21213ba698778a) #23
  unreachable

bb32:                                             ; preds = %bb33, %bb35, %bb26
  %18 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %_39.0, ptr %18, align 8
  store i64 1, ptr %_0, align 8
  br label %bb17

bb31:                                             ; preds = %bb26
  %19 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %table_layout.0, i64 %_39.0)
  %_46.0 = extractvalue { i64, i1 } %19, 0
  %_46.1 = extractvalue { i64, i1 } %19, 1
  store i64 %_46.0, ptr %prod1, align 8
  br i1 %_46.1, label %bb33, label %bb35

bb35:                                             ; preds = %bb31
  br label %bb32

bb33:                                             ; preds = %bb31
  store i64 -1, ptr %prod1, align 8
  br label %bb32

bb17:                                             ; preds = %bb19, %bb23, %bb32
  %20 = load i64, ptr %_0, align 8
  %21 = getelementptr inbounds i8, ptr %_0, i64 8
  %22 = load i64, ptr %21, align 8
  %23 = insertvalue { i64, i64 } poison, i64 %20, 0
  %24 = insertvalue { i64, i64 } %23, i64 %22, 1
  ret { i64, i64 } %24

bb4:                                              ; preds = %bb7, %bb1
  %_9 = icmp ule i64 2, %table_layout.0
  br i1 %_9, label %bb6, label %bb2

bb7:                                              ; preds = %bb1
  %_12 = icmp ule i64 %table_layout.0, 1
  br i1 %_12, label %bb3, label %bb4

bb3:                                              ; preds = %bb7
  store i64 14, ptr %min_cap, align 8
  br label %bb8

bb2:                                              ; preds = %bb6, %bb4
  store i64 3, ptr %min_cap, align 8
  br label %bb8

bb6:                                              ; preds = %bb4
  %_10 = icmp ule i64 %table_layout.0, 3
  br i1 %_10, label %bb5, label %bb2

bb5:                                              ; preds = %bb6
  store i64 7, ptr %min_cap, align 8
  br label %bb8

bb8:                                              ; preds = %bb3, %bb5, %bb2
  %25 = load i64, ptr %min_cap, align 8
; call core::cmp::Ord::max
  %cap2 = call i64 @_ZN4core3cmp3Ord3max17h3f4564a9a660ee8bE(i64 %25, i64 %cap) #24
  %_15 = icmp ult i64 %cap2, 4
  br i1 %_15, label %bb10, label %bb11

bb11:                                             ; preds = %bb8
  %_16 = icmp ult i64 %cap2, 8
  br i1 %_16, label %bb12, label %bb13

bb10:                                             ; preds = %bb8
  store i64 4, ptr %buckets, align 8
  br label %bb15

bb13:                                             ; preds = %bb11
  store i64 16, ptr %buckets, align 8
  br label %bb14

bb12:                                             ; preds = %bb11
  store i64 8, ptr %buckets, align 8
  br label %bb14

bb14:                                             ; preds = %bb12, %bb13
  br label %bb15

bb15:                                             ; preds = %bb10, %bb14
  %buckets3 = load i64, ptr %buckets, align 8
  %_23 = icmp ne i64 %table_layout.0, 0
  br i1 %_23, label %bb18, label %bb19

bb19:                                             ; preds = %bb20, %bb22, %bb15
  %26 = load i64, ptr %buckets, align 8
  %27 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %26, ptr %27, align 8
  store i64 1, ptr %_0, align 8
  br label %bb17

bb18:                                             ; preds = %bb15
  %28 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %table_layout.0, i64 %buckets3)
  %_26.0 = extractvalue { i64, i1 } %28, 0
  %_26.1 = extractvalue { i64, i1 } %28, 1
  store i64 %_26.0, ptr %prod, align 8
  br i1 %_26.1, label %bb20, label %bb22

bb22:                                             ; preds = %bb18
  br label %bb19

bb20:                                             ; preds = %bb18
  store i64 -1, ptr %prod, align 8
  br label %bb19
}

; hashbrown::raw::RawTable<T,A>::reserve_rehash
; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h83aafb7e25988a67E"(ptr align 8 %self, i64 %additional, ptr align 8 %0, i1 zeroext %fallibility) unnamed_addr #8 personality ptr @rust_eh_personality {
start:
  %1 = alloca [16 x i8], align 16
  %2 = alloca [16 x i8], align 16
  %3 = alloca [4 x i8], align 4
  %_19.i5 = alloca [2 x i8], align 2
  %self1.i6 = alloca [16 x i8], align 8
  %_2.i = alloca [16 x i8], align 8
  %4 = alloca [32 x i8], align 8
  %5 = alloca [16 x i8], align 16
  %6 = alloca [16 x i8], align 8
  %7 = alloca [16 x i8], align 16
  %v5.i.i = alloca [56 x i8], align 8
  %v.i.i = alloca [32 x i8], align 8
  %dropfn.i.i = alloca [24 x i8], align 8
  %_39.i.i = alloca [56 x i8], align 8
  %new_table4.i.i = alloca [32 x i8], align 8
  %self3.i.i = alloca [32 x i8], align 8
  %_35.i.i = alloca [32 x i8], align 8
  %nxt.i.i = alloca [16 x i8], align 8
  %iter.i.i = alloca [32 x i8], align 8
  %self2.i.i = alloca [32 x i8], align 8
  %val.i.i = alloca [56 x i8], align 8
  %self1.i.i = alloca [56 x i8], align 8
  %_8.i.i = alloca [56 x i8], align 8
  %new_table.i.i = alloca [56 x i8], align 8
  %_0.i.i = alloca [16 x i8], align 8
  %full_capacity.i = alloca [8 x i8], align 8
  %_8.i = alloca [16 x i8], align 8
  %_0.i = alloca [16 x i8], align 8
  %8 = alloca [16 x i8], align 8
  %_11 = alloca [8 x i8], align 8
  %_9 = alloca [8 x i8], align 8
  %hasher = alloca [8 x i8], align 8
  store ptr %0, ptr %hasher, align 8
  %_6 = getelementptr inbounds i8, ptr %self, i64 32
  store ptr %hasher, ptr %_9, align 8
  br label %bb2

bb2:                                              ; preds = %start
  store ptr null, ptr %_11, align 8
  br label %bb3

bb3:                                              ; preds = %bb2
  %9 = load ptr, ptr %_11, align 8
  %10 = getelementptr inbounds i8, ptr %self, i64 24
  %self1.i = load i64, ptr %10, align 8
  %_21.0.i = add i64 %self1.i, %additional
  %_21.1.i = icmp ult i64 %_21.0.i, %self1.i
  br i1 %_21.1.i, label %bb9.i, label %bb11.i

bb11.i:                                           ; preds = %bb3
  %_22.i = add nuw i64 %self1.i, %additional
  %11 = getelementptr inbounds i8, ptr %_8.i, i64 8
  store i64 %_22.i, ptr %11, align 8
  store i64 1, ptr %_8.i, align 8
  %12 = getelementptr inbounds i8, ptr %_8.i, i64 8
  %new_items.i = load i64, ptr %12, align 8
  %13 = getelementptr inbounds i8, ptr %self, i64 8
  %14 = load i64, ptr %13, align 8
  store i64 %14, ptr %full_capacity.i, align 8
  %15 = load i64, ptr %full_capacity.i, align 8
  %_24.i = icmp ult i64 %15, 8
  br i1 %_24.i, label %bb12.i, label %bb13.i

bb9.i:                                            ; preds = %bb3
; invoke hashbrown::raw::Fallibility::capacity_overflow
  %16 = invoke { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h2ba85003cd4f3895E(i1 zeroext %fallibility)
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb9.i
  %_11.0.i = extractvalue { i64, i64 } %16, 0
  %_11.1.i = extractvalue { i64, i64 } %16, 1
  store i64 %_11.0.i, ptr %_0.i, align 8
  %17 = getelementptr inbounds i8, ptr %_0.i, i64 8
  store i64 %_11.1.i, ptr %17, align 8
  br label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h09a725d9f5f6ce5aE.exit

bb13.i:                                           ; preds = %bb11.i
  %18 = load i64, ptr %full_capacity.i, align 8
  %_26.i = add i64 %18, 1
  %_25.i = udiv i64 %_26.i, 8
  %19 = mul i64 %_25.i, 7
  store i64 %19, ptr %full_capacity.i, align 8
  br label %bb14.i

bb12.i:                                           ; preds = %bb11.i
  br label %bb14.i

bb14.i:                                           ; preds = %bb12.i, %bb13.i
  %_15.i = load i64, ptr %full_capacity.i, align 8
  %_14.i = udiv i64 %_15.i, 2
  %_13.i = icmp ule i64 %new_items.i, %_14.i
  br i1 %_13.i, label %bb2.i, label %bb4.i

bb4.i:                                            ; preds = %bb14.i
  %20 = load i64, ptr %full_capacity.i, align 8
  %_19.i = add i64 %20, 1
; invoke core::cmp::Ord::max
  %_18.i1 = invoke i64 @_ZN4core3cmp3Ord3max17h3f4564a9a660ee8bE(i64 %new_items.i, i64 %_19.i) #24
          to label %_18.i.noexc unwind label %cleanup

_18.i.noexc:                                      ; preds = %bb4.i
; invoke hashbrown::raw::RawTableInner::fallible_with_capacity
  invoke void @_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h82eb3b2f6ae7aa56E(ptr sret([32 x i8]) align 8 %self3.i.i, ptr align 1 %_6, i64 8, i64 16, i64 %_18.i1, i1 zeroext %fallibility) #24
          to label %.noexc2 unwind label %cleanup

.noexc2:                                          ; preds = %_18.i.noexc
  %21 = load ptr, ptr %self3.i.i, align 8
  %22 = ptrtoint ptr %21 to i64
  %23 = icmp eq i64 %22, 0
  %_41.i.i = select i1 %23, i64 1, i64 0
  %24 = trunc nuw i64 %_41.i.i to i1
  br i1 %24, label %bb12.i.i, label %bb13.i.i

bb12.i.i:                                         ; preds = %.noexc2
  %25 = getelementptr inbounds i8, ptr %self3.i.i, i64 8
  %e.0.i.i = load i64, ptr %25, align 8
  %26 = getelementptr inbounds i8, ptr %25, i64 8
  %e.1.i.i = load i64, ptr %26, align 8
  %27 = getelementptr inbounds i8, ptr %_35.i.i, i64 8
  store i64 %e.0.i.i, ptr %27, align 8
  %28 = getelementptr inbounds i8, ptr %27, i64 8
  store i64 %e.1.i.i, ptr %28, align 8
  store ptr null, ptr %_35.i.i, align 8
  %29 = getelementptr inbounds i8, ptr %_35.i.i, i64 8
  %residual.0.i.i = load i64, ptr %29, align 8
  %30 = getelementptr inbounds i8, ptr %29, i64 8
  %residual.1.i.i = load i64, ptr %30, align 8
  %31 = getelementptr inbounds i8, ptr %self1.i.i, i64 8
  store i64 %residual.0.i.i, ptr %31, align 8
  %32 = getelementptr inbounds i8, ptr %31, i64 8
  store i64 %residual.1.i.i, ptr %32, align 8
  store ptr null, ptr %self1.i.i, align 8
  br label %bb11.i.i

bb13.i.i:                                         ; preds = %.noexc2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %v.i.i, ptr align 8 %self3.i.i, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_35.i.i, ptr align 8 %v.i.i, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %new_table4.i.i, ptr align 8 %_35.i.i, i64 32, i1 false)
  store ptr %_6, ptr %dropfn.i.i, align 8
  %33 = getelementptr inbounds i8, ptr %dropfn.i.i, i64 8
  store i64 8, ptr %33, align 8
  %34 = getelementptr inbounds i8, ptr %33, i64 8
  store i64 16, ptr %34, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_39.i.i, ptr align 8 %dropfn.i.i, i64 24, i1 false)
  %35 = getelementptr inbounds i8, ptr %_39.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %35, ptr align 8 %new_table4.i.i, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %self1.i.i, ptr align 8 %_39.i.i, i64 56, i1 false)
  br label %bb11.i.i

bb11.i.i:                                         ; preds = %bb13.i.i, %bb12.i.i
  %36 = load ptr, ptr %self1.i.i, align 8
  %37 = ptrtoint ptr %36 to i64
  %38 = icmp eq i64 %37, 0
  %_46.i.i = select i1 %38, i64 1, i64 0
  %39 = trunc nuw i64 %_46.i.i to i1
  br i1 %39, label %bb14.i.i, label %bb15.i.i

bb14.i.i:                                         ; preds = %bb11.i.i
  %40 = getelementptr inbounds i8, ptr %self1.i.i, i64 8
  %e.08.i.i = load i64, ptr %40, align 8
  %41 = getelementptr inbounds i8, ptr %40, i64 8
  %e.19.i.i = load i64, ptr %41, align 8
  %42 = getelementptr inbounds i8, ptr %_8.i.i, i64 8
  store i64 %e.08.i.i, ptr %42, align 8
  %43 = getelementptr inbounds i8, ptr %42, i64 8
  store i64 %e.19.i.i, ptr %43, align 8
  store ptr null, ptr %_8.i.i, align 8
  %44 = getelementptr inbounds i8, ptr %_8.i.i, i64 8
  %residual.010.i.i = load i64, ptr %44, align 8
  %45 = getelementptr inbounds i8, ptr %44, i64 8
  %residual.111.i.i = load i64, ptr %45, align 8
  store i64 %residual.010.i.i, ptr %_0.i.i, align 8
  %46 = getelementptr inbounds i8, ptr %_0.i.i, i64 8
  store i64 %residual.111.i.i, ptr %46, align 8
  br label %_ZN9hashbrown3raw13RawTableInner12resize_inner17h4f9c1a421c5f10beE.exit.i

bb15.i.i:                                         ; preds = %bb11.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %v5.i.i, ptr align 8 %self1.i.i, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_8.i.i, ptr align 8 %v5.i.i, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %val.i.i, ptr align 8 %_8.i.i, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %new_table.i.i, ptr align 8 %val.i.i, i64 56, i1 false)
  %_58.i.i = load ptr, ptr %self, align 8
; invoke core::core_arch::x86::sse2::_mm_load_si128
  invoke void @_ZN4core9core_arch3x864sse214_mm_load_si12817h430b54e23949212aE(ptr sret([16 x i8]) align 16 %7, ptr %_58.i.i)
          to label %bb16.i.i unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %.noexc10, %bb4.i7, %bb5.i.i, %bb3.i.i, %bb16.i.i, %bb15.i.i
  %47 = landingpad { ptr, i32 }
          cleanup
  %48 = extractvalue { ptr, i32 } %47, 0
  %49 = extractvalue { ptr, i32 } %47, 1
  store ptr %48, ptr %6, align 8
  %50 = getelementptr inbounds i8, ptr %6, i64 8
  store i32 %49, ptr %50, align 8
; invoke core::ptr::drop_in_place<hashbrown::scopeguard::ScopeGuard<hashbrown::raw::RawTableInner,hashbrown::raw::RawTableInner::prepare_resize<alloc::alloc::Global>::{{closure}}>>
  invoke void @"_ZN4core3ptr196drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$alloc..alloc..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h470c7daf7ddbbdccE"(ptr align 8 %new_table.i.i) #28
          to label %bb9.i.i unwind label %terminate.i.i

bb16.i.i:                                         ; preds = %bb15.i.i
  %self6.i.i = load <2 x i64>, ptr %7, align 16
  store <2 x i64> %self6.i.i, ptr %5, align 16
; invoke core::core_arch::x86::sse2::_mm_movemask_epi8
  %_66.i.i = invoke i32 @_ZN4core9core_arch3x864sse217_mm_movemask_epi817h6dafdd63c17132afE(ptr align 16 %5)
          to label %bb17.i.i unwind label %cleanup.i.i

bb17.i.i:                                         ; preds = %bb16.i.i
  %self7.i.i = trunc i32 %_66.i.i to i16
  %_67.i.i = xor i16 %self7.i.i, -1
  %51 = getelementptr inbounds i8, ptr %self, i64 24
  %_56.i.i = load i64, ptr %51, align 8
  %52 = getelementptr inbounds i8, ptr %self2.i.i, i64 24
  store i16 %_67.i.i, ptr %52, align 8
  %53 = getelementptr inbounds i8, ptr %self2.i.i, i64 8
  store i64 0, ptr %53, align 8
  store ptr %_58.i.i, ptr %self2.i.i, align 8
  %54 = getelementptr inbounds i8, ptr %self2.i.i, i64 16
  store i64 %_56.i.i, ptr %54, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %iter.i.i, ptr align 8 %self2.i.i, i64 32, i1 false)
  br label %bb2.i.i

bb2.i.i:                                          ; preds = %bb22.i.i, %bb17.i.i
  %55 = getelementptr inbounds i8, ptr %iter.i.i, i64 16
  %_70.i.i = load i64, ptr %55, align 8
  %_69.i.i = icmp eq i64 %_70.i.i, 0
  br i1 %_69.i.i, label %bb19.i.i, label %bb20.i.i

bb20.i.i:                                         ; preds = %bb2.i.i
  br label %bb1.i

bb1.i:                                            ; preds = %_42.i.noexc, %bb20.i.i
  %56 = getelementptr inbounds i8, ptr %iter.i.i, i64 24
  %self2.i = load i16, ptr %56, align 8
  store i16 %self2.i, ptr %_19.i5, align 2
  %57 = load i16, ptr %_19.i5, align 2
  %58 = icmp eq i16 %57, 0
  %_20.i = select i1 %58, i64 0, i64 1
  %59 = trunc nuw i64 %_20.i to i1
  br i1 %59, label %_ZN9hashbrown3raw18FullBucketsIndices9next_impl17hb85f7b7e286b9d5dE.exit, label %bb4.i7

bb4.i7:                                           ; preds = %bb1.i
  store i64 0, ptr %self1.i6, align 8
  %60 = getelementptr inbounds i8, ptr %self1.i6, i64 8
  store i64 undef, ptr %60, align 8
  %self4.i = load ptr, ptr %iter.i.i, align 8
  %ptr.i = getelementptr inbounds nuw i8, ptr %self4.i, i64 16
  store ptr %ptr.i, ptr %iter.i.i, align 8
  %self5.i = load ptr, ptr %iter.i.i, align 8
; invoke core::core_arch::x86::sse2::_mm_load_si128
  invoke void @_ZN4core9core_arch3x864sse214_mm_load_si12817h430b54e23949212aE(ptr sret([16 x i8]) align 16 %2, ptr %self5.i) #24
          to label %.noexc10 unwind label %cleanup.i.i

.noexc10:                                         ; preds = %bb4.i7
  %self6.i = load <2 x i64>, ptr %2, align 16
  store <2 x i64> %self6.i, ptr %1, align 16
; invoke core::core_arch::x86::sse2::_mm_movemask_epi8
  %_42.i11 = invoke i32 @_ZN4core9core_arch3x864sse217_mm_movemask_epi817h6dafdd63c17132afE(ptr align 16 %1) #24
          to label %_42.i.noexc unwind label %cleanup.i.i

_42.i.noexc:                                      ; preds = %.noexc10
  %self7.i = trunc i32 %_42.i11 to i16
  %_43.i = xor i16 %self7.i, -1
  %61 = getelementptr inbounds i8, ptr %iter.i.i, i64 24
  store i16 %_43.i, ptr %61, align 8
  %62 = getelementptr inbounds i8, ptr %iter.i.i, i64 8
  %63 = getelementptr inbounds i8, ptr %iter.i.i, i64 8
  %64 = load i64, ptr %63, align 8
  %65 = add i64 %64, 16
  store i64 %65, ptr %62, align 8
  br label %bb1.i

_ZN9hashbrown3raw18FullBucketsIndices9next_impl17hb85f7b7e286b9d5dE.exit: ; preds = %bb1.i
  %nonzero.i = load i16, ptr %_19.i5, align 2
  %66 = call i16 @llvm.cttz.i16(i16 %nonzero.i, i1 true)
  %67 = zext i16 %66 to i32
  store i32 %67, ptr %3, align 4
  %_25.i8 = load i32, ptr %3, align 4
  %_22.i9 = zext i32 %_25.i8 to i64
  %68 = getelementptr inbounds i8, ptr %self1.i6, i64 8
  store i64 %_22.i9, ptr %68, align 8
  store i64 1, ptr %self1.i6, align 8
  %69 = getelementptr inbounds i8, ptr %self1.i6, i64 8
  %bit.i = load i64, ptr %69, align 8
  %70 = getelementptr inbounds i8, ptr %iter.i.i, i64 24
  %self3.i = load i16, ptr %70, align 8
  %_32.i = sub i16 %self3.i, 1
  %_31.i = and i16 %self3.i, %_32.i
  %71 = getelementptr inbounds i8, ptr %iter.i.i, i64 24
  store i16 %_31.i, ptr %71, align 8
  %72 = getelementptr inbounds i8, ptr %_2.i, i64 8
  store i64 %bit.i, ptr %72, align 8
  store i64 1, ptr %_2.i, align 8
  %73 = getelementptr inbounds i8, ptr %_2.i, i64 8
  %index.i = load i64, ptr %73, align 8
  %74 = getelementptr inbounds i8, ptr %iter.i.i, i64 8
  %_6.i = load i64, ptr %74, align 8
  %_5.i = add i64 %_6.i, %index.i
  %75 = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %_5.i, 1
  br label %bb21.i.i

bb19.i.i:                                         ; preds = %bb2.i.i
  store i64 0, ptr %nxt.i.i, align 8
  %76 = getelementptr inbounds i8, ptr %nxt.i.i, i64 8
  store i64 undef, ptr %76, align 8
  br label %bb18.i.i

bb21.i.i:                                         ; preds = %_ZN9hashbrown3raw18FullBucketsIndices9next_impl17hb85f7b7e286b9d5dE.exit
  %77 = extractvalue { i64, i64 } %75, 0
  %78 = extractvalue { i64, i64 } %75, 1
  store i64 %77, ptr %nxt.i.i, align 8
  %79 = getelementptr inbounds i8, ptr %nxt.i.i, i64 8
  store i64 %78, ptr %79, align 8
  %80 = getelementptr inbounds i8, ptr %iter.i.i, i64 16
  %81 = getelementptr inbounds i8, ptr %iter.i.i, i64 16
  %82 = load i64, ptr %81, align 8
  %83 = sub i64 %82, 1
  store i64 %83, ptr %80, align 8
  br label %bb18.i.i

bb18.i.i:                                         ; preds = %bb21.i.i, %bb19.i.i
  %_16.i.i = load i64, ptr %nxt.i.i, align 8
  %84 = getelementptr inbounds i8, ptr %nxt.i.i, i64 8
  %85 = load i64, ptr %84, align 8
  %86 = trunc nuw i64 %_16.i.i to i1
  br i1 %86, label %bb3.i.i, label %bb4.i.i

bb3.i.i:                                          ; preds = %bb18.i.i
  %87 = getelementptr inbounds i8, ptr %nxt.i.i, i64 8
  %full_byte_index.i.i = load i64, ptr %87, align 8
; invoke hashbrown::raw::RawTable<T,A>::reserve_rehash::{{closure}}
  %hash.i.i = invoke i64 @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17ha9638e1ca1f78d71E"(ptr align 1 %_9, ptr align 8 %self, i64 %full_byte_index.i.i)
          to label %bb5.i.i unwind label %cleanup.i.i

bb4.i.i:                                          ; preds = %bb18.i.i
  %88 = getelementptr inbounds i8, ptr %self, i64 24
  %_28.i.i = load i64, ptr %88, align 8
  %89 = getelementptr inbounds i8, ptr %new_table.i.i, i64 24
  %90 = getelementptr inbounds i8, ptr %89, i64 16
  %91 = getelementptr inbounds i8, ptr %new_table.i.i, i64 24
  %92 = getelementptr inbounds i8, ptr %91, i64 16
  %93 = load i64, ptr %92, align 8
  %94 = sub i64 %93, %_28.i.i
  store i64 %94, ptr %90, align 8
  %95 = getelementptr inbounds i8, ptr %self, i64 24
  %_30.i.i = load i64, ptr %95, align 8
  %96 = getelementptr inbounds i8, ptr %new_table.i.i, i64 24
  %97 = getelementptr inbounds i8, ptr %96, i64 24
  store i64 %_30.i.i, ptr %97, align 8
  %_107.i.i = getelementptr inbounds i8, ptr %new_table.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %4, ptr align 8 %self, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %self, ptr align 8 %_107.i.i, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_107.i.i, ptr align 8 %4, i64 32, i1 false)
  store i64 -9223372036854775807, ptr %_0.i.i, align 8
  %98 = getelementptr inbounds i8, ptr %_0.i.i, i64 8
  store i64 undef, ptr %98, align 8
; invoke core::ptr::drop_in_place<hashbrown::scopeguard::ScopeGuard<hashbrown::raw::RawTableInner,hashbrown::raw::RawTableInner::prepare_resize<alloc::alloc::Global>::{{closure}}>>
  invoke void @"_ZN4core3ptr196drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$alloc..alloc..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h470c7daf7ddbbdccE"(ptr align 8 %new_table.i.i)
          to label %.noexc3 unwind label %cleanup

.noexc3:                                          ; preds = %bb4.i.i
  br label %_ZN9hashbrown3raw13RawTableInner12resize_inner17h4f9c1a421c5f10beE.exit.i

bb5.i.i:                                          ; preds = %bb3.i.i
  %_73.i.i = getelementptr inbounds i8, ptr %new_table.i.i, i64 24
; invoke hashbrown::raw::RawTableInner::find_insert_index
  %new_index.i.i = invoke i64 @_ZN9hashbrown3raw13RawTableInner17find_insert_index17h3b6e254288707eedE(ptr align 8 %_73.i.i, i64 %hash.i.i)
          to label %bb22.i.i unwind label %cleanup.i.i

bb22.i.i:                                         ; preds = %bb5.i.i
  %99 = getelementptr inbounds i8, ptr %new_table.i.i, i64 24
  %_77.i.i = load ptr, ptr %99, align 8
  %_75.i.i = getelementptr inbounds nuw i8, ptr %_77.i.i, i64 %new_index.i.i
  %old_ctrl.i.i = load i8, ptr %_75.i.i, align 1
  %_79.i.i = lshr i64 %hash.i.i, 57
  %_80.i.i = trunc i64 %_79.i.i to i8
  %_84.i.i = sub i64 %new_index.i.i, 16
  %100 = getelementptr inbounds i8, ptr %new_table.i.i, i64 24
  %101 = getelementptr inbounds i8, ptr %100, i64 8
  %_85.i.i = load i64, ptr %101, align 8
  %_83.i.i = and i64 %_84.i.i, %_85.i.i
  %_82.i.i = add i64 %_83.i.i, 16
  %102 = getelementptr inbounds i8, ptr %new_table.i.i, i64 24
  %_90.i.i = load ptr, ptr %102, align 8
  %_88.i.i = getelementptr inbounds nuw i8, ptr %_90.i.i, i64 %new_index.i.i
  store i8 %_80.i.i, ptr %_88.i.i, align 1
  %103 = getelementptr inbounds i8, ptr %new_table.i.i, i64 24
  %_93.i.i = load ptr, ptr %103, align 8
  %_91.i.i = getelementptr inbounds nuw i8, ptr %_93.i.i, i64 %_82.i.i
  store i8 %_80.i.i, ptr %_91.i.i, align 1
  %_97.i.i = load ptr, ptr %self, align 8
  %_96.i.i = add i64 %full_byte_index.i.i, 1
  %_95.i.i = mul i64 %_96.i.i, 8
  %_98.i.i = sub nsw i64 0, %_95.i.i
  %_23.i.i = getelementptr inbounds i8, ptr %_97.i.i, i64 %_98.i.i
  %104 = getelementptr inbounds i8, ptr %new_table.i.i, i64 24
  %_103.i.i = load ptr, ptr %104, align 8
  %_102.i.i = add i64 %new_index.i.i, 1
  %_101.i.i = mul i64 %_102.i.i, 8
  %_104.i.i = sub nsw i64 0, %_101.i.i
  %dst.i.i = getelementptr inbounds i8, ptr %_103.i.i, i64 %_104.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %dst.i.i, ptr align 1 %_23.i.i, i64 8, i1 false)
  br label %bb2.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %105 = landingpad { ptr, i32 }
          cleanup
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb9.i.i:                                          ; preds = %cleanup.i.i
  %106 = load ptr, ptr %6, align 8
  %107 = getelementptr inbounds i8, ptr %6, i64 8
  %108 = load i32, ptr %107, align 8
  %109 = insertvalue { ptr, i32 } poison, ptr %106, 0
  %110 = insertvalue { ptr, i32 } %109, i32 %108, 1
  br label %cleanup.body

_ZN9hashbrown3raw13RawTableInner12resize_inner17h4f9c1a421c5f10beE.exit.i: ; preds = %.noexc3, %bb14.i.i
  %111 = load i64, ptr %_0.i.i, align 8
  %112 = getelementptr inbounds i8, ptr %_0.i.i, i64 8
  %113 = load i64, ptr %112, align 8
  %114 = insertvalue { i64, i64 } poison, i64 %111, 0
  %115 = insertvalue { i64, i64 } %114, i64 %113, 1
  store i64 %111, ptr %_0.i, align 8
  %116 = getelementptr inbounds i8, ptr %_0.i, i64 8
  store i64 %113, ptr %116, align 8
  br label %bb7.i

bb2.i:                                            ; preds = %bb14.i
; invoke hashbrown::raw::RawTableInner::rehash_in_place
  invoke void @_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h92dfb2b2df635e11E(ptr align 8 %self, ptr align 1 %_9, ptr align 8 @vtable.0, i64 8, ptr %9) #24
          to label %.noexc4 unwind label %cleanup

.noexc4:                                          ; preds = %bb2.i
  store i64 -9223372036854775807, ptr %_0.i, align 8
  %117 = getelementptr inbounds i8, ptr %_0.i, i64 8
  store i64 undef, ptr %117, align 8
  br label %bb7.i

bb7.i:                                            ; preds = %.noexc4, %_ZN9hashbrown3raw13RawTableInner12resize_inner17h4f9c1a421c5f10beE.exit.i
  br label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h09a725d9f5f6ce5aE.exit

_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h09a725d9f5f6ce5aE.exit: ; preds = %.noexc, %bb7.i
  %118 = load i64, ptr %_0.i, align 8
  %119 = getelementptr inbounds i8, ptr %_0.i, i64 8
  %120 = load i64, ptr %119, align 8
  %121 = insertvalue { i64, i64 } poison, i64 %118, 0
  %122 = insertvalue { i64, i64 } %121, i64 %120, 1
  br label %bb4

bb6:                                              ; preds = %cleanup.body
  %123 = load ptr, ptr %8, align 8
  %124 = getelementptr inbounds i8, ptr %8, i64 8
  %125 = load i32, ptr %124, align 8
  %126 = insertvalue { ptr, i32 } poison, ptr %123, 0
  %127 = insertvalue { ptr, i32 } %126, i32 %125, 1
  resume { ptr, i32 } %127

cleanup:                                          ; preds = %bb2.i, %bb4.i.i, %_18.i.noexc, %bb4.i, %bb9.i
  %128 = landingpad { ptr, i32 }
          cleanup
  br label %cleanup.body

cleanup.body:                                     ; preds = %bb9.i.i, %cleanup
  %eh.lpad-body = phi { ptr, i32 } [ %128, %cleanup ], [ %110, %bb9.i.i ]
  %129 = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %130 = extractvalue { ptr, i32 } %eh.lpad-body, 1
  store ptr %129, ptr %8, align 8
  %131 = getelementptr inbounds i8, ptr %8, i64 8
  store i32 %130, ptr %131, align 8
  br label %bb6

bb4:                                              ; preds = %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h09a725d9f5f6ce5aE.exit
  %_0.0 = extractvalue { i64, i64 } %122, 0
  %_0.1 = extractvalue { i64, i64 } %122, 1
  %132 = insertvalue { i64, i64 } poison, i64 %_0.0, 0
  %133 = insertvalue { i64, i64 } %132, i64 %_0.1, 1
  ret { i64, i64 } %133

bb1:                                              ; No predecessors!
  unreachable
}

; hashbrown::raw::RawTable<T,A>::reserve_rehash::{{closure}}
; Function Attrs: inlinehint nonlazybind uwtable
define i64 @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17ha9638e1ca1f78d71E"(ptr align 8 %_1, ptr align 8 %table, i64 %index) unnamed_addr #1 {
start:
  %_21 = alloca [8 x i8], align 8
  %ptr = alloca [8 x i8], align 8
  %_7 = load ptr, ptr %_1, align 8
  %_12 = load ptr, ptr %table, align 8
  br label %bb3

bb3:                                              ; preds = %start
  br label %bb7

bb7:                                              ; preds = %bb3
  %_18 = sub nsw i64 0, %index
  %0 = getelementptr inbounds { i32, i32 }, ptr %_12, i64 %_18
  store ptr %0, ptr %ptr, align 8
  br label %bb5

bb5:                                              ; preds = %bb7
  br label %bb4

bb4:                                              ; preds = %bb5
  %_20 = load ptr, ptr %ptr, align 8
  br label %bb10

bb10:                                             ; preds = %bb4
  br label %bb13

bb13:                                             ; preds = %bb10
  %1 = getelementptr inbounds { i32, i32 }, ptr %_20, i64 -1
  store ptr %1, ptr %_21, align 8
  br label %bb11

bb11:                                             ; preds = %bb13
  br label %bb8

bb8:                                              ; preds = %bb11
  %_5 = load ptr, ptr %_21, align 8
; call hashbrown::map::make_hasher::{{closure}}
  %_0 = call i64 @"_ZN9hashbrown3map11make_hasher28_$u7b$$u7b$closure$u7d$$u7d$17hcf36c344707da63fE"(ptr align 8 %_7, ptr align 4 %_5) #24
  ret i64 %_0

bb2:                                              ; No predecessors!
  unreachable

bb6:                                              ; No predecessors!
  unreachable

bb9:                                              ; No predecessors!
  unreachable

bb12:                                             ; No predecessors!
  unreachable
}

; hashbrown::raw::RawTable<T,A>::insert_tagged_at_index
; Function Attrs: inlinehint nonlazybind uwtable
define ptr @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$22insert_tagged_at_index17h812ce0c1ba82202dE"(ptr align 8 %self, i8 %tag, i64 %index, i32 %value.0, i32 %value.1) unnamed_addr #1 {
start:
  %self1 = alloca [8 x i8], align 8
  %ptr = alloca [8 x i8], align 8
  %_11 = load ptr, ptr %self, align 8
  %_9 = getelementptr inbounds nuw i8, ptr %_11, i64 %index
  %old_ctrl = load i8, ptr %_9, align 1
  %_14 = and i8 %old_ctrl, 1
  %_13 = icmp ne i8 %_14, 0
  %_12 = zext i1 %_13 to i64
  %0 = getelementptr inbounds i8, ptr %self, i64 16
  %1 = getelementptr inbounds i8, ptr %self, i64 16
  %2 = load i64, ptr %1, align 8
  %3 = sub i64 %2, %_12
  store i64 %3, ptr %0, align 8
  %_17 = sub i64 %index, 16
  %4 = getelementptr inbounds i8, ptr %self, i64 8
  %_18 = load i64, ptr %4, align 8
  %_16 = and i64 %_17, %_18
  %_15 = add i64 %_16, 16
  %_23 = load ptr, ptr %self, align 8
  %_21 = getelementptr inbounds nuw i8, ptr %_23, i64 %index
  store i8 %tag, ptr %_21, align 1
  %_26 = load ptr, ptr %self, align 8
  %_24 = getelementptr inbounds nuw i8, ptr %_26, i64 %_15
  store i8 %tag, ptr %_24, align 1
  %5 = getelementptr inbounds i8, ptr %self, i64 24
  %6 = getelementptr inbounds i8, ptr %self, i64 24
  %7 = load i64, ptr %6, align 8
  %8 = add i64 %7, 1
  store i64 %8, ptr %5, align 8
  %_31 = load ptr, ptr %self, align 8
  br label %bb2

bb2:                                              ; preds = %start
  br label %bb6

bb6:                                              ; preds = %bb2
  %_37 = sub nsw i64 0, %index
  %9 = getelementptr inbounds { i32, i32 }, ptr %_31, i64 %_37
  store ptr %9, ptr %ptr, align 8
  br label %bb4

bb4:                                              ; preds = %bb6
  br label %bb3

bb3:                                              ; preds = %bb4
  %_39 = load ptr, ptr %ptr, align 8
  br label %bb9

bb9:                                              ; preds = %bb3
  br label %bb12

bb12:                                             ; preds = %bb9
  %10 = getelementptr inbounds { i32, i32 }, ptr %_39, i64 -1
  store ptr %10, ptr %self1, align 8
  br label %bb10

bb10:                                             ; preds = %bb12
  br label %bb7

bb7:                                              ; preds = %bb10
  %11 = load ptr, ptr %self1, align 8
  store i32 %value.0, ptr %11, align 4
  %12 = getelementptr inbounds i8, ptr %11, i64 4
  store i32 %value.1, ptr %12, align 4
  ret ptr %_39

bb1:                                              ; No predecessors!
  unreachable

bb5:                                              ; No predecessors!
  unreachable

bb8:                                              ; No predecessors!
  unreachable

bb11:                                             ; No predecessors!
  unreachable
}

; hashbrown::raw::RawTable<T,A>::find_or_find_insert_index
; Function Attrs: inlinehint nonlazybind uwtable
define { i64, ptr } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$25find_or_find_insert_index17ha45d5bd688ebceaeE"(ptr align 8 %self, i64 %hash, ptr align 4 %0, ptr align 8 %hasher) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %1 = alloca [16 x i8], align 8
  %ptr = alloca [8 x i8], align 8
  %_10 = alloca [16 x i8], align 8
  %_6 = alloca [16 x i8], align 8
  %_0 = alloca [16 x i8], align 8
  %eq = alloca [8 x i8], align 8
  store ptr %0, ptr %eq, align 8
; invoke hashbrown::raw::RawTable<T,A>::reserve
  invoke void @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8286d0de47522977E"(ptr align 8 %self, i64 1, ptr align 8 %hasher)
          to label %bb1 unwind label %cleanup

bb8:                                              ; preds = %cleanup
  %2 = load ptr, ptr %1, align 8
  %3 = getelementptr inbounds i8, ptr %1, i64 8
  %4 = load i32, ptr %3, align 8
  %5 = insertvalue { ptr, i32 } poison, ptr %2, 0
  %6 = insertvalue { ptr, i32 } %5, i32 %4, 1
  resume { ptr, i32 } %6

cleanup:                                          ; preds = %bb1, %start
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = extractvalue { ptr, i32 } %7, 1
  store ptr %8, ptr %1, align 8
  %10 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %9, ptr %10, align 8
  br label %bb8

bb1:                                              ; preds = %start
  store ptr %eq, ptr %_10, align 8
  %11 = getelementptr inbounds i8, ptr %_10, i64 8
  store ptr %self, ptr %11, align 8
; invoke hashbrown::raw::RawTableInner::find_or_find_insert_index_inner
  %12 = invoke { i64, i64 } @_ZN9hashbrown3raw13RawTableInner31find_or_find_insert_index_inner17h398c21114acda450E(ptr align 8 %self, i64 %hash, ptr align 1 %_10, ptr align 8 @vtable.1)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %13 = extractvalue { i64, i64 } %12, 0
  %14 = extractvalue { i64, i64 } %12, 1
  store i64 %13, ptr %_6, align 8
  %15 = getelementptr inbounds i8, ptr %_6, i64 8
  store i64 %14, ptr %15, align 8
  %_13 = load i64, ptr %_6, align 8
  %16 = getelementptr inbounds i8, ptr %_6, i64 8
  %17 = load i64, ptr %16, align 8
  %18 = trunc nuw i64 %_13 to i1
  br i1 %18, label %bb4, label %bb5

bb4:                                              ; preds = %bb2
  %19 = getelementptr inbounds i8, ptr %_6, i64 8
  %index1 = load i64, ptr %19, align 8
  %20 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %index1, ptr %20, align 8
  store i64 1, ptr %_0, align 8
  br label %bb6

bb5:                                              ; preds = %bb2
  %21 = getelementptr inbounds i8, ptr %_6, i64 8
  %index = load i64, ptr %21, align 8
  %_21 = load ptr, ptr %self, align 8
  br label %bb11

bb11:                                             ; preds = %bb5
  br label %bb15

bb15:                                             ; preds = %bb11
  %_27 = sub nsw i64 0, %index
  %22 = getelementptr inbounds { i32, i32 }, ptr %_21, i64 %_27
  store ptr %22, ptr %ptr, align 8
  br label %bb13

bb13:                                             ; preds = %bb15
  br label %bb12

bb12:                                             ; preds = %bb13
  %_29 = load ptr, ptr %ptr, align 8
  %23 = getelementptr inbounds i8, ptr %_0, i64 8
  store ptr %_29, ptr %23, align 8
  store i64 0, ptr %_0, align 8
  br label %bb6

bb6:                                              ; preds = %bb4, %bb12
  %24 = load i64, ptr %_0, align 8
  %25 = getelementptr inbounds i8, ptr %_0, i64 8
  %26 = load ptr, ptr %25, align 8
  %27 = insertvalue { i64, ptr } poison, i64 %24, 0
  %28 = insertvalue { i64, ptr } %27, ptr %26, 1
  ret { i64, ptr } %28

bb3:                                              ; No predecessors!
  unreachable

bb10:                                             ; No predecessors!
  unreachable

bb14:                                             ; No predecessors!
  unreachable
}

; hashbrown::raw::RawTable<T,A>::find_or_find_insert_index::{{closure}}
; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$25find_or_find_insert_index28_$u7b$$u7b$closure$u7d$$u7d$17hb56753ae23eb0d01E"(ptr align 8 %_1, i64 %index) unnamed_addr #1 {
start:
  %_21 = alloca [8 x i8], align 8
  %ptr = alloca [8 x i8], align 8
  %_6 = load ptr, ptr %_1, align 8
  %0 = getelementptr inbounds i8, ptr %_1, i64 8
  %self = load ptr, ptr %0, align 8
  %_12 = load ptr, ptr %self, align 8
  br label %bb3

bb3:                                              ; preds = %start
  br label %bb7

bb7:                                              ; preds = %bb3
  %_18 = sub nsw i64 0, %index
  %1 = getelementptr inbounds { i32, i32 }, ptr %_12, i64 %_18
  store ptr %1, ptr %ptr, align 8
  br label %bb5

bb5:                                              ; preds = %bb7
  br label %bb4

bb4:                                              ; preds = %bb5
  %_20 = load ptr, ptr %ptr, align 8
  br label %bb10

bb10:                                             ; preds = %bb4
  br label %bb13

bb13:                                             ; preds = %bb10
  %2 = getelementptr inbounds { i32, i32 }, ptr %_20, i64 -1
  store ptr %2, ptr %_21, align 8
  br label %bb11

bb11:                                             ; preds = %bb13
  br label %bb8

bb8:                                              ; preds = %bb11
  %_4 = load ptr, ptr %_21, align 8
; call hashbrown::map::equivalent_key::{{closure}}
  %_0 = call zeroext i1 @"_ZN9hashbrown3map14equivalent_key28_$u7b$$u7b$closure$u7d$$u7d$17hcd8ee0e393e2f483E"(ptr align 8 %_6, ptr align 4 %_4) #24
  ret i1 %_0

bb2:                                              ; No predecessors!
  unreachable

bb6:                                              ; No predecessors!
  unreachable

bb9:                                              ; No predecessors!
  unreachable

bb12:                                             ; No predecessors!
  unreachable
}

; hashbrown::raw::RawTable<T,A>::find
; Function Attrs: inlinehint nonlazybind uwtable
define ptr @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h8ccb979eb3c8b261E"(ptr align 8 %self, i64 %hash, ptr align 4 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %1 = alloca [16 x i8], align 16
  %2 = alloca [16 x i8], align 16
  %3 = alloca [16 x i8], align 16
  %4 = alloca [16 x i8], align 16
  %5 = alloca [16 x i8], align 16
  %6 = alloca [4 x i8], align 4
  %7 = alloca [16 x i8], align 16
  %8 = alloca [16 x i8], align 16
  %9 = alloca [16 x i8], align 16
  %10 = alloca [16 x i8], align 16
  %11 = alloca [16 x i8], align 16
  %12 = alloca [16 x i8], align 16
  %_39.i = alloca [2 x i8], align 2
  %self1.i = alloca [16 x i8], align 8
  %_9.i = alloca [16 x i8], align 8
  %iter.i = alloca [2 x i8], align 2
  %probe_seq.i = alloca [16 x i8], align 8
  %_0.i = alloca [16 x i8], align 8
  %13 = alloca [16 x i8], align 8
  %ptr = alloca [8 x i8], align 8
  %_8 = alloca [16 x i8], align 8
  %result = alloca [16 x i8], align 8
  %_0 = alloca [8 x i8], align 8
  %eq = alloca [8 x i8], align 8
  store ptr %0, ptr %eq, align 8
  store ptr %eq, ptr %_8, align 8
  %14 = getelementptr inbounds i8, ptr %_8, i64 8
  store ptr %self, ptr %14, align 8
  %_21.i = lshr i64 %hash, 57
  %tag_hash.i = trunc i64 %_21.i to i8
  %15 = getelementptr inbounds i8, ptr %self, i64 8
  %_26.i = load i64, ptr %15, align 8
  %_24.i = and i64 %hash, %_26.i
  store i64 %_24.i, ptr %probe_seq.i, align 8
  %16 = getelementptr inbounds i8, ptr %probe_seq.i, i64 8
  store i64 0, ptr %16, align 8
  br label %bb1.i

bb1.i:                                            ; preds = %bb20.i, %start
  %index.i = load i64, ptr %probe_seq.i, align 8
  %_29.i = load ptr, ptr %self, align 8
  %_27.i = getelementptr inbounds nuw i8, ptr %_29.i, i64 %index.i
; invoke core::core_arch::x86::sse2::_mm_loadu_si128
  invoke void @_ZN4core9core_arch3x864sse215_mm_loadu_si12817h564f784647a6e9d3E(ptr sret([16 x i8]) align 16 %12, ptr %_27.i) #24
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb1.i
  %group.i = load <2 x i64>, ptr %12, align 16
; invoke core::core_arch::x86::sse2::_mm_set1_epi8
  invoke void @_ZN4core9core_arch3x864sse213_mm_set1_epi817h0d692b8354759098E(ptr sret([16 x i8]) align 16 %11, i8 %tag_hash.i) #24
          to label %.noexc1 unwind label %cleanup

.noexc1:                                          ; preds = %.noexc
  %_33.i = load <2 x i64>, ptr %11, align 16
  store <2 x i64> %group.i, ptr %9, align 16
  store <2 x i64> %_33.i, ptr %8, align 16
; invoke core::core_arch::x86::sse2::_mm_cmpeq_epi8
  invoke void @_ZN4core9core_arch3x864sse214_mm_cmpeq_epi817h5663e4860e31e574E(ptr sret([16 x i8]) align 16 %10, ptr align 16 %9, ptr align 16 %8) #24
          to label %.noexc2 unwind label %cleanup

.noexc2:                                          ; preds = %.noexc1
  %cmp.i = load <2 x i64>, ptr %10, align 16
  store <2 x i64> %cmp.i, ptr %7, align 16
; invoke core::core_arch::x86::sse2::_mm_movemask_epi8
  %_36.i3 = invoke i32 @_ZN4core9core_arch3x864sse217_mm_movemask_epi817h6dafdd63c17132afE(ptr align 16 %7) #24
          to label %_36.i.noexc unwind label %cleanup

_36.i.noexc:                                      ; preds = %.noexc2
  %_35.i = trunc i32 %_36.i3 to i16
  store i16 %_35.i, ptr %iter.i, align 2
  br label %bb2.i

bb2.i:                                            ; preds = %bb17.i, %_36.i.noexc
  %self2.i = load i16, ptr %iter.i, align 2
  store i16 %self2.i, ptr %_39.i, align 2
  %17 = load i16, ptr %_39.i, align 2
  %18 = icmp eq i16 %17, 0
  %_40.i = select i1 %18, i64 0, i64 1
  %19 = trunc nuw i64 %_40.i to i1
  br i1 %19, label %bb10.i, label %bb11.i

bb10.i:                                           ; preds = %bb2.i
  %nonzero.i = load i16, ptr %_39.i, align 2
  %20 = call i16 @llvm.cttz.i16(i16 %nonzero.i, i1 true)
  %21 = zext i16 %20 to i32
  store i32 %21, ptr %6, align 4
  %_45.i = load i32, ptr %6, align 4
  %_42.i = zext i32 %_45.i to i64
  %22 = getelementptr inbounds i8, ptr %self1.i, i64 8
  store i64 %_42.i, ptr %22, align 8
  store i64 1, ptr %self1.i, align 8
  %23 = getelementptr inbounds i8, ptr %self1.i, i64 8
  %bit.i = load i64, ptr %23, align 8
  %self3.i = load i16, ptr %iter.i, align 2
  %_52.i = sub i16 %self3.i, 1
  %_51.i = and i16 %self3.i, %_52.i
  store i16 %_51.i, ptr %iter.i, align 2
  %24 = getelementptr inbounds i8, ptr %_9.i, i64 8
  store i64 %bit.i, ptr %24, align 8
  store i64 1, ptr %_9.i, align 8
  %25 = getelementptr inbounds i8, ptr %_9.i, i64 8
  %bit4.i = load i64, ptr %25, align 8
  %_14.i = load i64, ptr %probe_seq.i, align 8
  %_13.i = add i64 %_14.i, %bit4.i
  %26 = getelementptr inbounds i8, ptr %self, i64 8
  %_15.i = load i64, ptr %26, align 8
  %index5.i = and i64 %_13.i, %_15.i
; invoke hashbrown::raw::RawTable<T,A>::find::{{closure}}
  %b.i4 = invoke zeroext i1 @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hd329a06fb6164e13E"(ptr align 1 %_8, i64 %index5.i) #24
          to label %b.i.noexc unwind label %cleanup

b.i.noexc:                                        ; preds = %bb10.i
  br i1 %b.i4, label %bb16.i, label %bb17.i

bb11.i:                                           ; preds = %bb2.i
  store i64 0, ptr %self1.i, align 8
  %27 = getelementptr inbounds i8, ptr %self1.i, i64 8
  store i64 undef, ptr %27, align 8
; invoke core::core_arch::x86::sse2::_mm_set1_epi8
  invoke void @_ZN4core9core_arch3x864sse213_mm_set1_epi817h0d692b8354759098E(ptr sret([16 x i8]) align 16 %5, i8 -1) #24
          to label %.noexc5 unwind label %cleanup

.noexc5:                                          ; preds = %bb11.i
  %_56.i = load <2 x i64>, ptr %5, align 16
  store <2 x i64> %group.i, ptr %3, align 16
  store <2 x i64> %_56.i, ptr %2, align 16
; invoke core::core_arch::x86::sse2::_mm_cmpeq_epi8
  invoke void @_ZN4core9core_arch3x864sse214_mm_cmpeq_epi817h5663e4860e31e574E(ptr sret([16 x i8]) align 16 %4, ptr align 16 %3, ptr align 16 %2) #24
          to label %.noexc6 unwind label %cleanup

.noexc6:                                          ; preds = %.noexc5
  %cmp6.i = load <2 x i64>, ptr %4, align 16
  store <2 x i64> %cmp6.i, ptr %1, align 16
; invoke core::core_arch::x86::sse2::_mm_movemask_epi8
  %_58.i7 = invoke i32 @_ZN4core9core_arch3x864sse217_mm_movemask_epi817h6dafdd63c17132afE(ptr align 16 %1) #24
          to label %_58.i.noexc unwind label %cleanup

_58.i.noexc:                                      ; preds = %.noexc6
  %self7.i = trunc i32 %_58.i7 to i16
  %b8.i = icmp ne i16 %self7.i, 0
  br i1 %b8.i, label %bb19.i, label %bb20.i

bb17.i:                                           ; preds = %b.i.noexc
  br label %bb2.i

bb16.i:                                           ; preds = %b.i.noexc
  %28 = getelementptr inbounds i8, ptr %_0.i, i64 8
  store i64 %index5.i, ptr %28, align 8
  store i64 1, ptr %_0.i, align 8
  br label %_ZN9hashbrown3raw13RawTableInner10find_inner17h63ff474dff1d1e61E.exit

bb20.i:                                           ; preds = %_58.i.noexc
  %29 = getelementptr inbounds i8, ptr %self, i64 8
  %bucket_mask.i = load i64, ptr %29, align 8
  %30 = getelementptr inbounds i8, ptr %probe_seq.i, i64 8
  %31 = getelementptr inbounds i8, ptr %probe_seq.i, i64 8
  %32 = load i64, ptr %31, align 8
  %33 = add i64 %32, 16
  store i64 %33, ptr %30, align 8
  %34 = getelementptr inbounds i8, ptr %probe_seq.i, i64 8
  %_61.i = load i64, ptr %34, align 8
  %35 = load i64, ptr %probe_seq.i, align 8
  %36 = add i64 %35, %_61.i
  store i64 %36, ptr %probe_seq.i, align 8
  %37 = load i64, ptr %probe_seq.i, align 8
  %38 = and i64 %37, %bucket_mask.i
  store i64 %38, ptr %probe_seq.i, align 8
  br label %bb1.i

bb19.i:                                           ; preds = %_58.i.noexc
  store i64 0, ptr %_0.i, align 8
  %39 = getelementptr inbounds i8, ptr %_0.i, i64 8
  store i64 undef, ptr %39, align 8
  br label %_ZN9hashbrown3raw13RawTableInner10find_inner17h63ff474dff1d1e61E.exit

_ZN9hashbrown3raw13RawTableInner10find_inner17h63ff474dff1d1e61E.exit: ; preds = %bb16.i, %bb19.i
  %40 = load i64, ptr %_0.i, align 8
  %41 = getelementptr inbounds i8, ptr %_0.i, i64 8
  %42 = load i64, ptr %41, align 8
  %43 = insertvalue { i64, i64 } poison, i64 %40, 0
  %44 = insertvalue { i64, i64 } %43, i64 %42, 1
  br label %bb1

bb7:                                              ; preds = %cleanup
  %45 = load ptr, ptr %13, align 8
  %46 = getelementptr inbounds i8, ptr %13, i64 8
  %47 = load i32, ptr %46, align 8
  %48 = insertvalue { ptr, i32 } poison, ptr %45, 0
  %49 = insertvalue { ptr, i32 } %48, i32 %47, 1
  resume { ptr, i32 } %49

cleanup:                                          ; preds = %.noexc6, %.noexc5, %bb11.i, %bb10.i, %.noexc2, %.noexc1, %.noexc, %bb1.i
  %50 = landingpad { ptr, i32 }
          cleanup
  %51 = extractvalue { ptr, i32 } %50, 0
  %52 = extractvalue { ptr, i32 } %50, 1
  store ptr %51, ptr %13, align 8
  %53 = getelementptr inbounds i8, ptr %13, i64 8
  store i32 %52, ptr %53, align 8
  br label %bb7

bb1:                                              ; preds = %_ZN9hashbrown3raw13RawTableInner10find_inner17h63ff474dff1d1e61E.exit
  %54 = extractvalue { i64, i64 } %44, 0
  %55 = extractvalue { i64, i64 } %44, 1
  store i64 %54, ptr %result, align 8
  %56 = getelementptr inbounds i8, ptr %result, i64 8
  store i64 %55, ptr %56, align 8
  %_10 = load i64, ptr %result, align 8
  %57 = getelementptr inbounds i8, ptr %result, i64 8
  %58 = load i64, ptr %57, align 8
  %59 = trunc nuw i64 %_10 to i1
  br i1 %59, label %bb4, label %bb3

bb4:                                              ; preds = %bb1
  %60 = getelementptr inbounds i8, ptr %result, i64 8
  %index = load i64, ptr %60, align 8
  %_17 = load ptr, ptr %self, align 8
  br label %bb10

bb3:                                              ; preds = %bb1
  store ptr null, ptr %_0, align 8
  br label %bb5

bb5:                                              ; preds = %bb11, %bb3
  %61 = load ptr, ptr %_0, align 8
  ret ptr %61

bb10:                                             ; preds = %bb4
  br label %bb14

bb14:                                             ; preds = %bb10
  %_23 = sub nsw i64 0, %index
  %62 = getelementptr inbounds { i32, i32 }, ptr %_17, i64 %_23
  store ptr %62, ptr %ptr, align 8
  br label %bb12

bb12:                                             ; preds = %bb14
  br label %bb11

bb11:                                             ; preds = %bb12
  %_25 = load ptr, ptr %ptr, align 8
  store ptr %_25, ptr %_0, align 8
  br label %bb5

bb2:                                              ; No predecessors!
  unreachable

bb9:                                              ; No predecessors!
  unreachable

bb13:                                             ; No predecessors!
  unreachable
}

; hashbrown::raw::RawTable<T,A>::find::{{closure}}
; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hd329a06fb6164e13E"(ptr align 8 %_1, i64 %index) unnamed_addr #1 {
start:
  %_21 = alloca [8 x i8], align 8
  %ptr = alloca [8 x i8], align 8
  %_6 = load ptr, ptr %_1, align 8
  %0 = getelementptr inbounds i8, ptr %_1, i64 8
  %self = load ptr, ptr %0, align 8
  %_12 = load ptr, ptr %self, align 8
  br label %bb3

bb3:                                              ; preds = %start
  br label %bb7

bb7:                                              ; preds = %bb3
  %_18 = sub nsw i64 0, %index
  %1 = getelementptr inbounds { i32, i32 }, ptr %_12, i64 %_18
  store ptr %1, ptr %ptr, align 8
  br label %bb5

bb5:                                              ; preds = %bb7
  br label %bb4

bb4:                                              ; preds = %bb5
  %_20 = load ptr, ptr %ptr, align 8
  br label %bb10

bb10:                                             ; preds = %bb4
  br label %bb13

bb13:                                             ; preds = %bb10
  %2 = getelementptr inbounds { i32, i32 }, ptr %_20, i64 -1
  store ptr %2, ptr %_21, align 8
  br label %bb11

bb11:                                             ; preds = %bb13
  br label %bb8

bb8:                                              ; preds = %bb11
  %_4 = load ptr, ptr %_21, align 8
; call hashbrown::map::equivalent_key::{{closure}}
  %_0 = call zeroext i1 @"_ZN9hashbrown3map14equivalent_key28_$u7b$$u7b$closure$u7d$$u7d$17hcd8ee0e393e2f483E"(ptr align 8 %_6, ptr align 4 %_4) #24
  ret i1 %_0

bb2:                                              ; No predecessors!
  unreachable

bb6:                                              ; No predecessors!
  unreachable

bb9:                                              ; No predecessors!
  unreachable

bb12:                                             ; No predecessors!
  unreachable
}

; hashbrown::raw::RawTable<T,A>::reserve
; Function Attrs: nonlazybind uwtable
define void @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8286d0de47522977E"(ptr align 8 %self, i64 %additional, ptr align 8 %hasher) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %1 = getelementptr inbounds i8, ptr %self, i64 16
  %_5 = load i64, ptr %1, align 8
  %b = icmp ugt i64 %additional, %_5
  br i1 %b, label %bb8, label %bb10

bb10:                                             ; preds = %start
  br label %bb4

bb8:                                              ; preds = %start
; invoke hashbrown::raw::RawTable<T,A>::reserve_rehash
  %2 = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h83aafb7e25988a67E"(ptr align 8 %self, i64 %additional, ptr align 8 %hasher, i1 zeroext true)
          to label %bb1 unwind label %cleanup

bb4:                                              ; preds = %bb3, %bb10
  ret void

bb7:                                              ; preds = %cleanup
  br label %bb5

cleanup:                                          ; preds = %bb8
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  %5 = extractvalue { ptr, i32 } %3, 1
  store ptr %4, ptr %0, align 8
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %5, ptr %6, align 8
  br label %bb7

bb1:                                              ; preds = %bb8
  %_8.0 = extractvalue { i64, i64 } %2, 0
  %_8.1 = extractvalue { i64, i64 } %2, 1
  %7 = icmp eq i64 %_8.0, -9223372036854775807
  %_13 = select i1 %7, i64 0, i64 1
  %_12 = icmp eq i64 %_13, 0
  %_6 = xor i1 %_12, true
  br i1 %_6, label %bb2, label %bb3

bb3:                                              ; preds = %bb1
  br label %bb4

bb2:                                              ; preds = %bb1
  unreachable

bb5:                                              ; preds = %bb6, %bb7
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr inbounds i8, ptr %0, i64 8
  %10 = load i32, ptr %9, align 8
  %11 = insertvalue { ptr, i32 } poison, ptr %8, 0
  %12 = insertvalue { ptr, i32 } %11, i32 %10, 1
  resume { ptr, i32 } %12

bb6:                                              ; No predecessors!
  br label %bb5
}

; hashbrown::control::group::sse2::Group::convert_special_to_empty_and_full_to_deleted
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN9hashbrown7control5group4sse25Group44convert_special_to_empty_and_full_to_deleted17h17c276b14413bd24E(ptr sret([16 x i8]) align 16 %_0, ptr align 16 %self) unnamed_addr #1 {
start:
  %0 = alloca [16 x i8], align 16
  %1 = alloca [16 x i8], align 16
  %2 = alloca [16 x i8], align 16
  %3 = alloca [16 x i8], align 16
  %4 = alloca [16 x i8], align 16
  %5 = alloca [16 x i8], align 16
  %6 = alloca [16 x i8], align 16
  %7 = alloca [16 x i8], align 16
; call core::core_arch::x86::sse2::_mm_setzero_si128
  call void @_ZN4core9core_arch3x864sse217_mm_setzero_si12817h9bc1a2cd283b95dcE(ptr sret([16 x i8]) align 16 %7) #24
  %zero = load <2 x i64>, ptr %7, align 16
  %_4 = load <2 x i64>, ptr %self, align 16
  store <2 x i64> %zero, ptr %5, align 16
  store <2 x i64> %_4, ptr %4, align 16
; call core::core_arch::x86::sse2::_mm_cmpgt_epi8
  call void @_ZN4core9core_arch3x864sse214_mm_cmpgt_epi817h0b24c5381a0adb1eE(ptr sret([16 x i8]) align 16 %6, ptr align 16 %5, ptr align 16 %4) #24
  %special = load <2 x i64>, ptr %6, align 16
; call core::core_arch::x86::sse2::_mm_set1_epi8
  call void @_ZN4core9core_arch3x864sse213_mm_set1_epi817h0d692b8354759098E(ptr sret([16 x i8]) align 16 %3, i8 -128) #24
  %_6 = load <2 x i64>, ptr %3, align 16
  store <2 x i64> %special, ptr %1, align 16
  store <2 x i64> %_6, ptr %0, align 16
; call core::core_arch::x86::sse2::_mm_or_si128
  call void @_ZN4core9core_arch3x864sse212_mm_or_si12817h0e83b5ca29997360E(ptr sret([16 x i8]) align 16 %2, ptr align 16 %1, ptr align 16 %0) #24
  %_5 = load <2 x i64>, ptr %2, align 16
  store <2 x i64> %_5, ptr %_0, align 16
  ret void
}

; Function Attrs: nonlazybind uwtable
define i8 @cmpfunc(ptr align 4 %a, ptr align 4 %b) unnamed_addr #3 {
start:
; call core::cmp::impls::<impl core::cmp::Ord for i32>::cmp
  %_0 = call i8 @"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h764980daa63b1ca2E"(ptr align 4 %a, ptr align 4 %b) #24
  ret i8 %_0
}

; Function Attrs: nonlazybind uwtable
define i32 @f_gold(i32 %N) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %self.i18 = alloca [8 x i8], align 8
  %self.i12 = alloca [8 x i8], align 8
  %self.i6 = alloca [8 x i8], align 8
  %self.i = alloca [8 x i8], align 8
  %0 = alloca [16 x i8], align 8
  %_39 = alloca [4 x i8], align 4
  %_32 = alloca [4 x i8], align 4
  %_21 = alloca [4 x i8], align 4
  %_14 = alloca [4 x i8], align 4
  %i = alloca [4 x i8], align 4
  %dp = alloca [48 x i8], align 8
; call std::collections::hash::map::HashMap<K,V>::new
  call void @"_ZN3std11collections4hash3map20HashMap$LT$K$C$V$GT$3new17hfd1883de9fe6b1e7E"(ptr sret([48 x i8]) align 8 %dp) #24
; invoke std::collections::hash::map::HashMap<K,V,S>::insert
  %1 = invoke { i32, i32 } @"_ZN3std11collections4hash3map24HashMap$LT$K$C$V$C$S$GT$6insert17h2bbaf467dbed1d33E"(ptr align 8 %dp, i32 0, i32 1)
          to label %bb2 unwind label %cleanup

bb25:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<std::collections::hash::map::HashMap<i32,i32>>
  invoke void @"_ZN4core3ptr74drop_in_place$LT$std..collections..hash..map..HashMap$LT$i32$C$i32$GT$$GT$17haecec49db4630a32E"(ptr align 8 %dp) #28
          to label %bb26 unwind label %terminate

cleanup:                                          ; preds = %bb2.i20, %bb2.i14, %bb2.i8, %bb2.i, %panic5, %bb19, %bb18, %bb16, %panic4, %bb13, %panic3, %panic2, %bb10, %bb8, %panic1, %bb5, %panic, %bb2, %start
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  %4 = extractvalue { ptr, i32 } %2, 1
  store ptr %3, ptr %0, align 8
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %4, ptr %5, align 8
  br label %bb25

bb2:                                              ; preds = %start
  %_3.0 = extractvalue { i32, i32 } %1, 0
  %_3.1 = extractvalue { i32, i32 } %1, 1
; invoke std::collections::hash::map::HashMap<K,V,S>::insert
  %6 = invoke { i32, i32 } @"_ZN3std11collections4hash3map24HashMap$LT$K$C$V$C$S$GT$6insert17h2bbaf467dbed1d33E"(ptr align 8 %dp, i32 1, i32 2)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  %_5.0 = extractvalue { i32, i32 } %6, 0
  %_5.1 = extractvalue { i32, i32 } %6, 1
  store i32 2, ptr %i, align 4
  br label %bb4

bb4:                                              ; preds = %bb21, %bb3
  %_15 = load i32, ptr %i, align 4
  %7 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_15, i32 1)
  %_16.0 = extractvalue { i32, i1 } %7, 0
  %_16.1 = extractvalue { i32, i1 } %7, 1
  br i1 %_16.1, label %panic, label %bb5

bb5:                                              ; preds = %bb4
  store i32 %_16.0, ptr %_14, align 4
; invoke std::collections::hash::map::HashMap<K,V,S>::get
  %_11 = invoke align 4 ptr @"_ZN3std11collections4hash3map24HashMap$LT$K$C$V$C$S$GT$3get17h1abbfc889363e7eeE"(ptr align 8 %dp, ptr align 4 %_14)
          to label %bb6 unwind label %cleanup

panic:                                            ; preds = %bb4
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_c628948e3530c48665293666100fe0d3) #29
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic5, %panic4, %panic3, %panic2, %panic1, %panic
  unreachable

bb6:                                              ; preds = %bb5
  store ptr %_11, ptr %self.i18, align 8
  %8 = load ptr, ptr %self.i18, align 8
  %9 = ptrtoint ptr %8 to i64
  %10 = icmp eq i64 %9, 0
  %_2.i19 = select i1 %10, i64 0, i64 1
  %11 = trunc nuw i64 %_2.i19 to i1
  br i1 %11, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hff669116e50ac77eE.exit23", label %bb2.i20

bb2.i20:                                          ; preds = %bb6
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_259fc6b6cbee0e44773f194fbbadbd4a) #23
          to label %.noexc22 unwind label %cleanup

.noexc22:                                         ; preds = %bb2.i20
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hff669116e50ac77eE.exit23": ; preds = %bb6
  %val.i21 = load ptr, ptr %self.i18, align 8
  br label %bb7

bb7:                                              ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hff669116e50ac77eE.exit23"
  %_22 = load i32, ptr %i, align 4
  %12 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_22, i32 2)
  %_23.0 = extractvalue { i32, i1 } %12, 0
  %_23.1 = extractvalue { i32, i1 } %12, 1
  br i1 %_23.1, label %panic1, label %bb8

bb8:                                              ; preds = %bb7
  store i32 %_23.0, ptr %_21, align 4
; invoke std::collections::hash::map::HashMap<K,V,S>::get
  %_18 = invoke align 4 ptr @"_ZN3std11collections4hash3map24HashMap$LT$K$C$V$C$S$GT$3get17h1abbfc889363e7eeE"(ptr align 8 %dp, ptr align 4 %_21)
          to label %bb9 unwind label %cleanup

panic1:                                           ; preds = %bb7
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_7cadb87beeffa680d95784f1e57b5d3d) #29
          to label %unreachable unwind label %cleanup

bb9:                                              ; preds = %bb8
  store ptr %_18, ptr %self.i12, align 8
  %13 = load ptr, ptr %self.i12, align 8
  %14 = ptrtoint ptr %13 to i64
  %15 = icmp eq i64 %14, 0
  %_2.i13 = select i1 %15, i64 0, i64 1
  %16 = trunc nuw i64 %_2.i13 to i1
  br i1 %16, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hff669116e50ac77eE.exit17", label %bb2.i14

bb2.i14:                                          ; preds = %bb9
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_70a99ab46af915d240a8ccdd1b306a78) #23
          to label %.noexc16 unwind label %cleanup

.noexc16:                                         ; preds = %bb2.i14
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hff669116e50ac77eE.exit17": ; preds = %bb9
  %val.i15 = load ptr, ptr %self.i12, align 8
  br label %bb10

bb10:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hff669116e50ac77eE.exit17"
; invoke <&i32 as core::ops::arith::Add>::add
  %_9 = invoke i32 @"_ZN49_$LT$$RF$i32$u20$as$u20$core..ops..arith..Add$GT$3add17h9ca9887162e076c6E"(ptr align 4 %val.i21, ptr align 4 %val.i15, ptr align 8 @alloc_702147b5a892cfde73ab4ea1374bcff3)
          to label %bb11 unwind label %cleanup

bb11:                                             ; preds = %bb10
  %_8 = icmp sle i32 %_9, %N
  br i1 %_8, label %bb12, label %bb22

bb22:                                             ; preds = %bb11
  %_43 = load i32, ptr %i, align 4
  %17 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_43, i32 2)
  %_44.0 = extractvalue { i32, i1 } %17, 0
  %_44.1 = extractvalue { i32, i1 } %17, 1
  br i1 %_44.1, label %panic2, label %bb23

bb12:                                             ; preds = %bb11
  %_26 = load i32, ptr %i, align 4
  %_33 = load i32, ptr %i, align 4
  %18 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_33, i32 1)
  %_34.0 = extractvalue { i32, i1 } %18, 0
  %_34.1 = extractvalue { i32, i1 } %18, 1
  br i1 %_34.1, label %panic3, label %bb13

bb23:                                             ; preds = %bb22
; call core::ptr::drop_in_place<std::collections::hash::map::HashMap<i32,i32>>
  call void @"_ZN4core3ptr74drop_in_place$LT$std..collections..hash..map..HashMap$LT$i32$C$i32$GT$$GT$17haecec49db4630a32E"(ptr align 8 %dp)
  ret i32 %_44.0

panic2:                                           ; preds = %bb22
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_4abe4e576db75962aecd18bcc4ba2b21) #29
          to label %unreachable unwind label %cleanup

bb13:                                             ; preds = %bb12
  store i32 %_34.0, ptr %_32, align 4
; invoke std::collections::hash::map::HashMap<K,V,S>::get
  %_29 = invoke align 4 ptr @"_ZN3std11collections4hash3map24HashMap$LT$K$C$V$C$S$GT$3get17h1abbfc889363e7eeE"(ptr align 8 %dp, ptr align 4 %_32)
          to label %bb14 unwind label %cleanup

panic3:                                           ; preds = %bb12
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_bf18a3fce0cac7293c64e0a90ab29347) #29
          to label %unreachable unwind label %cleanup

bb14:                                             ; preds = %bb13
  store ptr %_29, ptr %self.i6, align 8
  %19 = load ptr, ptr %self.i6, align 8
  %20 = ptrtoint ptr %19 to i64
  %21 = icmp eq i64 %20, 0
  %_2.i7 = select i1 %21, i64 0, i64 1
  %22 = trunc nuw i64 %_2.i7 to i1
  br i1 %22, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hff669116e50ac77eE.exit11", label %bb2.i8

bb2.i8:                                           ; preds = %bb14
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_92d6528911e7980a8c7d58abe4cdd652) #23
          to label %.noexc10 unwind label %cleanup

.noexc10:                                         ; preds = %bb2.i8
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hff669116e50ac77eE.exit11": ; preds = %bb14
  %val.i9 = load ptr, ptr %self.i6, align 8
  br label %bb15

bb15:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hff669116e50ac77eE.exit11"
  %_40 = load i32, ptr %i, align 4
  %23 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_40, i32 2)
  %_41.0 = extractvalue { i32, i1 } %23, 0
  %_41.1 = extractvalue { i32, i1 } %23, 1
  br i1 %_41.1, label %panic4, label %bb16

bb16:                                             ; preds = %bb15
  store i32 %_41.0, ptr %_39, align 4
; invoke std::collections::hash::map::HashMap<K,V,S>::get
  %_36 = invoke align 4 ptr @"_ZN3std11collections4hash3map24HashMap$LT$K$C$V$C$S$GT$3get17h1abbfc889363e7eeE"(ptr align 8 %dp, ptr align 4 %_39)
          to label %bb17 unwind label %cleanup

panic4:                                           ; preds = %bb15
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_7d0982d3710b64a7c789f2d7ff2a5e25) #29
          to label %unreachable unwind label %cleanup

bb17:                                             ; preds = %bb16
  store ptr %_36, ptr %self.i, align 8
  %24 = load ptr, ptr %self.i, align 8
  %25 = ptrtoint ptr %24 to i64
  %26 = icmp eq i64 %25, 0
  %_2.i = select i1 %26, i64 0, i64 1
  %27 = trunc nuw i64 %_2.i to i1
  br i1 %27, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hff669116e50ac77eE.exit", label %bb2.i

bb2.i:                                            ; preds = %bb17
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_848a8850280af43732882781277670ff) #23
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb2.i
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hff669116e50ac77eE.exit": ; preds = %bb17
  %val.i = load ptr, ptr %self.i, align 8
  br label %bb18

bb18:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hff669116e50ac77eE.exit"
; invoke <&i32 as core::ops::arith::Add>::add
  %_27 = invoke i32 @"_ZN49_$LT$$RF$i32$u20$as$u20$core..ops..arith..Add$GT$3add17h9ca9887162e076c6E"(ptr align 4 %val.i9, ptr align 4 %val.i, ptr align 8 @alloc_51bb40a3f33ce10a74adeb463e5bdff4)
          to label %bb19 unwind label %cleanup

bb19:                                             ; preds = %bb18
; invoke std::collections::hash::map::HashMap<K,V,S>::insert
  %28 = invoke { i32, i32 } @"_ZN3std11collections4hash3map24HashMap$LT$K$C$V$C$S$GT$6insert17h2bbaf467dbed1d33E"(ptr align 8 %dp, i32 %_26, i32 %_27)
          to label %bb20 unwind label %cleanup

bb20:                                             ; preds = %bb19
  %_24.0 = extractvalue { i32, i32 } %28, 0
  %_24.1 = extractvalue { i32, i32 } %28, 1
  %29 = load i32, ptr %i, align 4
  %30 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %29, i32 1)
  %_42.0 = extractvalue { i32, i1 } %30, 0
  %_42.1 = extractvalue { i32, i1 } %30, 1
  br i1 %_42.1, label %panic5, label %bb21

bb21:                                             ; preds = %bb20
  store i32 %_42.0, ptr %i, align 4
  br label %bb4

panic5:                                           ; preds = %bb20
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_92f8e2d18efc1c93950de51e508aa550) #29
          to label %unreachable unwind label %cleanup

terminate:                                        ; preds = %bb25
  %31 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb26:                                             ; preds = %bb25
  %32 = load ptr, ptr %0, align 8
  %33 = getelementptr inbounds i8, ptr %0, i64 8
  %34 = load i32, ptr %33, align 8
  %35 = insertvalue { ptr, i32 } poison, ptr %32, 0
  %36 = insertvalue { ptr, i32 } %35, i32 %34, 1
  resume { ptr, i32 } %36
}

; Function Attrs: nonlazybind uwtable
define i64 @len(ptr align 4 %arr.0, i64 %arr.1) unnamed_addr #3 {
start:
  ret i64 %arr.1
}

; Function Attrs: nonlazybind uwtable
define i32 @max(i32 %x, i32 %y) unnamed_addr #3 {
start:
  %_0 = alloca [4 x i8], align 4
  %_3 = icmp sgt i32 %x, %y
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  store i32 %y, ptr %_0, align 4
  br label %bb3

bb1:                                              ; preds = %start
  store i32 %x, ptr %_0, align 4
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %0 = load i32, ptr %_0, align 4
  ret i32 %0
}

; Function Attrs: nonlazybind uwtable
define i32 @min(i32 %x, i32 %y) unnamed_addr #3 {
start:
  %_0 = alloca [4 x i8], align 4
  %_3 = icmp slt i32 %x, %y
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  store i32 %y, ptr %_0, align 4
  br label %bb3

bb1:                                              ; preds = %start
  store i32 %x, ptr %_0, align 4
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %0 = load i32, ptr %_0, align 4
  ret i32 %0
}

; Function Attrs: nonlazybind uwtable
define void @sort(ptr align 4 %arr.0, i64 %arr.1) unnamed_addr #3 {
start:
; call alloc::slice::<impl [T]>::sort_by
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hb5335e09377b4facE"(ptr align 4 %arr.0, i64 %arr.1) #24
  ret void
}

; core::panicking::panic_nounwind_fmt
; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking18panic_nounwind_fmt17hf349702e3facb1fdE(ptr, ptr, i1 zeroext, ptr align 8) unnamed_addr #9

; core::panicking::panic_const::panic_const_div_by_zero
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr align 8) unnamed_addr #10

; core::panicking::panic_const::panic_const_rem_by_zero
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8) unnamed_addr #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #11

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #4

; core::panicking::panic
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking5panic17ha2e20a73227bb72eE(ptr align 1, i64, ptr align 8) unnamed_addr #10

; std::sys::random::linux::hashmap_random_keys
; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17h6146797cc86fe2ccE() unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #12

; std::thread::local::panic_access_error
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN3std6thread5local18panic_access_error17h889b72f0e071fac8E(ptr align 8) unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #12

; core::panicking::panic_const::panic_const_add_overflow
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8) unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #12

; core::panicking::panic_cannot_unwind
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking19panic_cannot_unwind17h9d41c6c1d0e0d4e5E() unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32, i32) #12

; core::panicking::panic_in_cleanup
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #12

; core::panicking::panic_fmt
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr, ptr, ptr align 8) unnamed_addr #10

; core::panicking::panic_bounds_check
; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64, i64, ptr align 8) unnamed_addr #14

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #15

; core::slice::sort::shared::smallsort::panic_on_ord_violation
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() unnamed_addr #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; core::slice::index::slice_index_fail
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64, i64, i64, ptr align 8) unnamed_addr #10

; core::num::int_log10::panic_for_nonpositive_argument
; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_ZN4core3num9int_log1030panic_for_nonpositive_argument17h529998da0ef96c11E(ptr align 8) unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #12

; core::slice::sort::stable::drift::sqrt_approx
; Function Attrs: nonlazybind uwtable
declare i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h72a4dc1ae46294f4E(i64) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #12

; core::option::unwrap_failed
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8) unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #12

; core::panicking::panic_nounwind
; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking14panic_nounwind17h9a55331e46709e5fE(ptr align 1, i64) unnamed_addr #9

; __rustc::__rust_no_alloc_shim_is_unstable_v2
; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #4

; __rustc::__rust_alloc
; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64, i64 allocalign) unnamed_addr #18

; __rustc::__rust_alloc_zeroed
; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64, i64 allocalign) unnamed_addr #19

; alloc::raw_vec::RawVecInner<A>::try_allocate_in
; Function Attrs: nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr sret([24 x i8]) align 8, i64, i1 zeroext, i64, i64) unnamed_addr #3

; alloc::raw_vec::handle_error
; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64, i64) unnamed_addr #20

; __rustc::__rust_dealloc
; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr allocptr, i64, i64) unnamed_addr #21

; alloc::raw_vec::RawVecInner<A>::deallocate
; Function Attrs: nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr align 8, i64, i64) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #12

; hashbrown::raw::Fallibility::capacity_overflow
; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h2ba85003cd4f3895E(i1 zeroext) unnamed_addr #3

; hashbrown::raw::maximum_buckets_in
; Function Attrs: nonlazybind uwtable
declare i64 @_ZN9hashbrown3raw18maximum_buckets_in17h78a87b289606f479E(i64, i64, i64, i64) unnamed_addr #3

; hashbrown::raw::Fallibility::alloc_err
; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN9hashbrown3raw11Fallibility9alloc_err17hdec7f04e13c07ca8E(i1 zeroext, i64, i64) unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #12

; core::panicking::panic_const::panic_const_sub_overflow
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8) unnamed_addr #10

attributes #0 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+sse,+sse2" }
attributes #8 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { noinline noreturn nounwind }
attributes #23 = { noinline noreturn }
attributes #24 = { inlinehint }
attributes #25 = { inlinehint nounwind }
attributes #26 = { cold noreturn nounwind }
attributes #27 = { cold noinline noreturn nounwind }
attributes #28 = { cold }
attributes #29 = { noreturn }
attributes #30 = { noinline }
attributes #31 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.93.1 (01f6ddf75 2026-02-11)"}
!3 = !{}
