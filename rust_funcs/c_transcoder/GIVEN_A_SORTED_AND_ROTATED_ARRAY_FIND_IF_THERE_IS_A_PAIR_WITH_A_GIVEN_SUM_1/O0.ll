; ModuleID = 'GIVEN_A_SORTED_AND_ROTATED_ARRAY_FIND_IF_THERE_IS_A_PAIR_WITH_A_GIVEN_SUM_1_emit.92bf455b6e8d10d4-cgu.0'
source_filename = "GIVEN_A_SORTED_AND_ROTATED_ARRAY_FIND_IF_THERE_IS_A_PAIR_WITH_A_GIVEN_SUM_1_emit.92bf455b6e8d10d4-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>" = type { [8 x i8] }

@alloc_18d73aa062d524e9620b9e3b55bd9eb1 = private unnamed_addr constant [218 x i8] c"unsafe precondition(s) violated: slice::get_unchecked_mut requires that the range is within the slice\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_f70b7ea0c6b261f62be4360e9684612e = private unnamed_addr constant [113 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/intrinsics/mod.rs\00", align 1
@alloc_dfdb34bacef9617761afa634117005cd = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f70b7ea0c6b261f62be4360e9684612e, [16 x i8] c"p\00\00\00\00\00\00\00\13\0A\00\00\0E\00\00\00" }>, align 8
@alloc_3e1ebac14318b612ab4efabc52799932 = private unnamed_addr constant [186 x i8] c"unsafe precondition(s) violated: usize::unchecked_add cannot overflow\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_bd3468a7b96187f70c1ce98a3e7a63bf = private unnamed_addr constant [283 x i8] c"unsafe precondition(s) violated: ptr::copy_nonoverlapping requires that both pointer arguments are aligned and non-null and the specified memory ranges do not overlap\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_2875d9f120b8cc0de1c30c014c7b6715 = private unnamed_addr constant [283 x i8] c"unsafe precondition(s) violated: ptr::swap_nonoverlapping requires that both pointer arguments are aligned and non-null and the specified memory ranges do not overlap\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_5515c7b35c120aa5a0a21abfa1cff474 = private unnamed_addr constant [109 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/iter/range.rs\00", align 1
@alloc_5a841786226b43ba606ae5b578f20831 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_5515c7b35c120aa5a0a21abfa1cff474, [16 x i8] c"l\00\00\00\00\00\00\00\AB\01\00\00\01\00\00\00" }>, align 8
@alloc_fad0cd83b7d1858a846a172eb260e593 = private unnamed_addr constant [42 x i8] c"is_aligned_to: align is not a power-of-two", align 1
@alloc_35c749f09496b1a94c1214737a58d269 = private unnamed_addr constant [112 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ptr/const_ptr.rs\00", align 1
@alloc_3fa0cb230157e93f86c3228a58824d4a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_35c749f09496b1a94c1214737a58d269, [16 x i8] c"o\00\00\00\00\00\00\00^\05\00\00\0D\00\00\00" }>, align 8
@alloc_de4e626d456b04760e72bc785ed7e52a = private unnamed_addr constant [201 x i8] c"unsafe precondition(s) violated: ptr::offset_from_unsigned requires `self >= origin`\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_64e308ef4babfeb8b6220184de794a17 = private unnamed_addr constant [221 x i8] c"unsafe precondition(s) violated: hint::assert_unchecked must never be called when the condition is false\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@anon.1452607449d1cda81c3449eb997ca3db.0 = private unnamed_addr constant <{ [8 x i8], [8 x i8] }> <{ [8 x i8] zeroinitializer, [8 x i8] undef }>, align 8
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
@alloc_7daa79068841b68d9952dee39abf92f6 = private unnamed_addr constant [106 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ptr/mod.rs\00", align 1
@alloc_0d87c14e0afc26d18a0752880d43f0ed = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_7daa79068841b68d9952dee39abf92f6, [16 x i8] c"i\00\00\00\00\00\00\00\0F\02\00\00\05\00\00\00" }>, align 8
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
@alloc_4ebdd4fb52733a65108a00e385ff8fd6 = private unnamed_addr constant [107 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/vec/mod.rs\00", align 1
@alloc_90bbe98427952d250653de279965c424 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_4ebdd4fb52733a65108a00e385ff8fd6, [16 x i8] c"j\00\00\00\00\00\00\00\F3\0B\00\00\0D\00\00\00" }>, align 8
@alloc_df788916c4067cf06822f29bdf51529e = private unnamed_addr constant [111 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/raw_vec/mod.rs\00", align 1
@alloc_eb8575322eb46aedd166f4660e76bf8c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_df788916c4067cf06822f29bdf51529e, [16 x i8] c"n\00\00\00\00\00\00\00\A7\01\00\00\15\00\00\00" }>, align 8
@alloc_97d92cbf2a68a6ac45a1b13da79836e4 = private unnamed_addr constant [214 x i8] c"unsafe precondition(s) violated: slice::get_unchecked requires that the index is within the slice\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_23a8a8a45179cd71135a22e7e8fa4068 = private unnamed_addr constant [122 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/sort/stable/merge.rs\00", align 1
@alloc_6f43bd4a6d6fed264215c60a43663872 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_23a8a8a45179cd71135a22e7e8fa4068, [16 x i8] c"y\00\00\00\00\00\00\00\92\00\00\00 \00\00\00" }>, align 8
@alloc_5371585bf37a40dc1a474ee3afc21954 = private unnamed_addr constant [203 x i8] c"/root/es/vert/vert/rust_funcs/c_transcoder/GIVEN_A_SORTED_AND_ROTATED_ARRAY_FIND_IF_THERE_IS_A_PAIR_WITH_A_GIVEN_SUM_1/GIVEN_A_SORTED_AND_ROTATED_ARRAY_FIND_IF_THERE_IS_A_PAIR_WITH_A_GIVEN_SUM_1_emit.rs\00", align 1
@alloc_3a4c70cda45d58b3f9432d69aa9578f4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_5371585bf37a40dc1a474ee3afc21954, [16 x i8] c"\CA\00\00\00\00\00\00\00\17\00\00\00\0F\00\00\00" }>, align 8
@alloc_72ab80924de964da806b0f6f6923a6d5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_5371585bf37a40dc1a474ee3afc21954, [16 x i8] c"\CA\00\00\00\00\00\00\00\17\00\00\00!\00\00\00" }>, align 8
@alloc_31bb62950a9b6ec3f3bf457d5aec4c34 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_5371585bf37a40dc1a474ee3afc21954, [16 x i8] c"\CA\00\00\00\00\00\00\00\17\00\00\00/\00\00\00" }>, align 8
@alloc_062b6c17ab2cd5fd054fe7960a1f4208 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_5371585bf37a40dc1a474ee3afc21954, [16 x i8] c"\CA\00\00\00\00\00\00\00\17\00\00\00+\00\00\00" }>, align 8
@alloc_113606d309eb94b282902ee1acac2fd0 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_5371585bf37a40dc1a474ee3afc21954, [16 x i8] c"\CA\00\00\00\00\00\00\00\1A\00\00\00\11\00\00\00" }>, align 8
@alloc_7761253f7f2fd1663af74b9df8f83959 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_5371585bf37a40dc1a474ee3afc21954, [16 x i8] c"\CA\00\00\00\00\00\00\00\1E\00\00\00\0C\00\00\00" }>, align 8
@alloc_604ce34cda2e894e00a76aa95ccf5e77 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_5371585bf37a40dc1a474ee3afc21954, [16 x i8] c"\CA\00\00\00\00\00\00\00\1E\00\00\00\15\00\00\00" }>, align 8
@alloc_c8bb95769b0a47513261a9abad509508 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_5371585bf37a40dc1a474ee3afc21954, [16 x i8] c"\CA\00\00\00\00\00\00\00%\00\00\00\13\00\00\00" }>, align 8
@alloc_712aaafe5e7c739465aba2b4a3673d6b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_5371585bf37a40dc1a474ee3afc21954, [16 x i8] c"\CA\00\00\00\00\00\00\00%\00\00\00\1C\00\00\00" }>, align 8
@alloc_354716370a6616424c106c1777a9e276 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_5371585bf37a40dc1a474ee3afc21954, [16 x i8] c"\CA\00\00\00\00\00\00\00(\00\00\00\12\00\00\00" }>, align 8
@alloc_9710f719164610f36e2c5775a6e5526f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_5371585bf37a40dc1a474ee3afc21954, [16 x i8] c"\CA\00\00\00\00\00\00\00(\00\00\00\11\00\00\00" }>, align 8
@alloc_523e8b8d3bcb40562e688e933af3557e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_5371585bf37a40dc1a474ee3afc21954, [16 x i8] c"\CA\00\00\00\00\00\00\00&\00\00\00\11\00\00\00" }>, align 8
@alloc_47a29934a552e76b38164820dcdec35d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_5371585bf37a40dc1a474ee3afc21954, [16 x i8] c"\CA\00\00\00\00\00\00\00\1F\00\00\00\0D\00\00\00" }>, align 8
@alloc_0adb2c8e2cd631c7b94ae9e8d377ae29 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_5371585bf37a40dc1a474ee3afc21954, [16 x i8] c"\CA\00\00\00\00\00\00\00 \00\00\00\16\00\00\00" }>, align 8
@alloc_9e36c5832401d95de82dcc76c0cf4ba0 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_5371585bf37a40dc1a474ee3afc21954, [16 x i8] c"\CA\00\00\00\00\00\00\00 \00\00\00\15\00\00\00" }>, align 8
@alloc_b311a8dbb8e1358e2a8e63b699fba660 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_5371585bf37a40dc1a474ee3afc21954, [16 x i8] c"\CA\00\00\00\00\00\00\00#\00\00\00\11\00\00\00" }>, align 8
@alloc_a49a3f89708dd787eacab2f7f5839349 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_5371585bf37a40dc1a474ee3afc21954, [16 x i8] c"\CA\00\00\00\00\00\00\00$\00\00\00\12\00\00\00" }>, align 8
@alloc_63dc840820d9917c74ba8eb7007c3008 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_5371585bf37a40dc1a474ee3afc21954, [16 x i8] c"\CA\00\00\00\00\00\00\00$\00\00\00\11\00\00\00" }>, align 8
@alloc_f9a9793d4fc2a4b3cd174c4cc90a988b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_5371585bf37a40dc1a474ee3afc21954, [16 x i8] c"\CA\00\00\00\00\00\00\00\18\00\00\00\09\00\00\00" }>, align 8

; <core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::get_unchecked_mut::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut18precondition_check17h05fb85f8b631bcc4E"(i64 %start1, i64 %end, i64 %len, ptr align 8 %0) unnamed_addr #0 {
start:
  %_4 = icmp uge i64 %end, %start1
  br i1 %_4, label %bb1, label %bb3

bb3:                                              ; preds = %bb1, %start
; call core::panicking::panic_nounwind_fmt
  call void @_ZN4core9panicking18panic_nounwind_fmt17hf349702e3facb1fdE(ptr @alloc_18d73aa062d524e9620b9e3b55bd9eb1, ptr inttoptr (i64 437 to ptr), i1 zeroext false, ptr align 8 %0) #16
  unreachable

bb1:                                              ; preds = %start
  %_5 = icmp ule i64 %end, %len
  br i1 %_5, label %bb2, label %bb3

bb2:                                              ; preds = %bb1
  ret void
}

; core::intrinsics::select_unpredictable
; Function Attrs: inlinehint nounwind nonlazybind uwtable
define ptr @_ZN4core10intrinsics20select_unpredictable17h920a34a40b30e0a6E(i1 zeroext %b, ptr %true_val, ptr %false_val) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  call void @_ZN4core9panicking19panic_cannot_unwind17h9d41c6c1d0e0d4e5E() #17
  unreachable

bb6:                                              ; No predecessors!
  br label %bb5
}

; core::intrinsics::select_unpredictable
; Function Attrs: inlinehint nounwind nonlazybind uwtable
define ptr @_ZN4core10intrinsics20select_unpredictable17hdccd5d88585b4f0eE(i1 zeroext %b, ptr %true_val, ptr %false_val) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  call void @_ZN4core9panicking19panic_cannot_unwind17h9d41c6c1d0e0d4e5E() #17
  unreachable

bb6:                                              ; No predecessors!
  br label %bb5
}

; core::intrinsics::typed_swap_nonoverlapping
; Function Attrs: inlinehint nounwind nonlazybind uwtable
define void @_ZN4core10intrinsics25typed_swap_nonoverlapping17h8eff509a062c8d74E(ptr %x, ptr %y) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
; invoke core::ptr::swap_nonoverlapping
  invoke void @_ZN4core3ptr19swap_nonoverlapping17hda06a9157a833e69E(ptr %x, ptr %y, i64 1, ptr align 8 @alloc_dfdb34bacef9617761afa634117005cd)
          to label %bb1 unwind label %terminate

terminate:                                        ; preds = %start
  %0 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_cannot_unwind
  call void @_ZN4core9panicking19panic_cannot_unwind17h9d41c6c1d0e0d4e5E() #18
  unreachable

bb1:                                              ; preds = %start
  ret void
}

; core::intrinsics::cold_path
; Function Attrs: cold nounwind nonlazybind uwtable
define internal void @_ZN4core10intrinsics9cold_path17hb461b5c54fd7ff22E() unnamed_addr #1 {
start:
  ret void
}

; core::cmp::Ord::max
; Function Attrs: inlinehint nonlazybind uwtable
define i64 @_ZN4core3cmp3Ord3max17h96aa514caf3d36c5E(i64 %0, i64 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
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
define i64 @_ZN4core3cmp3Ord3min17h6cf7cda3b9030b4cE(i64 %0, i64 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
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
define internal i8 @"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h73c260be8bd6f03bE"(ptr align 4 %self, ptr align 4 %other) unnamed_addr #2 {
start:
  %_3 = load i32, ptr %self, align 4
  %_4 = load i32, ptr %other, align 4
  %_0 = call i8 @llvm.scmp.i8.i32(i32 %_3, i32 %_4)
  ret i8 %_0
}

; core::num::<impl usize>::unchecked_add::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @"_ZN4core3num23_$LT$impl$u20$usize$GT$13unchecked_add18precondition_check17h59501fa53d45ef95E"(i64 %lhs, i64 %rhs, ptr align 8 %0) unnamed_addr #0 {
start:
  %_7.0 = add i64 %lhs, %rhs
  %_7.1 = icmp ult i64 %_7.0, %lhs
  br i1 %_7.1, label %bb1, label %bb2

bb2:                                              ; preds = %start
  ret void

bb1:                                              ; preds = %start
; call core::panicking::panic_nounwind_fmt
  call void @_ZN4core9panicking18panic_nounwind_fmt17hf349702e3facb1fdE(ptr @alloc_3e1ebac14318b612ab4efabc52799932, ptr inttoptr (i64 373 to ptr), i1 zeroext false, ptr align 8 %0) #16
  unreachable
}

; core::ops::function::FnMut::call_mut
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8 @_ZN4core3ops8function5FnMut8call_mut17hbe1950823eb0b924E(ptr align 1 %_1, ptr align 4 %0, ptr align 4 %1) unnamed_addr #2 {
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

; core::ptr::swap_chunk
; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN4core3ptr10swap_chunk17h4f6b16c342fdbd94E(ptr align 1 %x, ptr align 1 %y) unnamed_addr #2 {
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
define void @_ZN4core3ptr10swap_chunk17h5d5551e58143c2aaE(ptr align 1 %x, ptr align 1 %y) unnamed_addr #2 {
start:
  %_4 = alloca [1 x i8], align 1
  %_3 = alloca [1 x i8], align 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %_3, ptr align 1 %x, i64 1, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %_4, ptr align 1 %y, i64 1, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %x, ptr align 1 %_4, i64 1, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %y, ptr align 1 %_3, i64 1, i1 false)
  ret void
}

; core::ptr::swap_chunk
; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN4core3ptr10swap_chunk17hc55e34abab415a28E(ptr align 1 %x, ptr align 1 %y) unnamed_addr #2 {
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
define void @_ZN4core3ptr10swap_chunk17hc5ee72cdb19ff604E(ptr align 1 %x, ptr align 1 %y) unnamed_addr #2 {
start:
  %_4 = alloca [8 x i8], align 1
  %_3 = alloca [8 x i8], align 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %_3, ptr align 1 %x, i64 8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %_4, ptr align 1 %y, i64 8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %x, ptr align 1 %_4, i64 8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %y, ptr align 1 %_3, i64 8, i1 false)
  ret void
}

; core::ptr::copy_nonoverlapping::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17h7ee6658f5b9e876aE(ptr %src, ptr %dst, i64 %size, i64 %align, i64 %count, ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %_16 = invoke zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13is_aligned_to17hbd31a13e246a02b0E"(ptr %src, i64 %align)
          to label %bb15 unwind label %terminate

terminate:                                        ; preds = %bb5, %bb4, %bb3
  %4 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_cannot_unwind
  call void @_ZN4core9panicking19panic_cannot_unwind17h9d41c6c1d0e0d4e5E() #18
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
  %_19 = invoke zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13is_aligned_to17hbd31a13e246a02b0E"(ptr %dst, i64 %align)
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
  %_6 = invoke zeroext i1 @_ZN4core9ub_checks23maybe_is_nonoverlapping7runtime17hf54fe4fc75bbd4dbE(ptr %src, ptr %dst, i64 %size, i64 %count)
          to label %bb21 unwind label %terminate

bb9:                                              ; preds = %bb21, %bb8
; call core::panicking::panic_nounwind_fmt
  call void @_ZN4core9panicking18panic_nounwind_fmt17hf349702e3facb1fdE(ptr @alloc_bd3468a7b96187f70c1ce98a3e7a63bf, ptr inttoptr (i64 567 to ptr), i1 zeroext false, ptr align 8 %0) #16
  unreachable

bb21:                                             ; preds = %bb5
  br i1 %_6, label %bb10, label %bb9

bb10:                                             ; preds = %bb21
  ret void
}

; core::ptr::swap_nonoverlapping
; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN4core3ptr19swap_nonoverlapping17hda06a9157a833e69E(ptr %x, ptr %y, i64 %count, ptr align 8 %0) unnamed_addr #2 {
start:
  %1 = alloca [8 x i8], align 8
  %_11 = alloca [8 x i8], align 8
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::swap_nonoverlapping::precondition_check
  call void @_ZN4core3ptr19swap_nonoverlapping18precondition_check17h87255cbc0e69e652E(ptr %x, ptr %y, i64 4, i64 4, i64 %count, ptr align 8 %0) #19
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
  call void @_ZN4core3ptr25swap_nonoverlapping_bytes17hab4d294cd11a4efbE(ptr %x, ptr %y, i64 %bytes1) #20
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
define internal void @_ZN4core3ptr19swap_nonoverlapping18precondition_check17h87255cbc0e69e652E(ptr %x, ptr %y, i64 %size, i64 %align, i64 %count, ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %_17 = invoke zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13is_aligned_to17hbd31a13e246a02b0E"(ptr %x, i64 %align)
          to label %bb15 unwind label %terminate

terminate:                                        ; preds = %bb5, %bb4, %bb3
  %4 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_cannot_unwind
  call void @_ZN4core9panicking19panic_cannot_unwind17h9d41c6c1d0e0d4e5E() #18
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
  %_20 = invoke zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13is_aligned_to17hbd31a13e246a02b0E"(ptr %y, i64 %align)
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
  %_6 = invoke zeroext i1 @_ZN4core9ub_checks23maybe_is_nonoverlapping7runtime17hf54fe4fc75bbd4dbE(ptr %x, ptr %y, i64 %size, i64 %count)
          to label %bb21 unwind label %terminate

bb9:                                              ; preds = %bb21, %bb8
; call core::panicking::panic_nounwind_fmt
  call void @_ZN4core9panicking18panic_nounwind_fmt17hf349702e3facb1fdE(ptr @alloc_2875d9f120b8cc0de1c30c014c7b6715, ptr inttoptr (i64 567 to ptr), i1 zeroext false, ptr align 8 %0) #16
  unreachable

bb21:                                             ; preds = %bb5
  br i1 %_6, label %bb10, label %bb9

bb10:                                             ; preds = %bb21
  ret void
}

; core::ptr::swap_nonoverlapping_bytes
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3ptr25swap_nonoverlapping_bytes17hab4d294cd11a4efbE(ptr %x, ptr %y, i64 %bytes) unnamed_addr #2 {
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
  call void @_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17hd0a7023f930b5359E(ptr %x, ptr %y, i64 %chunks1)
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
  call void @_ZN4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short17h7078df7e4474f97dE(ptr %_18, ptr %_19, i64 %tail2) #20
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
define internal void @_ZN4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short17h7078df7e4474f97dE(ptr %x, ptr %y, i64 %bytes) unnamed_addr #2 {
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
  call void @_ZN4core3ptr10swap_chunk17hc55e34abab415a28E(ptr align 1 %self, ptr align 1 %self2) #20
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
  call void @_ZN4core3ptr10swap_chunk17h4f6b16c342fdbd94E(ptr align 1 %self4, ptr align 1 %self6) #20
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
  call void @_ZN4core3ptr10swap_chunk17h5d5551e58143c2aaE(ptr align 1 %self8, ptr align 1 %self10) #20
  %4 = load i64, ptr %i, align 8
  %5 = or i64 %4, 1
  store i64 %5, ptr %i, align 8
  br label %bb12

bb12:                                             ; preds = %bb9, %bb11
  ret void
}

; core::ptr::swap_nonoverlapping_bytes::swap_nonoverlapping_chunks
; Function Attrs: nonlazybind uwtable
define void @_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17hd0a7023f930b5359E(ptr %x, ptr %y, i64 %chunks) unnamed_addr #3 {
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
  call void @"_ZN4core3num23_$LT$impl$u20$usize$GT$13unchecked_add18precondition_check17h59501fa53d45ef95E"(i64 %old, i64 1, ptr align 8 @alloc_5a841786226b43ba606ae5b578f20831) #19
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
  call void @_ZN4core3ptr10swap_chunk17hc5ee72cdb19ff604E(ptr align 1 %_11, ptr align 1 %_13) #20
  br label %bb1
}

; core::ptr::drop_in_place<alloc::vec::Vec<i32>>
; Function Attrs: nonlazybind uwtable
define void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h23328959df0fa2f8E"(ptr align 8 %_1) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h155fbb88dd5215cfE"(ptr align 8 %_1)
          to label %bb4 unwind label %cleanup

bb3:                                              ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::raw_vec::RawVec<i32>>
  invoke void @"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h5a3d04cf53b89f03E"(ptr align 8 %_1) #21
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
  call void @"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h5a3d04cf53b89f03E"(ptr align 8 %_1)
  ret void

terminate:                                        ; preds = %bb3
  %5 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #18
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
define void @"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h5a3d04cf53b89f03E"(ptr align 8 %_1) unnamed_addr #3 {
start:
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0a94764cfcd91e61E"(ptr align 8 %_1)
  ret void
}

; core::ptr::drop_in_place<core::array::iter::IntoIter<usize,2_usize>>
; Function Attrs: nonlazybind uwtable
define void @"_ZN4core3ptr71drop_in_place$LT$core..array..iter..IntoIter$LT$usize$C$2_usize$GT$$GT$17h64637bee6ca50e2eE"(ptr align 8 %_1) unnamed_addr #3 {
start:
; call <core::array::iter::IntoIter<T,_> as core::ops::drop::Drop>::drop
  call void @"_ZN82_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h23d7b890641b068cE"(ptr align 8 %_1) #20
  ret void
}

; core::ptr::drop_in_place<core::slice::sort::stable::merge::MergeState<i32>>
; Function Attrs: nonlazybind uwtable
define void @"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h2c1a4ebde0bd0c88E"(ptr align 8 %_1) unnamed_addr #3 {
start:
; call <core::slice::sort::stable::merge::MergeState<T> as core::ops::drop::Drop>::drop
  call void @"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h93be5e5cf685d065E"(ptr align 8 %_1)
  ret void
}

; core::ptr::drop_in_place<core::slice::sort::shared::smallsort::CopyOnDrop<i32>>
; Function Attrs: nonlazybind uwtable
define void @"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h9df3272b439f2ae7E"(ptr align 8 %_1) unnamed_addr #3 {
start:
; call <core::slice::sort::shared::smallsort::CopyOnDrop<T> as core::ops::drop::Drop>::drop
  call void @"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc1b6586eb1fba5f3E"(ptr align 8 %_1)
  ret void
}

; core::ptr::drop_in_place<core::hint::select_unpredictable::DropOnPanic<*const i32>>
; Function Attrs: nonlazybind uwtable
define void @"_ZN4core3ptr91drop_in_place$LT$core..hint..select_unpredictable..DropOnPanic$LT$$BP$const$u20$i32$GT$$GT$17h41b3dbbd63903fc5E"(ptr align 8 %_1) unnamed_addr #3 {
start:
; call <core::hint::select_unpredictable::DropOnPanic<T> as core::ops::drop::Drop>::drop
  call void @"_ZN96_$LT$core..hint..select_unpredictable..DropOnPanic$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6727e96de4c38bbaE"(ptr align 8 %_1)
  ret void
}

; core::ptr::const_ptr::<impl *const T>::is_aligned_to
; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13is_aligned_to17hbd31a13e246a02b0E"(ptr %self, i64 %align) unnamed_addr #2 {
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
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr @alloc_fad0cd83b7d1858a846a172eb260e593, ptr inttoptr (i64 85 to ptr), ptr align 8 @alloc_3fa0cb230157e93f86c3228a58824d4a) #22
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
define internal void @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$20offset_from_unsigned18precondition_check17h17f7c03ea34b8cc8E"(ptr %this, ptr %origin, ptr align 8 %0) unnamed_addr #0 {
start:
  %_3 = icmp uge ptr %this, %origin
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
; call core::panicking::panic_nounwind_fmt
  call void @_ZN4core9panicking18panic_nounwind_fmt17hf349702e3facb1fdE(ptr @alloc_de4e626d456b04760e72bc785ed7e52a, ptr inttoptr (i64 403 to ptr), i1 zeroext false, ptr align 8 %0) #16
  unreachable

bb1:                                              ; preds = %start
  ret void
}

; core::hint::assert_unchecked::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_ZN4core4hint16assert_unchecked18precondition_check17h3b7d371b523d4893E(i1 zeroext %cond, ptr align 8 %0) unnamed_addr #0 {
start:
  br i1 %cond, label %bb2, label %bb1

bb1:                                              ; preds = %start
; call core::panicking::panic_nounwind_fmt
  call void @_ZN4core9panicking18panic_nounwind_fmt17hf349702e3facb1fdE(ptr @alloc_64e308ef4babfeb8b6220184de794a17, ptr inttoptr (i64 443 to ptr), i1 zeroext false, ptr align 8 %0) #16
  unreachable

bb2:                                              ; preds = %start
  ret void
}

; core::array::iter::iter_inner::PolymorphicIter<[core::mem::maybe_uninit::MaybeUninit<T>]>::next
; Function Attrs: inlinehint nonlazybind uwtable
define { i64, i64 } @"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h9ae16af5cc4feaf3E"(ptr align 8 %self.0, i64 %self.1) unnamed_addr #2 {
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
  %1 = load i64, ptr @anon.1452607449d1cda81c3449eb997ca3db.0, align 8
  %2 = load i64, ptr getelementptr inbounds (i8, ptr @anon.1452607449d1cda81c3449eb997ca3db.0, i64 8), align 8
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
  call void @"_ZN4core3num23_$LT$impl$u20$usize$GT$13unchecked_add18precondition_check17h59501fa53d45ef95E"(i64 %value, i64 1, ptr align 8 @alloc_d6257b1bd6d71606f0c80579dc3f7df1) #19
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
  call void @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked18precondition_check17hc3129a260b13371dE"(i64 %x, i64 %_19, ptr align 8 @alloc_36ef99292643bd7886c9678fd53220ab) #19
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
define void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h42b7d03ae7ba3304E"(ptr sret([32 x i8]) align 8 %pair, ptr align 4 %self.0, i64 %self.1, i64 %mid, ptr align 8 %0) unnamed_addr #2 {
start:
  %_8 = alloca [32 x i8], align 8
  %_3 = alloca [32 x i8], align 8
  %_6 = icmp ule i64 %mid, %self.1
  br i1 %_6, label %bb1, label %bb3

bb3:                                              ; preds = %start
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr @alloc_d1084648e479974e70c9329824bf76f9, ptr inttoptr (i64 19 to ptr), ptr align 8 %0) #22
  unreachable

bb1:                                              ; preds = %start
; call core::slice::<impl [T]>::split_at_mut_unchecked
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$22split_at_mut_unchecked17hfd7710b2348ec9d1E"(ptr sret([32 x i8]) align 8 %_8, ptr align 4 %self.0, i64 %self.1, i64 %mid, ptr align 8 @alloc_4837a04415930993040e3aa5c962029e) #20
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_3, ptr align 8 %_8, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pair, ptr align 8 %_3, i64 32, i1 false)
  ret void
}

; core::slice::<impl [T]>::split_at_mut_unchecked
; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$22split_at_mut_unchecked17hfd7710b2348ec9d1E"(ptr sret([32 x i8]) align 8 %_0, ptr align 4 %self.0, i64 %self.1, i64 %mid, ptr align 8 %0) unnamed_addr #2 {
start:
  %len = alloca [8 x i8], align 8
  %data = alloca [8 x i8], align 8
  %_7 = alloca [16 x i8], align 8
  br label %bb1

bb1:                                              ; preds = %start
; call core::slice::<impl [T]>::split_at_mut_unchecked::precondition_check
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$22split_at_mut_unchecked18precondition_check17h3335fa64d5e5f35fE"(i64 %mid, i64 %self.1, ptr align 8 %0) #19
  br label %bb3

bb3:                                              ; preds = %bb1
; call core::slice::raw::from_raw_parts_mut::precondition_check
  call void @_ZN4core5slice3raw18from_raw_parts_mut18precondition_check17hf35401d02a4195cbE(ptr %self.0, i64 4, i64 4, i64 %mid, ptr align 8 %0) #19
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
  call void @_ZN4core5slice3raw18from_raw_parts_mut18precondition_check17hf35401d02a4195cbE(ptr %_20, i64 4, i64 4, i64 %4, ptr align 8 %0) #19
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
define internal void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$22split_at_mut_unchecked18precondition_check17h3335fa64d5e5f35fE"(i64 %mid, i64 %len, ptr align 8 %0) unnamed_addr #0 {
start:
  %_3 = icmp ule i64 %mid, %len
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
; call core::panicking::panic_nounwind_fmt
  call void @_ZN4core9panicking18panic_nounwind_fmt17hf349702e3facb1fdE(ptr @alloc_6b0b11c9e93314b588b613b55005cf18, ptr inttoptr (i64 443 to ptr), i1 zeroext false, ptr align 8 %0) #16
  unreachable

bb1:                                              ; preds = %start
  ret void
}

; core::slice::<impl [T]>::reverse
; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h804b3441997a40eaE"(ptr align 4 %self.0, i64 %self.1) unnamed_addr #2 {
start:
  %data = alloca [8 x i8], align 8
  %_5 = alloca [16 x i8], align 8
  %half_len = udiv i64 %self.1, 2
  %end = getelementptr inbounds nuw i32, ptr %self.0, i64 %self.1
  br label %bb2

bb2:                                              ; preds = %start
; call core::slice::raw::from_raw_parts_mut::precondition_check
  call void @_ZN4core5slice3raw18from_raw_parts_mut18precondition_check17hf35401d02a4195cbE(ptr %self.0, i64 4, i64 4, i64 %half_len, ptr align 8 @alloc_096c43b08ba4c02fd4fc646e4eb5f61d) #19
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
  call void @_ZN4core5slice3raw18from_raw_parts_mut18precondition_check17hf35401d02a4195cbE(ptr %_22, i64 4, i64 4, i64 %half_len, ptr align 8 @alloc_2dc2a90639995f73564cefdb21b664ea) #19
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
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hd1c17f0490184489E"(ptr align 4 %3, i64 %5, ptr align 4 %_23.0, i64 %half_len, i64 %half_len) #20
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
define void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hd1c17f0490184489E"(ptr align 4 %a.0, i64 %a.1, ptr align 4 %b.0, i64 %b.1, i64 %n) unnamed_addr #2 {
start:
  %i = alloca [8 x i8], align 8
  %_7 = alloca [32 x i8], align 8
  %_5 = alloca [32 x i8], align 8
; call core::slice::<impl [T]>::split_at_mut
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h42b7d03ae7ba3304E"(ptr sret([32 x i8]) align 8 %_5, ptr align 4 %a.0, i64 %a.1, i64 %n, ptr align 8 @alloc_7900b8a3ded616905abf7347699b78c6) #20
  %a.01 = load ptr, ptr %_5, align 8
  %0 = getelementptr inbounds i8, ptr %_5, i64 8
  %a.12 = load i64, ptr %0, align 8
; call core::slice::<impl [T]>::split_at_mut
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h42b7d03ae7ba3304E"(ptr sret([32 x i8]) align 8 %_7, ptr align 4 %b.0, i64 %b.1, i64 %n, ptr align 8 @alloc_c9d18df645f0bc0349c21334b5ffd9ca) #20
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
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_13, i64 %a.12, ptr align 8 @alloc_b13d47af860a80b29d770888e367c8be) #22
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
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_17, i64 %b.14, ptr align 8 @alloc_dd358487823db0f6649bebca57528865) #22
  unreachable
}

; core::slice::raw::from_raw_parts_mut::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_ZN4core5slice3raw18from_raw_parts_mut18precondition_check17hf35401d02a4195cbE(ptr %data, i64 %size, i64 %align, i64 %len, ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %max_len = alloca [8 x i8], align 8
; invoke core::ptr::const_ptr::<impl *const T>::is_aligned_to
  %_11 = invoke zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13is_aligned_to17hbd31a13e246a02b0E"(ptr %data, i64 %align)
          to label %bb8 unwind label %terminate

terminate:                                        ; preds = %panic, %start
  %1 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_cannot_unwind
  call void @_ZN4core9panicking19panic_cannot_unwind17h9d41c6c1d0e0d4e5E() #18
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
  call void @_ZN4core9panicking18panic_nounwind_fmt17hf349702e3facb1fdE(ptr @alloc_5c1a2f972552229672fc942406cfc298, ptr inttoptr (i64 567 to ptr), i1 zeroext false, ptr align 8 %0) #16
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
  invoke void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr align 8 @alloc_611f58ae7c0cb6ecdf5f4642bc696b9a) #23
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
define ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h187b787f21c9efa0E(ptr %0, ptr %1, ptr %2, i64 %n, ptr align 8 %is_less) unnamed_addr #3 {
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
  %4 = call ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h187b787f21c9efa0E(ptr %_9, ptr %_10, ptr %_13, i64 %n8, ptr align 8 %is_less)
  store ptr %4, ptr %a, align 8
  %_15 = load ptr, ptr %b, align 8
  %self2 = load ptr, ptr %b, align 8
  %_16 = getelementptr inbounds nuw i32, ptr %self2, i64 %count
  %5 = load ptr, ptr %b, align 8
  %_18 = getelementptr inbounds nuw i32, ptr %5, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %6 = call ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h187b787f21c9efa0E(ptr %_15, ptr %_16, ptr %_18, i64 %n8, ptr align 8 %is_less)
  store ptr %6, ptr %b, align 8
  %_19 = load ptr, ptr %c, align 8
  %self3 = load ptr, ptr %c, align 8
  %_20 = getelementptr inbounds nuw i32, ptr %self3, i64 %count
  %7 = load ptr, ptr %c, align 8
  %_22 = getelementptr inbounds nuw i32, ptr %7, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %8 = call ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h187b787f21c9efa0E(ptr %_19, ptr %_20, ptr %_22, i64 %n8, ptr align 8 %is_less)
  store ptr %8, ptr %c, align 8
  br label %bb6

bb6:                                              ; preds = %bb1, %bb5
  %_23 = load ptr, ptr %a, align 8
  %_24 = load ptr, ptr %b, align 8
  %_25 = load ptr, ptr %c, align 8
; call alloc::slice::<impl [T]>::sort_by::{{closure}}
  %x.i = call zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h33b8375987c9ab84E"(ptr align 8 %is_less, ptr align 4 %_23, ptr align 4 %_24) #20
; call alloc::slice::<impl [T]>::sort_by::{{closure}}
  %y.i = call zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h33b8375987c9ab84E"(ptr align 8 %is_less, ptr align 4 %_23, ptr align 4 %_25) #20
  %_9.i = icmp eq i1 %x.i, %y.i
  br i1 %_9.i, label %bb3.i, label %bb8.i

bb8.i:                                            ; preds = %bb6
  store ptr %_23, ptr %_0.i, align 8
  br label %_ZN4core5slice4sort6shared5pivot7median317h4f32bd453a59c377E.exit

bb3.i:                                            ; preds = %bb6
; call alloc::slice::<impl [T]>::sort_by::{{closure}}
  %z.i = call zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h33b8375987c9ab84E"(ptr align 8 %is_less, ptr align 4 %_24, ptr align 4 %_25) #20
  %_12.i = xor i1 %z.i, %x.i
  br i1 %_12.i, label %bb5.i, label %bb6.i

bb6.i:                                            ; preds = %bb3.i
  store ptr %_24, ptr %_0.i, align 8
  br label %bb7.i

bb5.i:                                            ; preds = %bb3.i
  store ptr %_25, ptr %_0.i, align 8
  br label %bb7.i

bb7.i:                                            ; preds = %bb5.i, %bb6.i
  br label %_ZN4core5slice4sort6shared5pivot7median317h4f32bd453a59c377E.exit

_ZN4core5slice4sort6shared5pivot7median317h4f32bd453a59c377E.exit: ; preds = %bb8.i, %bb7.i
  %9 = load ptr, ptr %_0.i, align 8
  ret ptr %9
}

; core::slice::sort::shared::pivot::choose_pivot
; Function Attrs: inlinehint nonlazybind uwtable
define i64 @_ZN4core5slice4sort6shared5pivot12choose_pivot17hcc8d2038d999fcfdE(ptr align 4 %v.0, i64 %v.1, ptr align 8 %is_less) unnamed_addr #2 {
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
  %self = call ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h187b787f21c9efa0E(ptr %v.0, ptr %b, ptr %c, i64 %len_div_8, ptr align 8 %is_less)
  br label %bb16

bb3:                                              ; preds = %bb2
; call alloc::slice::<impl [T]>::sort_by::{{closure}}
  %x.i = call zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h33b8375987c9ab84E"(ptr align 8 %is_less, ptr align 4 %v.0, ptr align 4 %b) #20
; call alloc::slice::<impl [T]>::sort_by::{{closure}}
  %y.i = call zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h33b8375987c9ab84E"(ptr align 8 %is_less, ptr align 4 %v.0, ptr align 4 %c) #20
  %_9.i = icmp eq i1 %x.i, %y.i
  br i1 %_9.i, label %bb3.i, label %bb8.i

bb8.i:                                            ; preds = %bb3
  store ptr %v.0, ptr %_0.i, align 8
  br label %_ZN4core5slice4sort6shared5pivot7median317h4f32bd453a59c377E.exit

bb3.i:                                            ; preds = %bb3
; call alloc::slice::<impl [T]>::sort_by::{{closure}}
  %z.i = call zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h33b8375987c9ab84E"(ptr align 8 %is_less, ptr align 4 %b, ptr align 4 %c) #20
  %_12.i = xor i1 %z.i, %x.i
  br i1 %_12.i, label %bb5.i, label %bb6.i

bb6.i:                                            ; preds = %bb3.i
  store ptr %b, ptr %_0.i, align 8
  br label %bb7.i

bb5.i:                                            ; preds = %bb3.i
  store ptr %c, ptr %_0.i, align 8
  br label %bb7.i

bb7.i:                                            ; preds = %bb5.i, %bb6.i
  br label %_ZN4core5slice4sort6shared5pivot7median317h4f32bd453a59c377E.exit

_ZN4core5slice4sort6shared5pivot7median317h4f32bd453a59c377E.exit: ; preds = %bb8.i, %bb7.i
  %0 = load ptr, ptr %_0.i, align 8
  br label %bb9

bb16:                                             ; preds = %bb5
; call core::ptr::const_ptr::<impl *const T>::offset_from_unsigned::precondition_check
  call void @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$20offset_from_unsigned18precondition_check17h17f7c03ea34b8cc8E"(ptr %self, ptr %v.0, ptr align 8 @alloc_2f8e843c534c67cb96543761941a300b) #19
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
  call void @_ZN4core9panicking5panic17ha2e20a73227bb72eE(ptr align 1 @alloc_ec595fc0e82ef92fc59bd74f68296eae, i64 73, ptr align 8 @alloc_2f8e843c534c67cb96543761941a300b) #22
  unreachable

bb7:                                              ; preds = %bb13, %bb20
  %_19 = load i64, ptr %index, align 8
  %cond = icmp ult i64 %_19, %v.1
  br label %bb22

bb9:                                              ; preds = %_ZN4core5slice4sort6shared5pivot7median317h4f32bd453a59c377E.exit
; call core::ptr::const_ptr::<impl *const T>::offset_from_unsigned::precondition_check
  call void @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$20offset_from_unsigned18precondition_check17h17f7c03ea34b8cc8E"(ptr %0, ptr %v.0, ptr align 8 @alloc_ae7688b138134f73080bc6d7b2676850) #19
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
  call void @_ZN4core9panicking5panic17ha2e20a73227bb72eE(ptr align 1 @alloc_ec595fc0e82ef92fc59bd74f68296eae, i64 73, ptr align 8 @alloc_ae7688b138134f73080bc6d7b2676850) #22
  unreachable

bb22:                                             ; preds = %bb7
; call core::hint::assert_unchecked::precondition_check
  call void @_ZN4core4hint16assert_unchecked18precondition_check17h3b7d371b523d4893E(i1 zeroext %cond, ptr align 8 @alloc_e29594f41086b4f3c0207ce0636713c2) #19
  br label %bb23

bb23:                                             ; preds = %bb22
  %9 = load i64, ptr %index, align 8
  ret i64 %9
}

; core::slice::sort::shared::smallsort::insert_tail
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort11insert_tail17hfde9bc389d656523E(ptr %begin, ptr %tail, ptr align 8 %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
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
  %_5 = call zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h33b8375987c9ab84E"(ptr align 8 %is_less, ptr align 4 %tail, ptr align 4 %_8) #20
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
  call void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17h7ee6658f5b9e876aE(ptr %_15, ptr %dst, i64 4, i64 4, i64 1, ptr align 8 @alloc_0d87c14e0afc26d18a0752880d43f0ed) #19
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
  %_21 = invoke zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h33b8375987c9ab84E"(ptr align 8 %is_less, ptr align 4 %tmp, ptr align 4 %_25)
          to label %bb7 unwind label %cleanup

bb13:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<core::slice::sort::shared::smallsort::CopyOnDrop<i32>>
  invoke void @"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h9df3272b439f2ae7E"(ptr align 8 %gap_guard) #21
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
  call void @"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h9df3272b439f2ae7E"(ptr align 8 %gap_guard)
  br label %bb12

terminate:                                        ; preds = %bb13
  %13 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #18
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
define void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h81f2771acbd19c5cE(ptr %v_base, ptr %dst, ptr align 8 %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
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
  %c1 = call zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h33b8375987c9ab84E"(ptr align 8 %is_less, ptr align 4 %_7, ptr align 4 %v_base) #20
  %_12 = getelementptr inbounds nuw i32, ptr %v_base, i64 3
  %_14 = getelementptr inbounds nuw i32, ptr %v_base, i64 2
; call alloc::slice::<impl [T]>::sort_by::{{closure}}
  %c2 = call zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h33b8375987c9ab84E"(ptr align 8 %is_less, ptr align 4 %_12, ptr align 4 %_14) #20
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
  %c3 = call zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h33b8375987c9ab84E"(ptr align 8 %is_less, ptr align 4 %c, ptr align 4 %a) #20
; call alloc::slice::<impl [T]>::sort_by::{{closure}}
  %c4 = call zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h33b8375987c9ab84E"(ptr align 8 %is_less, ptr align 4 %d, ptr align 4 %b) #20
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
  %c5 = call zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h33b8375987c9ab84E"(ptr align 8 %is_less, ptr align 4 %_0.i26, ptr align 4 %_0.i46) #20
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
  call void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17h7ee6658f5b9e876aE(ptr %_0.i76, ptr %dst, i64 4, i64 4, i64 1, ptr align 8 @alloc_0d87c14e0afc26d18a0752880d43f0ed) #19
  br label %bb16

bb16:                                             ; preds = %bb14
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %dst, ptr align 4 %_0.i76, i64 4, i1 false)
  %dst5 = getelementptr inbounds nuw i32, ptr %dst, i64 1
  br label %bb17

bb17:                                             ; preds = %bb16
; call core::ptr::copy_nonoverlapping::precondition_check
  call void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17h7ee6658f5b9e876aE(ptr %_0.i16, ptr %dst5, i64 4, i64 4, i64 1, ptr align 8 @alloc_0d87c14e0afc26d18a0752880d43f0ed) #19
  br label %bb19

bb19:                                             ; preds = %bb17
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %dst5, ptr align 4 %_0.i16, i64 4, i1 false)
  %dst6 = getelementptr inbounds nuw i32, ptr %dst, i64 2
  br label %bb20

bb20:                                             ; preds = %bb19
; call core::ptr::copy_nonoverlapping::precondition_check
  call void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17h7ee6658f5b9e876aE(ptr %_0.i, ptr %dst6, i64 4, i64 4, i64 1, ptr align 8 @alloc_0d87c14e0afc26d18a0752880d43f0ed) #19
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %dst6, ptr align 4 %_0.i, i64 4, i1 false)
  store ptr %dst, ptr %self, align 8
  %40 = getelementptr inbounds nuw i32, ptr %dst, i64 3
  store ptr %40, ptr %dst1, align 8
  %_63 = load ptr, ptr %dst1, align 8
; call core::ptr::copy_nonoverlapping::precondition_check
  call void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17h7ee6658f5b9e876aE(ptr %_0.i66, ptr %_63, i64 4, i64 4, i64 1, ptr align 8 @alloc_0d87c14e0afc26d18a0752880d43f0ed) #19
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
define void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hba75c8cc18a5f1b8E(ptr %v_base, ptr %dst, ptr %scratch_base, ptr align 8 %is_less) unnamed_addr #3 {
start:
; call core::slice::sort::shared::smallsort::sort4_stable
  call void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h81f2771acbd19c5cE(ptr %v_base, ptr %scratch_base, ptr align 8 %is_less)
  %_9 = getelementptr inbounds nuw i32, ptr %v_base, i64 4
  %_10 = getelementptr inbounds nuw i32, ptr %scratch_base, i64 4
; call core::slice::sort::shared::smallsort::sort4_stable
  call void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h81f2771acbd19c5cE(ptr %_9, ptr %_10, ptr align 8 %is_less)
; call core::slice::sort::shared::smallsort::bidirectional_merge
  call void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hd356662cfd0bbb68E(ptr align 4 %scratch_base, i64 8, ptr %dst, ptr align 8 %is_less)
  ret void
}

; core::slice::sort::shared::smallsort::bidirectional_merge
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hd356662cfd0bbb68E(ptr align 4 %v.0, i64 %v.1, ptr %0, ptr align 8 %is_less) unnamed_addr #3 {
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

bb1:                                              ; preds = %_ZN4core5slice4sort6shared9smallsort10merge_down17ha9767935083cbdcfE.exit, %start
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
  call void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17h7ee6658f5b9e876aE(ptr %_46, ptr %_47, i64 4, i64 4, i64 1, ptr align 8 @alloc_0d87c14e0afc26d18a0752880d43f0ed) #19
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
  call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #22
  unreachable

bb17:                                             ; preds = %bb15
; call core::num::<impl usize>::unchecked_add::precondition_check
  call void @"_ZN4core3num23_$LT$impl$u20$usize$GT$13unchecked_add18precondition_check17h59501fa53d45ef95E"(i64 %old, i64 1, ptr align 8 @alloc_5a841786226b43ba606ae5b578f20831) #19
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
  %_6.i10 = call zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h33b8375987c9ab84E"(ptr align 8 %is_less, ptr align 4 %_8.i8, ptr align 4 %_9.i9) #20
  %is_l.i11 = xor i1 %_6.i10, true
  br i1 %is_l.i11, label %bb2.i20, label %bb3.i12

bb3.i12:                                          ; preds = %bb18
  %26 = load ptr, ptr %right_src.i6, align 8
  store ptr %26, ptr %src.i4, align 8
  br label %_ZN4core5slice4sort6shared9smallsort8merge_up17ha355306c0857fb95E.exit

bb2.i20:                                          ; preds = %bb18
  %27 = load ptr, ptr %left_src.i7, align 8
  store ptr %27, ptr %src.i4, align 8
  br label %_ZN4core5slice4sort6shared9smallsort8merge_up17ha355306c0857fb95E.exit

_ZN4core5slice4sort6shared9smallsort8merge_up17ha355306c0857fb95E.exit: ; preds = %bb3.i12, %bb2.i20
  %dst1.i13 = load ptr, ptr %dst.i5, align 8
  %_18.i14 = load ptr, ptr %src.i4, align 8
; call core::ptr::copy_nonoverlapping::precondition_check
  call void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17h7ee6658f5b9e876aE(ptr %_18.i14, ptr %dst1.i13, i64 4, i64 4, i64 1, ptr align 8 @alloc_0d87c14e0afc26d18a0752880d43f0ed) #19
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
  %_6.i = call zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h33b8375987c9ab84E"(ptr align 8 %is_less, ptr align 4 %_8.i, ptr align 4 %_9.i) #20
  %is_l.i = xor i1 %_6.i, true
  br i1 %is_l.i, label %bb2.i, label %bb3.i

bb3.i:                                            ; preds = %_ZN4core5slice4sort6shared9smallsort8merge_up17ha355306c0857fb95E.exit
  %45 = load ptr, ptr %left_src.i, align 8
  store ptr %45, ptr %src.i, align 8
  br label %_ZN4core5slice4sort6shared9smallsort10merge_down17ha9767935083cbdcfE.exit

bb2.i:                                            ; preds = %_ZN4core5slice4sort6shared9smallsort8merge_up17ha355306c0857fb95E.exit
  %46 = load ptr, ptr %right_src.i, align 8
  store ptr %46, ptr %src.i, align 8
  br label %_ZN4core5slice4sort6shared9smallsort10merge_down17ha9767935083cbdcfE.exit

_ZN4core5slice4sort6shared9smallsort10merge_down17ha9767935083cbdcfE.exit: ; preds = %bb3.i, %bb2.i
  %dst1.i = load ptr, ptr %dst.i, align 8
  %_18.i = load ptr, ptr %src.i, align 8
; call core::ptr::copy_nonoverlapping::precondition_check
  call void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17h7ee6658f5b9e876aE(ptr %_18.i, ptr %dst1.i, i64 4, i64 4, i64 1, ptr align 8 @alloc_0d87c14e0afc26d18a0752880d43f0ed) #19
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
define void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h775162c60259e0abE(ptr align 4 %v.0, i64 %v.1, i64 %offset, ptr align 8 %is_less) unnamed_addr #3 {
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
  call void @_ZN4core5slice4sort6shared9smallsort11insert_tail17hfde9bc389d656523E(ptr %v.0, ptr %_14, ptr align 8 %is_less)
  %1 = load ptr, ptr %tail, align 8
  %_15 = getelementptr inbounds nuw i32, ptr %1, i64 1
  store ptr %_15, ptr %tail, align 8
  br label %bb4
}

; core::slice::sort::shared::smallsort::small_sort_general_with_scratch
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h72c716bdf97d34a1E(ptr align 4 %v.0, i64 %v.1, ptr align 4 %scratch.0, i64 %scratch.1, ptr align 8 %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
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
  call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hba75c8cc18a5f1b8E(ptr %v.0, ptr %scratch.0, ptr %_16, ptr align 8 %is_less)
  %_18 = getelementptr inbounds nuw i32, ptr %v.0, i64 %len_div_2
  %_19 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_2
  %count = add i64 %v.1, 8
  %_20 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %count
; call core::slice::sort::shared::smallsort::sort8_stable
  call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hba75c8cc18a5f1b8E(ptr %_18, ptr %_19, ptr %_20, ptr align 8 %is_less)
  store i64 8, ptr %presorted_len, align 8
  br label %bb15

bb13:                                             ; preds = %bb9
  br label %bb33

bb10:                                             ; preds = %bb9
; call core::slice::sort::shared::smallsort::sort4_stable
  call void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h81f2771acbd19c5cE(ptr %v.0, ptr %scratch.0, ptr align 8 %is_less)
  %_27 = getelementptr inbounds nuw i32, ptr %v.0, i64 %len_div_2
  %_28 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_2
; call core::slice::sort::shared::smallsort::sort4_stable
  call void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h81f2771acbd19c5cE(ptr %_27, ptr %_28, ptr align 8 %is_less)
  store i64 4, ptr %presorted_len, align 8
  br label %bb14

bb33:                                             ; preds = %bb13
; call core::ptr::copy_nonoverlapping::precondition_check
  call void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17h7ee6658f5b9e876aE(ptr %v.0, ptr %scratch.0, i64 4, i64 4, i64 1, ptr align 8 @alloc_0d87c14e0afc26d18a0752880d43f0ed) #19
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scratch.0, ptr align 4 %v.0, i64 4, i1 false)
  %_31 = getelementptr inbounds nuw i32, ptr %v.0, i64 %len_div_2
  store ptr %_31, ptr %src, align 8
  %1 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_2
  store ptr %1, ptr %dst, align 8
  %_74 = load ptr, ptr %dst, align 8
; call core::ptr::copy_nonoverlapping::precondition_check
  call void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17h7ee6658f5b9e876aE(ptr %_31, ptr %_74, i64 4, i64 4, i64 1, ptr align 8 @alloc_0d87c14e0afc26d18a0752880d43f0ed) #19
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
  %8 = invoke { i64, i64 } @"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h9ae16af5cc4feaf3E"(ptr align 8 %iter, i64 2)
          to label %bb37 unwind label %cleanup

bb30:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<core::array::iter::IntoIter<usize,2_usize>>
  invoke void @"_ZN4core3ptr71drop_in_place$LT$core..array..iter..IntoIter$LT$usize$C$2_usize$GT$$GT$17h64637bee6ca50e2eE"(ptr align 8 %iter) #21
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
  call void @"_ZN4core3ptr71drop_in_place$LT$core..array..iter..IntoIter$LT$usize$C$2_usize$GT$$GT$17h64637bee6ca50e2eE"(ptr align 8 %iter)
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
  invoke void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17hd356662cfd0bbb68E(ptr align 4 %data, i64 %len, ptr %_65, ptr align 8 %is_less)
          to label %bb28 unwind label %cleanup2

bb32:                                             ; preds = %cleanup2
; invoke core::ptr::drop_in_place<core::slice::sort::shared::smallsort::CopyOnDrop<i32>>
  invoke void @"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h9df3272b439f2ae7E"(ptr align 8 %drop_guard) #21
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
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #18
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
  %40 = load i64, ptr @anon.1452607449d1cda81c3449eb997ca3db.0, align 8
  %41 = load i64, ptr getelementptr inbounds (i8, ptr @anon.1452607449d1cda81c3449eb997ca3db.0, i64 8), align 8
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
  call void @"_ZN4core3num23_$LT$impl$u20$usize$GT$13unchecked_add18precondition_check17h59501fa53d45ef95E"(i64 %old, i64 1, ptr align 8 @alloc_5a841786226b43ba606ae5b578f20831) #19
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
  call void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17h7ee6658f5b9e876aE(ptr %_55, ptr %dst7, i64 4, i64 4, i64 1, ptr align 8 @alloc_0d87c14e0afc26d18a0752880d43f0ed) #19
  br label %bb45

bb45:                                             ; preds = %bb43
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %dst7, ptr align 4 %_55, i64 4, i1 false)
; invoke core::slice::sort::shared::smallsort::insert_tail
  invoke void @_ZN4core5slice4sort6shared9smallsort11insert_tail17hfde9bc389d656523E(ptr %dst6, ptr %dst7, ptr align 8 %is_less)
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
define void @_ZN4core5slice4sort6stable14driftsort_main17he5302cb18f6e0b3aE(ptr align 4 %v.0, i64 %v.1, ptr align 8 %is_less) unnamed_addr #4 personality ptr @rust_eh_personality {
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
  %v2 = call i64 @_ZN4core3cmp3Ord3min17h6cf7cda3b9030b4cE(i64 %v.1, i64 2000000) #20
; call core::cmp::Ord::max
  %v11 = call i64 @_ZN4core3cmp3Ord3max17h96aa514caf3d36c5E(i64 %v1, i64 %v2) #20
; call core::cmp::Ord::max
  %alloc_len = call i64 @_ZN4core3cmp3Ord3max17h96aa514caf3d36c5E(i64 %v11, i64 48) #20
  call void @llvm.memset.p0.i64(ptr align 1 %_25, i8 undef, i64 4096, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %stack_buf, ptr align 1 %_25, i64 4096, i1 false)
; call core::slice::sort::stable::AlignedStorage<T,_>::as_uninit_slice_mut
  %1 = call { ptr, i64 } @"_ZN4core5slice4sort6stable27AlignedStorage$LT$T$C$_$GT$19as_uninit_slice_mut17h46692f484785056dE"(ptr align 4 %stack_buf)
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
  invoke void @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h33f6fc00b04f1f0bE"(ptr sret([24 x i8]) align 8 %_18, i64 %alloc_len)
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
  %13 = invoke { ptr, i64 } @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$19as_uninit_slice_mut17h4754d2b901d548b3E"(ptr align 8 %heap_buf)
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
  invoke void @_ZN4core5slice4sort6stable5drift4sort17hc9a0f1a7784e3cf3E(ptr align 4 %v.0, i64 %v.1, ptr align 4 %17, i64 %19, i1 zeroext %eager_sort, ptr align 8 %is_less)
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
  %20 = load i8, ptr %_24, align 1
  %21 = trunc nuw i8 %20 to i1
  br i1 %21, label %bb12, label %bb10

bb10:                                             ; preds = %bb12, %bb9
  ret void

bb12:                                             ; preds = %bb9
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h23328959df0fa2f8E"(ptr align 8 %heap_buf)
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
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h23328959df0fa2f8E"(ptr align 8 %heap_buf) #21
          to label %bb11 unwind label %terminate

terminate:                                        ; preds = %bb13
  %27 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #18
  unreachable
}

; core::slice::sort::stable::AlignedStorage<T,_>::as_uninit_slice_mut
; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @"_ZN4core5slice4sort6stable27AlignedStorage$LT$T$C$_$GT$19as_uninit_slice_mut17h46692f484785056dE"(ptr align 4 %self) unnamed_addr #3 {
start:
  br label %bb2

bb2:                                              ; preds = %start
; call core::slice::raw::from_raw_parts_mut::precondition_check
  call void @_ZN4core5slice3raw18from_raw_parts_mut18precondition_check17hf35401d02a4195cbE(ptr %self, i64 4, i64 4, i64 1024, ptr align 8 @alloc_8eb5e10561a52e3e21ddcc4331476765) #19
  br label %bb4

bb4:                                              ; preds = %bb2
  %0 = insertvalue { ptr, i64 } poison, ptr %self, 0
  %1 = insertvalue { ptr, i64 } %0, i64 1024, 1
  ret { ptr, i64 } %1
}

; core::slice::sort::stable::drift::create_run
; Function Attrs: nonlazybind uwtable
define i64 @_ZN4core5slice4sort6stable5drift10create_run17hd7722f341b6df3f3E(ptr align 4 %v.0, i64 %v.1, ptr align 4 %scratch.0, i64 %scratch.1, i64 %min_good_run_len, i1 zeroext %eager_sort, ptr align 8 %is_less) unnamed_addr #3 {
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
  call void @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked18precondition_check17hc3129a260b13371dE"(i64 1, i64 %v.1, ptr align 8 @alloc_931634cb509211d43117f85a624f7ad4) #19
  %_30.i = icmp ult i64 1, %v.1
  %_28.i = getelementptr inbounds nuw i32, ptr %v.0, i64 1
  store ptr %_28.i, ptr %_8.i, align 8
; call <usize as core::slice::index::SliceIndex<[T]>>::get_unchecked::precondition_check
  call void @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked18precondition_check17hc3129a260b13371dE"(i64 0, i64 %v.1, ptr align 8 @alloc_d26f09907ab98f304fcfaaceadb9cb06) #19
  %_34.i = icmp ult i64 0, %v.1
  %_7.0.i = load ptr, ptr %_8.i, align 8
; call alloc::slice::<impl [T]>::sort_by::{{closure}}
  %strictly_descending.i = call zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h33b8375987c9ab84E"(ptr align 8 %is_less, ptr align 4 %_7.0.i, ptr align 4 %v.0) #20
  br i1 %strictly_descending.i, label %bb4.i, label %bb11.i

bb1.i:                                            ; preds = %bb1
  store i64 %v.1, ptr %_0.i, align 8
  %0 = getelementptr inbounds i8, ptr %_0.i, i64 8
  store i8 0, ptr %0, align 8
  br label %_ZN4core5slice4sort6shared17find_existing_run17hf72df23bc68adf3bE.exit

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
  call void @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked18precondition_check17hc3129a260b13371dE"(i64 %index2.i, i64 %v.1, ptr align 8 @alloc_b830dbc42590bec8f67c3fc14fb9facc) #19
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
  call void @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked18precondition_check17hc3129a260b13371dE"(i64 %10, i64 %v.1, ptr align 8 @alloc_3701b49a4e08b388bcd00c0795da0c1c) #19
  %11 = load i64, ptr %index1.i, align 8
  %_46.i = icmp ult i64 %11, %v.1
  %12 = load i64, ptr %index1.i, align 8
  %_44.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %12
  %_22.0.i = load ptr, ptr %_23.i, align 8
; call alloc::slice::<impl [T]>::sort_by::{{closure}}
  %_21.i = call zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h33b8375987c9ab84E"(ptr align 8 %is_less, ptr align 4 %_22.0.i, ptr align 4 %_44.i) #20
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
  br label %_ZN4core5slice4sort6shared17find_existing_run17hf72df23bc68adf3bE.exit

bb9.i:                                            ; preds = %bb4.i
  br label %bb10.i

bb5.i:                                            ; preds = %bb4.i
  %index3.i = load i64, ptr %run_len.i, align 8
; call <usize as core::slice::index::SliceIndex<[T]>>::get_unchecked::precondition_check
  call void @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked18precondition_check17hc3129a260b13371dE"(i64 %index3.i, i64 %v.1, ptr align 8 @alloc_c9924649d23fa0226bb48f8af095d24c) #19
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
  call void @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked18precondition_check17hc3129a260b13371dE"(i64 %27, i64 %v.1, ptr align 8 @alloc_67a08c562ab3625beb2431e16f5ae16d) #19
  %28 = load i64, ptr %index.i, align 8
  %_40.i = icmp ult i64 %28, %v.1
  %29 = load i64, ptr %index.i, align 8
  %_38.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %29
  %_13.0.i = load ptr, ptr %_14.i, align 8
; call alloc::slice::<impl [T]>::sort_by::{{closure}}
  %_12.i = call zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h33b8375987c9ab84E"(ptr align 8 %is_less, ptr align 4 %_13.0.i, ptr align 4 %_38.i) #20
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

_ZN4core5slice4sort6shared17find_existing_run17hf72df23bc68adf3bE.exit: ; preds = %bb1.i, %bb18.i
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

bb6:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hf72df23bc68adf3bE.exit
  br label %bb7

bb3:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hf72df23bc68adf3bE.exit
  br i1 %_10.1, label %bb4, label %bb5

bb11:                                             ; preds = %bb7
; call core::cmp::Ord::min
  %length = call i64 @_ZN4core3cmp3Ord3min17h6cf7cda3b9030b4cE(i64 %min_good_run_len, i64 %v.1) #20
  %_36 = shl i64 %length, 1
  store i64 %_36, ptr %_0, align 8
  br label %bb12

bb8:                                              ; preds = %bb7
; call core::cmp::Ord::min
  %eager_run_len = call i64 @_ZN4core3cmp3Ord3min17h6cf7cda3b9030b4cE(i64 32, i64 %v.1) #20
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
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 0, i64 %eager_run_len, i64 %v.1, ptr align 8 @alloc_f2dd5660ec991d158c5ddbba70411c0e) #22
  unreachable

bb16:                                             ; preds = %bb19
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h9cda66ac4f6a0a9aE(ptr align 4 %v.0, i64 %eager_run_len, ptr align 4 %scratch.0, i64 %scratch.1, i32 0, ptr align 4 null, ptr align 8 %is_less) #24
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
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h804b3441997a40eaE"(ptr align 4 %v.0, i64 %_10.0) #20
  br label %bb5

bb13:                                             ; preds = %bb4
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 0, i64 %_10.0, i64 %v.1, ptr align 8 @alloc_bf881e017c9f72abf8140fb789efdd66) #22
  unreachable
}

; core::slice::sort::stable::drift::stable_quicksort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift16stable_quicksort17h63113141e606b124E(ptr align 4 %v.0, i64 %v.1, ptr align 4 %scratch.0, i64 %scratch.1, ptr align 8 %is_less) unnamed_addr #3 {
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
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h9cda66ac4f6a0a9aE(ptr align 4 %v.0, i64 %v.1, ptr align 4 %scratch.0, i64 %scratch.1, i32 %limit, ptr align 4 null, ptr align 8 %is_less) #24
  ret void

bb3:                                              ; preds = %start
; call core::num::int_log10::panic_for_nonpositive_argument
  call void @_ZN4core3num9int_log1030panic_for_nonpositive_argument17h529998da0ef96c11E(ptr align 8 @alloc_cff96582350e2216c1a180fa3875da7f) #23
  unreachable

bb2:                                              ; No predecessors!
  unreachable
}

; core::slice::sort::stable::drift::sort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift4sort17hc9a0f1a7784e3cf3E(ptr align 4 %v.0, i64 %v.1, ptr align 4 %scratch.0, i64 %scratch.1, i1 zeroext %eager_sort, ptr align 8 %is_less) unnamed_addr #3 {
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
  call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr align 8 @alloc_84f25bd43668db495db7efe11a447939) #22
  unreachable

bb24:                                             ; preds = %bb23
  %r = urem i64 4611686018427387904, %v.1
  %_73 = icmp ugt i64 %r, 0
  br i1 %_73, label %bb25, label %bb26

panic1:                                           ; preds = %bb23
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_84f25bd43668db495db7efe11a447939) #22
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
  %3 = call i64 @_ZN4core3cmp3Ord3min17h6cf7cda3b9030b4cE(i64 %v1, i64 64) #20
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
  %4 = call i64 @_ZN4core5slice4sort6stable5drift10create_run17hd7722f341b6df3f3E(ptr align 4 %_82, i64 %new_len, ptr align 4 %scratch.0, i64 %scratch.1, i64 %_27, i1 zeroext %eager_sort, ptr align 8 %is_less)
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
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 %index, i64 %v.1, i64 %v.1, ptr align 8 @alloc_5d7c848934990784b7fee386098c4213) #22
  unreachable

bb11:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h8f0a30d7222f5f1fE.exit, %bb10
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
  call void @_ZN4core5slice4sort6stable5drift16stable_quicksort17h63113141e606b124E(ptr align 4 %v.0, i64 %v.1, ptr align 4 %scratch.0, i64 %scratch.1, ptr align 8 %is_less)
  br label %bb21

bb21:                                             ; preds = %bb20, %bb18
  br label %bb22

bb22:                                             ; preds = %bb1, %bb21
  ret void

bb32:                                             ; preds = %bb13
; call <core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::get_unchecked_mut::precondition_check
  call void @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut18precondition_check17h05fb85f8b631bcc4E"(i64 %merge_start_idx, i64 %index12, i64 %v.1, ptr align 8 @alloc_17aa6ea520746a7a30b50afbbedf5259) #19
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h8f0a30d7222f5f1fE.exit

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
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 0, i64 %index.i, i64 %new_len13, ptr align 8 @alloc_5f8af39c37d5f8ee2e9894ce845741a6) #22
  unreachable

bb11.i:                                           ; preds = %bb4.i
; call core::slice::sort::stable::drift::stable_quicksort
  call void @_ZN4core5slice4sort6stable5drift16stable_quicksort17h63113141e606b124E(ptr align 4 %_98, i64 %index.i, ptr align 4 %scratch.0, i64 %scratch.1, ptr align 8 %is_less)
  br label %bb5.i

bb6.i:                                            ; preds = %bb5.i
  %index1.i = lshr i64 %left10, 1
  %_31.i = icmp ugt i64 %index1.i, %new_len13
  br i1 %_31.i, label %bb15.i, label %bb16.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  %_20.i = lshr i64 %left10, 1
; call core::slice::sort::stable::merge::merge
  call void @_ZN4core5slice4sort6stable5merge5merge17h37f2006b8b7db59bE(ptr align 4 %_98, i64 %new_len13, ptr align 4 %scratch.0, i64 %scratch.1, i64 %_20.i, ptr align 8 %is_less)
  %_39.i = shl i64 %new_len13, 1
  %_38.i = or i64 %_39.i, 1
  store i64 %_38.i, ptr %_0.i, align 8
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h8f0a30d7222f5f1fE.exit

bb16.i:                                           ; preds = %bb6.i
  %new_len.i = sub nuw i64 %new_len13, %index1.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %index1.i
; call core::slice::sort::stable::drift::stable_quicksort
  call void @_ZN4core5slice4sort6stable5drift16stable_quicksort17h63113141e606b124E(ptr align 4 %_37.i, i64 %new_len.i, ptr align 4 %scratch.0, i64 %scratch.1, ptr align 8 %is_less)
  br label %bb7.i

bb15.i:                                           ; preds = %bb6.i
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 %index1.i, i64 %new_len13, i64 %new_len13, ptr align 8 @alloc_5be8b393046eedb82fc40754d45c03a6) #22
  unreachable

_ZN4core5slice4sort6stable5drift13logical_merge17h8f0a30d7222f5f1fE.exit: ; preds = %bb9.i, %bb7.i
  %14 = load i64, ptr %_0.i, align 8
  store i64 %14, ptr %prev_run, align 8
  %15 = load i64, ptr %stack_len, align 8
  %16 = sub i64 %15, 1
  store i64 %16, ptr %stack_len, align 8
  br label %bb11
}

; core::slice::sort::stable::merge::MergeState<T>::merge_down
; Function Attrs: nonlazybind uwtable
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h3f3b931ef94a0d4aE"(ptr align 8 %self, ptr %left_end, ptr %right_end, ptr %0, ptr align 8 %is_less) unnamed_addr #3 {
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
  %consume_left = call zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h33b8375987c9ab84E"(ptr align 8 %is_less, ptr align 4 %_13, ptr align 4 %_14) #20
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
  call void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17h7ee6658f5b9e876aE(ptr %_30, ptr %dst, i64 4, i64 4, i64 1, ptr align 8 @alloc_0d87c14e0afc26d18a0752880d43f0ed) #19
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
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17hed55309007301cd5E"(ptr align 8 %self, ptr %0, ptr %right_end, ptr align 8 %is_less) unnamed_addr #3 {
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
  %_13 = call zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h33b8375987c9ab84E"(ptr align 8 %is_less, ptr align 4 %_15, ptr align 4 %_27) #20
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
  call void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17h7ee6658f5b9e876aE(ptr %_29, ptr %dst, i64 4, i64 4, i64 1, ptr align 8 @alloc_0d87c14e0afc26d18a0752880d43f0ed) #19
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
define void @_ZN4core5slice4sort6stable5merge5merge17h37f2006b8b7db59bE(ptr align 4 %v.0, i64 %v.1, ptr align 4 %scratch.0, i64 %scratch.1, i64 %0, ptr align 8 %is_less) unnamed_addr #3 personality ptr @rust_eh_personality {
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
  %_10 = call i64 @_ZN4core3cmp3Ord3min17h6cf7cda3b9030b4cE(i64 %5, i64 %right_len) #20
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
  call void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17h7ee6658f5b9e876aE(ptr %_19, ptr %scratch.0, i64 4, i64 4, i64 %count, ptr align 8 @alloc_0d87c14e0afc26d18a0752880d43f0ed) #19
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
  invoke void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h3f3b931ef94a0d4aE"(ptr align 8 %merge_state, ptr %v.0, ptr %scratch.0, ptr %v_end, ptr align 8 %is_less)
          to label %bb15 unwind label %cleanup

bb12:                                             ; preds = %bb24
; invoke core::slice::sort::stable::merge::MergeState<T>::merge_up
  invoke void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17hed55309007301cd5E"(ptr align 8 %merge_state, ptr %v_mid, ptr %v_end, ptr align 8 %is_less)
          to label %bb13 unwind label %cleanup

bb19:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<core::slice::sort::stable::merge::MergeState<i32>>
  invoke void @"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h2c1a4ebde0bd0c88E"(ptr align 8 %merge_state) #21
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
  call void @"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17h2c1a4ebde0bd0c88E"(ptr align 8 %merge_state)
  br label %bb18

bb13:                                             ; preds = %bb12
  br label %bb16

bb18:                                             ; preds = %bb4, %bb16
  ret void

terminate:                                        ; preds = %bb19
  %19 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #18
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
define i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h9fe2778b8bc0af76E(ptr align 4 %v.0, i64 %v.1, ptr align 4 %scratch.0, i64 %scratch.1, i64 %0, i1 zeroext %pivot_goes_left, ptr align 8 %is_less) unnamed_addr #3 {
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
  %_23 = call zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h33b8375987c9ab84E"(ptr align 8 %is_less, ptr align 4 %_78, ptr align 4 %pivot) #20
; call core::slice::sort::stable::quicksort::PartitionState<T>::partition_one
  %_21 = call ptr @"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc64f35a1b089a0ceE"(ptr align 8 %state, i1 zeroext %_23)
  %14 = getelementptr inbounds i8, ptr %state, i64 8
  %_79 = load ptr, ptr %14, align 8
; call alloc::slice::<impl [T]>::sort_by::{{closure}}
  %_29 = call zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h33b8375987c9ab84E"(ptr align 8 %is_less, ptr align 4 %_79, ptr align 4 %pivot) #20
; call core::slice::sort::stable::quicksort::PartitionState<T>::partition_one
  %_27 = call ptr @"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc64f35a1b089a0ceE"(ptr align 8 %state, i1 zeroext %_29)
  %15 = getelementptr inbounds i8, ptr %state, i64 8
  %_80 = load ptr, ptr %15, align 8
; call alloc::slice::<impl [T]>::sort_by::{{closure}}
  %_35 = call zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h33b8375987c9ab84E"(ptr align 8 %is_less, ptr align 4 %_80, ptr align 4 %pivot) #20
; call core::slice::sort::stable::quicksort::PartitionState<T>::partition_one
  %_33 = call ptr @"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc64f35a1b089a0ceE"(ptr align 8 %state, i1 zeroext %_35)
  %16 = getelementptr inbounds i8, ptr %state, i64 8
  %_81 = load ptr, ptr %16, align 8
; call alloc::slice::<impl [T]>::sort_by::{{closure}}
  %_41 = call zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h33b8375987c9ab84E"(ptr align 8 %is_less, ptr align 4 %_81, ptr align 4 %pivot) #20
; call core::slice::sort::stable::quicksort::PartitionState<T>::partition_one
  %_39 = call ptr @"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc64f35a1b089a0ceE"(ptr align 8 %state, i1 zeroext %_41)
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
  %_51 = call zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h33b8375987c9ab84E"(ptr align 8 %is_less, ptr align 4 %_82, ptr align 4 %pivot) #20
; call core::slice::sort::stable::quicksort::PartitionState<T>::partition_one
  %_49 = call ptr @"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc64f35a1b089a0ceE"(ptr align 8 %state, i1 zeroext %_51)
  br label %bb17

bb23:                                             ; preds = %bb21
; call core::slice::sort::stable::quicksort::PartitionState<T>::partition_one
  %20 = call ptr @"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc64f35a1b089a0ceE"(ptr align 8 %state, i1 zeroext %pivot_goes_left)
  store ptr %20, ptr %pivot_in_scratch, align 8
  store i64 %v.1, ptr %pivot_pos, align 8
  br label %bb3

bb22:                                             ; preds = %bb21
; call <T as core::slice::sort::stable::quicksort::IsFreeze>::is_freeze
  %_87 = call zeroext i1 @"_ZN68_$LT$T$u20$as$u20$core..slice..sort..stable..quicksort..IsFreeze$GT$9is_freeze17he3af88cdef896f01E"()
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
  call void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17h7ee6658f5b9e876aE(ptr %pivot, ptr %_90, i64 4, i64 4, i64 1, ptr align 8 @alloc_0d87c14e0afc26d18a0752880d43f0ed) #19
  br label %bb38

bb38:                                             ; preds = %bb36
  %22 = load ptr, ptr %pivot_in_scratch, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %22, ptr align 4 %pivot, i64 4, i1 false)
  br label %bb26

bb39:                                             ; preds = %bb26
; call core::ptr::copy_nonoverlapping::precondition_check
  call void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17h7ee6658f5b9e876aE(ptr %scratch.0, ptr %v.0, i64 4, i64 4, i64 %count6, ptr align 8 @alloc_0d87c14e0afc26d18a0752880d43f0ed) #19
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
  %27 = load i64, ptr @anon.1452607449d1cda81c3449eb997ca3db.0, align 8
  %28 = load i64, ptr getelementptr inbounds (i8, ptr @anon.1452607449d1cda81c3449eb997ca3db.0, i64 8), align 8
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
  call void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17h7ee6658f5b9e876aE(ptr %_106, ptr %_107, i64 4, i64 4, i64 1, ptr align 8 @alloc_0d87c14e0afc26d18a0752880d43f0ed) #19
  br label %bb47

bb44:                                             ; preds = %bb42
; call core::num::<impl usize>::unchecked_add::precondition_check
  call void @"_ZN4core3num23_$LT$impl$u20$usize$GT$13unchecked_add18precondition_check17h59501fa53d45ef95E"(i64 %old, i64 1, ptr align 8 @alloc_5a841786226b43ba606ae5b578f20831) #19
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
define i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17hf9af843be852c635E(ptr align 4 %v.0, i64 %v.1, ptr align 4 %scratch.0, i64 %scratch.1, i64 %0, i1 zeroext %pivot_goes_left, ptr align 8 %is_less) unnamed_addr #3 {
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
  %_23 = call zeroext i1 @"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h497a2b827b089540E"(ptr align 8 %is_less, ptr align 4 %_78, ptr align 4 %pivot) #20
; call core::slice::sort::stable::quicksort::PartitionState<T>::partition_one
  %_21 = call ptr @"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc64f35a1b089a0ceE"(ptr align 8 %state, i1 zeroext %_23)
  %14 = getelementptr inbounds i8, ptr %state, i64 8
  %_79 = load ptr, ptr %14, align 8
; call core::slice::sort::stable::quicksort::quicksort::{{closure}}
  %_29 = call zeroext i1 @"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h497a2b827b089540E"(ptr align 8 %is_less, ptr align 4 %_79, ptr align 4 %pivot) #20
; call core::slice::sort::stable::quicksort::PartitionState<T>::partition_one
  %_27 = call ptr @"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc64f35a1b089a0ceE"(ptr align 8 %state, i1 zeroext %_29)
  %15 = getelementptr inbounds i8, ptr %state, i64 8
  %_80 = load ptr, ptr %15, align 8
; call core::slice::sort::stable::quicksort::quicksort::{{closure}}
  %_35 = call zeroext i1 @"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h497a2b827b089540E"(ptr align 8 %is_less, ptr align 4 %_80, ptr align 4 %pivot) #20
; call core::slice::sort::stable::quicksort::PartitionState<T>::partition_one
  %_33 = call ptr @"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc64f35a1b089a0ceE"(ptr align 8 %state, i1 zeroext %_35)
  %16 = getelementptr inbounds i8, ptr %state, i64 8
  %_81 = load ptr, ptr %16, align 8
; call core::slice::sort::stable::quicksort::quicksort::{{closure}}
  %_41 = call zeroext i1 @"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h497a2b827b089540E"(ptr align 8 %is_less, ptr align 4 %_81, ptr align 4 %pivot) #20
; call core::slice::sort::stable::quicksort::PartitionState<T>::partition_one
  %_39 = call ptr @"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc64f35a1b089a0ceE"(ptr align 8 %state, i1 zeroext %_41)
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
  %_51 = call zeroext i1 @"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h497a2b827b089540E"(ptr align 8 %is_less, ptr align 4 %_82, ptr align 4 %pivot) #20
; call core::slice::sort::stable::quicksort::PartitionState<T>::partition_one
  %_49 = call ptr @"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc64f35a1b089a0ceE"(ptr align 8 %state, i1 zeroext %_51)
  br label %bb17

bb23:                                             ; preds = %bb21
; call core::slice::sort::stable::quicksort::PartitionState<T>::partition_one
  %20 = call ptr @"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc64f35a1b089a0ceE"(ptr align 8 %state, i1 zeroext %pivot_goes_left)
  store ptr %20, ptr %pivot_in_scratch, align 8
  store i64 %v.1, ptr %pivot_pos, align 8
  br label %bb3

bb22:                                             ; preds = %bb21
; call <T as core::slice::sort::stable::quicksort::IsFreeze>::is_freeze
  %_87 = call zeroext i1 @"_ZN68_$LT$T$u20$as$u20$core..slice..sort..stable..quicksort..IsFreeze$GT$9is_freeze17he3af88cdef896f01E"()
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
  call void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17h7ee6658f5b9e876aE(ptr %pivot, ptr %_90, i64 4, i64 4, i64 1, ptr align 8 @alloc_0d87c14e0afc26d18a0752880d43f0ed) #19
  br label %bb38

bb38:                                             ; preds = %bb36
  %22 = load ptr, ptr %pivot_in_scratch, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %22, ptr align 4 %pivot, i64 4, i1 false)
  br label %bb26

bb39:                                             ; preds = %bb26
; call core::ptr::copy_nonoverlapping::precondition_check
  call void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17h7ee6658f5b9e876aE(ptr %scratch.0, ptr %v.0, i64 4, i64 4, i64 %count6, ptr align 8 @alloc_0d87c14e0afc26d18a0752880d43f0ed) #19
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
  %27 = load i64, ptr @anon.1452607449d1cda81c3449eb997ca3db.0, align 8
  %28 = load i64, ptr getelementptr inbounds (i8, ptr @anon.1452607449d1cda81c3449eb997ca3db.0, i64 8), align 8
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
  call void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17h7ee6658f5b9e876aE(ptr %_106, ptr %_107, i64 4, i64 4, i64 1, ptr align 8 @alloc_0d87c14e0afc26d18a0752880d43f0ed) #19
  br label %bb47

bb44:                                             ; preds = %bb42
; call core::num::<impl usize>::unchecked_add::precondition_check
  call void @"_ZN4core3num23_$LT$impl$u20$usize$GT$13unchecked_add18precondition_check17h59501fa53d45ef95E"(i64 %old, i64 1, ptr align 8 @alloc_5a841786226b43ba606ae5b578f20831) #19
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
define ptr @"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hc64f35a1b089a0ceE"(ptr align 8 %self, i1 zeroext %towards_left) unnamed_addr #3 {
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
  call void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17h7ee6658f5b9e876aE(ptr %src, ptr %dst, i64 4, i64 4, i64 1, ptr align 8 @alloc_0d87c14e0afc26d18a0752880d43f0ed) #19
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
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h9cda66ac4f6a0a9aE(ptr align 4 %0, i64 %1, ptr align 4 %scratch.0, i64 %scratch.1, i32 %2, ptr align 4 %3, ptr align 8 %is_less) unnamed_addr #4 {
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
  call void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h72c716bdf97d34a1E(ptr align 4 %6, i64 %8, ptr align 4 %scratch.0, i64 %scratch.1, ptr align 8 %is_less)
  br label %bb22

bb7:                                              ; preds = %bb5
  %9 = load i32, ptr %limit, align 4
  %10 = sub i32 %9, 1
  store i32 %10, ptr %limit, align 4
  %_15.0 = load ptr, ptr %v, align 8
  %11 = getelementptr inbounds i8, ptr %v, i64 8
  %_15.1 = load i64, ptr %11, align 8
; call core::slice::sort::shared::pivot::choose_pivot
  %pivot_pos = call i64 @_ZN4core5slice4sort6shared5pivot12choose_pivot17hcc8d2038d999fcfdE(ptr align 4 %_15.0, i64 %_15.1, ptr align 8 %is_less) #20
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
  call void @_ZN4core5slice4sort6stable5drift4sort17hc9a0f1a7784e3cf3E(ptr align 4 %13, i64 %15, ptr align 4 %scratch.0, i64 %scratch.1, i1 zeroext true, ptr align 8 %is_less)
  br label %bb22

bb10:                                             ; preds = %bb7
  %16 = load ptr, ptr %v, align 8
  %17 = getelementptr inbounds i8, ptr %v, i64 8
  %18 = load i64, ptr %17, align 8
  %src = getelementptr inbounds nuw i32, ptr %16, i64 %pivot_pos
  %value = load i32, ptr %src, align 4
  store i32 %value, ptr %pivot_copy, align 4
; call <T as core::slice::sort::stable::quicksort::IsFreeze>::is_freeze
  %self = call zeroext i1 @"_ZN68_$LT$T$u20$as$u20$core..slice..sort..stable..quicksort..IsFreeze$GT$9is_freeze17he3af88cdef896f01E"()
  br i1 %self, label %bb25, label %bb26

panic:                                            ; preds = %bb7
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %pivot_pos, i64 %_19.1, ptr align 8 @alloc_77210a9a58e6f675b0a4debce2a91e63) #22
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
  %_28 = call zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h33b8375987c9ab84E"(ptr align 8 %is_less, ptr align 4 %la_pivot, ptr align 4 %_30) #20
  %27 = xor i1 %_28, true
  %28 = zext i1 %27 to i8
  store i8 %28, ptr %perform_equal_partition, align 1
  store i64 0, ptr %left_partition_len, align 8
  %29 = load i8, ptr %perform_equal_partition, align 1
  %_34 = trunc nuw i8 %29 to i1
  br i1 %_34, label %bb16, label %bb14

panic1:                                           ; preds = %bb11
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %pivot_pos, i64 %_31.1, ptr align 8 @alloc_2adac2ead9e3dc93f204caf01caf89ce) #22
  unreachable

bb14:                                             ; preds = %bb30, %bb12
  %_36.0 = load ptr, ptr %v, align 8
  %30 = getelementptr inbounds i8, ptr %v, i64 8
  %_36.1 = load i64, ptr %30, align 8
; call core::slice::sort::stable::quicksort::stable_partition
  %31 = call i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h9fe2778b8bc0af76E(ptr align 4 %_36.0, i64 %_36.1, ptr align 4 %scratch.0, i64 %scratch.1, i64 %pivot_pos, i1 zeroext false, ptr align 8 %is_less)
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
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h42b7d03ae7ba3304E"(ptr sret([32 x i8]) align 8 %_43, ptr align 4 %36, i64 %38, i64 %39, ptr align 8 @alloc_58d434a1e795f965ef82c8e9c5db822a) #20
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
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h9cda66ac4f6a0a9aE(ptr align 4 %right.0, i64 %right.1, ptr align 4 %scratch.0, i64 %scratch.1, i32 %_45, ptr align 4 %46, ptr align 8 %is_less) #24
  br label %bb1

bb17:                                             ; preds = %bb16
  %_39.0 = load ptr, ptr %v, align 8
  %47 = getelementptr inbounds i8, ptr %v, i64 8
  %_39.1 = load i64, ptr %47, align 8
  store ptr %is_less, ptr %_41, align 8
; call core::slice::sort::stable::quicksort::stable_partition
  %mid_eq = call i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17hf9af843be852c635E(ptr align 4 %_39.0, i64 %_39.1, ptr align 4 %scratch.0, i64 %scratch.1, i64 %pivot_pos, i1 zeroext true, ptr align 8 %_41)
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
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 %mid_eq, i64 %_48, i64 %_48, ptr align 8 @alloc_0766b232215672ee1bd2195fdb153938) #22
  unreachable

bb29:                                             ; No predecessors!
  unreachable

bb22:                                             ; preds = %bb3, %bb6
  ret void
}

; core::slice::sort::stable::quicksort::quicksort::{{closure}}
; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h497a2b827b089540E"(ptr align 8 %_1, ptr align 4 %a, ptr align 4 %b) unnamed_addr #2 {
start:
  %_6 = load ptr, ptr %_1, align 8
; call alloc::slice::<impl [T]>::sort_by::{{closure}}
  %_4 = call zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h33b8375987c9ab84E"(ptr align 8 %_6, ptr align 4 %b, ptr align 4 %a) #20
  %_0 = xor i1 %_4, true
  ret i1 %_0
}

; core::ub_checks::maybe_is_nonoverlapping::runtime
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @_ZN4core9ub_checks23maybe_is_nonoverlapping7runtime17hf54fe4fc75bbd4dbE(ptr %src, ptr %dst, i64 %size, i64 %count) unnamed_addr #2 {
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
  call void @_ZN4core9panicking14panic_nounwind17h9a55331e46709e5fE(ptr align 1 @alloc_763310d78c99c2c1ad3f8a9821e942f3, i64 61) #16
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

; alloc::slice::stable_sort
; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN5alloc5slice11stable_sort17h78c970a9a3ec2dcaE(ptr align 4 %v.0, i64 %v.1, ptr align 1 %0) unnamed_addr #2 personality ptr @rust_eh_personality {
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
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17he5302cb18f6e0b3aE(ptr align 4 %v.0, i64 %v.1, ptr align 8 %is_less)
          to label %bb13 unwind label %cleanup

bb9:                                              ; preds = %bb7
; invoke core::slice::sort::shared::smallsort::insertion_sort_shift_left
  invoke void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h775162c60259e0abE(ptr align 4 %v.0, i64 %v.1, i64 1, ptr align 8 %is_less)
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
define void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h1de68a58d634a414E"(ptr align 4 %self.0, i64 %self.1) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %compare = alloca [0 x i8], align 1
; invoke alloc::slice::stable_sort
  invoke void @_ZN5alloc5slice11stable_sort17h78c970a9a3ec2dcaE(ptr align 4 %self.0, i64 %self.1, ptr align 1 %compare)
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
define zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h33b8375987c9ab84E"(ptr align 8 %_1, ptr align 4 %a, ptr align 4 %b) unnamed_addr #2 {
start:
  %_7 = load ptr, ptr %_1, align 8
; call core::ops::function::FnMut::call_mut
  %_5 = call i8 @_ZN4core3ops8function5FnMut8call_mut17hbe1950823eb0b924E(ptr align 1 %_7, ptr align 4 %a, ptr align 4 %b) #20
  %_0 = icmp eq i8 %_5, -1
  ret i1 %_0
}

; alloc::slice::<impl core::slice::sort::stable::BufGuard<T> for alloc::vec::Vec<T>>::with_capacity
; Function Attrs: nonlazybind uwtable
define void @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h33f6fc00b04f1f0bE"(ptr sret([24 x i8]) align 8 %_0, i64 %capacity) unnamed_addr #3 {
start:
; call alloc::raw_vec::RawVecInner<A>::with_capacity_in
  %0 = call { i64, ptr } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h0db1a87aa6c4d060E"(i64 %capacity, i64 4, i64 4) #20
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
define { ptr, i64 } @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$19as_uninit_slice_mut17h4754d2b901d548b3E"(ptr align 8 %self) unnamed_addr #3 {
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
  call void @_ZN4core5slice3raw18from_raw_parts_mut18precondition_check17hf35401d02a4195cbE(ptr %_3, i64 4, i64 4, i64 %len, ptr align 8 @alloc_90bbe98427952d250653de279965c424) #19
  br label %bb6

bb6:                                              ; preds = %bb4
  %4 = insertvalue { ptr, i64 } poison, ptr %_3, 0
  %5 = insertvalue { ptr, i64 } %4, i64 %len, 1
  ret { ptr, i64 } %5
}

; alloc::raw_vec::RawVecInner<A>::with_capacity_in
; Function Attrs: inlinehint nonlazybind uwtable
define { i64, ptr } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h0db1a87aa6c4d060E"(i64 %capacity, i64 %elem_layout.0, i64 %elem_layout.1) unnamed_addr #2 {
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
  call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 %err.0, i64 %err.1) #23
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
  call void @_ZN4core4hint16assert_unchecked18precondition_check17h3b7d371b523d4893E(i1 zeroext %cond, ptr align 8 @alloc_eb8575322eb46aedd166f4660e76bf8c) #19
  br label %bb9

bb9:                                              ; preds = %bb8
  %6 = insertvalue { i64, ptr } poison, i64 %this.0, 0
  %7 = insertvalue { i64, ptr } %6, ptr %this.1, 1
  ret { i64, ptr } %7

bb2:                                              ; No predecessors!
  unreachable
}

; <T as core::slice::sort::stable::quicksort::IsFreeze>::is_freeze
; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN68_$LT$T$u20$as$u20$core..slice..sort..stable..quicksort..IsFreeze$GT$9is_freeze17he3af88cdef896f01E"() unnamed_addr #3 {
start:
  ret i1 true
}

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h155fbb88dd5215cfE"(ptr align 8 %self) unnamed_addr #3 {
start:
  %0 = getelementptr inbounds i8, ptr %self, i64 8
  %_5 = load ptr, ptr %0, align 8
  %1 = getelementptr inbounds i8, ptr %self, i64 16
  %len = load i64, ptr %1, align 8
  ret void
}

; <usize as core::slice::index::SliceIndex<[T]>>::get_unchecked::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked18precondition_check17hc3129a260b13371dE"(i64 %this, i64 %len, ptr align 8 %0) unnamed_addr #0 {
start:
  %_3 = icmp ult i64 %this, %len
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
; call core::panicking::panic_nounwind_fmt
  call void @_ZN4core9panicking18panic_nounwind_fmt17hf349702e3facb1fdE(ptr @alloc_97d92cbf2a68a6ac45a1b13da79836e4, ptr inttoptr (i64 429 to ptr), i1 zeroext false, ptr align 8 %0) #16
  unreachable

bb1:                                              ; preds = %start
  ret void
}

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0a94764cfcd91e61E"(ptr align 8 %self) unnamed_addr #3 {
start:
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr align 8 %self, i64 4, i64 4)
  ret void
}

; <core::array::iter::IntoIter<T,_> as core::ops::drop::Drop>::drop
; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN82_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h23d7b890641b068cE"(ptr align 8 %self) unnamed_addr #2 {
start:
  br label %bb2

bb2:                                              ; preds = %start
  ret void

bb1:                                              ; No predecessors!
  unreachable

bb3:                                              ; No predecessors!
  unreachable
}

; <core::slice::sort::stable::merge::MergeState<T> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define void @"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h93be5e5cf685d065E"(ptr align 8 %self) unnamed_addr #3 {
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
  call void @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$20offset_from_unsigned18precondition_check17h17f7c03ea34b8cc8E"(ptr %self1, ptr %_5, ptr align 8 @alloc_6f43bd4a6d6fed264215c60a43663872) #19
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
  call void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17h7ee6658f5b9e876aE(ptr %_7, ptr %_21, i64 4, i64 4, i64 %7, ptr align 8 @alloc_0d87c14e0afc26d18a0752880d43f0ed) #19
  br label %bb5

bb3:                                              ; No predecessors!
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17ha2e20a73227bb72eE(ptr align 1 @alloc_ec595fc0e82ef92fc59bd74f68296eae, i64 73, ptr align 8 @alloc_6f43bd4a6d6fed264215c60a43663872) #22
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
define void @"_ZN96_$LT$core..hint..select_unpredictable..DropOnPanic$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6727e96de4c38bbaE"(ptr align 8 %self) unnamed_addr #3 {
start:
  %self1 = load ptr, ptr %self, align 8
  ret void
}

; <core::slice::sort::shared::smallsort::CopyOnDrop<T> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define void @"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc1b6586eb1fba5f3E"(ptr align 8 %self) unnamed_addr #3 {
start:
  %src = load ptr, ptr %self, align 8
  %0 = getelementptr inbounds i8, ptr %self, i64 8
  %dst = load ptr, ptr %0, align 8
  %1 = getelementptr inbounds i8, ptr %self, i64 16
  %count = load i64, ptr %1, align 8
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::copy_nonoverlapping::precondition_check
  call void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17h7ee6658f5b9e876aE(ptr %src, ptr %dst, i64 4, i64 4, i64 %count, ptr align 8 @alloc_0d87c14e0afc26d18a0752880d43f0ed) #19
  br label %bb3

bb3:                                              ; preds = %bb1
  %2 = mul i64 %count, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %dst, ptr align 4 %src, i64 %2, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define i8 @cmpfunc(ptr align 4 %a, ptr align 4 %b) unnamed_addr #3 {
start:
; call core::cmp::impls::<impl core::cmp::Ord for i32>::cmp
  %_0 = call i8 @"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h73c260be8bd6f03bE"(ptr align 4 %a, ptr align 4 %b) #20
  ret i8 %_0
}

; Function Attrs: nonlazybind uwtable
define i32 @f_gold(i64 %0, i32 %n, i32 %x) unnamed_addr #3 {
start:
  %cnt = alloca [4 x i8], align 4
  %r = alloca [8 x i8], align 8
  %l = alloca [8 x i8], align 8
  %i = alloca [8 x i8], align 8
  %_0 = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
  store i64 0, ptr %i, align 8
  br label %bb1

bb1:                                              ; preds = %bb8, %start
  %_6 = load i64, ptr %i, align 8
  %_8 = sext i32 %n to i64
  %_9.0 = sub i64 %_8, 1
  %_9.1 = icmp ult i64 %_8, 1
  br i1 %_9.1, label %panic, label %bb2

bb2:                                              ; preds = %bb1
  %_5 = icmp ult i64 %_6, %_9.0
  br i1 %_5, label %bb3, label %bb9

panic:                                            ; preds = %bb1
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_3a4c70cda45d58b3f9432d69aa9578f4) #22
  unreachable

bb9:                                              ; preds = %bb6, %bb2
  %_22 = load i64, ptr %i, align 8
  %_23.0 = add i64 %_22, 1
  %_23.1 = icmp ult i64 %_23.0, %_22
  br i1 %_23.1, label %panic4, label %bb10

bb3:                                              ; preds = %bb2
  %_12 = load i64, ptr %i, align 8
  %_13 = icmp ult i64 %_12, 2
  br i1 %_13, label %bb4, label %panic1

bb4:                                              ; preds = %bb3
  %2 = getelementptr inbounds nuw i32, ptr %arr, i64 %_12
  %_11 = load i32, ptr %2, align 4
  %_16 = load i64, ptr %i, align 8
  %_17.0 = add i64 %_16, 1
  %_17.1 = icmp ult i64 %_17.0, %_16
  br i1 %_17.1, label %panic2, label %bb5

panic1:                                           ; preds = %bb3
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_12, i64 2, ptr align 8 @alloc_72ab80924de964da806b0f6f6923a6d5) #22
  unreachable

bb5:                                              ; preds = %bb4
  %_18 = icmp ult i64 %_17.0, 2
  br i1 %_18, label %bb6, label %panic3

panic2:                                           ; preds = %bb4
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_31bb62950a9b6ec3f3bf457d5aec4c34) #22
  unreachable

bb6:                                              ; preds = %bb5
  %3 = getelementptr inbounds nuw i32, ptr %arr, i64 %_17.0
  %_14 = load i32, ptr %3, align 4
  %_10 = icmp sle i32 %_11, %_14
  br i1 %_10, label %bb7, label %bb9

panic3:                                           ; preds = %bb5
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_17.0, i64 2, ptr align 8 @alloc_062b6c17ab2cd5fd054fe7960a1f4208) #22
  unreachable

bb7:                                              ; preds = %bb6
  %4 = load i64, ptr %i, align 8
  %_19.0 = add i64 %4, 1
  %_19.1 = icmp ult i64 %_19.0, %4
  br i1 %_19.1, label %panic26, label %bb8

bb10:                                             ; preds = %bb9
  %_24 = sext i32 %n to i64
  %_25 = icmp eq i64 %_24, 0
  br i1 %_25, label %panic5, label %bb11

panic4:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_113606d309eb94b282902ee1acac2fd0) #22
  unreachable

bb11:                                             ; preds = %bb10
  %5 = urem i64 %_23.0, %_24
  store i64 %5, ptr %l, align 8
  %6 = load i64, ptr %i, align 8
  store i64 %6, ptr %r, align 8
  store i32 0, ptr %cnt, align 4
  br label %bb12

panic5:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_113606d309eb94b282902ee1acac2fd0) #22
  unreachable

bb12:                                             ; preds = %bb28, %bb35, %bb39, %bb11
  %_29 = load i64, ptr %l, align 8
  %_30 = load i64, ptr %r, align 8
  %_28 = icmp ne i64 %_29, %_30
  br i1 %_28, label %bb13, label %bb40

bb40:                                             ; preds = %bb12
  %7 = load i32, ptr %cnt, align 4
  store i32 %7, ptr %_0, align 4
  br label %bb41

bb13:                                             ; preds = %bb12
  %_34 = load i64, ptr %l, align 8
  %_35 = icmp ult i64 %_34, 2
  br i1 %_35, label %bb14, label %panic6

bb41:                                             ; preds = %bb22, %bb40
  %8 = load i32, ptr %_0, align 4
  ret i32 %8

bb14:                                             ; preds = %bb13
  %9 = getelementptr inbounds nuw i32, ptr %arr, i64 %_34
  %_33 = load i32, ptr %9, align 4
  %_37 = load i64, ptr %r, align 8
  %_38 = icmp ult i64 %_37, 2
  br i1 %_38, label %bb15, label %panic7

panic6:                                           ; preds = %bb13
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_34, i64 2, ptr align 8 @alloc_7761253f7f2fd1663af74b9df8f83959) #22
  unreachable

bb15:                                             ; preds = %bb14
  %10 = getelementptr inbounds nuw i32, ptr %arr, i64 %_37
  %_36 = load i32, ptr %10, align 4
  %11 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_33, i32 %_36)
  %_39.0 = extractvalue { i32, i1 } %11, 0
  %_39.1 = extractvalue { i32, i1 } %11, 1
  br i1 %_39.1, label %panic8, label %bb16

panic7:                                           ; preds = %bb14
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_37, i64 2, ptr align 8 @alloc_604ce34cda2e894e00a76aa95ccf5e77) #22
  unreachable

bb16:                                             ; preds = %bb15
  %_31 = icmp eq i32 %_39.0, %x
  br i1 %_31, label %bb17, label %bb29

panic8:                                           ; preds = %bb15
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_7761253f7f2fd1663af74b9df8f83959) #22
  unreachable

bb29:                                             ; preds = %bb16
  %_68 = load i64, ptr %l, align 8
  %_69 = icmp ult i64 %_68, 2
  br i1 %_69, label %bb30, label %panic9

bb17:                                             ; preds = %bb16
  %12 = load i32, ptr %cnt, align 4
  %13 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %12, i32 1)
  %_40.0 = extractvalue { i32, i1 } %13, 0
  %_40.1 = extractvalue { i32, i1 } %13, 1
  br i1 %_40.1, label %panic17, label %bb18

bb30:                                             ; preds = %bb29
  %14 = getelementptr inbounds nuw i32, ptr %arr, i64 %_68
  %_67 = load i32, ptr %14, align 4
  %_71 = load i64, ptr %r, align 8
  %_72 = icmp ult i64 %_71, 2
  br i1 %_72, label %bb31, label %panic10

panic9:                                           ; preds = %bb29
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_68, i64 2, ptr align 8 @alloc_c8bb95769b0a47513261a9abad509508) #22
  unreachable

bb31:                                             ; preds = %bb30
  %15 = getelementptr inbounds nuw i32, ptr %arr, i64 %_71
  %_70 = load i32, ptr %15, align 4
  %16 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_67, i32 %_70)
  %_73.0 = extractvalue { i32, i1 } %16, 0
  %_73.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_73.1, label %panic11, label %bb32

panic10:                                          ; preds = %bb30
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_71, i64 2, ptr align 8 @alloc_712aaafe5e7c739465aba2b4a3673d6b) #22
  unreachable

bb32:                                             ; preds = %bb31
  %_65 = icmp slt i32 %_73.0, %x
  br i1 %_65, label %bb33, label %bb36

panic11:                                          ; preds = %bb31
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_c8bb95769b0a47513261a9abad509508) #22
  unreachable

bb36:                                             ; preds = %bb32
  %_81 = sext i32 %n to i64
  %_82 = load i64, ptr %r, align 8
  %_83.0 = add i64 %_81, %_82
  %_83.1 = icmp ult i64 %_83.0, %_81
  br i1 %_83.1, label %panic12, label %bb37

bb33:                                             ; preds = %bb32
  %_75 = load i64, ptr %l, align 8
  %_76.0 = add i64 %_75, 1
  %_76.1 = icmp ult i64 %_76.0, %_75
  br i1 %_76.1, label %panic15, label %bb34

bb37:                                             ; preds = %bb36
  %_84.0 = sub i64 %_83.0, 1
  %_84.1 = icmp ult i64 %_83.0, 1
  br i1 %_84.1, label %panic13, label %bb38

panic12:                                          ; preds = %bb36
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_354716370a6616424c106c1777a9e276) #22
  unreachable

bb38:                                             ; preds = %bb37
  %_85 = sext i32 %n to i64
  %_86 = icmp eq i64 %_85, 0
  br i1 %_86, label %panic14, label %bb39

panic13:                                          ; preds = %bb37
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_9710f719164610f36e2c5775a6e5526f) #22
  unreachable

bb39:                                             ; preds = %bb38
  %17 = urem i64 %_84.0, %_85
  store i64 %17, ptr %r, align 8
  br label %bb12

panic14:                                          ; preds = %bb38
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_9710f719164610f36e2c5775a6e5526f) #22
  unreachable

bb34:                                             ; preds = %bb33
  %_77 = sext i32 %n to i64
  %_78 = icmp eq i64 %_77, 0
  br i1 %_78, label %panic16, label %bb35

panic15:                                          ; preds = %bb33
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_523e8b8d3bcb40562e688e933af3557e) #22
  unreachable

bb35:                                             ; preds = %bb34
  %18 = urem i64 %_76.0, %_77
  store i64 %18, ptr %l, align 8
  br label %bb12

panic16:                                          ; preds = %bb34
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_523e8b8d3bcb40562e688e933af3557e) #22
  unreachable

bb18:                                             ; preds = %bb17
  store i32 %_40.0, ptr %cnt, align 4
  %_42 = load i64, ptr %l, align 8
  %_46 = load i64, ptr %r, align 8
  %_47.0 = sub i64 %_46, 1
  %_47.1 = icmp ult i64 %_46, 1
  br i1 %_47.1, label %panic18, label %bb19

panic17:                                          ; preds = %bb17
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_47a29934a552e76b38164820dcdec35d) #22
  unreachable

bb19:                                             ; preds = %bb18
  %_48 = sext i32 %n to i64
  %_49.0 = add i64 %_47.0, %_48
  %_49.1 = icmp ult i64 %_49.0, %_47.0
  br i1 %_49.1, label %panic19, label %bb20

panic18:                                          ; preds = %bb18
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_0adb2c8e2cd631c7b94ae9e8d377ae29) #22
  unreachable

bb20:                                             ; preds = %bb19
  %_50 = sext i32 %n to i64
  %_51 = icmp eq i64 %_50, 0
  br i1 %_51, label %panic20, label %bb21

panic19:                                          ; preds = %bb19
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_9e36c5832401d95de82dcc76c0cf4ba0) #22
  unreachable

bb21:                                             ; preds = %bb20
  %_43 = urem i64 %_49.0, %_50
  %_41 = icmp eq i64 %_42, %_43
  br i1 %_41, label %bb22, label %bb23

panic20:                                          ; preds = %bb20
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_9e36c5832401d95de82dcc76c0cf4ba0) #22
  unreachable

bb23:                                             ; preds = %bb21
  %_53 = load i64, ptr %l, align 8
  %_54.0 = add i64 %_53, 1
  %_54.1 = icmp ult i64 %_54.0, %_53
  br i1 %_54.1, label %panic21, label %bb24

bb22:                                             ; preds = %bb21
  %19 = load i32, ptr %cnt, align 4
  store i32 %19, ptr %_0, align 4
  br label %bb41

bb24:                                             ; preds = %bb23
  %_55 = sext i32 %n to i64
  %_56 = icmp eq i64 %_55, 0
  br i1 %_56, label %panic22, label %bb25

panic21:                                          ; preds = %bb23
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_b311a8dbb8e1358e2a8e63b699fba660) #22
  unreachable

bb25:                                             ; preds = %bb24
  %20 = urem i64 %_54.0, %_55
  store i64 %20, ptr %l, align 8
  %_59 = load i64, ptr %r, align 8
  %_60.0 = sub i64 %_59, 1
  %_60.1 = icmp ult i64 %_59, 1
  br i1 %_60.1, label %panic23, label %bb26

panic22:                                          ; preds = %bb24
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_b311a8dbb8e1358e2a8e63b699fba660) #22
  unreachable

bb26:                                             ; preds = %bb25
  %_61 = sext i32 %n to i64
  %_62.0 = add i64 %_60.0, %_61
  %_62.1 = icmp ult i64 %_62.0, %_60.0
  br i1 %_62.1, label %panic24, label %bb27

panic23:                                          ; preds = %bb25
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_a49a3f89708dd787eacab2f7f5839349) #22
  unreachable

bb27:                                             ; preds = %bb26
  %_63 = sext i32 %n to i64
  %_64 = icmp eq i64 %_63, 0
  br i1 %_64, label %panic25, label %bb28

panic24:                                          ; preds = %bb26
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_63dc840820d9917c74ba8eb7007c3008) #22
  unreachable

bb28:                                             ; preds = %bb27
  %21 = urem i64 %_62.0, %_63
  store i64 %21, ptr %r, align 8
  br label %bb12

panic25:                                          ; preds = %bb27
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_63dc840820d9917c74ba8eb7007c3008) #22
  unreachable

bb8:                                              ; preds = %bb7
  store i64 %_19.0, ptr %i, align 8
  br label %bb1

panic26:                                          ; preds = %bb7
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_f9a9793d4fc2a4b3cd174c4cc90a988b) #22
  unreachable
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
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h1de68a58d634a414E"(ptr align 4 %arr.0, i64 %arr.1) #20
  ret void
}

; core::panicking::panic_nounwind_fmt
; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking18panic_nounwind_fmt17hf349702e3facb1fdE(ptr, ptr, i1 zeroext, ptr align 8) unnamed_addr #5

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #6

; core::panicking::panic_cannot_unwind
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking19panic_cannot_unwind17h9d41c6c1d0e0d4e5E() unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32, i32) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; core::panicking::panic_in_cleanup
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #8

; core::panicking::panic_fmt
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr, ptr, ptr align 8) unnamed_addr #10

; core::panicking::panic_bounds_check
; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64, i64, ptr align 8) unnamed_addr #11

; core::panicking::panic_const::panic_const_div_by_zero
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr align 8) unnamed_addr #10

; core::panicking::panic
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking5panic17ha2e20a73227bb72eE(ptr align 1, i64, ptr align 8) unnamed_addr #10

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #12

; core::slice::sort::shared::smallsort::panic_on_ord_violation
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() unnamed_addr #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; core::slice::index::slice_index_fail
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64, i64, i64, ptr align 8) unnamed_addr #10

; core::num::int_log10::panic_for_nonpositive_argument
; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_ZN4core3num9int_log1030panic_for_nonpositive_argument17h529998da0ef96c11E(ptr align 8) unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #8

; core::panicking::panic_const::panic_const_rem_by_zero
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8) unnamed_addr #10

; core::slice::sort::stable::drift::sqrt_approx
; Function Attrs: nonlazybind uwtable
declare i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h72a4dc1ae46294f4E(i64) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #8

; core::panicking::panic_nounwind
; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking14panic_nounwind17h9a55331e46709e5fE(ptr align 1, i64) unnamed_addr #5

; alloc::raw_vec::RawVecInner<A>::try_allocate_in
; Function Attrs: nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr sret([24 x i8]) align 8, i64, i1 zeroext, i64, i64) unnamed_addr #3

; alloc::raw_vec::handle_error
; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64, i64) unnamed_addr #15

; alloc::raw_vec::RawVecInner<A>::deallocate
; Function Attrs: nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr align 8, i64, i64) unnamed_addr #3

; core::panicking::panic_const::panic_const_sub_overflow
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8) unnamed_addr #10

; core::panicking::panic_const::panic_const_add_overflow
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8) unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #8

attributes #0 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { noinline noreturn nounwind }
attributes #17 = { cold noinline noreturn nounwind }
attributes #18 = { cold noreturn nounwind }
attributes #19 = { inlinehint nounwind }
attributes #20 = { inlinehint }
attributes #21 = { cold }
attributes #22 = { noinline noreturn }
attributes #23 = { noreturn }
attributes #24 = { noinline }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.93.1 (01f6ddf75 2026-02-11)"}
!3 = !{}
