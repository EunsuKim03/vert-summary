; ModuleID = 'REPLACE_CHARACTER_C1_C2_C2_C1_STRING_S_emit.edf0dd9443dc6cd5-cgu.0'
source_filename = "REPLACE_CHARACTER_C1_C2_C2_C1_STRING_S_emit.edf0dd9443dc6cd5-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>" = type { [8 x i8] }

@alloc_d1084648e479974e70c9329824bf76f9 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@alloc_e8e5fd9f509afcb950667480b3e3e42a = private unnamed_addr constant [126 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/sort/stable/quicksort.rs\00", align 1
@alloc_58d434a1e795f965ef82c8e9c5db822a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00J\00\00\00\1F\00\00\00" }>, align 8
@alloc_0766b232215672ee1bd2195fdb153938 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00D\00\00\00\17\00\00\00" }>, align 8
@alloc_4ebdd4fb52733a65108a00e385ff8fd6 = private unnamed_addr constant [107 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/vec/mod.rs\00", align 1
@alloc_c66764e78d07cfd97cd1ec1962f8a17a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_4ebdd4fb52733a65108a00e385ff8fd6, [16 x i8] c"j\00\00\00\00\00\00\00\EC\0A\00\00$\00\00\00" }>, align 8
@alloc_92ed622ad60a8e3eb42de5b155ee835e = private unnamed_addr constant [42 x i8] c"assertion failed: self.is_char_boundary(n)", align 1
@alloc_db51a71a1b6b25b4224d4dc5277f93e7 = private unnamed_addr constant [256 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04\00\00\00\00\00\00\00\00\00\00\00", align 1
@alloc_93c4cf0cd96d0941b72bcdb46f13e31c = private unnamed_addr constant [131 x i8] c"/root/es/vert/vert/rust_funcs/cpp_transcoder/REPLACE_CHARACTER_C1_C2_C2_C1_STRING_S/REPLACE_CHARACTER_C1_C2_C2_C1_STRING_S_emit.rs\00", align 1
@alloc_95740aa5a3105863e5e0aea14ec0eaa4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_93c4cf0cd96d0941b72bcdb46f13e31c, [16 x i8] c"\82\00\00\00\00\00\00\00\1A\00\00\00\1D\00\00\00" }>, align 8
@alloc_f2778d43092910bbc687852be59ae1a4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_93c4cf0cd96d0941b72bcdb46f13e31c, [16 x i8] c"\82\00\00\00\00\00\00\00\1C\00\00\00$\00\00\00" }>, align 8
@alloc_4df0d0febdd5d3a64363530ad4e25ffb = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_93c4cf0cd96d0941b72bcdb46f13e31c, [16 x i8] c"\82\00\00\00\00\00\00\00\1D\00\00\00\0F\00\00\00" }>, align 8
@alloc_2e9ecbc1f42a5da546130bf029d2e0a9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_93c4cf0cd96d0941b72bcdb46f13e31c, [16 x i8] c"\82\00\00\00\00\00\00\00\1B\00\00\00\0F\00\00\00" }>, align 8

; <alloc::vec::Vec<T> as alloc::vec::spec_from_iter_nested::SpecFromIterNested<T,I>>::from_iter
; Function Attrs: nonlazybind uwtable
define void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17hbe1afec43c5640b5E"(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, ptr noalias noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_4.i = alloca [24 x i8], align 8
  %vector = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %vector)
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %_7.i.i = load ptr, ptr %1, align 8, !alias.scope !3, !noalias !6, !nonnull !11, !noundef !11
  %_8.i.i = load ptr, ptr %0, align 8, !alias.scope !3, !noalias !6, !nonnull !11, !noundef !11
  %2 = ptrtoint ptr %_7.i.i to i64
  %3 = ptrtoint ptr %_8.i.i to i64
  %4 = sub nuw i64 %2, %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i)
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i, i64 noundef %4, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %_5.i = load i64, ptr %_4.i, align 8, !range !12, !noundef !11
  %5 = trunc nuw i64 %_5.i to i1
  %6 = getelementptr inbounds nuw i8, ptr %_4.i, i64 8
  %err.0.i = load i64, ptr %6, align 8, !range !13, !noundef !11
  %7 = getelementptr inbounds nuw i8, ptr %_4.i, i64 16
  br i1 %5, label %bb3.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h0c8f4b8bb02748e6E.exit", !prof !14

bb3.i:                                            ; preds = %start
  %err.1.i = load i64, ptr %7, align 8
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i, i64 %err.1.i) #29
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h0c8f4b8bb02748e6E.exit": ; preds = %start
  %this.1.i = load ptr, ptr %7, align 8, !nonnull !11, !noundef !11
  %_7.i = icmp ule i64 %4, %err.0.i
  tail call void @llvm.assume(i1 %_7.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i)
  store i64 %err.0.i, ptr %vector, align 8
  %8 = getelementptr inbounds nuw i8, ptr %vector, i64 8
  store ptr %this.1.i, ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %vector, i64 16
  store i64 0, ptr %9, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
; invoke alloc::vec::Vec<T,A>::reserve
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd7d983ab73297baaE"(ptr noalias noundef align 8 dereferenceable(24) %vector, i64 noundef %4)
          to label %.noexc unwind label %cleanup1

.noexc:                                           ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h0c8f4b8bb02748e6E.exit"
  %_26.i.i = load ptr, ptr %8, align 8, !alias.scope !25, !noalias !26, !nonnull !11, !noundef !11
  %_27.i.i = load i64, ptr %9, align 8, !alias.scope !25, !noalias !26, !noundef !11
  call void @llvm.experimental.noalias.scope.decl(metadata !27)
  call void @llvm.experimental.noalias.scope.decl(metadata !30)
  call void @llvm.experimental.noalias.scope.decl(metadata !33)
  call void @llvm.experimental.noalias.scope.decl(metadata !36)
  br label %bb1.i.i.i.i.i.i

bb1.i.i.i.i.i.i:                                  ; preds = %bb3.i.i.i.i.i.i, %.noexc
  %f.sroa.4.0.i.i.i.i.i = phi i64 [ %_27.i.i, %.noexc ], [ %10, %bb3.i.i.i.i.i.i ]
  %_18.i.i5.i.i.i.i.i.i = phi ptr [ %_8.i.i, %.noexc ], [ %_18.i.i4.i.i.i.i.i.i, %bb3.i.i.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %_7.i.i.i.i.i.i.i.i = icmp eq ptr %_18.i.i5.i.i.i.i.i.i, %_7.i.i
  br i1 %_7.i.i.i.i.i.i.i.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E.exit.i.i.i.i.i.i.i", label %bb6.i.i.i.i.i.i.i.i

bb6.i.i.i.i.i.i.i.i:                              ; preds = %bb1.i.i.i.i.i.i
  %_18.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %_18.i.i5.i.i.i.i.i.i, i64 1
  store ptr %_18.i.i.i.i.i.i.i.i, ptr %0, align 8, !alias.scope !42, !noalias !45
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E.exit.i.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E.exit.i.i.i.i.i.i.i": ; preds = %bb6.i.i.i.i.i.i.i.i, %bb1.i.i.i.i.i.i
  %_18.i.i4.i.i.i.i.i.i = phi ptr [ %_18.i.i.i.i.i.i.i.i, %bb6.i.i.i.i.i.i.i.i ], [ %_18.i.i5.i.i.i.i.i.i, %bb1.i.i.i.i.i.i ]
  %_0.sroa.0.0.i.i.i.i.i.i.i.i = phi ptr [ %_18.i.i5.i.i.i.i.i.i, %bb6.i.i.i.i.i.i.i.i ], [ null, %bb1.i.i.i.i.i.i ]
  %.not.i.not.i.i.i.i.i.i = icmp eq ptr %_0.sroa.0.0.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.not.i.i.i.i.i.i, label %"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE.exit.i.i.i.i.i.i", label %bb5.i.i.i.i.i.i.i

bb5.i.i.i.i.i.i.i:                                ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E.exit.i.i.i.i.i.i.i"
  %v.i.i.i.i.i.i.i = load i8, ptr %_0.sroa.0.0.i.i.i.i.i.i.i.i, align 1, !noalias !50, !noundef !11
  br label %"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE.exit.i.i.i.i.i.i"

"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE.exit.i.i.i.i.i.i": ; preds = %bb5.i.i.i.i.i.i.i, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E.exit.i.i.i.i.i.i.i"
  %_0.sroa.3.0.i.i.i.i.i.i.i = phi i8 [ %v.i.i.i.i.i.i.i, %bb5.i.i.i.i.i.i.i ], [ undef, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E.exit.i.i.i.i.i.i.i" ]
  br i1 %.not.i.not.i.i.i.i.i.i, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hbe17c1eaad2150f2E.exit", label %bb3.i.i.i.i.i.i

bb3.i.i.i.i.i.i:                                  ; preds = %"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE.exit.i.i.i.i.i.i"
  %_3.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %_26.i.i, i64 %f.sroa.4.0.i.i.i.i.i
  store i8 %_0.sroa.3.0.i.i.i.i.i.i.i, ptr %_3.i.i.i.i.i.i.i.i.i, align 1, !noalias !51
  %10 = add i64 %f.sroa.4.0.i.i.i.i.i, 1
  br label %bb1.i.i.i.i.i.i

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hbe17c1eaad2150f2E.exit": ; preds = %"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE.exit.i.i.i.i.i.i"
  store i64 %f.sroa.4.0.i.i.i.i.i, ptr %9, align 8, !alias.scope !25, !noalias !58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_0, ptr noundef nonnull align 8 dereferenceable(24) %vector, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %vector)
  ret void

cleanup1:                                         ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h0c8f4b8bb02748e6E.exit"
  %11 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<u8>>
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h99ea250b3a74dcb0E"(ptr noalias noundef align 8 dereferenceable(24) %vector) #30
          to label %bb6 unwind label %terminate

terminate:                                        ; preds = %cleanup1
  %12 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #31
  unreachable

bb6:                                              ; preds = %cleanup1
  resume { ptr, i32 } %11
}

; <<alloc::vec::drain::Drain<T,A> as core::ops::drop::Drop>::drop::DropGuard<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write) uwtable
define void @"_ZN150_$LT$$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2ecf85fda31b43b2E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %self) unnamed_addr #1 {
start:
  %_16 = load ptr, ptr %self, align 8, !nonnull !11, !align !69, !noundef !11
  %0 = getelementptr inbounds nuw i8, ptr %_16, i64 32
  %_3 = load i64, ptr %0, align 8, !noundef !11
  %_2.not = icmp eq i64 %_3, 0
  br i1 %_2.not, label %bb5, label %bb1

bb1:                                              ; preds = %start
  %1 = getelementptr inbounds nuw i8, ptr %_16, i64 16
  %_22 = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %2 = getelementptr inbounds nuw i8, ptr %_22, i64 16
  %start1 = load i64, ptr %2, align 8, !noundef !11
  %_23 = icmp sgt i64 %start1, -1
  tail call void @llvm.assume(i1 %_23)
  %3 = getelementptr inbounds nuw i8, ptr %_16, i64 24
  %tail = load i64, ptr %3, align 8, !noundef !11
  %_7.not = icmp eq i64 %tail, %start1
  br i1 %_7.not, label %bb3, label %bb2

bb5:                                              ; preds = %start, %bb3
  ret void

bb3:                                              ; preds = %bb2, %bb1
  %_15 = load i64, ptr %0, align 8, !noundef !11
  %new_len = add i64 %_15, %start1
  store i64 %new_len, ptr %2, align 8
  br label %bb5

bb2:                                              ; preds = %bb1
  %4 = getelementptr inbounds nuw i8, ptr %_22, i64 8
  %_24 = load ptr, ptr %4, align 8, !nonnull !11, !noundef !11
  %src = getelementptr inbounds nuw i8, ptr %_24, i64 %tail
  %dst = getelementptr inbounds nuw i8, ptr %_24, i64 %start1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %dst, ptr nonnull align 1 %src, i64 %_3, i1 false)
  br label %bb3
}

; <<alloc::vec::into_iter::IntoIter<T,A> as core::ops::drop::Drop>::drop::DropGuard<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define void @"_ZN157_$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h37186e8a8f517616E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %self) unnamed_addr #0 {
start:
  %_4 = alloca [16 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_4)
  %_8 = load ptr, ptr %self, align 8, !nonnull !11, !align !69, !noundef !11
  %ptr = load ptr, ptr %_8, align 8, !nonnull !11, !noundef !11
  %0 = getelementptr inbounds nuw i8, ptr %_8, i64 16
  %capacity1 = load i64, ptr %0, align 8, !noundef !11
  store i64 %capacity1, ptr %_4, align 8
  %1 = getelementptr inbounds nuw i8, ptr %_4, i64 8
  store ptr %ptr, ptr %1, align 8
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %_4)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_4)
  ret void
}

; core::ptr::swap_nonoverlapping_bytes::swap_nonoverlapping_chunks
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h959a6aa404b19840E(ptr noundef captures(none) %x, ptr noundef captures(none) %y, i64 noundef range(i64 1, 0) %chunks) unnamed_addr #2 {
start:
  %xtraiter = and i64 %chunks, 1
  %0 = icmp eq i64 %chunks, 1
  br i1 %0, label %bb4.unr-lcssa, label %start.new

start.new:                                        ; preds = %start
  %unroll_iter = and i64 %chunks, -2
  br label %bb3

bb4.unr-lcssa:                                    ; preds = %bb3, %start
  %iter.sroa.0.02.unr = phi i64 [ 0, %start ], [ %_18.1, %bb3 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb4, label %bb3.epil

bb3.epil:                                         ; preds = %bb4.unr-lcssa
  %_11.epil = getelementptr inbounds nuw %"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>", ptr %x, i64 %iter.sroa.0.02.unr
  %_13.epil = getelementptr inbounds nuw %"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>", ptr %y, i64 %iter.sroa.0.02.unr
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %_3.sroa.0.0.copyload.i.epil = load i64, ptr %_11.epil, align 1, !alias.scope !70, !noalias !73
  %_4.sroa.0.0.copyload.i.epil = load i64, ptr %_13.epil, align 1, !alias.scope !73, !noalias !70
  store i64 %_4.sroa.0.0.copyload.i.epil, ptr %_11.epil, align 1, !alias.scope !70, !noalias !73
  store i64 %_3.sroa.0.0.copyload.i.epil, ptr %_13.epil, align 1, !alias.scope !73, !noalias !70
  br label %bb4

bb4:                                              ; preds = %bb4.unr-lcssa, %bb3.epil
  ret void

bb3:                                              ; preds = %bb3, %start.new
  %iter.sroa.0.02 = phi i64 [ 0, %start.new ], [ %_18.1, %bb3 ]
  %niter = phi i64 [ 0, %start.new ], [ %niter.next.1, %bb3 ]
  %_18 = or disjoint i64 %iter.sroa.0.02, 1
  %_11 = getelementptr inbounds nuw %"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>", ptr %x, i64 %iter.sroa.0.02
  %_13 = getelementptr inbounds nuw %"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>", ptr %y, i64 %iter.sroa.0.02
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %_3.sroa.0.0.copyload.i = load i64, ptr %_11, align 1, !alias.scope !70, !noalias !73
  %_4.sroa.0.0.copyload.i = load i64, ptr %_13, align 1, !alias.scope !73, !noalias !70
  store i64 %_4.sroa.0.0.copyload.i, ptr %_11, align 1, !alias.scope !70, !noalias !73
  store i64 %_3.sroa.0.0.copyload.i, ptr %_13, align 1, !alias.scope !73, !noalias !70
  %_18.1 = add nuw i64 %iter.sroa.0.02, 2
  %_11.1 = getelementptr inbounds nuw %"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>", ptr %x, i64 %_18
  %_13.1 = getelementptr inbounds nuw %"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>", ptr %y, i64 %_18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %_3.sroa.0.0.copyload.i.1 = load i64, ptr %_11.1, align 1, !alias.scope !75, !noalias !77
  %_4.sroa.0.0.copyload.i.1 = load i64, ptr %_13.1, align 1, !alias.scope !77, !noalias !75
  store i64 %_4.sroa.0.0.copyload.i.1, ptr %_11.1, align 1, !alias.scope !75, !noalias !77
  store i64 %_3.sroa.0.0.copyload.i.1, ptr %_13.1, align 1, !alias.scope !77, !noalias !75
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb4.unr-lcssa, label %bb3
}

; core::ptr::drop_in_place<alloc::string::String>
; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h2fc0af7d5458b074E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_1) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_1)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h99ea250b3a74dcb0E.exit" unwind label %cleanup.i

cleanup.i:                                        ; preds = %start
  %0 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_1)
          to label %bb1.i unwind label %terminate.i

terminate.i:                                      ; preds = %cleanup.i
  %1 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #31
  unreachable

bb1.i:                                            ; preds = %cleanup.i
  resume { ptr, i32 } %0

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h99ea250b3a74dcb0E.exit": ; preds = %start
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_1)
  ret void
}

; core::ptr::drop_in_place<alloc::vec::Vec<u8>>
; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h99ea250b3a74dcb0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_1) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef align 8 dereferenceable(24) %_1)
          to label %bb4 unwind label %cleanup

cleanup:                                          ; preds = %start
  %0 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %_1)
          to label %bb1 unwind label %terminate

bb4:                                              ; preds = %start
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %_1)
  ret void

terminate:                                        ; preds = %cleanup
  %1 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #31
  unreachable

bb1:                                              ; preds = %cleanup
  resume { ptr, i32 } %0
}

; core::ptr::drop_in_place<alloc::vec::drain::Drain<u8>>
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn uwtable
define internal fastcc void @"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h762c86ba9763d124E"(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(40) %_1) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %iter.0.i = load ptr, ptr %_1, align 8, !alias.scope !79, !nonnull !11, !noundef !11
  %0 = getelementptr inbounds nuw i8, ptr %_1, i64 8
  %iter.1.i = load ptr, ptr %0, align 8, !alias.scope !79, !nonnull !11, !noundef !11
  store ptr inttoptr (i64 1 to ptr), ptr %_1, align 8, !alias.scope !79
  store ptr inttoptr (i64 1 to ptr), ptr %0, align 8, !alias.scope !79
  %_15.i = icmp eq ptr %iter.1.i, %iter.0.i
  %1 = getelementptr inbounds nuw i8, ptr %_1, i64 32
  %_3.i.i.i = load i64, ptr %1, align 8, !alias.scope !79, !noalias !11, !noundef !11
  %_2.not.i.i.i = icmp eq i64 %_3.i.i.i, 0
  br i1 %_15.i, label %bb3.i, label %bb40.i

bb3.i:                                            ; preds = %start
  br i1 %_2.not.i.i.i, label %"_ZN79_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8732bad187be2872E.exit", label %bb1.i.i.i

bb1.i.i.i:                                        ; preds = %bb3.i
  %2 = getelementptr inbounds nuw i8, ptr %_1, i64 16
  %_22.i.i.i = load ptr, ptr %2, align 8, !alias.scope !79, !noalias !82, !nonnull !11, !noundef !11
  %3 = getelementptr inbounds nuw i8, ptr %_22.i.i.i, i64 16
  %start1.i.i.i = load i64, ptr %3, align 8, !noalias !87, !noundef !11
  %_23.i.i.i = icmp sgt i64 %start1.i.i.i, -1
  tail call void @llvm.assume(i1 %_23.i.i.i)
  %4 = getelementptr inbounds nuw i8, ptr %_1, i64 24
  %tail.i.i.i = load i64, ptr %4, align 8, !alias.scope !79, !noalias !82, !noundef !11
  %_7.not.i.i.i = icmp eq i64 %tail.i.i.i, %start1.i.i.i
  br i1 %_7.not.i.i.i, label %bb3.i.i.i, label %bb2.i.i.i

bb3.i.i.i:                                        ; preds = %bb2.i.i.i, %bb1.i.i.i
  %new_len.i.i.i = add i64 %start1.i.i.i, %_3.i.i.i
  store i64 %new_len.i.i.i, ptr %3, align 8, !noalias !87
  br label %"_ZN79_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8732bad187be2872E.exit"

bb2.i.i.i:                                        ; preds = %bb1.i.i.i
  %5 = getelementptr inbounds nuw i8, ptr %_22.i.i.i, i64 8
  %_24.i.i.i = load ptr, ptr %5, align 8, !noalias !87, !nonnull !11, !noundef !11
  %src.i.i.i = getelementptr inbounds nuw i8, ptr %_24.i.i.i, i64 %tail.i.i.i
  %dst.i.i.i = getelementptr inbounds nuw i8, ptr %_24.i.i.i, i64 %start1.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %dst.i.i.i, ptr nonnull align 1 %src.i.i.i, i64 %_3.i.i.i, i1 false), !noalias !87
  br label %bb3.i.i.i

bb40.i:                                           ; preds = %start
  br i1 %_2.not.i.i.i, label %"_ZN79_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8732bad187be2872E.exit", label %bb1.i.i24.i

bb1.i.i24.i:                                      ; preds = %bb40.i
  %6 = getelementptr inbounds nuw i8, ptr %_1, i64 16
  %_22.i.i25.i = load ptr, ptr %6, align 8, !alias.scope !79, !noalias !88, !nonnull !11, !noundef !11
  %7 = getelementptr inbounds nuw i8, ptr %_22.i.i25.i, i64 16
  %start1.i.i26.i = load i64, ptr %7, align 8, !noalias !93, !noundef !11
  %_23.i.i27.i = icmp sgt i64 %start1.i.i26.i, -1
  tail call void @llvm.assume(i1 %_23.i.i27.i)
  %8 = getelementptr inbounds nuw i8, ptr %_1, i64 24
  %tail.i.i28.i = load i64, ptr %8, align 8, !alias.scope !79, !noalias !88, !noundef !11
  %_7.not.i.i29.i = icmp eq i64 %tail.i.i28.i, %start1.i.i26.i
  br i1 %_7.not.i.i29.i, label %bb3.i.i34.i, label %bb2.i.i30.i

bb3.i.i34.i:                                      ; preds = %bb2.i.i30.i, %bb1.i.i24.i
  %new_len.i.i36.i = add i64 %start1.i.i26.i, %_3.i.i.i
  store i64 %new_len.i.i36.i, ptr %7, align 8, !noalias !93
  br label %"_ZN79_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8732bad187be2872E.exit"

bb2.i.i30.i:                                      ; preds = %bb1.i.i24.i
  %9 = getelementptr inbounds nuw i8, ptr %_22.i.i25.i, i64 8
  %_24.i.i31.i = load ptr, ptr %9, align 8, !noalias !93, !nonnull !11, !noundef !11
  %src.i.i32.i = getelementptr inbounds nuw i8, ptr %_24.i.i31.i, i64 %tail.i.i28.i
  %dst.i.i33.i = getelementptr inbounds nuw i8, ptr %_24.i.i31.i, i64 %start1.i.i26.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %dst.i.i33.i, ptr nonnull align 1 %src.i.i32.i, i64 %_3.i.i.i, i1 false), !noalias !93
  br label %bb3.i.i34.i

"_ZN79_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8732bad187be2872E.exit": ; preds = %bb3.i, %bb3.i.i.i, %bb40.i, %bb3.i.i34.i
  ret void
}

; core::iter::traits::iterator::Iterator::nth
; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc noundef range(i32 0, 1114113) i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hb3fa37af0af5de09E(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(16) %self, i64 noundef %n) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %start_bytes.i = alloca [32 x i8], align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %start_bytes.i)
  %_3.i = icmp ugt i64 %n, 31
  br i1 %_3.i, label %bb1.i, label %bb25.i

bb1.i:                                            ; preds = %start
  %self5.i = load ptr, ptr %self, align 8, !alias.scope !94, !nonnull !11, !noundef !11
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_57.i = load ptr, ptr %0, align 8, !alias.scope !94, !nonnull !11, !noundef !11
  %1 = ptrtoint ptr %_57.i to i64
  %2 = ptrtoint ptr %self5.i to i64
  %3 = sub nuw i64 %1, %2
  %4 = lshr i64 %3, 5
  %_65.i = getelementptr inbounds nuw [32 x i8], ptr %self5.i, i64 %4
  %_1042.not.i = icmp eq i64 %n, 32
  br i1 %_1042.not.i, label %bb14.i, label %bb4.i.preheader

bb4.i.preheader:                                  ; preds = %bb1.i
  %_92.sroa.34.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 31
  %_92.sroa.33.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 30
  %_92.sroa.32.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 29
  %_92.sroa.31.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 28
  %_92.sroa.30.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 27
  %_92.sroa.29.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 26
  %_92.sroa.28.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 25
  %_92.sroa.27.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 24
  %_92.sroa.26.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 23
  %_92.sroa.25.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 22
  %_92.sroa.24.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 21
  %_92.sroa.23.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 20
  %_92.sroa.22.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 19
  %_92.sroa.21.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 18
  %_92.sroa.20.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 17
  %_92.sroa.19.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 16
  %_92.sroa.18.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 15
  %_92.sroa.17.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 14
  %_92.sroa.16.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 13
  %_92.sroa.15.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 12
  %_92.sroa.14.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 11
  %_92.sroa.13.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 10
  %_92.sroa.12.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 9
  %_92.sroa.11.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 8
  %_92.sroa.10.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 7
  %_92.sroa.9.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 6
  %_92.sroa.8.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 5
  %_92.sroa.7.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 4
  %_92.sroa.6.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 3
  %_92.sroa.5.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 2
  %_92.sroa.4.0.start_bytes.sroa_idx.i = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 1
  br label %bb4.i

bb25.i:                                           ; preds = %bb19.i, %bb18.i, %bb14.i, %start
  %remainder.sroa.0.0.i = phi i64 [ %n, %start ], [ %remainder.sroa.0.1.lcssa.i, %bb14.i ], [ %remainder.sroa.0.1.lcssa.i, %bb18.i ], [ %remainder.sroa.0.1.lcssa.i, %bb19.i ]
  %_39.not57.i = icmp eq i64 %remainder.sroa.0.0.i, 0
  br i1 %_39.not57.i, label %bb5.critedge, label %bb27.lr.ph.i

bb27.lr.ph.i:                                     ; preds = %bb25.i
  %self.promoted55.i = load ptr, ptr %self, align 8, !alias.scope !94
  %5 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_116.i = load ptr, ptr %5, align 8, !alias.scope !94, !nonnull !11, !noundef !11
  %6 = ptrtoint ptr %_116.i to i64
  br label %bb27.i

bb4.i:                                            ; preds = %bb4.i.preheader, %bb2.i.i.i
  %remainder.sroa.0.145.i = phi i64 [ %8, %bb2.i.i.i ], [ %n, %bb4.i.preheader ]
  %chunks.sroa.0.044.i = phi ptr [ %chunks.sroa.0.1.i, %bb2.i.i.i ], [ %self5.i, %bb4.i.preheader ]
  %bytes_skipped.sroa.0.043.i = phi i64 [ %7, %bb2.i.i.i ], [ 0, %bb4.i.preheader ]
  %_73.i = icmp eq ptr %chunks.sroa.0.044.i, %_65.i
  %chunks.sroa.0.1.idx.i = select i1 %_73.i, i64 0, i64 32
  %chunks.sroa.0.1.i = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i, i64 %chunks.sroa.0.1.idx.i
  br i1 %_73.i, label %bb14.i, label %bb5.i

bb14.i:                                           ; preds = %bb2.i.i.i, %bb4.i, %bb1.i
  %bytes_skipped.sroa.0.0.lcssa.i = phi i64 [ 0, %bb1.i ], [ %bytes_skipped.sroa.0.043.i, %bb4.i ], [ %7, %bb2.i.i.i ]
  %remainder.sroa.0.1.lcssa.i = phi i64 [ %n, %bb1.i ], [ %remainder.sroa.0.145.i, %bb4.i ], [ %8, %bb2.i.i.i ]
  %_19.i.i = getelementptr inbounds nuw i8, ptr %self5.i, i64 %bytes_skipped.sroa.0.0.lcssa.i
  store ptr %_19.i.i, ptr %self, align 8, !alias.scope !97
  %.not27.i = icmp ule i64 %bytes_skipped.sroa.0.0.lcssa.i, %3
  tail call void @llvm.assume(i1 %.not27.i)
  %_30.not53.i = icmp eq ptr %_57.i, %_19.i.i
  br i1 %_30.not53.i, label %bb25.i, label %bb18.i

bb5.i:                                            ; preds = %bb4.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %start_bytes.i, i8 0, i64 32, i1 false), !noalias !94
  br label %bb10.i

bb2.i.i.i:                                        ; preds = %bb10.i
  %_92.sroa.34.0.copyload.i = load i8, ptr %_92.sroa.34.0.start_bytes.sroa_idx.i, align 1, !noalias !94
  %_92.sroa.33.0.copyload.i = load i8, ptr %_92.sroa.33.0.start_bytes.sroa_idx.i, align 1, !noalias !94
  %_92.sroa.32.0.copyload.i = load i8, ptr %_92.sroa.32.0.start_bytes.sroa_idx.i, align 1, !noalias !94
  %_92.sroa.31.0.copyload.i = load i8, ptr %_92.sroa.31.0.start_bytes.sroa_idx.i, align 1, !noalias !94
  %_92.sroa.30.0.copyload.i = load i8, ptr %_92.sroa.30.0.start_bytes.sroa_idx.i, align 1, !noalias !94
  %_92.sroa.29.0.copyload.i = load i8, ptr %_92.sroa.29.0.start_bytes.sroa_idx.i, align 1, !noalias !94
  %_92.sroa.28.0.copyload.i = load i8, ptr %_92.sroa.28.0.start_bytes.sroa_idx.i, align 1, !noalias !94
  %_92.sroa.27.0.copyload.i = load i8, ptr %_92.sroa.27.0.start_bytes.sroa_idx.i, align 1, !noalias !94
  %_92.sroa.26.0.copyload.i = load i8, ptr %_92.sroa.26.0.start_bytes.sroa_idx.i, align 1, !noalias !94
  %_92.sroa.25.0.copyload.i = load i8, ptr %_92.sroa.25.0.start_bytes.sroa_idx.i, align 1, !noalias !94
  %_92.sroa.24.0.copyload.i = load i8, ptr %_92.sroa.24.0.start_bytes.sroa_idx.i, align 1, !noalias !94
  %_92.sroa.23.0.copyload.i = load i8, ptr %_92.sroa.23.0.start_bytes.sroa_idx.i, align 1, !noalias !94
  %_92.sroa.22.0.copyload.i = load i8, ptr %_92.sroa.22.0.start_bytes.sroa_idx.i, align 1, !noalias !94
  %_92.sroa.21.0.copyload.i = load i8, ptr %_92.sroa.21.0.start_bytes.sroa_idx.i, align 1, !noalias !94
  %_92.sroa.20.0.copyload.i = load i8, ptr %_92.sroa.20.0.start_bytes.sroa_idx.i, align 1, !noalias !94
  %_92.sroa.19.0.copyload.i = load i8, ptr %_92.sroa.19.0.start_bytes.sroa_idx.i, align 1, !noalias !94
  %_92.sroa.18.0.copyload.i = load i8, ptr %_92.sroa.18.0.start_bytes.sroa_idx.i, align 1, !noalias !94
  %_92.sroa.17.0.copyload.i = load i8, ptr %_92.sroa.17.0.start_bytes.sroa_idx.i, align 1, !noalias !94
  %_92.sroa.16.0.copyload.i = load i8, ptr %_92.sroa.16.0.start_bytes.sroa_idx.i, align 1, !noalias !94
  %_92.sroa.15.0.copyload.i = load i8, ptr %_92.sroa.15.0.start_bytes.sroa_idx.i, align 1, !noalias !94
  %_92.sroa.14.0.copyload.i = load i8, ptr %_92.sroa.14.0.start_bytes.sroa_idx.i, align 1, !noalias !94
  %_92.sroa.13.0.copyload.i = load i8, ptr %_92.sroa.13.0.start_bytes.sroa_idx.i, align 1, !noalias !94
  %_92.sroa.12.0.copyload.i = load i8, ptr %_92.sroa.12.0.start_bytes.sroa_idx.i, align 1, !noalias !94
  %_92.sroa.11.0.copyload.i = load i8, ptr %_92.sroa.11.0.start_bytes.sroa_idx.i, align 1, !noalias !94
  %_92.sroa.10.0.copyload.i = load i8, ptr %_92.sroa.10.0.start_bytes.sroa_idx.i, align 1, !noalias !94
  %_92.sroa.9.0.copyload.i = load i8, ptr %_92.sroa.9.0.start_bytes.sroa_idx.i, align 1, !noalias !94
  %_92.sroa.8.0.copyload.i = load i8, ptr %_92.sroa.8.0.start_bytes.sroa_idx.i, align 1, !noalias !94
  %_92.sroa.7.0.copyload.i = load i8, ptr %_92.sroa.7.0.start_bytes.sroa_idx.i, align 1, !noalias !94
  %_92.sroa.6.0.copyload.i = load i8, ptr %_92.sroa.6.0.start_bytes.sroa_idx.i, align 1, !noalias !94
  %_92.sroa.5.0.copyload.i = load i8, ptr %_92.sroa.5.0.start_bytes.sroa_idx.i, align 1, !noalias !94
  %_92.sroa.4.0.copyload.i = load i8, ptr %_92.sroa.4.0.start_bytes.sroa_idx.i, align 1, !noalias !94
  %_92.sroa.0.0.copyload.i = load i8, ptr %start_bytes.i, align 1, !noalias !94
  %_4.0.i.i.i.i.i.i.1.i = add i8 %_92.sroa.33.0.copyload.i, %_92.sroa.34.0.copyload.i
  %_4.0.i.i.i.i.i.i.2.i = add i8 %_4.0.i.i.i.i.i.i.1.i, %_92.sroa.32.0.copyload.i
  %_4.0.i.i.i.i.i.i.3.i = add i8 %_4.0.i.i.i.i.i.i.2.i, %_92.sroa.31.0.copyload.i
  %_4.0.i.i.i.i.i.i.4.i = add i8 %_4.0.i.i.i.i.i.i.3.i, %_92.sroa.30.0.copyload.i
  %_4.0.i.i.i.i.i.i.5.i = add i8 %_4.0.i.i.i.i.i.i.4.i, %_92.sroa.29.0.copyload.i
  %_4.0.i.i.i.i.i.i.6.i = add i8 %_4.0.i.i.i.i.i.i.5.i, %_92.sroa.28.0.copyload.i
  %_4.0.i.i.i.i.i.i.7.i = add i8 %_4.0.i.i.i.i.i.i.6.i, %_92.sroa.27.0.copyload.i
  %_4.0.i.i.i.i.i.i.8.i = add i8 %_4.0.i.i.i.i.i.i.7.i, %_92.sroa.26.0.copyload.i
  %_4.0.i.i.i.i.i.i.9.i = add i8 %_4.0.i.i.i.i.i.i.8.i, %_92.sroa.25.0.copyload.i
  %_4.0.i.i.i.i.i.i.10.i = add i8 %_4.0.i.i.i.i.i.i.9.i, %_92.sroa.24.0.copyload.i
  %_4.0.i.i.i.i.i.i.11.i = add i8 %_4.0.i.i.i.i.i.i.10.i, %_92.sroa.23.0.copyload.i
  %_4.0.i.i.i.i.i.i.12.i = add i8 %_4.0.i.i.i.i.i.i.11.i, %_92.sroa.22.0.copyload.i
  %_4.0.i.i.i.i.i.i.13.i = add i8 %_4.0.i.i.i.i.i.i.12.i, %_92.sroa.21.0.copyload.i
  %_4.0.i.i.i.i.i.i.14.i = add i8 %_4.0.i.i.i.i.i.i.13.i, %_92.sroa.20.0.copyload.i
  %_4.0.i.i.i.i.i.i.15.i = add i8 %_4.0.i.i.i.i.i.i.14.i, %_92.sroa.19.0.copyload.i
  %_4.0.i.i.i.i.i.i.16.i = add i8 %_4.0.i.i.i.i.i.i.15.i, %_92.sroa.18.0.copyload.i
  %_4.0.i.i.i.i.i.i.17.i = add i8 %_4.0.i.i.i.i.i.i.16.i, %_92.sroa.17.0.copyload.i
  %_4.0.i.i.i.i.i.i.18.i = add i8 %_4.0.i.i.i.i.i.i.17.i, %_92.sroa.16.0.copyload.i
  %_4.0.i.i.i.i.i.i.19.i = add i8 %_4.0.i.i.i.i.i.i.18.i, %_92.sroa.15.0.copyload.i
  %_4.0.i.i.i.i.i.i.20.i = add i8 %_4.0.i.i.i.i.i.i.19.i, %_92.sroa.14.0.copyload.i
  %_4.0.i.i.i.i.i.i.21.i = add i8 %_4.0.i.i.i.i.i.i.20.i, %_92.sroa.13.0.copyload.i
  %_4.0.i.i.i.i.i.i.22.i = add i8 %_4.0.i.i.i.i.i.i.21.i, %_92.sroa.12.0.copyload.i
  %_4.0.i.i.i.i.i.i.23.i = add i8 %_4.0.i.i.i.i.i.i.22.i, %_92.sroa.11.0.copyload.i
  %_4.0.i.i.i.i.i.i.24.i = add i8 %_4.0.i.i.i.i.i.i.23.i, %_92.sroa.10.0.copyload.i
  %_4.0.i.i.i.i.i.i.25.i = add i8 %_4.0.i.i.i.i.i.i.24.i, %_92.sroa.9.0.copyload.i
  %_4.0.i.i.i.i.i.i.26.i = add i8 %_4.0.i.i.i.i.i.i.25.i, %_92.sroa.8.0.copyload.i
  %_4.0.i.i.i.i.i.i.27.i = add i8 %_4.0.i.i.i.i.i.i.26.i, %_92.sroa.7.0.copyload.i
  %_4.0.i.i.i.i.i.i.28.i = add i8 %_4.0.i.i.i.i.i.i.27.i, %_92.sroa.6.0.copyload.i
  %_4.0.i.i.i.i.i.i.29.i = add i8 %_4.0.i.i.i.i.i.i.28.i, %_92.sroa.5.0.copyload.i
  %_4.0.i.i.i.i.i.i.30.i = add i8 %_4.0.i.i.i.i.i.i.29.i, %_92.sroa.4.0.copyload.i
  %_4.0.i.i.i.i.i.i.31.i = add i8 %_4.0.i.i.i.i.i.i.30.i, %_92.sroa.0.0.copyload.i
  %7 = add i64 %bytes_skipped.sroa.0.043.i, 32
  %_25.i = zext i8 %_4.0.i.i.i.i.i.i.31.i to i64
  %8 = sub i64 %remainder.sroa.0.145.i, %_25.i
  %_10.i = icmp ugt i64 %8, 32
  br i1 %_10.i, label %bb4.i, label %bb14.i

bb10.i:                                           ; preds = %bb10.i, %bb5.i
  %iter.sroa.0.041.i = phi i64 [ 0, %bb5.i ], [ %_88.i.3, %bb10.i ]
  %_88.i = or disjoint i64 %iter.sroa.0.041.i, 1
  %9 = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i, i64 %iter.sroa.0.041.i
  %byte.i = load i8, ptr %9, align 1, !noalias !94, !noundef !11
  %_22.i = icmp sgt i8 %byte.i, -65
  %10 = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 %iter.sroa.0.041.i
  %11 = zext i1 %_22.i to i8
  store i8 %11, ptr %10, align 1, !noalias !94
  %_88.i.1 = or disjoint i64 %iter.sroa.0.041.i, 2
  %12 = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i, i64 %_88.i
  %byte.i.1 = load i8, ptr %12, align 1, !noalias !94, !noundef !11
  %_22.i.1 = icmp sgt i8 %byte.i.1, -65
  %13 = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 %_88.i
  %14 = zext i1 %_22.i.1 to i8
  store i8 %14, ptr %13, align 1, !noalias !94
  %_88.i.2 = or disjoint i64 %iter.sroa.0.041.i, 3
  %15 = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i, i64 %_88.i.1
  %byte.i.2 = load i8, ptr %15, align 1, !noalias !94, !noundef !11
  %_22.i.2 = icmp sgt i8 %byte.i.2, -65
  %16 = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 %_88.i.1
  %17 = zext i1 %_22.i.2 to i8
  store i8 %17, ptr %16, align 1, !noalias !94
  %_88.i.3 = add nuw nsw i64 %iter.sroa.0.041.i, 4
  %18 = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i, i64 %_88.i.2
  %byte.i.3 = load i8, ptr %18, align 1, !noalias !94, !noundef !11
  %_22.i.3 = icmp sgt i8 %byte.i.3, -65
  %19 = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 %_88.i.2
  %20 = zext i1 %_22.i.3 to i8
  store i8 %20, ptr %19, align 1, !noalias !94
  %exitcond.not.i.3 = icmp eq i64 %_88.i.3, 32
  br i1 %exitcond.not.i.3, label %bb2.i.i.i, label %bb10.i

bb18.i:                                           ; preds = %bb14.i, %bb19.i
  %_19.i335254.i = phi ptr [ %_19.i33.i, %bb19.i ], [ %_19.i.i, %bb14.i ]
  %b.i = load i8, ptr %_19.i335254.i, align 1, !noalias !94, !noundef !11
  %_36.i = icmp slt i8 %b.i, -64
  br i1 %_36.i, label %bb19.i, label %bb25.i

bb19.i:                                           ; preds = %bb18.i
  %_19.i33.i = getelementptr inbounds nuw i8, ptr %_19.i335254.i, i64 1
  store ptr %_19.i33.i, ptr %self, align 8, !alias.scope !100
  %_30.not.i = icmp eq ptr %_57.i, %_19.i33.i
  br i1 %_30.not.i, label %bb25.i, label %bb18.i

bb27.i:                                           ; preds = %bb28.i, %bb27.lr.ph.i
  %remainder.sroa.0.259.i = phi i64 [ %remainder.sroa.0.0.i, %bb27.lr.ph.i ], [ %23, %bb28.i ]
  %_19.i385658.i = phi ptr [ %self.promoted55.i, %bb27.lr.ph.i ], [ %_19.i38.i, %bb28.i ]
  %_41.not.i = icmp eq ptr %_116.i, %_19.i385658.i
  br i1 %_41.not.i, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E.exit", label %bb28.i

bb28.i:                                           ; preds = %bb27.i
  %21 = ptrtoint ptr %_19.i385658.i to i64
  %22 = sub nuw i64 %6, %21
  %23 = add i64 %remainder.sroa.0.259.i, -1
  %b15.i = load i8, ptr %_19.i385658.i, align 1, !noalias !94, !noundef !11
  %_130.i = zext i8 %b15.i to i64
  %24 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i
  %_128.i = load i8, ptr %24, align 1, !noalias !94, !noundef !11
  %slurp.i = zext i8 %_128.i to i64
  %_19.i38.i = getelementptr inbounds nuw i8, ptr %_19.i385658.i, i64 %slurp.i
  store ptr %_19.i38.i, ptr %self, align 8, !alias.scope !103
  %.not28.i = icmp uge i64 %22, %slurp.i
  tail call void @llvm.assume(i1 %.not28.i)
  %_39.not.i = icmp eq i64 %23, 0
  br i1 %_39.not.i, label %bb5.critedge, label %bb27.i

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E.exit": ; preds = %bb27.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %start_bytes.i)
  br label %bb3

bb5.critedge:                                     ; preds = %bb28.i, %bb25.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %start_bytes.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %ptr.i.i.i = load ptr, ptr %self, align 8, !alias.scope !112, !nonnull !11, !noundef !11
  %25 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %end_or_len.i.i.i = load ptr, ptr %25, align 8, !alias.scope !112, !nonnull !11, !noundef !11
  %_7.i.i.i = icmp eq ptr %ptr.i.i.i, %end_or_len.i.i.i
  br i1 %_7.i.i.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E.exit.i.i", label %bb6.i.i.i

bb6.i.i.i:                                        ; preds = %bb5.critedge
  %_18.i.i.i = getelementptr inbounds nuw i8, ptr %ptr.i.i.i, i64 1
  store ptr %_18.i.i.i, ptr %self, align 8, !alias.scope !112
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E.exit.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E.exit.i.i": ; preds = %bb6.i.i.i, %bb5.critedge
  %_0.sroa.0.0.i.i.i = phi ptr [ %ptr.i.i.i, %bb6.i.i.i ], [ null, %bb5.critedge ]
  %.not.i.not.i = icmp eq ptr %_0.sroa.0.0.i.i.i, null
  br i1 %.not.i.not.i, label %bb3, label %bb14.i.i

bb14.i.i:                                         ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E.exit.i.i"
  %x.i.i = load i8, ptr %_0.sroa.0.0.i.i.i, align 1, !noalias !115, !noundef !11
  %_6.i.i = icmp sgt i8 %x.i.i, -1
  br i1 %_6.i.i, label %bb3.i.i, label %bb4.i.i

bb4.i.i:                                          ; preds = %bb14.i.i
  %_30.i.i = and i8 %x.i.i, 31
  %init.i.i = zext nneg i8 %_30.i.i to i32
  %ptr.i8.i.i = load ptr, ptr %self, align 8, !alias.scope !116, !nonnull !11, !noundef !11
  %_7.i10.i.i = icmp ne ptr %ptr.i8.i.i, %end_or_len.i.i.i
  tail call void @llvm.assume(i1 %_7.i10.i.i)
  %_18.i12.i.i = getelementptr inbounds nuw i8, ptr %ptr.i8.i.i, i64 1
  store ptr %_18.i12.i.i, ptr %self, align 8, !alias.scope !116
  %y.i.i = load i8, ptr %ptr.i8.i.i, align 1, !noalias !115, !noundef !11
  %_34.i.i = shl nuw nsw i32 %init.i.i, 6
  %_36.i.i = and i8 %y.i.i, 63
  %_35.i.i = zext nneg i8 %_36.i.i to i32
  %26 = or disjoint i32 %_34.i.i, %_35.i.i
  %_13.i.i = icmp ugt i8 %x.i.i, -33
  br i1 %_13.i.i, label %bb6.i.i, label %bb3

bb3.i.i:                                          ; preds = %bb14.i.i
  %_7.i.i = zext nneg i8 %x.i.i to i32
  br label %bb3

bb6.i.i:                                          ; preds = %bb4.i.i
  %_7.i17.i.i = icmp ne ptr %_18.i12.i.i, %end_or_len.i.i.i
  tail call void @llvm.assume(i1 %_7.i17.i.i)
  %_18.i19.i.i = getelementptr inbounds nuw i8, ptr %ptr.i8.i.i, i64 2
  store ptr %_18.i19.i.i, ptr %self, align 8, !alias.scope !119
  %z.i.i = load i8, ptr %_18.i12.i.i, align 1, !noalias !115, !noundef !11
  %_40.i.i = shl nuw nsw i32 %_35.i.i, 6
  %_42.i.i = and i8 %z.i.i, 63
  %_41.i.i = zext nneg i8 %_42.i.i to i32
  %y_z.i.i = or disjoint i32 %_40.i.i, %_41.i.i
  %_20.i.i = shl nuw nsw i32 %init.i.i, 12
  %27 = or disjoint i32 %y_z.i.i, %_20.i.i
  %_21.i.i = icmp ugt i8 %x.i.i, -17
  br i1 %_21.i.i, label %bb8.i.i, label %bb3

bb8.i.i:                                          ; preds = %bb6.i.i
  %_7.i24.i.i = icmp ne ptr %_18.i19.i.i, %end_or_len.i.i.i
  tail call void @llvm.assume(i1 %_7.i24.i.i)
  %_18.i26.i.i = getelementptr inbounds nuw i8, ptr %ptr.i8.i.i, i64 3
  store ptr %_18.i26.i.i, ptr %self, align 8, !alias.scope !122
  %w.i.i = load i8, ptr %_18.i19.i.i, align 1, !noalias !115, !noundef !11
  %_26.i.i = shl nuw nsw i32 %init.i.i, 18
  %_25.i.i = and i32 %_26.i.i, 1835008
  %_46.i.i = shl nuw nsw i32 %y_z.i.i, 6
  %_48.i.i = and i8 %w.i.i, 63
  %_47.i.i = zext nneg i8 %_48.i.i to i32
  %_27.i.i = or disjoint i32 %_46.i.i, %_47.i.i
  %28 = or disjoint i32 %_27.i.i, %_25.i.i
  br label %bb3

bb3:                                              ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E.exit", %bb8.i.i, %bb6.i.i, %bb3.i.i, %bb4.i.i, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E.exit.i.i"
  %_0.sroa.0.0 = phi i32 [ 1114112, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E.exit" ], [ %_7.i.i, %bb3.i.i ], [ 1114112, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E.exit.i.i" ], [ %28, %bb8.i.i ], [ %27, %bb6.i.i ], [ %26, %bb4.i.i ]
  ret i32 %_0.sroa.0.0
}

; core::slice::sort::shared::pivot::median3_rec
; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable
define noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h3615cb3e2a78557bE(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %n, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #5 {
start:
  %3 = and i64 %n, 2305843009213693944
  %_6.not = icmp eq i64 %3, 0
  br i1 %_6.not, label %bb6, label %bb1

bb1:                                              ; preds = %start
  %n84 = lshr i64 %n, 3
  %count = shl nuw nsw i64 %n84, 2
  %_10 = getelementptr inbounds nuw i32, ptr %0, i64 %count
  %count1 = mul nuw i64 %n84, 7
  %_13 = getelementptr inbounds nuw i32, ptr %0, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %4 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h3615cb3e2a78557bE(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h3615cb3e2a78557bE(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %6 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h3615cb3e2a78557bE(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb6

bb6:                                              ; preds = %start, %bb1
  %c.sroa.0.0 = phi ptr [ %6, %bb1 ], [ %2, %start ]
  %b.sroa.0.0 = phi ptr [ %5, %bb1 ], [ %1, %start ]
  %a.sroa.0.0 = phi ptr [ %4, %bb1 ], [ %0, %start ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130), !noalias !133
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136), !noalias !133
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138), !noalias !133
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141), !noalias !133
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143), !noalias !133
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146), !noalias !133
  %_3.i.i.i.i = load i32, ptr %a.sroa.0.0, align 4, !alias.scope !148, !noalias !149, !noundef !11
  %_4.i.i.i.i = load i32, ptr %b.sroa.0.0, align 4, !alias.scope !150, !noalias !151, !noundef !11
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_4.i.i.i.i6 = load i32, ptr %c.sroa.0.0, align 4, !alias.scope !152, !noalias !161, !noundef !11
  %_0.i7 = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i6
  %7 = xor i1 %_0.i, %_0.i7
  %_0.i10 = icmp slt i32 %_4.i.i.i.i, %_4.i.i.i.i6
  %_12.i = xor i1 %_0.i, %_0.i10
  %c.b.i = select i1 %_12.i, ptr %c.sroa.0.0, ptr %b.sroa.0.0
  %_0.sroa.0.0.i = select i1 %7, ptr %a.sroa.0.0, ptr %c.b.i
  ret ptr %_0.sroa.0.0.i
}

; core::slice::sort::shared::smallsort::insert_tail
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort11insert_tail17h799a674e80d07974E(ptr noundef readnone captures(address) %begin, ptr noundef captures(address) %tail, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds i8, ptr %tail, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  %_3.i.i.i.i = load i32, ptr %tail, align 4, !alias.scope !186, !noalias !187, !noundef !11
  %_4.i.i.i.i = load i32, ptr %0, align 4, !alias.scope !187, !noalias !186, !noundef !11
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  br i1 %_0.i, label %bb4, label %bb12

bb12:                                             ; preds = %start, %bb10
  ret void

bb4:                                              ; preds = %start, %bb6
  %gap_guard.sroa.5.0 = phi ptr [ %sift.sroa.0.0, %bb6 ], [ %tail, %start ]
  %sift.sroa.0.0 = phi ptr [ %2, %bb6 ], [ %0, %start ]
  %1 = load i32, ptr %sift.sroa.0.0, align 4
  store i32 %1, ptr %gap_guard.sroa.5.0, align 4
  %_18 = icmp eq ptr %sift.sroa.0.0, %begin
  br i1 %_18, label %bb10, label %bb6

bb6:                                              ; preds = %bb4
  %2 = getelementptr inbounds i8, ptr %sift.sroa.0.0, i64 -4
  %_4.i.i.i.i2 = load i32, ptr %2, align 4, !alias.scope !188, !noalias !197, !noundef !11
  %_0.i3 = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i2
  br i1 %_0.i3, label %bb4, label %bb10

bb10:                                             ; preds = %bb6, %bb4
  store i32 %_3.i.i.i.i, ptr %sift.sroa.0.0, align 4, !noalias !202
  br label %bb12
}

; core::slice::sort::shared::smallsort::sort4_stable
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h41f47289593f2f06E(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 16)) %dst, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #6 personality ptr @rust_eh_personality {
start:
  %_7 = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !217)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225)
  %_3.i.i.i.i = load i32, ptr %_7, align 4, !alias.scope !227, !noalias !228, !noundef !11
  %_4.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !228, !noalias !227, !noundef !11
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_12 = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14 = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !229)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
  %_3.i.i.i.i7 = load i32, ptr %_12, align 4, !alias.scope !249, !noalias !250, !noundef !11
  %_4.i.i.i.i8 = load i32, ptr %_14, align 4, !alias.scope !250, !noalias !249, !noundef !11
  %_0.i9 = icmp slt i32 %_3.i.i.i.i7, %_4.i.i.i.i8
  %count = zext i1 %_0.i to i64
  %a = getelementptr inbounds nuw i32, ptr %v_base, i64 %count
  %_19 = xor i1 %_0.i, true
  %count2 = zext i1 %_19 to i64
  %b = getelementptr inbounds nuw i32, ptr %v_base, i64 %count2
  %count3 = select i1 %_0.i9, i64 3, i64 2
  %c = getelementptr inbounds nuw i32, ptr %v_base, i64 %count3
  %count4 = select i1 %_0.i9, i64 2, i64 3
  %d = getelementptr inbounds nuw i32, ptr %v_base, i64 %count4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !269)
  %_3.i.i.i.i10 = load i32, ptr %c, align 4, !alias.scope !271, !noalias !272, !noundef !11
  %_4.i.i.i.i11 = load i32, ptr %a, align 4, !alias.scope !272, !noalias !271, !noundef !11
  %_0.i12 = icmp slt i32 %_3.i.i.i.i10, %_4.i.i.i.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !291)
  %_3.i.i.i.i13 = load i32, ptr %d, align 4, !alias.scope !293, !noalias !294, !noundef !11
  %_4.i.i.i.i14 = load i32, ptr %b, align 4, !alias.scope !294, !noalias !293, !noundef !11
  %_0.i15 = icmp slt i32 %_3.i.i.i.i13, %_4.i.i.i.i14
  %0 = select i1 %_0.i12, ptr %c, ptr %a, !unpredictable !11
  %1 = select i1 %_0.i15, ptr %c, ptr %b, !unpredictable !11
  %2 = select i1 %_0.i12, ptr %a, ptr %1, !unpredictable !11
  %3 = select i1 %_0.i12, ptr %b, ptr %c, !unpredictable !11
  %4 = select i1 %_0.i15, ptr %d, ptr %3, !unpredictable !11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !295)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !313)
  %_3.i.i.i.i16 = load i32, ptr %4, align 4, !alias.scope !315, !noalias !316, !noundef !11
  %_4.i.i.i.i17 = load i32, ptr %2, align 4, !alias.scope !316, !noalias !315, !noundef !11
  %_0.i18 = icmp slt i32 %_3.i.i.i.i16, %_4.i.i.i.i17
  %5 = load i32, ptr %0, align 4
  store i32 %5, ptr %dst, align 4
  %dst5 = getelementptr inbounds nuw i8, ptr %dst, i64 4
  %.val = load i32, ptr %4, align 4
  %.val19 = load i32, ptr %2, align 4
  %6 = select i1 %_0.i18, i32 %.val, i32 %.val19
  store i32 %6, ptr %dst5, align 4
  %dst6 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  %.val20 = load i32, ptr %2, align 4
  %.val21 = load i32, ptr %4, align 4
  %7 = select i1 %_0.i18, i32 %.val20, i32 %.val21
  store i32 %7, ptr %dst6, align 4
  %8 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  %b.val = load i32, ptr %b, align 4
  %d.val = load i32, ptr %d, align 4
  %9 = select i1 %_0.i15, i32 %b.val, i32 %d.val
  store i32 %9, ptr %8, align 4
  ret void
}

; core::slice::sort::shared::smallsort::sort8_stable
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h53ffbf5e0faa3efeE(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 32)) %dst, ptr noundef captures(address) initializes((0, 32)) %scratch_base, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  %_3.i.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !337, !noalias !338, !noundef !11
  %_4.i.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !338, !noalias !337, !noundef !11
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !344)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !357)
  %_3.i.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !359, !noalias !360, !noundef !11
  %_4.i.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !360, !noalias !359, !noundef !11
  %_0.i9.i = icmp slt i32 %_3.i.i.i.i7.i, %_4.i.i.i.i8.i
  %count.i = zext i1 %_0.i.i to i64
  %a.i = getelementptr inbounds nuw i32, ptr %v_base, i64 %count.i
  %_19.i = xor i1 %_0.i.i, true
  %count2.i = zext i1 %_19.i to i64
  %b.i = getelementptr inbounds nuw i32, ptr %v_base, i64 %count2.i
  %count3.i = select i1 %_0.i9.i, i64 3, i64 2
  %c.i = getelementptr inbounds nuw i32, ptr %v_base, i64 %count3.i
  %count4.i = select i1 %_0.i9.i, i64 2, i64 3
  %d.i = getelementptr inbounds nuw i32, ptr %v_base, i64 %count4.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !374)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  %_3.i.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !381, !noalias !382, !noundef !11
  %_4.i.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !382, !noalias !381, !noundef !11
  %_0.i12.i = icmp slt i32 %_3.i.i.i.i10.i, %_4.i.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !383)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !388)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !393)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !396)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !398)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !401)
  %_3.i.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !403, !noalias !404, !noundef !11
  %_4.i.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !404, !noalias !403, !noundef !11
  %_0.i15.i = icmp slt i32 %_3.i.i.i.i13.i, %_4.i.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !11
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !11
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !11
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !11
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !410)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !420)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !423)
  %_3.i.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !425, !noalias !426, !noundef !11
  %_4.i.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !426, !noalias !425, !noundef !11
  %_0.i18.i = icmp slt i32 %_3.i.i.i.i16.i, %_4.i.i.i.i17.i
  %5 = load i32, ptr %0, align 4
  store i32 %5, ptr %scratch_base, align 4
  %dst5.i = getelementptr inbounds nuw i8, ptr %scratch_base, i64 4
  %.val.i = load i32, ptr %4, align 4
  %.val19.i = load i32, ptr %2, align 4
  %6 = select i1 %_0.i18.i, i32 %.val.i, i32 %.val19.i
  store i32 %6, ptr %dst5.i, align 4
  %dst6.i = getelementptr inbounds nuw i8, ptr %scratch_base, i64 8
  %.val20.i = load i32, ptr %2, align 4
  %.val21.i = load i32, ptr %4, align 4
  %7 = select i1 %_0.i18.i, i32 %.val20.i, i32 %.val21.i
  store i32 %7, ptr %dst6.i, align 4
  %8 = getelementptr inbounds nuw i8, ptr %scratch_base, i64 12
  %b.val.i = load i32, ptr %b.i, align 4
  %d.val.i = load i32, ptr %d.i, align 4
  %9 = select i1 %_0.i15.i, i32 %b.val.i, i32 %d.val.i
  store i32 %9, ptr %8, align 4
  %_9 = getelementptr inbounds nuw i8, ptr %v_base, i64 16
  %_10 = getelementptr i8, ptr %scratch_base, i64 16
  %_7.i1 = getelementptr inbounds nuw i8, ptr %v_base, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !427)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !430)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !432)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !437)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !440)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !442)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !445)
  %_3.i.i.i.i.i2 = load i32, ptr %_7.i1, align 4, !alias.scope !447, !noalias !448, !noundef !11
  %_4.i.i.i.i.i3 = load i32, ptr %_9, align 4, !alias.scope !448, !noalias !447, !noundef !11
  %_0.i.i4 = icmp slt i32 %_3.i.i.i.i.i2, %_4.i.i.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !452)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !459)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !462)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !464)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !467)
  %_3.i.i.i.i7.i7 = load i32, ptr %_12.i5, align 4, !alias.scope !469, !noalias !470, !noundef !11
  %_4.i.i.i.i8.i8 = load i32, ptr %_14.i6, align 4, !alias.scope !470, !noalias !469, !noundef !11
  %_0.i9.i9 = icmp slt i32 %_3.i.i.i.i7.i7, %_4.i.i.i.i8.i8
  %count.i10 = zext i1 %_0.i.i4 to i64
  %a.i11 = getelementptr inbounds nuw i32, ptr %_9, i64 %count.i10
  %_19.i12 = xor i1 %_0.i.i4, true
  %count2.i13 = zext i1 %_19.i12 to i64
  %b.i14 = getelementptr inbounds nuw i32, ptr %_9, i64 %count2.i13
  %count3.i15 = select i1 %_0.i9.i9, i64 3, i64 2
  %c.i16 = getelementptr inbounds nuw i32, ptr %_9, i64 %count3.i15
  %count4.i17 = select i1 %_0.i9.i9, i64 2, i64 3
  %d.i18 = getelementptr inbounds nuw i32, ptr %_9, i64 %count4.i17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !471)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !474)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !479)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !481)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !484)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !486)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !489)
  %_3.i.i.i.i10.i19 = load i32, ptr %c.i16, align 4, !alias.scope !491, !noalias !492, !noundef !11
  %_4.i.i.i.i11.i20 = load i32, ptr %a.i11, align 4, !alias.scope !492, !noalias !491, !noundef !11
  %_0.i12.i21 = icmp slt i32 %_3.i.i.i.i10.i19, %_4.i.i.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !493)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !498)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !501)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !503)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !506)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !508)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !511)
  %_3.i.i.i.i13.i22 = load i32, ptr %d.i18, align 4, !alias.scope !513, !noalias !514, !noundef !11
  %_4.i.i.i.i14.i23 = load i32, ptr %b.i14, align 4, !alias.scope !514, !noalias !513, !noundef !11
  %_0.i15.i24 = icmp slt i32 %_3.i.i.i.i13.i22, %_4.i.i.i.i14.i23
  %10 = select i1 %_0.i12.i21, ptr %c.i16, ptr %a.i11, !unpredictable !11
  %11 = select i1 %_0.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !11
  %12 = select i1 %_0.i12.i21, ptr %a.i11, ptr %11, !unpredictable !11
  %13 = select i1 %_0.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !11
  %14 = select i1 %_0.i15.i24, ptr %d.i18, ptr %13, !unpredictable !11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !515)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !518)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !520)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !523)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !528)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !530)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !533)
  %_3.i.i.i.i16.i25 = load i32, ptr %14, align 4, !alias.scope !535, !noalias !536, !noundef !11
  %_4.i.i.i.i17.i26 = load i32, ptr %12, align 4, !alias.scope !536, !noalias !535, !noundef !11
  %_0.i18.i27 = icmp slt i32 %_3.i.i.i.i16.i25, %_4.i.i.i.i17.i26
  %15 = load i32, ptr %10, align 4
  store i32 %15, ptr %_10, align 4
  %dst5.i28 = getelementptr i8, ptr %scratch_base, i64 20
  %.val.i29 = load i32, ptr %14, align 4
  %.val19.i30 = load i32, ptr %12, align 4
  %16 = select i1 %_0.i18.i27, i32 %.val.i29, i32 %.val19.i30
  store i32 %16, ptr %dst5.i28, align 4
  %dst6.i31 = getelementptr i8, ptr %scratch_base, i64 24
  %.val20.i32 = load i32, ptr %12, align 4
  %.val21.i33 = load i32, ptr %14, align 4
  %17 = select i1 %_0.i18.i27, i32 %.val20.i32, i32 %.val21.i33
  store i32 %17, ptr %dst6.i31, align 4
  %18 = getelementptr i8, ptr %scratch_base, i64 28
  %b.val.i34 = load i32, ptr %b.i14, align 4
  %d.val.i35 = load i32, ptr %d.i18, align 4
  %19 = select i1 %_0.i15.i24, i32 %b.val.i34, i32 %d.val.i35
  store i32 %19, ptr %18, align 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !537)
  %20 = getelementptr i8, ptr %scratch_base, i64 12
  %21 = getelementptr inbounds nuw i8, ptr %scratch_base, i64 28
  %22 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !540)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !543)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !545), !noalias !548
  tail call void @llvm.experimental.noalias.scope.decl(metadata !551), !noalias !548
  tail call void @llvm.experimental.noalias.scope.decl(metadata !553), !noalias !548
  tail call void @llvm.experimental.noalias.scope.decl(metadata !556), !noalias !548
  tail call void @llvm.experimental.noalias.scope.decl(metadata !558), !noalias !548
  tail call void @llvm.experimental.noalias.scope.decl(metadata !561), !noalias !548
  %_3.i.i.i.i.i36 = load i32, ptr %_10, align 4, !alias.scope !563, !noalias !564, !noundef !11
  %_4.i.i.i.i.i37 = load i32, ptr %scratch_base, align 4, !alias.scope !565, !noalias !566, !noundef !11
  %_0.i.i38 = icmp slt i32 %_3.i.i.i.i.i36, %_4.i.i.i.i.i37
  %is_l.i18.i = xor i1 %_0.i.i38, true
  %23 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36, i32 %_4.i.i.i.i.i37)
  store i32 %23, ptr %dst, align 4, !noalias !567
  %count.i.i = zext i1 %_0.i.i38 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %_10, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %scratch_base, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !569)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !572)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !574), !noalias !577
  tail call void @llvm.experimental.noalias.scope.decl(metadata !580), !noalias !577
  tail call void @llvm.experimental.noalias.scope.decl(metadata !582), !noalias !577
  tail call void @llvm.experimental.noalias.scope.decl(metadata !585), !noalias !577
  tail call void @llvm.experimental.noalias.scope.decl(metadata !587), !noalias !577
  tail call void @llvm.experimental.noalias.scope.decl(metadata !590), !noalias !577
  %_3.i.i.i.i19.i = load i32, ptr %21, align 4, !alias.scope !592, !noalias !593, !noundef !11
  %_4.i.i.i.i20.i = load i32, ptr %20, align 4, !alias.scope !594, !noalias !595, !noundef !11
  %_0.i21.i = icmp slt i32 %_3.i.i.i.i19.i, %_4.i.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %24 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i, i32 %_4.i.i.i.i20.i)
  store i32 %24, ptr %22, align 4, !noalias !596
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %25 = getelementptr i32, ptr %21, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i21.i to i64
  %26 = getelementptr i32, ptr %20, i64 %count3.neg.i.i
  %27 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !602), !noalias !548
  tail call void @llvm.experimental.noalias.scope.decl(metadata !604), !noalias !548
  tail call void @llvm.experimental.noalias.scope.decl(metadata !606), !noalias !548
  tail call void @llvm.experimental.noalias.scope.decl(metadata !608), !noalias !548
  tail call void @llvm.experimental.noalias.scope.decl(metadata !610), !noalias !548
  tail call void @llvm.experimental.noalias.scope.decl(metadata !612), !noalias !548
  %_3.i.i.i.i.i36.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !614, !noalias !615, !noundef !11
  %_4.i.i.i.i.i37.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !616, !noalias !617, !noundef !11
  %_0.i.i38.1 = icmp slt i32 %_3.i.i.i.i.i36.1, %_4.i.i.i.i.i37.1
  %is_l.i18.i.1 = xor i1 %_0.i.i38.1, true
  %28 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.1, i32 %_4.i.i.i.i.i37.1)
  store i32 %28, ptr %_16.i.i, align 4, !noalias !567
  %count.i.i.1 = zext i1 %_0.i.i38.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw i32, ptr %_12.i.i, i64 %count.i.i.1
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw i32, ptr %_14.i.i, i64 %count2.i.i.1
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !618)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !620)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !622), !noalias !577
  tail call void @llvm.experimental.noalias.scope.decl(metadata !624), !noalias !577
  tail call void @llvm.experimental.noalias.scope.decl(metadata !626), !noalias !577
  tail call void @llvm.experimental.noalias.scope.decl(metadata !628), !noalias !577
  tail call void @llvm.experimental.noalias.scope.decl(metadata !630), !noalias !577
  tail call void @llvm.experimental.noalias.scope.decl(metadata !632), !noalias !577
  %_3.i.i.i.i19.i.1 = load i32, ptr %25, align 4, !alias.scope !634, !noalias !635, !noundef !11
  %_4.i.i.i.i20.i.1 = load i32, ptr %26, align 4, !alias.scope !636, !noalias !637, !noundef !11
  %_0.i21.i.1 = icmp slt i32 %_3.i.i.i.i19.i.1, %_4.i.i.i.i20.i.1
  %is_l.i.i.1 = xor i1 %_0.i21.i.1, true
  %29 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.1, i32 %_4.i.i.i.i20.i.1)
  store i32 %29, ptr %27, align 4, !noalias !596
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %30 = getelementptr i32, ptr %25, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_0.i21.i.1 to i64
  %31 = getelementptr i32, ptr %26, i64 %count3.neg.i.i.1
  %32 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !640)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !642), !noalias !548
  tail call void @llvm.experimental.noalias.scope.decl(metadata !644), !noalias !548
  tail call void @llvm.experimental.noalias.scope.decl(metadata !646), !noalias !548
  tail call void @llvm.experimental.noalias.scope.decl(metadata !648), !noalias !548
  tail call void @llvm.experimental.noalias.scope.decl(metadata !650), !noalias !548
  tail call void @llvm.experimental.noalias.scope.decl(metadata !652), !noalias !548
  %_3.i.i.i.i.i36.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !654, !noalias !655, !noundef !11
  %_4.i.i.i.i.i37.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !656, !noalias !657, !noundef !11
  %_0.i.i38.2 = icmp slt i32 %_3.i.i.i.i.i36.2, %_4.i.i.i.i.i37.2
  %is_l.i18.i.2 = xor i1 %_0.i.i38.2, true
  %33 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.2, i32 %_4.i.i.i.i.i37.2)
  store i32 %33, ptr %_16.i.i.1, align 4, !noalias !567
  %count.i.i.2 = zext i1 %_0.i.i38.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw i32, ptr %_12.i.i.1, i64 %count.i.i.2
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw i32, ptr %_14.i.i.1, i64 %count2.i.i.2
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !658)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !660)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !662), !noalias !577
  tail call void @llvm.experimental.noalias.scope.decl(metadata !664), !noalias !577
  tail call void @llvm.experimental.noalias.scope.decl(metadata !666), !noalias !577
  tail call void @llvm.experimental.noalias.scope.decl(metadata !668), !noalias !577
  tail call void @llvm.experimental.noalias.scope.decl(metadata !670), !noalias !577
  tail call void @llvm.experimental.noalias.scope.decl(metadata !672), !noalias !577
  %_3.i.i.i.i19.i.2 = load i32, ptr %30, align 4, !alias.scope !674, !noalias !675, !noundef !11
  %_4.i.i.i.i20.i.2 = load i32, ptr %31, align 4, !alias.scope !676, !noalias !677, !noundef !11
  %_0.i21.i.2 = icmp slt i32 %_3.i.i.i.i19.i.2, %_4.i.i.i.i20.i.2
  %is_l.i.i.2 = xor i1 %_0.i21.i.2, true
  %34 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.2, i32 %_4.i.i.i.i20.i.2)
  store i32 %34, ptr %32, align 4, !noalias !596
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %35 = getelementptr i32, ptr %30, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_0.i21.i.2 to i64
  %36 = getelementptr i32, ptr %31, i64 %count3.neg.i.i.2
  %37 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !680)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !682), !noalias !548
  tail call void @llvm.experimental.noalias.scope.decl(metadata !684), !noalias !548
  tail call void @llvm.experimental.noalias.scope.decl(metadata !686), !noalias !548
  tail call void @llvm.experimental.noalias.scope.decl(metadata !688), !noalias !548
  tail call void @llvm.experimental.noalias.scope.decl(metadata !690), !noalias !548
  tail call void @llvm.experimental.noalias.scope.decl(metadata !692), !noalias !548
  %_3.i.i.i.i.i36.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !694, !noalias !695, !noundef !11
  %_4.i.i.i.i.i37.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !696, !noalias !697, !noundef !11
  %_0.i.i38.3 = icmp slt i32 %_3.i.i.i.i.i36.3, %_4.i.i.i.i.i37.3
  %is_l.i18.i.3 = xor i1 %_0.i.i38.3, true
  %38 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.3, i32 %_4.i.i.i.i.i37.3)
  store i32 %38, ptr %_16.i.i.2, align 4, !noalias !567
  %count.i.i.3 = zext i1 %_0.i.i38.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw i32, ptr %_12.i.i.2, i64 %count.i.i.3
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw i32, ptr %_14.i.i.2, i64 %count2.i.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !698)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !700)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !702), !noalias !577
  tail call void @llvm.experimental.noalias.scope.decl(metadata !704), !noalias !577
  tail call void @llvm.experimental.noalias.scope.decl(metadata !706), !noalias !577
  tail call void @llvm.experimental.noalias.scope.decl(metadata !708), !noalias !577
  tail call void @llvm.experimental.noalias.scope.decl(metadata !710), !noalias !577
  tail call void @llvm.experimental.noalias.scope.decl(metadata !712), !noalias !577
  %_3.i.i.i.i19.i.3 = load i32, ptr %35, align 4, !alias.scope !714, !noalias !715, !noundef !11
  %_4.i.i.i.i20.i.3 = load i32, ptr %36, align 4, !alias.scope !716, !noalias !717, !noundef !11
  %_0.i21.i.3 = icmp slt i32 %_3.i.i.i.i19.i.3, %_4.i.i.i.i20.i.3
  %is_l.i.i.3 = xor i1 %_0.i21.i.3, true
  %39 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.3, i32 %_4.i.i.i.i20.i.3)
  store i32 %39, ptr %37, align 4, !noalias !596
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %40 = getelementptr i32, ptr %35, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_0.i21.i.3 to i64
  %41 = getelementptr i32, ptr %36, i64 %count3.neg.i.i.3
  %42 = getelementptr i8, ptr %41, i64 4
  %43 = getelementptr i8, ptr %40, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %42
  %_32.i = icmp ne ptr %_12.i.i.3, %43
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h53d647054ed97a16E.exit, !prof !718

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #32, !noalias !537
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h53d647054ed97a16E.exit: ; preds = %start
  ret void
}

; core::slice::sort::shared::smallsort::bidirectional_merge
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h53d647054ed97a16E(ptr noalias noundef nonnull readonly align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #0 {
start:
  %len_div_215 = lshr i64 %v.1, 1
  %_7 = icmp samesign ugt i64 %v.1, 1
  tail call void @llvm.assume(i1 %_7)
  %count1 = add nsw i64 %v.1, -1
  %1 = getelementptr inbounds nuw i32, ptr %0, i64 %count1
  %2 = getelementptr inbounds nuw i32, ptr %v.0, i64 %count1
  %3 = getelementptr i32, ptr %v.0, i64 %len_div_215
  %4 = getelementptr i8, ptr %3, i64 -4
  br label %bb15

bb16:                                             ; preds = %bb15
  %5 = getelementptr i8, ptr %10, i64 4
  %6 = getelementptr i8, ptr %9, i64 4
  %_44 = and i64 %v.1, 1
  %_22 = icmp eq i64 %_44, 0
  br i1 %_22, label %bb9, label %bb5

bb15:                                             ; preds = %start, %bb15
  %dst.sroa.0.029 = phi ptr [ %_16.i, %bb15 ], [ %0, %start ]
  %iter.sroa.0.028 = phi i64 [ %_39, %bb15 ], [ 0, %start ]
  %left.sroa.0.027 = phi ptr [ %_14.i, %bb15 ], [ %v.0, %start ]
  %right.sroa.0.026 = phi ptr [ %_12.i, %bb15 ], [ %3, %start ]
  %left_rev.sroa.0.025 = phi ptr [ %10, %bb15 ], [ %4, %start ]
  %right_rev.sroa.0.024 = phi ptr [ %9, %bb15 ], [ %2, %start ]
  %dst_rev.sroa.0.023 = phi ptr [ %11, %bb15 ], [ %1, %start ]
  %_39 = add nuw nsw i64 %iter.sroa.0.028, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !719)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !722)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !724), !noalias !727
  tail call void @llvm.experimental.noalias.scope.decl(metadata !730), !noalias !727
  tail call void @llvm.experimental.noalias.scope.decl(metadata !732), !noalias !727
  tail call void @llvm.experimental.noalias.scope.decl(metadata !735), !noalias !727
  tail call void @llvm.experimental.noalias.scope.decl(metadata !737), !noalias !727
  tail call void @llvm.experimental.noalias.scope.decl(metadata !740), !noalias !727
  %_3.i.i.i.i = load i32, ptr %right.sroa.0.026, align 4, !alias.scope !742, !noalias !743, !noundef !11
  %_4.i.i.i.i = load i32, ptr %left.sroa.0.027, align 4, !alias.scope !744, !noalias !745, !noundef !11
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %is_l.i18 = xor i1 %_0.i, true
  %7 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i, i32 %_4.i.i.i.i)
  store i32 %7, ptr %dst.sroa.0.029, align 4, !noalias !746
  %count.i = zext i1 %_0.i to i64
  %_12.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026, i64 %count.i
  %count2.i = zext i1 %is_l.i18 to i64
  %_14.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027, i64 %count2.i
  %_16.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !748)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !751)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !753), !noalias !756
  tail call void @llvm.experimental.noalias.scope.decl(metadata !759), !noalias !756
  tail call void @llvm.experimental.noalias.scope.decl(metadata !761), !noalias !756
  tail call void @llvm.experimental.noalias.scope.decl(metadata !764), !noalias !756
  tail call void @llvm.experimental.noalias.scope.decl(metadata !766), !noalias !756
  tail call void @llvm.experimental.noalias.scope.decl(metadata !769), !noalias !756
  %_3.i.i.i.i19 = load i32, ptr %right_rev.sroa.0.024, align 4, !alias.scope !771, !noalias !772, !noundef !11
  %_4.i.i.i.i20 = load i32, ptr %left_rev.sroa.0.025, align 4, !alias.scope !773, !noalias !774, !noundef !11
  %_0.i21 = icmp slt i32 %_3.i.i.i.i19, %_4.i.i.i.i20
  %is_l.i = xor i1 %_0.i21, true
  %8 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19, i32 %_4.i.i.i.i20)
  store i32 %8, ptr %dst_rev.sroa.0.023, align 4, !noalias !775
  %count.neg.i = sext i1 %is_l.i to i64
  %9 = getelementptr i32, ptr %right_rev.sroa.0.024, i64 %count.neg.i
  %count3.neg.i = sext i1 %_0.i21 to i64
  %10 = getelementptr i32, ptr %left_rev.sroa.0.025, i64 %count3.neg.i
  %11 = getelementptr inbounds i8, ptr %dst_rev.sroa.0.023, i64 -4
  %exitcond.not = icmp eq i64 %_39, %len_div_215
  br i1 %exitcond.not, label %bb16, label %bb15

bb5:                                              ; preds = %bb16
  %left_nonempty = icmp ult ptr %_14.i, %5
  %left.sroa.0.0.right.sroa.0.0 = select i1 %left_nonempty, ptr %_14.i, ptr %_12.i
  %12 = load i32, ptr %left.sroa.0.0.right.sroa.0.0, align 4
  store i32 %12, ptr %_16.i, align 4
  %count2 = zext i1 %left_nonempty to i64
  %_26 = getelementptr inbounds nuw i32, ptr %_14.i, i64 %count2
  %_30 = xor i1 %left_nonempty, true
  %count3 = zext i1 %_30 to i64
  %_28 = getelementptr inbounds nuw i32, ptr %_12.i, i64 %count3
  br label %bb9

bb9:                                              ; preds = %bb16, %bb5
  %right.sroa.0.1 = phi ptr [ %_12.i, %bb16 ], [ %_28, %bb5 ]
  %left.sroa.0.1 = phi ptr [ %_14.i, %bb16 ], [ %_26, %bb5 ]
  %_31 = icmp ne ptr %left.sroa.0.1, %5
  %_32 = icmp ne ptr %right.sroa.0.1, %6
  %or.cond = select i1 %_31, i1 true, i1 %_32
  br i1 %or.cond, label %bb13, label %bb14, !prof !718

bb14:                                             ; preds = %bb9
  ret void

bb13:                                             ; preds = %bb9
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #32
  unreachable
}

; core::slice::sort::shared::smallsort::insertion_sort_shift_left
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h66e929b23f8108b6E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, i64 noundef %offset, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #7 personality ptr @rust_eh_personality {
start:
  %0 = add i64 %offset, -1
  %or.cond.not = icmp ult i64 %0, %v.1
  br i1 %or.cond.not, label %bb3, label %bb2

bb2:                                              ; preds = %start
  tail call void @llvm.trap()
  unreachable

bb3:                                              ; preds = %start
  %v_end = getelementptr inbounds nuw i32, ptr %v.0, i64 %v.1
  %_11.not1 = icmp samesign eq i64 %offset, %v.1
  br i1 %_11.not1, label %bb7, label %bb5.preheader

bb5.preheader:                                    ; preds = %bb3
  %1 = getelementptr inbounds nuw i32, ptr %v.0, i64 %offset
  br label %bb5

bb7:                                              ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h799a674e80d07974E.exit, %bb3
  ret void

bb5:                                              ; preds = %bb5.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h799a674e80d07974E.exit
  %tail.sroa.0.02 = phi ptr [ %_15, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h799a674e80d07974E.exit ], [ %1, %bb5.preheader ]
  %2 = getelementptr inbounds i8, ptr %tail.sroa.0.02, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !777)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !780)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !782)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !785)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !787)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !790)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !792)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !795)
  %_3.i.i.i.i.i = load i32, ptr %tail.sroa.0.02, align 4, !alias.scope !797, !noalias !798, !noundef !11
  %_4.i.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !798, !noalias !797, !noundef !11
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  br i1 %_0.i.i, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h799a674e80d07974E.exit

bb4.i:                                            ; preds = %bb5, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %tail.sroa.0.02, %bb5 ]
  %sift.sroa.0.0.i = phi ptr [ %4, %bb6.i ], [ %2, %bb5 ]
  %3 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %3, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %v.0
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %4 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i.i.i2.i = load i32, ptr %4, align 4, !alias.scope !799, !noalias !808, !noundef !11
  %_0.i3.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i2.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %_3.i.i.i.i.i, ptr %sift.sroa.0.0.i, align 4, !noalias !813
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h799a674e80d07974E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h799a674e80d07974E.exit: ; preds = %bb5, %bb10.i
  %_15 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.02, i64 4
  %_11.not = icmp eq ptr %_15, %v_end
  br i1 %_11.not, label %bb7, label %bb5
}

; core::slice::sort::shared::smallsort::small_sort_general_with_scratch
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h073f17f73449f968E(ptr noalias noundef nonnull align 4 captures(none) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(address) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %iter = alloca [32 x i8], align 8
  %_5 = icmp samesign ult i64 %v.1, 2
  br i1 %_5, label %bb29, label %bb2

bb2:                                              ; preds = %start
  %_8 = add nuw nsw i64 %v.1, 16
  %_6 = icmp samesign ult i64 %scratch.1, %_8
  br i1 %_6, label %bb3, label %bb4

bb4:                                              ; preds = %bb2
  %len_div_211 = lshr i64 %v.1, 1
  %_14 = icmp samesign ugt i64 %v.1, 15
  br i1 %_14, label %bb6, label %bb9

bb3:                                              ; preds = %bb2
  tail call void @llvm.trap()
  unreachable

bb9:                                              ; preds = %bb4
  %_22 = icmp samesign ugt i64 %v.1, 7
  br i1 %_22, label %bb10, label %bb46

bb6:                                              ; preds = %bb4
  %_16 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %v.1
; call core::slice::sort::shared::smallsort::sort8_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h53ffbf5e0faa3efeE(ptr noundef nonnull %v.0, ptr noundef nonnull %scratch.0, ptr noundef nonnull %_16, ptr noalias align 8 poison)
  %_18 = getelementptr inbounds nuw i32, ptr %v.0, i64 %len_div_211
  %_19 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211
  %_20 = getelementptr inbounds nuw i8, ptr %_16, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h53ffbf5e0faa3efeE(ptr noundef nonnull %_18, ptr noundef nonnull %_19, ptr noundef nonnull %_20, ptr noalias align 8 poison)
  br label %bb15

bb10:                                             ; preds = %bb9
  %_7.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !818)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !821)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !823)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !826)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !828)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !831)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !833)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !836)
  %_3.i.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !838, !noalias !839, !noundef !11
  %_4.i.i.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !839, !noalias !838, !noundef !11
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v.0, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v.0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !840)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !843)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !845)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !848)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !850)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !853)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !855)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !858)
  %_3.i.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !860, !noalias !861, !noundef !11
  %_4.i.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !861, !noalias !860, !noundef !11
  %_0.i9.i = icmp slt i32 %_3.i.i.i.i7.i, %_4.i.i.i.i8.i
  %count.i = zext i1 %_0.i.i to i64
  %a.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %count.i
  %_19.i = xor i1 %_0.i.i, true
  %count2.i = zext i1 %_19.i to i64
  %b.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %count2.i
  %count3.i = select i1 %_0.i9.i, i64 3, i64 2
  %c.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %count3.i
  %count4.i = select i1 %_0.i9.i, i64 2, i64 3
  %d.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %count4.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !862)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !865)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !867)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !870)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !872)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !875)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !877)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !880)
  %_3.i.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !882, !noalias !883, !noundef !11
  %_4.i.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !883, !noalias !882, !noundef !11
  %_0.i12.i = icmp slt i32 %_3.i.i.i.i10.i, %_4.i.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !884)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !887)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !889)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !892)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !894)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !897)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !899)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !902)
  %_3.i.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !904, !noalias !905, !noundef !11
  %_4.i.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !905, !noalias !904, !noundef !11
  %_0.i15.i = icmp slt i32 %_3.i.i.i.i13.i, %_4.i.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !11
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !11
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !11
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !11
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !906)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !909)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !911)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !914)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !916)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !919)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !921)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !924)
  %_3.i.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !926, !noalias !927, !noundef !11
  %_4.i.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !927, !noalias !926, !noundef !11
  %5 = load i32, ptr %0, align 4
  store i32 %5, ptr %scratch.0, align 4
  %dst5.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 4
  %6 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i16.i, i32 %_4.i.i.i.i17.i)
  store i32 %6, ptr %dst5.i, align 4
  %dst6.i = getelementptr inbounds nuw i8, ptr %scratch.0, i64 8
  %7 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i16.i, i32 %_4.i.i.i.i17.i)
  store i32 %7, ptr %dst6.i, align 4
  %8 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 12
  %9 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i13.i, i32 %_4.i.i.i.i14.i)
  store i32 %9, ptr %8, align 4
  %_27 = getelementptr inbounds nuw i32, ptr %v.0, i64 %len_div_211
  %_28 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211
  %_7.i13 = getelementptr inbounds nuw i8, ptr %_27, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !928)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !931)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !933)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !936)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !938)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !941)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !943)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !946)
  %_3.i.i.i.i.i14 = load i32, ptr %_7.i13, align 4, !alias.scope !948, !noalias !949, !noundef !11
  %_4.i.i.i.i.i15 = load i32, ptr %_27, align 4, !alias.scope !949, !noalias !948, !noundef !11
  %_0.i.i16 = icmp slt i32 %_3.i.i.i.i.i14, %_4.i.i.i.i.i15
  %_12.i17 = getelementptr inbounds nuw i8, ptr %_27, i64 12
  %_14.i18 = getelementptr inbounds nuw i8, ptr %_27, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !950)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !953)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !955)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !958)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !960)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !963)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !965)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !968)
  %_3.i.i.i.i7.i19 = load i32, ptr %_12.i17, align 4, !alias.scope !970, !noalias !971, !noundef !11
  %_4.i.i.i.i8.i20 = load i32, ptr %_14.i18, align 4, !alias.scope !971, !noalias !970, !noundef !11
  %_0.i9.i21 = icmp slt i32 %_3.i.i.i.i7.i19, %_4.i.i.i.i8.i20
  %count.i22 = zext i1 %_0.i.i16 to i64
  %a.i23 = getelementptr inbounds nuw i32, ptr %_27, i64 %count.i22
  %_19.i24 = xor i1 %_0.i.i16, true
  %count2.i25 = zext i1 %_19.i24 to i64
  %b.i26 = getelementptr inbounds nuw i32, ptr %_27, i64 %count2.i25
  %count3.i27 = select i1 %_0.i9.i21, i64 3, i64 2
  %c.i28 = getelementptr inbounds nuw i32, ptr %_27, i64 %count3.i27
  %count4.i29 = select i1 %_0.i9.i21, i64 2, i64 3
  %d.i30 = getelementptr inbounds nuw i32, ptr %_27, i64 %count4.i29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !972)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !975)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !977)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !980)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !982)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !985)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !987)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !990)
  %_3.i.i.i.i10.i31 = load i32, ptr %c.i28, align 4, !alias.scope !992, !noalias !993, !noundef !11
  %_4.i.i.i.i11.i32 = load i32, ptr %a.i23, align 4, !alias.scope !993, !noalias !992, !noundef !11
  %_0.i12.i33 = icmp slt i32 %_3.i.i.i.i10.i31, %_4.i.i.i.i11.i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !994)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !997)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !999)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1002)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1004)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1007)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1009)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1012)
  %_3.i.i.i.i13.i34 = load i32, ptr %d.i30, align 4, !alias.scope !1014, !noalias !1015, !noundef !11
  %_4.i.i.i.i14.i35 = load i32, ptr %b.i26, align 4, !alias.scope !1015, !noalias !1014, !noundef !11
  %_0.i15.i36 = icmp slt i32 %_3.i.i.i.i13.i34, %_4.i.i.i.i14.i35
  %10 = select i1 %_0.i12.i33, ptr %c.i28, ptr %a.i23, !unpredictable !11
  %11 = select i1 %_0.i15.i36, ptr %c.i28, ptr %b.i26, !unpredictable !11
  %12 = select i1 %_0.i12.i33, ptr %a.i23, ptr %11, !unpredictable !11
  %13 = select i1 %_0.i12.i33, ptr %b.i26, ptr %c.i28, !unpredictable !11
  %14 = select i1 %_0.i15.i36, ptr %d.i30, ptr %13, !unpredictable !11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1016)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1019)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1021)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1024)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1026)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1029)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1031)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1034)
  %_3.i.i.i.i16.i37 = load i32, ptr %14, align 4, !alias.scope !1036, !noalias !1037, !noundef !11
  %_4.i.i.i.i17.i38 = load i32, ptr %12, align 4, !alias.scope !1037, !noalias !1036, !noundef !11
  %15 = load i32, ptr %10, align 4
  store i32 %15, ptr %_28, align 4
  %dst5.i40 = getelementptr inbounds nuw i8, ptr %_28, i64 4
  %16 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i16.i37, i32 %_4.i.i.i.i17.i38)
  store i32 %16, ptr %dst5.i40, align 4
  %dst6.i43 = getelementptr inbounds nuw i8, ptr %_28, i64 8
  %17 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i16.i37, i32 %_4.i.i.i.i17.i38)
  store i32 %17, ptr %dst6.i43, align 4
  %18 = getelementptr inbounds nuw i8, ptr %_28, i64 12
  %19 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i13.i34, i32 %_4.i.i.i.i14.i35)
  store i32 %19, ptr %18, align 4
  br label %bb15

bb46:                                             ; preds = %bb9
  %20 = load i32, ptr %v.0, align 4
  store i32 %20, ptr %scratch.0, align 4
  %_31 = getelementptr inbounds nuw i32, ptr %v.0, i64 %len_div_211
  %21 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211
  %22 = load i32, ptr %_31, align 4
  store i32 %22, ptr %21, align 4
  br label %bb15

bb15:                                             ; preds = %bb46, %bb10, %bb6
  %presorted_len.sroa.0.0 = phi i64 [ 8, %bb6 ], [ 4, %bb10 ], [ 1, %bb46 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %iter)
  store i64 0, ptr %iter, align 8
  %_37.sroa.4.0.iter.sroa_idx = getelementptr inbounds nuw i8, ptr %iter, i64 8
  store i64 2, ptr %_37.sroa.4.0.iter.sroa_idx, align 8
  %_37.sroa.5.0.iter.sroa_idx = getelementptr inbounds nuw i8, ptr %iter, i64 16
  store i64 0, ptr %_37.sroa.5.0.iter.sroa_idx, align 8
  %_37.sroa.6.0.iter.sroa_idx = getelementptr inbounds nuw i8, ptr %iter, i64 24
  store i64 %len_div_211, ptr %_37.sroa.6.0.iter.sroa_idx, align 8
  %23 = sub nsw i64 %v.1, %len_div_211
  %iter1.sroa.0.161 = add nuw nsw i64 %presorted_len.sroa.0.0, 1
  br label %bb16

bb16:                                             ; preds = %bb16.backedge, %bb15
  %24 = phi i64 [ 0, %bb15 ], [ %25, %bb16.backedge ]
  %_5.not.i.not = icmp eq i64 %24, 2
  br i1 %_5.not.i.not, label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h3bbb43efa7a139c7E.exit", label %bb1.i

bb1.i:                                            ; preds = %bb16
  %_11.i = add nuw nsw i64 %24, 1
  store i64 %_11.i, ptr %iter, align 8, !alias.scope !1038
  %_20.i = icmp ult i64 %24, 2
  tail call void @llvm.assume(i1 %_20.i)
  %self3.i = getelementptr inbounds nuw i64, ptr %_37.sroa.5.0.iter.sroa_idx, i64 %24
  %_15.i = load i64, ptr %self3.i, align 8, !alias.scope !1038, !noundef !11
  br label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h3bbb43efa7a139c7E.exit"

"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h3bbb43efa7a139c7E.exit": ; preds = %bb16, %bb1.i
  %25 = phi i64 [ %_11.i, %bb1.i ], [ %24, %bb16 ]
  %_0.sroa.3.0.i = phi i64 [ %_15.i, %bb1.i ], [ undef, %bb16 ]
  br i1 %_5.not.i.not, label %bb19, label %bb18

bb18:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h3bbb43efa7a139c7E.exit"
  %src5 = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.3.0.i
  %dst6 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %_0.sroa.3.0.i
  %_47 = icmp eq i64 %_0.sroa.3.0.i, 0
  %desired_len.sroa.0.0 = select i1 %_47, i64 %len_div_211, i64 %23
  %_8059 = icmp ult i64 %presorted_len.sroa.0.0, %desired_len.sroa.0.0
  br i1 %_8059, label %bb24, label %bb16.backedge

bb16.backedge:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h799a674e80d07974E.exit, %bb18
  br label %bb16

bb19:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h3bbb43efa7a139c7E.exit"
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1041)
  %count1.i = add nsw i64 %v.1, -1
  %26 = getelementptr inbounds nuw i32, ptr %v.0, i64 %count1.i
  %27 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %count1.i
  %28 = getelementptr i32, ptr %scratch.0, i64 %len_div_211
  %29 = getelementptr i8, ptr %28, i64 -4
  br label %bb15.i

bb16.i:                                           ; preds = %bb15.i
  %30 = getelementptr i8, ptr %35, i64 4
  %31 = getelementptr i8, ptr %34, i64 4
  %_44.i = and i64 %v.1, 1
  %_22.i = icmp eq i64 %_44.i, 0
  br i1 %_22.i, label %bb9.i, label %bb5.i

bb15.i:                                           ; preds = %bb15.i, %bb19
  %dst.sroa.0.029.i = phi ptr [ %_16.i.i, %bb15.i ], [ %v.0, %bb19 ]
  %iter.sroa.0.028.i = phi i64 [ %_39.i, %bb15.i ], [ 0, %bb19 ]
  %left.sroa.0.027.i = phi ptr [ %_14.i.i, %bb15.i ], [ %scratch.0, %bb19 ]
  %right.sroa.0.026.i = phi ptr [ %_12.i.i, %bb15.i ], [ %28, %bb19 ]
  %left_rev.sroa.0.025.i = phi ptr [ %35, %bb15.i ], [ %29, %bb19 ]
  %right_rev.sroa.0.024.i = phi ptr [ %34, %bb15.i ], [ %27, %bb19 ]
  %dst_rev.sroa.0.023.i = phi ptr [ %36, %bb15.i ], [ %26, %bb19 ]
  %_39.i = add nuw nsw i64 %iter.sroa.0.028.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1044)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1047)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1049), !noalias !1052
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1055), !noalias !1052
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1057), !noalias !1052
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1060), !noalias !1052
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1062), !noalias !1052
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1065), !noalias !1052
  %_3.i.i.i.i.i49 = load i32, ptr %right.sroa.0.026.i, align 4, !alias.scope !1067, !noalias !1068, !noundef !11
  %_4.i.i.i.i.i50 = load i32, ptr %left.sroa.0.027.i, align 4, !alias.scope !1069, !noalias !1070, !noundef !11
  %_0.i.i51 = icmp slt i32 %_3.i.i.i.i.i49, %_4.i.i.i.i.i50
  %is_l.i18.i = xor i1 %_0.i.i51, true
  %32 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i49, i32 %_4.i.i.i.i.i50)
  store i32 %32, ptr %dst.sroa.0.029.i, align 4, !noalias !1071
  %count.i.i = zext i1 %_0.i.i51 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1073)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1076)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1078), !noalias !1081
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084), !noalias !1081
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1086), !noalias !1081
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1089), !noalias !1081
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1091), !noalias !1081
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1094), !noalias !1081
  %_3.i.i.i.i19.i = load i32, ptr %right_rev.sroa.0.024.i, align 4, !alias.scope !1096, !noalias !1097, !noundef !11
  %_4.i.i.i.i20.i = load i32, ptr %left_rev.sroa.0.025.i, align 4, !alias.scope !1098, !noalias !1099, !noundef !11
  %_0.i21.i = icmp slt i32 %_3.i.i.i.i19.i, %_4.i.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %33 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i, i32 %_4.i.i.i.i20.i)
  store i32 %33, ptr %dst_rev.sroa.0.023.i, align 4, !noalias !1100
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %34 = getelementptr i32, ptr %right_rev.sroa.0.024.i, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i21.i to i64
  %35 = getelementptr i32, ptr %left_rev.sroa.0.025.i, i64 %count3.neg.i.i
  %36 = getelementptr inbounds i8, ptr %dst_rev.sroa.0.023.i, i64 -4
  %exitcond.not.i = icmp eq i64 %_39.i, %len_div_211
  br i1 %exitcond.not.i, label %bb16.i, label %bb15.i

bb5.i:                                            ; preds = %bb16.i
  %left_nonempty.i = icmp ult ptr %_14.i.i, %30
  %left.sroa.0.0.right.sroa.0.0.i = select i1 %left_nonempty.i, ptr %_14.i.i, ptr %_12.i.i
  %37 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i, align 4, !alias.scope !1041
  store i32 %37, ptr %_16.i.i, align 4, !noalias !1041
  %count2.i52 = zext i1 %left_nonempty.i to i64
  %_26.i = getelementptr inbounds nuw i32, ptr %_14.i.i, i64 %count2.i52
  %_30.i = xor i1 %left_nonempty.i, true
  %count3.i53 = zext i1 %_30.i to i64
  %_28.i = getelementptr inbounds nuw i32, ptr %_12.i.i, i64 %count3.i53
  br label %bb9.i

bb9.i:                                            ; preds = %bb5.i, %bb16.i
  %right.sroa.0.1.i = phi ptr [ %_12.i.i, %bb16.i ], [ %_28.i, %bb5.i ]
  %left.sroa.0.1.i = phi ptr [ %_14.i.i, %bb16.i ], [ %_26.i, %bb5.i ]
  %_31.i = icmp ne ptr %left.sroa.0.1.i, %30
  %_32.i = icmp ne ptr %right.sroa.0.1.i, %31
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %bb29, !prof !718

bb13.i:                                           ; preds = %bb9.i
; invoke core::slice::sort::shared::smallsort::panic_on_ord_violation
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #32
          to label %.noexc unwind label %cleanup2

.noexc:                                           ; preds = %bb13.i
  unreachable

cleanup2:                                         ; preds = %bb13.i
  %38 = landingpad { ptr, i32 }
          cleanup
  %39 = shl nuw nsw i64 %v.1, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.0, ptr nonnull align 4 %scratch.0, i64 %39, i1 false), !noalias !1102
  resume { ptr, i32 } %38

bb29:                                             ; preds = %bb9.i, %start
  ret void

bb24:                                             ; preds = %bb18, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h799a674e80d07974E.exit
  %iter1.sroa.0.163 = phi i64 [ %iter1.sroa.0.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h799a674e80d07974E.exit ], [ %iter1.sroa.0.161, %bb18 ]
  %iter1.sroa.0.062 = phi i64 [ %iter1.sroa.0.163, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h799a674e80d07974E.exit ], [ %presorted_len.sroa.0.0, %bb18 ]
  %_55 = getelementptr inbounds nuw i32, ptr %src5, i64 %iter1.sroa.0.062
  %dst7 = getelementptr inbounds nuw i32, ptr %dst6, i64 %iter1.sroa.0.062
  %40 = load i32, ptr %_55, align 4
  store i32 %40, ptr %dst7, align 4
  %41 = getelementptr inbounds i8, ptr %dst7, i64 -4
  %_4.i.i.i.i.i56 = load i32, ptr %41, align 4, !alias.scope !1107, !noalias !1116, !noundef !11
  %_0.i.i57 = icmp slt i32 %40, %_4.i.i.i.i.i56
  br i1 %_0.i.i57, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h799a674e80d07974E.exit

bb4.i:                                            ; preds = %bb24, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %dst7, %bb24 ]
  %sift.sroa.0.0.i = phi ptr [ %43, %bb6.i ], [ %41, %bb24 ]
  %42 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %42, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %dst6
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %43 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i.i.i2.i = load i32, ptr %43, align 4, !alias.scope !1121, !noalias !1130, !noundef !11
  %_0.i3.i = icmp slt i32 %40, %_4.i.i.i.i2.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %40, ptr %sift.sroa.0.0.i, align 4, !noalias !1135
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h799a674e80d07974E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h799a674e80d07974E.exit: ; preds = %bb24, %bb10.i
  %_80 = icmp ult i64 %iter1.sroa.0.163, %desired_len.sroa.0.0
  %_84 = zext i1 %_80 to i64
  %iter1.sroa.0.1 = add nuw i64 %iter1.sroa.0.163, %_84
  br i1 %_80, label %bb24, label %bb16.backedge
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17hd35de4adb83fad78E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #8 personality ptr @rust_eh_personality {
start:
  %_4.i.i = alloca [24 x i8], align 8
  %heap_buf = alloca [24 x i8], align 8
  %stack_buf = alloca [4096 x i8], align 4
  %_105 = lshr i64 %v.1, 1
  %v1 = sub nsw i64 %v.1, %_105
  %_0.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %v.1, i64 2000000)
  %_0.sroa.0.0.i6 = tail call noundef i64 @llvm.umax.i64(i64 %_0.sroa.0.0.i, i64 %v1)
  %_0.sroa.0.0.i7 = tail call noundef i64 @llvm.umax.i64(i64 %_0.sroa.0.0.i6, i64 48)
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %stack_buf)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %heap_buf)
  %_15 = icmp ult i64 %_0.sroa.0.0.i6, 1025
  br i1 %_15, label %bb8, label %bb4

bb4:                                              ; preds = %start
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1140
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i, i64 noundef %_0.sroa.0.0.i7, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb4
  %_5.i.i = load i64, ptr %_4.i.i, align 8, !range !12, !noalias !1140, !noundef !11
  %0 = trunc nuw i64 %_5.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !13, !noalias !1140, !noundef !11
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 16
  br i1 %0, label %bb3.i.i, label %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h47ff7f189d415ff6E.exit", !prof !14

bb3.i.i:                                          ; preds = %.noexc
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1140
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #29
          to label %.noexc8 unwind label %cleanup

.noexc8:                                          ; preds = %bb3.i.i
  unreachable

"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h47ff7f189d415ff6E.exit": ; preds = %.noexc
  %this.1.i.i = load ptr, ptr %2, align 8, !noalias !1140, !nonnull !11, !noundef !11
  %_7.i.i = icmp ule i64 %_0.sroa.0.0.i7, %err.0.i.i
  tail call void @llvm.assume(i1 %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1140
  store i64 %err.0.i.i, ptr %heap_buf, align 8
  %_18.sroa.4.0.heap_buf.sroa_idx = getelementptr inbounds nuw i8, ptr %heap_buf, i64 8
  store ptr %this.1.i.i, ptr %_18.sroa.4.0.heap_buf.sroa_idx, align 8
  %_18.sroa.5.0.heap_buf.sroa_idx = getelementptr inbounds nuw i8, ptr %heap_buf, i64 16
  store i64 0, ptr %_18.sroa.5.0.heap_buf.sroa_idx, align 8
  br label %bb8

cleanup:                                          ; preds = %bb3.i.i, %bb4, %bb8
  %_24.sroa.0.0 = phi i8 [ %_24.sroa.0.1, %bb8 ], [ 0, %bb4 ], [ 0, %bb3.i.i ]
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = trunc nuw i8 %_24.sroa.0.0 to i1
  br i1 %4, label %bb13, label %bb11

bb8:                                              ; preds = %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h47ff7f189d415ff6E.exit", %start
  %_24.sroa.0.1 = phi i8 [ 0, %start ], [ 1, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h47ff7f189d415ff6E.exit" ]
  %stack_scratch.sroa.4.0 = phi i64 [ 1024, %start ], [ %err.0.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h47ff7f189d415ff6E.exit" ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %this.1.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h47ff7f189d415ff6E.exit" ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke void @_ZN4core5slice4sort6stable5drift4sort17h8e47ce351825f72dE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
  %5 = trunc nuw i8 %_24.sroa.0.1 to i1
  br i1 %5, label %bb12, label %bb10

bb10:                                             ; preds = %bb12, %bb9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %heap_buf)
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %stack_buf)
  ret void

bb12:                                             ; preds = %bb9
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %heap_buf, i64 noundef 4, i64 noundef 4)
  br label %bb10

bb11:                                             ; preds = %bb13, %cleanup
  resume { ptr, i32 } %3

bb13:                                             ; preds = %cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %heap_buf, i64 noundef 4, i64 noundef 4)
          to label %bb11 unwind label %terminate

terminate:                                        ; preds = %bb13
  %6 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #31
  unreachable
}

; core::slice::sort::stable::AlignedStorage<T,_>::as_uninit_slice_mut
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @"_ZN4core5slice4sort6stable27AlignedStorage$LT$T$C$_$GT$19as_uninit_slice_mut17hfebb0a76a13ff00aE"(ptr noalias noundef align 4 dereferenceable(4096) %self) unnamed_addr #9 {
start:
  %0 = insertvalue { ptr, i64 } poison, ptr %self, 0
  %1 = insertvalue { ptr, i64 } %0, i64 1024, 1
  ret { ptr, i64 } %1
}

; core::slice::sort::stable::drift::create_run
; Function Attrs: nonlazybind uwtable
define noundef range(i64 0, -1) i64 @_ZN4core5slice4sort6stable5drift10create_run17h1339b950575f070aE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %min_good_run_len, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_7.not = icmp ult i64 %v.1, %min_good_run_len
  br i1 %_7.not, label %bb7, label %bb1

bb7:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h10451d5e3b46a689E.exit, %start
  br i1 %eager_sort, label %bb8, label %bb11

bb1:                                              ; preds = %start
  %_4.i = icmp samesign ult i64 %v.1, 2
  br i1 %_4.i, label %_ZN4core5slice4sort6shared17find_existing_run17h10451d5e3b46a689E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb1
  %_28.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1161)
  %_3.i.i.i.i = load i32, ptr %_28.i, align 4, !alias.scope !1163, !noalias !1164, !noundef !11
  %_4.i.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !1164, !noalias !1163, !noundef !11
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_10.i13.not = icmp eq i64 %v.1, 2
  br i1 %_0.i, label %bb4.i.preheader, label %bb11.i.preheader

bb11.i.preheader:                                 ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17h10451d5e3b46a689E.exit, label %bb12.i.preheader

bb12.i.preheader:                                 ; preds = %bb11.i.preheader
  %invariant.gep = getelementptr i8, ptr %v.0, i64 -4
  br label %bb12.i

bb4.i.preheader:                                  ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17h10451d5e3b46a689E.exit, label %bb5.i.preheader

bb5.i.preheader:                                  ; preds = %bb4.i.preheader
  %invariant.gep24 = getelementptr i8, ptr %v.0, i64 -4
  br label %bb5.i

bb12.i:                                           ; preds = %bb12.i.preheader, %bb15.i
  %run_len.sroa.0.0.i11 = phi i64 [ %1, %bb15.i ], [ 2, %bb12.i.preheader ]
  %0 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.0.i11
  %gep = getelementptr i32, ptr %invariant.gep, i64 %run_len.sroa.0.0.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1183)
  %_3.i.i.i.i1 = load i32, ptr %0, align 4, !alias.scope !1185, !noalias !1186, !noundef !11
  %_4.i.i.i.i2 = load i32, ptr %gep, align 4, !alias.scope !1186, !noalias !1185, !noundef !11
  %_0.i3 = icmp slt i32 %_3.i.i.i.i1, %_4.i.i.i.i2
  br i1 %_0.i3, label %_ZN4core5slice4sort6shared17find_existing_run17h10451d5e3b46a689E.exit, label %bb15.i

bb15.i:                                           ; preds = %bb12.i
  %1 = add nuw nsw i64 %run_len.sroa.0.0.i11, 1
  %exitcond.not = icmp eq i64 %1, %v.1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h10451d5e3b46a689E.exit, label %bb12.i

bb5.i:                                            ; preds = %bb5.i.preheader, %bb7.i
  %run_len.sroa.0.1.i14 = phi i64 [ %3, %bb7.i ], [ 2, %bb5.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.1.i14
  %gep25 = getelementptr i32, ptr %invariant.gep24, i64 %run_len.sroa.0.1.i14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1205)
  %_3.i.i.i.i4 = load i32, ptr %2, align 4, !alias.scope !1207, !noalias !1208, !noundef !11
  %_4.i.i.i.i5 = load i32, ptr %gep25, align 4, !alias.scope !1208, !noalias !1207, !noundef !11
  %_0.i6 = icmp slt i32 %_3.i.i.i.i4, %_4.i.i.i.i5
  br i1 %_0.i6, label %bb7.i, label %_ZN4core5slice4sort6shared17find_existing_run17h10451d5e3b46a689E.exit

bb7.i:                                            ; preds = %bb5.i
  %3 = add nuw nsw i64 %run_len.sroa.0.1.i14, 1
  %exitcond19.not = icmp eq i64 %3, %v.1
  br i1 %exitcond19.not, label %_ZN4core5slice4sort6shared17find_existing_run17h10451d5e3b46a689E.exit, label %bb5.i

_ZN4core5slice4sort6shared17find_existing_run17h10451d5e3b46a689E.exit: ; preds = %bb12.i, %bb15.i, %bb5.i, %bb7.i, %bb11.i.preheader, %bb4.i.preheader, %bb1
  %_0.sroa.3.0.i = phi i1 [ false, %bb1 ], [ true, %bb4.i.preheader ], [ false, %bb11.i.preheader ], [ true, %bb7.i ], [ true, %bb5.i ], [ false, %bb15.i ], [ false, %bb12.i ]
  %_0.sroa.0.0.i = phi i64 [ %v.1, %bb1 ], [ 2, %bb4.i.preheader ], [ 2, %bb11.i.preheader ], [ %run_len.sroa.0.1.i14, %bb5.i ], [ %v.1, %bb7.i ], [ %run_len.sroa.0.0.i11, %bb12.i ], [ %v.1, %bb15.i ]
  %_12 = icmp samesign ule i64 %_0.sroa.0.0.i, %v.1
  tail call void @llvm.assume(i1 %_12)
  %_13.not = icmp ult i64 %_0.sroa.0.0.i, %min_good_run_len
  br i1 %_13.not, label %bb7, label %bb3

bb3:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h10451d5e3b46a689E.exit
  br i1 %_0.sroa.3.0.i, label %bb14, label %bb5

bb11:                                             ; preds = %bb7
  %_0.sroa.0.0.i7 = tail call noundef i64 @llvm.umin.i64(i64 %v.1, i64 %min_good_run_len)
  %_36 = shl nuw nsw i64 %_0.sroa.0.0.i7, 1
  br label %bb12

bb8:                                              ; preds = %bb7
  %_0.sroa.0.0.i8 = tail call noundef i64 @llvm.umin.i64(i64 %v.1, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hbf9e74c21b061636E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %_0.sroa.0.0.i8, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #33
  %_35 = shl nuw nsw i64 %_0.sroa.0.0.i8, 1
  %_34 = or disjoint i64 %_35, 1
  br label %bb12

bb12:                                             ; preds = %bb5, %bb8, %bb11
  %_0.sroa.0.0 = phi i64 [ %_26, %bb5 ], [ %_34, %bb8 ], [ %_36, %bb11 ]
  ret i64 %_0.sroa.0.0

bb5.loopexit.unr-lcssa:                           ; preds = %bb5.i.i, %bb5.i.i.preheader
  %i.sroa.0.016.i.i.unr = phi i64 [ 0, %bb5.i.i.preheader ], [ %15, %bb5.i.i ]
  %4 = and i64 %_0.sroa.0.0.i, 2
  %lcmp.mod.not = icmp eq i64 %4, 0
  br i1 %lcmp.mod.not, label %bb5, label %bb5.i.i.epil

bb5.i.i.epil:                                     ; preds = %bb5.loopexit.unr-lcssa
  %5 = xor i64 %i.sroa.0.016.i.i.unr, -1
  %x.i.i.epil = getelementptr inbounds nuw i32, ptr %v.0, i64 %i.sroa.0.016.i.i.unr
  %y.i.i.epil = getelementptr i32, ptr %end.i, i64 %5
  %6 = load i32, ptr %x.i.i.epil, align 4, !alias.scope !1209, !noalias !1214, !noundef !11
  %7 = load i32, ptr %y.i.i.epil, align 4, !alias.scope !1216, !noalias !1217
  store i32 %7, ptr %x.i.i.epil, align 4, !alias.scope !1209, !noalias !1214
  store i32 %6, ptr %y.i.i.epil, align 4, !alias.scope !1216, !noalias !1217
  br label %bb5

bb5:                                              ; preds = %bb5.i.i.epil, %bb5.loopexit.unr-lcssa, %bb14, %bb3
  %_27 = shl nuw nsw i64 %_0.sroa.0.0.i, 1
  %_26 = or disjoint i64 %_27, 1
  br label %bb12

bb14:                                             ; preds = %bb3
  %half_len2.i = lshr i64 %_0.sroa.0.0.i, 1
  %end.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.0.0.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1217)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1214)
  %_915.not.i.i = icmp samesign ult i64 %_0.sroa.0.0.i, 2
  br i1 %_915.not.i.i, label %bb5, label %bb5.i.i.preheader

bb5.i.i.preheader:                                ; preds = %bb14
  %8 = icmp eq i64 %half_len2.i, 1
  br i1 %8, label %bb5.loopexit.unr-lcssa, label %bb5.i.i.preheader.new

bb5.i.i.preheader.new:                            ; preds = %bb5.i.i.preheader
  %unroll_iter = and i64 %half_len2.i, 9223372036854775806
  %invariant.gep26 = getelementptr inbounds i8, ptr %v.0, i64 4
  br label %bb5.i.i

bb5.i.i:                                          ; preds = %bb5.i.i, %bb5.i.i.preheader.new
  %i.sroa.0.016.i.i = phi i64 [ 0, %bb5.i.i.preheader.new ], [ %15, %bb5.i.i ]
  %niter = phi i64 [ 0, %bb5.i.i.preheader.new ], [ %niter.next.1, %bb5.i.i ]
  %9 = xor i64 %i.sroa.0.016.i.i, -1
  %x.i.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %i.sroa.0.016.i.i
  %y.i.i = getelementptr i32, ptr %end.i, i64 %9
  %10 = load i32, ptr %x.i.i, align 4, !alias.scope !1209, !noalias !1214, !noundef !11
  %11 = load i32, ptr %y.i.i, align 4, !alias.scope !1216, !noalias !1217
  store i32 %11, ptr %x.i.i, align 4, !alias.scope !1209, !noalias !1214
  store i32 %10, ptr %y.i.i, align 4, !alias.scope !1216, !noalias !1217
  %12 = xor i64 %i.sroa.0.016.i.i, -2
  %gep27 = getelementptr inbounds i32, ptr %invariant.gep26, i64 %i.sroa.0.016.i.i
  %y.i.i.1 = getelementptr i32, ptr %end.i, i64 %12
  %13 = load i32, ptr %gep27, align 4, !alias.scope !1209, !noalias !1214, !noundef !11
  %14 = load i32, ptr %y.i.i.1, align 4, !alias.scope !1216, !noalias !1217
  store i32 %14, ptr %gep27, align 4, !alias.scope !1209, !noalias !1214
  store i32 %13, ptr %y.i.i.1, align 4, !alias.scope !1216, !noalias !1217
  %15 = add nuw nsw i64 %i.sroa.0.016.i.i, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb5.loopexit.unr-lcssa, label %bb5.i.i
}

; core::slice::sort::stable::drift::stable_quicksort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift16stable_quicksort17h2bbdd3558b45da32E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #0 {
start:
  %self = or i64 %v.1, 1
  %0 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self, i1 true)
  %1 = trunc nuw nsw i64 %0 to i32
  %log = shl nuw nsw i32 %1, 1
  %limit = xor i32 %log, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hbf9e74c21b061636E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %limit, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #33
  ret void
}

; core::slice::sort::stable::drift::sort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift4sort17h8e47ce351825f72dE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %desired_depth_storage = alloca [66 x i8], align 1
  %run_storage = alloca [528 x i8], align 8
  %_6 = icmp samesign ult i64 %v.1, 2
  br i1 %_6, label %bb22, label %bb2

bb2:                                              ; preds = %start
  %d = udiv i64 4611686018427387904, %v.1
  %r = urem i64 4611686018427387904, %v.1
  %_73.not = icmp ne i64 %r, 0
  %0 = zext i1 %_73.not to i64
  %scale_factor.sroa.0.0 = add nuw nsw i64 %d, %0
  %_9 = icmp samesign ult i64 %v.1, 4097
  br i1 %_9, label %bb3, label %bb4

bb4:                                              ; preds = %bb2
; call core::slice::sort::stable::drift::sqrt_approx
  %1 = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h72a4dc1ae46294f4E(i64 noundef %v.1)
  br label %bb5

bb3:                                              ; preds = %bb2
  %_1135 = lshr i64 %v.1, 1
  %v1 = sub nsw i64 %v.1, %_1135
  %_0.sroa.0.0.i36 = tail call noundef i64 @llvm.umin.i64(i64 %v1, i64 64)
  br label %bb5

bb5:                                              ; preds = %bb3, %bb4
  %min_good_run_len.sroa.0.0 = phi i64 [ %_0.sroa.0.0.i36, %bb3 ], [ %1, %bb4 ]
  call void @llvm.lifetime.start.p0(i64 528, ptr nonnull %run_storage)
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %desired_depth_storage)
  br label %bb6

bb6:                                              ; preds = %bb19, %bb5
  %prev_run.sroa.0.0 = phi i64 [ 1, %bb5 ], [ %next_run.sroa.0.0, %bb19 ]
  %scan_idx.sroa.0.0 = phi i64 [ 0, %bb5 ], [ %22, %bb19 ]
  %stack_len.sroa.0.0 = phi i64 [ 0, %bb5 ], [ %21, %bb19 ]
  %_22 = icmp ult i64 %scan_idx.sroa.0.0, %v.1
  br i1 %_22, label %bb30, label %bb10

bb10:                                             ; preds = %bb6, %bb30
  %desired_depth.sroa.0.0 = phi i8 [ %4, %bb30 ], [ 0, %bb6 ]
  %next_run.sroa.0.0 = phi i64 [ %2, %bb30 ], [ 1, %bb6 ]
  %_3748 = icmp ugt i64 %stack_len.sroa.0.0, 1
  br i1 %_3748, label %bb12.lr.ph, label %bb17

bb12.lr.ph:                                       ; preds = %bb10
  %v_end.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %scan_idx.sroa.0.0
  br label %bb12

bb30:                                             ; preds = %bb6
  %new_len = sub nuw nsw i64 %v.1, %scan_idx.sroa.0.0
  %_82 = getelementptr inbounds nuw i32, ptr %v.0, i64 %scan_idx.sroa.0.0
; call core::slice::sort::stable::drift::create_run
  %2 = tail call noundef i64 @_ZN4core5slice4sort6stable5drift10create_run17h1339b950575f070aE(ptr noalias noundef nonnull align 4 %_82, i64 noundef %new_len, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %min_good_run_len.sroa.0.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_31 = lshr i64 %prev_run.sroa.0.0, 1
  %_35 = lshr i64 %2, 1
  %factor = shl i64 %scan_idx.sroa.0.0, 1
  %x = sub i64 %factor, %_31
  %reass.add = shl i64 %scan_idx.sroa.0.0, 1
  %y = add i64 %_35, %reass.add
  %_90 = mul i64 %x, %scale_factor.sroa.0.0
  %_91 = mul i64 %y, %scale_factor.sroa.0.0
  %self4 = xor i64 %_91, %_90
  %3 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %self4, i1 false)
  %4 = trunc nuw nsw i64 %3 to i8
  br label %bb10

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17hf11bde49db4d6e30E.exit
  %stack_len.sroa.0.150 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17hf11bde49db4d6e30E.exit ]
  %prev_run.sroa.0.149 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hf11bde49db4d6e30E.exit ]
  %count = add i64 %stack_len.sroa.0.150, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !11
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17hf11bde49db4d6e30E.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hf11bde49db4d6e30E.exit ], [ %prev_run.sroa.0.149, %bb12 ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17hf11bde49db4d6e30E.exit ], [ %stack_len.sroa.0.150, %bb12 ]
  %_59 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %stack_len.sroa.0.1.lcssa
  store i64 %prev_run.sroa.0.1.lcssa, ptr %_59, align 8
  %_61 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %stack_len.sroa.0.1.lcssa
  store i8 %desired_depth.sroa.0.0, ptr %_61, align 1
  br i1 %_22, label %bb19, label %bb18

bb13:                                             ; preds = %bb12
  %_46 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %count
  %left10 = load i64, ptr %_46, align 8, !noundef !11
  %_50 = lshr i64 %left10, 1
  %_51 = lshr i64 %prev_run.sroa.0.149, 1
  %merged_len = add nuw i64 %_50, %_51
  %merge_start_idx = sub i64 %scan_idx.sroa.0.0, %merged_len
  %_98 = getelementptr inbounds nuw i32, ptr %v.0, i64 %merge_start_idx
  %can_fit_in_scratch.i = icmp samesign ugt i64 %merged_len, %scratch.1
  %_22.i = and i64 %prev_run.sroa.0.149, 1
  %_10.not.i = icmp eq i64 %_22.i, 0
  %5 = or i64 %left10, %prev_run.sroa.0.149
  %6 = and i64 %5, 1
  %7 = icmp ne i64 %6, 0
  %or.cond2.i = or i1 %can_fit_in_scratch.i, %7
  br i1 %or.cond2.i, label %bb3.i, label %bb9.i

bb3.i:                                            ; preds = %bb13
  %_21.i = and i64 %left10, 1
  %_9.not.i = icmp eq i64 %_21.i, 0
  br i1 %_9.not.i, label %bb11.i, label %bb5.i

bb9.i:                                            ; preds = %bb13
  %_40.i = shl nuw nsw i64 %merged_len, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hf11bde49db4d6e30E.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %8 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %9 = trunc nuw nsw i64 %8 to i32
  %log.i = shl nuw nsw i32 %9, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hbf9e74c21b061636E(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #33
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1221)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.149, 2
  %or.cond.i = or i1 %_7.i, %_6.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h7c0738b142990bf2E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i = tail call i64 @llvm.umin.i64(i64 %_51, i64 %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17h7c0738b142990bf2E.exit, label %bb5.i37

bb5.i37:                                          ; preds = %bb2.i
  %v_mid.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %left_is_shorter.not.i = icmp samesign ugt i64 %_50, %_51
  %spec.select.i = select i1 %left_is_shorter.not.i, ptr %v_mid.i, ptr %_98
  %10 = shl nuw nsw i64 %_0.sroa.0.0.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select.i, i64 %10, i1 false), !alias.scope !1223
  %_22.i38 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %10
  br i1 %left_is_shorter.not.i, label %bb1.i.i, label %bb3.i.i

bb1.i.i:                                          ; preds = %bb5.i37, %bb1.i.i
  %_2110.i.i = phi ptr [ %_21.i.i, %bb1.i.i ], [ %_22.i38, %bb5.i37 ]
  %_188.i.i = phi ptr [ %_18.i.i, %bb1.i.i ], [ %spec.select.i, %bb5.i37 ]
  %out.sroa.0.0.i.i = phi ptr [ %13, %bb1.i.i ], [ %v_end.i, %bb5.i37 ]
  %11 = getelementptr inbounds i8, ptr %_188.i.i, i64 -4
  %12 = getelementptr inbounds i8, ptr %_2110.i.i, i64 -4
  %13 = getelementptr inbounds i8, ptr %out.sroa.0.0.i.i, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1229)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1242)
  %_3.i.i.i.i.i.i = load i32, ptr %12, align 4, !alias.scope !1244, !noalias !1245, !noundef !11
  %_4.i.i.i.i.i.i = load i32, ptr %11, align 4, !alias.scope !1248, !noalias !1249, !noundef !11
  %_0.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i, %_4.i.i.i.i.i.i
  %14 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i.i, i32 %_4.i.i.i.i.i.i)
  store i32 %14, ptr %13, align 4, !alias.scope !1218, !noalias !1250
  %_20.i.i = xor i1 %_0.i.i.i, true
  %count.i.i = zext i1 %_20.i.i to i64
  %_18.i.i = getelementptr inbounds nuw i32, ptr %11, i64 %count.i.i
  %count4.i.i = zext i1 %_0.i.i.i to i64
  %_21.i.i = getelementptr inbounds nuw i32, ptr %12, i64 %count4.i.i
  %_23.i.i = icmp eq ptr %_18.i.i, %_98
  %_26.i.i = icmp eq ptr %_21.i.i, %scratch.0
  %or.cond.i.i = select i1 %_23.i.i, i1 true, i1 %_26.i.i
  br i1 %or.cond.i.i, label %bb16.i40, label %bb1.i.i

bb3.i.i:                                          ; preds = %bb5.i37, %bb3.i.i
  %_2511.i.i = phi ptr [ %_25.i.i, %bb3.i.i ], [ %spec.select.i, %bb5.i37 ]
  %right.sroa.0.010.i.i = phi ptr [ %_23.i17.i, %bb3.i.i ], [ %v_mid.i, %bb5.i37 ]
  %_2059.i.i = phi ptr [ %_20.i16.i, %bb3.i.i ], [ %scratch.0, %bb5.i37 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1269)
  %_3.i.i.i.i.i12.i = load i32, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !1271, !noalias !1272, !noundef !11
  %_4.i.i.i.i.i13.i = load i32, ptr %_2059.i.i, align 4, !alias.scope !1275, !noalias !1276, !noundef !11
  %_0.i.i14.i = icmp slt i32 %_3.i.i.i.i.i12.i, %_4.i.i.i.i.i13.i
  %consume_left.i.i = xor i1 %_0.i.i14.i, true
  %15 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i12.i, i32 %_4.i.i.i.i.i13.i)
  store i32 %15, ptr %_2511.i.i, align 4, !alias.scope !1218, !noalias !1277
  %count.i15.i = zext i1 %consume_left.i.i to i64
  %_20.i16.i = getelementptr inbounds nuw i32, ptr %_2059.i.i, i64 %count.i15.i
  %count2.i.i = zext i1 %_0.i.i14.i to i64
  %_23.i17.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.010.i.i, i64 %count2.i.i
  %_25.i.i = getelementptr inbounds nuw i8, ptr %_2511.i.i, i64 4
  %_7.i.i = icmp ne ptr %_20.i16.i, %_22.i38
  %_10.i.i = icmp ne ptr %_23.i17.i, %v_end.i
  %or.cond.i18.i = select i1 %_7.i.i, i1 %_10.i.i, i1 false
  br i1 %or.cond.i18.i, label %bb3.i.i, label %bb16.i40

bb16.i40:                                         ; preds = %bb3.i.i, %bb1.i.i
  %merge_state.sroa.13.0.i = phi ptr [ %_18.i.i, %bb1.i.i ], [ %_25.i.i, %bb3.i.i ]
  %merge_state.sroa.7.0.i = phi ptr [ %_21.i.i, %bb1.i.i ], [ %_22.i38, %bb3.i.i ]
  %merge_state.sroa.0.0.i = phi ptr [ %scratch.0, %bb1.i.i ], [ %_20.i16.i, %bb3.i.i ]
  %16 = ptrtoint ptr %merge_state.sroa.7.0.i to i64
  %17 = ptrtoint ptr %merge_state.sroa.0.0.i to i64
  %18 = sub nuw i64 %16, %17
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0.i, ptr align 4 %merge_state.sroa.0.0.i, i64 %18, i1 false), !alias.scope !1223, !noalias !1278
  br label %_ZN4core5slice4sort6stable5merge5merge17h7c0738b142990bf2E.exit

_ZN4core5slice4sort6stable5merge5merge17h7c0738b142990bf2E.exit: ; preds = %bb7.i, %bb2.i, %bb16.i40
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hf11bde49db4d6e30E.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i41 = or i64 %_51, 1
  %19 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i41, i1 true)
  %20 = trunc nuw nsw i64 %19 to i32
  %log.i42 = shl nuw nsw i32 %20, 1
  %limit.i43 = xor i32 %log.i42, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hbf9e74c21b061636E(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i43, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #33
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17hf11bde49db4d6e30E.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17h7c0738b142990bf2E.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17h7c0738b142990bf2E.exit ], [ %_40.i, %bb9.i ]
  %_37 = icmp ugt i64 %count, 1
  br i1 %_37, label %bb12, label %bb17

bb19:                                             ; preds = %bb17
  %21 = add i64 %stack_len.sroa.0.1.lcssa, 1
  %_65 = lshr i64 %next_run.sroa.0.0, 1
  %22 = add nuw i64 %_65, %scan_idx.sroa.0.0
  br label %bb6

bb18:                                             ; preds = %bb17
  %_99 = and i64 %prev_run.sroa.0.1.lcssa, 1
  %_66.not = icmp eq i64 %_99, 0
  br i1 %_66.not, label %bb20, label %bb21

bb20:                                             ; preds = %bb18
  %self.i44 = or i64 %v.1, 1
  %23 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i44, i1 true)
  %24 = trunc nuw nsw i64 %23 to i32
  %log.i45 = shl nuw nsw i32 %24, 1
  %limit.i46 = xor i32 %log.i45, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hbf9e74c21b061636E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i46, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #33
  br label %bb21

bb21:                                             ; preds = %bb20, %bb18
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %desired_depth_storage)
  call void @llvm.lifetime.end.p0(i64 528, ptr nonnull %run_storage)
  br label %bb22

bb22:                                             ; preds = %start, %bb21
  ret void
}

; core::slice::sort::stable::merge::MergeState<T>::merge_down
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hbeafcd5000d6f60dE"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readnone captures(address) %left_end, ptr noundef readnone captures(address) %right_end, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #10 {
start:
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %2 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %.promoted = load ptr, ptr %1, align 8
  %.promoted9 = load ptr, ptr %2, align 8
  br label %bb1

bb1:                                              ; preds = %bb1, %start
  %_2110 = phi ptr [ %.promoted9, %start ], [ %_21, %bb1 ]
  %_188 = phi ptr [ %.promoted, %start ], [ %_18, %bb1 ]
  %out.sroa.0.0 = phi ptr [ %0, %start ], [ %5, %bb1 ]
  %3 = getelementptr inbounds i8, ptr %_188, i64 -4
  %4 = getelementptr inbounds i8, ptr %_2110, i64 -4
  %5 = getelementptr inbounds i8, ptr %out.sroa.0.0, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1288)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1291)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1301)
  %_3.i.i.i.i = load i32, ptr %4, align 4, !alias.scope !1303, !noalias !1304, !noundef !11
  %_4.i.i.i.i = load i32, ptr %3, align 4, !alias.scope !1304, !noalias !1303, !noundef !11
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %6 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i, i32 %_4.i.i.i.i)
  store i32 %6, ptr %5, align 4
  %_20 = xor i1 %_0.i, true
  %count = zext i1 %_20 to i64
  %_18 = getelementptr inbounds nuw i32, ptr %3, i64 %count
  %count4 = zext i1 %_0.i to i64
  %_21 = getelementptr inbounds nuw i32, ptr %4, i64 %count4
  %_23 = icmp eq ptr %_18, %left_end
  %_26 = icmp eq ptr %_21, %right_end
  %or.cond = select i1 %_23, i1 true, i1 %_26
  br i1 %or.cond, label %bb7, label %bb1

bb7:                                              ; preds = %bb1
  store ptr %_18, ptr %1, align 8
  store ptr %_21, ptr %2, align 8
  ret void
}

; core::slice::sort::stable::merge::MergeState<T>::merge_up
; Function Attrs: nofree norecurse nosync nounwind nonlazybind uwtable
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17ha931045cc8cec290E"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readonly captures(address) %0, ptr noundef readnone captures(address) %right_end, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #11 {
start:
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_9 = load ptr, ptr %1, align 8, !noundef !11
  %self.promoted = load ptr, ptr %self, align 8
  %_76 = icmp ne ptr %self.promoted, %_9
  %_107 = icmp ne ptr %0, %right_end
  %or.cond8 = and i1 %_76, %_107
  br i1 %or.cond8, label %bb3.lr.ph, label %bb9

bb3.lr.ph:                                        ; preds = %start
  %2 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %.promoted = load ptr, ptr %2, align 8
  br label %bb3

bb1.bb9_crit_edge:                                ; preds = %bb3
  store ptr %_25, ptr %2, align 8
  store ptr %_20, ptr %self, align 8
  br label %bb9

bb9:                                              ; preds = %bb1.bb9_crit_edge, %start
  ret void

bb3:                                              ; preds = %bb3.lr.ph, %bb3
  %_2511 = phi ptr [ %.promoted, %bb3.lr.ph ], [ %_25, %bb3 ]
  %right.sroa.0.010 = phi ptr [ %0, %bb3.lr.ph ], [ %_23, %bb3 ]
  %_2059 = phi ptr [ %self.promoted, %bb3.lr.ph ], [ %_20, %bb3 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1305)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1313)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1323)
  %_3.i.i.i.i = load i32, ptr %right.sroa.0.010, align 4, !alias.scope !1325, !noalias !1326, !noundef !11
  %_4.i.i.i.i = load i32, ptr %_2059, align 4, !alias.scope !1326, !noalias !1325, !noundef !11
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %consume_left = xor i1 %_0.i, true
  %3 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i, i32 %_4.i.i.i.i)
  store i32 %3, ptr %_2511, align 4
  %count = zext i1 %consume_left to i64
  %_20 = getelementptr inbounds nuw i32, ptr %_2059, i64 %count
  %count2 = zext i1 %_0.i to i64
  %_23 = getelementptr inbounds nuw i32, ptr %right.sroa.0.010, i64 %count2
  %_25 = getelementptr inbounds nuw i8, ptr %_2511, i64 4
  %_7 = icmp ne ptr %_20, %_9
  %_10 = icmp ne ptr %_23, %right_end
  %or.cond = select i1 %_7, i1 %_10, i1 false
  br i1 %or.cond, label %bb3, label %bb1.bb9_crit_edge
}

; core::slice::sort::stable::merge::merge
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6stable5merge5merge17h7c0738b142990bf2E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %_6 = icmp eq i64 %0, 0
  %_7 = icmp uge i64 %0, %v.1
  %or.cond = or i1 %_6, %_7
  br i1 %or.cond, label %bb18, label %bb2

bb2:                                              ; preds = %start
  %right_len = sub nuw nsw i64 %v.1, %0
  %_0.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %right_len, i64 %0)
  %_8 = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i
  br i1 %_8, label %bb18, label %bb5

bb5:                                              ; preds = %bb2
  %v_mid = getelementptr inbounds nuw i32, ptr %v.0, i64 %0
  %v_end = getelementptr inbounds nuw i32, ptr %v.0, i64 %v.1
  %left_is_shorter.not = icmp ugt i64 %0, %right_len
  %spec.select = select i1 %left_is_shorter.not, ptr %v_mid, ptr %v.0
  %spec.select10 = tail call i64 @llvm.umin.i64(i64 %0, i64 %right_len)
  %1 = shl nuw nsw i64 %spec.select10, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select, i64 %1, i1 false)
  %_22.idx = shl nuw nsw i64 %spec.select10, 2
  %_22 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %_22.idx
  br i1 %left_is_shorter.not, label %bb1.i, label %bb12

bb1.i:                                            ; preds = %bb5, %bb1.i
  %_2110.i = phi ptr [ %_21.i, %bb1.i ], [ %_22, %bb5 ]
  %_188.i = phi ptr [ %_18.i, %bb1.i ], [ %spec.select, %bb5 ]
  %out.sroa.0.0.i = phi ptr [ %4, %bb1.i ], [ %v_end, %bb5 ]
  %2 = getelementptr inbounds i8, ptr %_188.i, i64 -4
  %3 = getelementptr inbounds i8, ptr %_2110.i, i64 -4
  %4 = getelementptr inbounds i8, ptr %out.sroa.0.0.i, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1332)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1345)
  %_3.i.i.i.i.i = load i32, ptr %3, align 4, !alias.scope !1347, !noalias !1348, !noundef !11
  %_4.i.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !1351, !noalias !1352, !noundef !11
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %5 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i, i32 %_4.i.i.i.i.i)
  store i32 %5, ptr %4, align 4, !noalias !1353
  %_20.i = xor i1 %_0.i.i, true
  %count.i = zext i1 %_20.i to i64
  %_18.i = getelementptr inbounds nuw i32, ptr %2, i64 %count.i
  %count4.i = zext i1 %_0.i.i to i64
  %_21.i = getelementptr inbounds nuw i32, ptr %3, i64 %count4.i
  %_23.i = icmp eq ptr %_18.i, %v.0
  %_26.i = icmp eq ptr %_21.i, %scratch.0
  %or.cond.i = select i1 %_23.i, i1 true, i1 %_26.i
  br i1 %or.cond.i, label %bb16, label %bb1.i

bb12:                                             ; preds = %bb5
  %_76.i.not = icmp eq i64 %0, 0
  br i1 %_76.i.not, label %bb16, label %bb3.i

bb3.i:                                            ; preds = %bb12, %bb3.i
  %_2511.i = phi ptr [ %_25.i, %bb3.i ], [ %spec.select, %bb12 ]
  %right.sroa.0.010.i = phi ptr [ %_23.i17, %bb3.i ], [ %v_mid, %bb12 ]
  %_2059.i = phi ptr [ %_20.i16, %bb3.i ], [ %scratch.0, %bb12 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1357)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1359)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1372)
  %_3.i.i.i.i.i12 = load i32, ptr %right.sroa.0.010.i, align 4, !alias.scope !1374, !noalias !1375, !noundef !11
  %_4.i.i.i.i.i13 = load i32, ptr %_2059.i, align 4, !alias.scope !1378, !noalias !1379, !noundef !11
  %_0.i.i14 = icmp slt i32 %_3.i.i.i.i.i12, %_4.i.i.i.i.i13
  %consume_left.i = xor i1 %_0.i.i14, true
  %6 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i12, i32 %_4.i.i.i.i.i13)
  store i32 %6, ptr %_2511.i, align 4, !noalias !1380
  %count.i15 = zext i1 %consume_left.i to i64
  %_20.i16 = getelementptr inbounds nuw i32, ptr %_2059.i, i64 %count.i15
  %count2.i = zext i1 %_0.i.i14 to i64
  %_23.i17 = getelementptr inbounds nuw i32, ptr %right.sroa.0.010.i, i64 %count2.i
  %_25.i = getelementptr inbounds nuw i8, ptr %_2511.i, i64 4
  %_7.i = icmp ne ptr %_20.i16, %_22
  %_10.i = icmp ne ptr %_23.i17, %v_end
  %or.cond.i18 = select i1 %_7.i, i1 %_10.i, i1 false
  br i1 %or.cond.i18, label %bb3.i, label %bb16

bb16:                                             ; preds = %bb3.i, %bb1.i, %bb12
  %merge_state.sroa.13.0 = phi ptr [ %spec.select, %bb12 ], [ %_18.i, %bb1.i ], [ %_25.i, %bb3.i ]
  %merge_state.sroa.7.0 = phi ptr [ %_22, %bb12 ], [ %_21.i, %bb1.i ], [ %_22, %bb3.i ]
  %merge_state.sroa.0.0 = phi ptr [ %scratch.0, %bb12 ], [ %scratch.0, %bb1.i ], [ %_20.i16, %bb3.i ]
  %7 = ptrtoint ptr %merge_state.sroa.7.0 to i64
  %8 = ptrtoint ptr %merge_state.sroa.0.0 to i64
  %9 = sub nuw i64 %7, %8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0, ptr align 4 %merge_state.sroa.0.0, i64 %9, i1 false), !noalias !1381
  br label %bb18

bb18:                                             ; preds = %bb2, %start, %bb16
  ret void
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17hae9a490fc7b9c533E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #7 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !1386

bb33:                                             ; preds = %start
  %pivot = getelementptr inbounds nuw i32, ptr %v.0, i64 %0
  %_86 = getelementptr i32, ptr %scratch.0, i64 %v.1
  %_8.i70 = zext i1 %pivot_goes_left to i64
  br label %bb3

bb31:                                             ; preds = %start
  tail call void @llvm.trap()
  unreachable

bb3:                                              ; preds = %bb23, %bb33
  %state.sroa.27.0 = phi i64 [ 0, %bb33 ], [ %14, %bb23 ]
  %state.sroa.9.0 = phi ptr [ %v.0, %bb33 ], [ %_9.i71, %bb23 ]
  %state.sroa.43.0 = phi ptr [ %_86, %bb33 ], [ %12, %bb23 ]
  %pivot_pos.sroa.0.0 = phi i64 [ %0, %bb33 ], [ %v.1, %bb23 ]
  %1 = tail call i64 @llvm.usub.sat.i64(i64 %pivot_pos.sroa.0.0, i64 3)
  %unroll_end = getelementptr inbounds nuw i32, ptr %v.0, i64 %1
  %_1985 = icmp ult ptr %state.sroa.9.0, %unroll_end
  br i1 %_1985, label %bb6, label %bb16

bb6:                                              ; preds = %bb3, %bb6
  %state.sroa.43.188 = phi ptr [ %8, %bb6 ], [ %state.sroa.43.0, %bb3 ]
  %state.sroa.9.187 = phi ptr [ %_9.i54, %bb6 ], [ %state.sroa.9.0, %bb3 ]
  %state.sroa.27.186 = phi i64 [ %9, %bb6 ], [ %state.sroa.27.0, %bb3 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1390)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1395)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1397)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1400)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1410)
  %_3.i.i.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !1412, !noalias !1413, !noundef !11
  %_4.i.i.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !1413, !noalias !1412, !noundef !11
  %_0.i.i = icmp sge i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_4.i.i.i.i.i, ptr %dst.i, align 4, !noalias !1414
  %_8.i = zext i1 %_0.i.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1417)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1420)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1427)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1430)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1432)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1437)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1440)
  %_3.i.i.i.i.i25 = load i32, ptr %pivot, align 4, !alias.scope !1442, !noalias !1443, !noundef !11
  %_4.i.i.i.i.i26 = load i32, ptr %_9.i, align 4, !alias.scope !1443, !noalias !1442, !noundef !11
  %_0.i.i27 = icmp sge i32 %_3.i.i.i.i.i25, %_4.i.i.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_4.i.i.i.i.i26, ptr %dst.i31, align 4, !noalias !1444
  %_8.i33 = zext i1 %_0.i.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1447)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1452)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1455)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1457)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1462)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1465)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1467)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1470)
  %_3.i.i.i.i.i35 = load i32, ptr %pivot, align 4, !alias.scope !1472, !noalias !1473, !noundef !11
  %_4.i.i.i.i.i36 = load i32, ptr %_9.i34, align 4, !alias.scope !1473, !noalias !1472, !noundef !11
  %_0.i.i37 = icmp sge i32 %_3.i.i.i.i.i35, %_4.i.i.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_4.i.i.i.i.i36, ptr %dst.i41, align 4, !noalias !1474
  %_8.i43 = zext i1 %_0.i.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1477)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1482)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1487)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1490)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1492)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1495)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1497)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1500)
  %_3.i.i.i.i.i45 = load i32, ptr %pivot, align 4, !alias.scope !1502, !noalias !1503, !noundef !11
  %_4.i.i.i.i.i46 = load i32, ptr %_9.i44, align 4, !alias.scope !1503, !noalias !1502, !noundef !11
  %_0.i.i47 = icmp sge i32 %_3.i.i.i.i.i45, %_4.i.i.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_4.i.i.i.i.i46, ptr %dst.i51, align 4, !noalias !1504
  %_8.i53 = zext i1 %_0.i.i47 to i64
  %9 = add i64 %7, %_8.i53
  %_9.i54 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 16
  %_19 = icmp ult ptr %_9.i54, %unroll_end
  br i1 %_19, label %bb6, label %bb16

bb16:                                             ; preds = %bb6, %bb3
  %state.sroa.27.1.lcssa = phi i64 [ %state.sroa.27.0, %bb3 ], [ %9, %bb6 ]
  %state.sroa.9.1.lcssa = phi ptr [ %state.sroa.9.0, %bb3 ], [ %_9.i54, %bb6 ]
  %state.sroa.43.1.lcssa = phi ptr [ %state.sroa.43.0, %bb3 ], [ %8, %bb6 ]
  %loop_end = getelementptr inbounds nuw i32, ptr %v.0, i64 %pivot_pos.sroa.0.0
  %_4791 = icmp ult ptr %state.sroa.9.1.lcssa, %loop_end
  br i1 %_4791, label %bb18, label %bb21

bb21:                                             ; preds = %bb18, %bb16
  %state.sroa.27.2.lcssa = phi i64 [ %state.sroa.27.1.lcssa, %bb16 ], [ %11, %bb18 ]
  %state.sroa.9.2.lcssa = phi ptr [ %state.sroa.9.1.lcssa, %bb16 ], [ %_9.i64, %bb18 ]
  %state.sroa.43.2.lcssa = phi ptr [ %state.sroa.43.1.lcssa, %bb16 ], [ %10, %bb18 ]
  %_55 = icmp eq i64 %pivot_pos.sroa.0.0, %v.1
  br i1 %_55, label %bb22, label %bb23

bb18:                                             ; preds = %bb16, %bb18
  %state.sroa.43.294 = phi ptr [ %10, %bb18 ], [ %state.sroa.43.1.lcssa, %bb16 ]
  %state.sroa.9.293 = phi ptr [ %_9.i64, %bb18 ], [ %state.sroa.9.1.lcssa, %bb16 ]
  %state.sroa.27.292 = phi i64 [ %11, %bb18 ], [ %state.sroa.27.1.lcssa, %bb16 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1507)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1510)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1512)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1515)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1517)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1520)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1530)
  %_3.i.i.i.i.i55 = load i32, ptr %pivot, align 4, !alias.scope !1532, !noalias !1533, !noundef !11
  %_4.i.i.i.i.i56 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !1533, !noalias !1532, !noundef !11
  %_0.i.i57 = icmp sge i32 %_3.i.i.i.i.i55, %_4.i.i.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_4.i.i.i.i.i56, ptr %dst.i61, align 4, !noalias !1534
  %_8.i63 = zext i1 %_0.i.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !1537
  store i32 %13, ptr %dst.i68, align 4, !noalias !1537
  %14 = add i64 %state.sroa.27.2.lcssa, %_8.i70
  %_9.i71 = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa, i64 4
  br label %bb3

bb22:                                             ; preds = %bb21
  %15 = shl i64 %state.sroa.27.2.lcssa, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.0, ptr nonnull align 4 %scratch.0, i64 %15, i1 false)
  %_63 = sub i64 %v.1, %state.sroa.27.2.lcssa
  %_9798.not = icmp eq i64 %v.1, %state.sroa.27.2.lcssa
  br i1 %_9798.not, label %bb30, label %bb42.lr.ph

bb42.lr.ph:                                       ; preds = %bb22
  %16 = getelementptr i32, ptr %v.0, i64 %state.sroa.27.2.lcssa
  %xtraiter = and i64 %_63, 3
  %17 = sub i64 %state.sroa.27.2.lcssa, %v.1
  %18 = icmp ugt i64 %17, -4
  br i1 %18, label %bb30.loopexit.unr-lcssa, label %bb42.lr.ph.new

bb42.lr.ph.new:                                   ; preds = %bb42.lr.ph
  %unroll_iter = and i64 %_63, -4
  %invariant.gep = getelementptr i8, ptr %16, i64 4
  %invariant.gep114 = getelementptr i8, ptr %16, i64 8
  %invariant.gep116 = getelementptr i8, ptr %16, i64 12
  br label %bb42

bb42:                                             ; preds = %bb42, %bb42.lr.ph.new
  %iter.sroa.0.099 = phi i64 [ 0, %bb42.lr.ph.new ], [ %29, %bb42 ]
  %niter = phi i64 [ 0, %bb42.lr.ph.new ], [ %niter.next.3, %bb42 ]
  %19 = getelementptr i32, ptr %16, i64 %iter.sroa.0.099
  %20 = xor i64 %iter.sroa.0.099, -1
  %21 = getelementptr i32, ptr %_86, i64 %20
  %22 = load i32, ptr %21, align 4
  store i32 %22, ptr %19, align 4
  %gep = getelementptr i32, ptr %invariant.gep, i64 %iter.sroa.0.099
  %23 = xor i64 %iter.sroa.0.099, -2
  %24 = getelementptr i32, ptr %_86, i64 %23
  %25 = load i32, ptr %24, align 4
  store i32 %25, ptr %gep, align 4
  %gep115 = getelementptr i32, ptr %invariant.gep114, i64 %iter.sroa.0.099
  %26 = xor i64 %iter.sroa.0.099, -3
  %27 = getelementptr i32, ptr %_86, i64 %26
  %28 = load i32, ptr %27, align 4
  store i32 %28, ptr %gep115, align 4
  %29 = add nuw i64 %iter.sroa.0.099, 4
  %gep117 = getelementptr i32, ptr %invariant.gep116, i64 %iter.sroa.0.099
  %30 = xor i64 %iter.sroa.0.099, -4
  %31 = getelementptr i32, ptr %_86, i64 %30
  %32 = load i32, ptr %31, align 4
  store i32 %32, ptr %gep117, align 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %bb30.loopexit.unr-lcssa, label %bb42

bb30.loopexit.unr-lcssa:                          ; preds = %bb42, %bb42.lr.ph
  %iter.sroa.0.099.unr = phi i64 [ 0, %bb42.lr.ph ], [ %29, %bb42 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb30, label %bb42.epil

bb42.epil:                                        ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil
  %iter.sroa.0.099.epil = phi i64 [ %33, %bb42.epil ], [ %iter.sroa.0.099.unr, %bb30.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb42.epil ], [ 0, %bb30.loopexit.unr-lcssa ]
  %33 = add nuw i64 %iter.sroa.0.099.epil, 1
  %34 = getelementptr i32, ptr %16, i64 %iter.sroa.0.099.epil
  %35 = xor i64 %iter.sroa.0.099.epil, -1
  %36 = getelementptr i32, ptr %_86, i64 %35
  %37 = load i32, ptr %36, align 4
  store i32 %37, ptr %34, align 4
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !1540

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17hf9e43994fb201158E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #7 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !1386

bb33:                                             ; preds = %start
  %pivot = getelementptr inbounds nuw i32, ptr %v.0, i64 %0
  %_86 = getelementptr i32, ptr %scratch.0, i64 %v.1
  %_8.i70 = zext i1 %pivot_goes_left to i64
  br label %bb3

bb31:                                             ; preds = %start
  tail call void @llvm.trap()
  unreachable

bb3:                                              ; preds = %bb23, %bb33
  %state.sroa.27.0 = phi i64 [ 0, %bb33 ], [ %14, %bb23 ]
  %state.sroa.9.0 = phi ptr [ %v.0, %bb33 ], [ %_9.i71, %bb23 ]
  %state.sroa.43.0 = phi ptr [ %_86, %bb33 ], [ %12, %bb23 ]
  %pivot_pos.sroa.0.0 = phi i64 [ %0, %bb33 ], [ %v.1, %bb23 ]
  %1 = tail call i64 @llvm.usub.sat.i64(i64 %pivot_pos.sroa.0.0, i64 3)
  %unroll_end = getelementptr inbounds nuw i32, ptr %v.0, i64 %1
  %_1985 = icmp ult ptr %state.sroa.9.0, %unroll_end
  br i1 %_1985, label %bb6, label %bb16

bb6:                                              ; preds = %bb3, %bb6
  %state.sroa.43.188 = phi ptr [ %8, %bb6 ], [ %state.sroa.43.0, %bb3 ]
  %state.sroa.9.187 = phi ptr [ %_9.i54, %bb6 ], [ %state.sroa.9.0, %bb3 ]
  %state.sroa.27.186 = phi i64 [ %9, %bb6 ], [ %state.sroa.27.0, %bb3 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1545)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1547)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1550)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1552)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1555)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1560)
  %_3.i.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !1562, !noalias !1563, !noundef !11
  %_4.i.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !1563, !noalias !1562, !noundef !11
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_3.i.i.i.i, ptr %dst.i, align 4, !noalias !1564
  %_8.i = zext i1 %_0.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1567)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1570)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1572)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1575)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1577)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1580)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1582)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1585)
  %_3.i.i.i.i25 = load i32, ptr %_9.i, align 4, !alias.scope !1587, !noalias !1588, !noundef !11
  %_4.i.i.i.i26 = load i32, ptr %pivot, align 4, !alias.scope !1588, !noalias !1587, !noundef !11
  %_0.i27 = icmp slt i32 %_3.i.i.i.i25, %_4.i.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_3.i.i.i.i25, ptr %dst.i31, align 4, !noalias !1589
  %_8.i33 = zext i1 %_0.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1592)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1595)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1597)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1600)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1602)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1605)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1607)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1610)
  %_3.i.i.i.i35 = load i32, ptr %_9.i34, align 4, !alias.scope !1612, !noalias !1613, !noundef !11
  %_4.i.i.i.i36 = load i32, ptr %pivot, align 4, !alias.scope !1613, !noalias !1612, !noundef !11
  %_0.i37 = icmp slt i32 %_3.i.i.i.i35, %_4.i.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_3.i.i.i.i35, ptr %dst.i41, align 4, !noalias !1614
  %_8.i43 = zext i1 %_0.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1617)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1620)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1622)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1625)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1627)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1630)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1632)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1635)
  %_3.i.i.i.i45 = load i32, ptr %_9.i44, align 4, !alias.scope !1637, !noalias !1638, !noundef !11
  %_4.i.i.i.i46 = load i32, ptr %pivot, align 4, !alias.scope !1638, !noalias !1637, !noundef !11
  %_0.i47 = icmp slt i32 %_3.i.i.i.i45, %_4.i.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_3.i.i.i.i45, ptr %dst.i51, align 4, !noalias !1639
  %_8.i53 = zext i1 %_0.i47 to i64
  %9 = add i64 %7, %_8.i53
  %_9.i54 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 16
  %_19 = icmp ult ptr %_9.i54, %unroll_end
  br i1 %_19, label %bb6, label %bb16

bb16:                                             ; preds = %bb6, %bb3
  %state.sroa.27.1.lcssa = phi i64 [ %state.sroa.27.0, %bb3 ], [ %9, %bb6 ]
  %state.sroa.9.1.lcssa = phi ptr [ %state.sroa.9.0, %bb3 ], [ %_9.i54, %bb6 ]
  %state.sroa.43.1.lcssa = phi ptr [ %state.sroa.43.0, %bb3 ], [ %8, %bb6 ]
  %loop_end = getelementptr inbounds nuw i32, ptr %v.0, i64 %pivot_pos.sroa.0.0
  %_4791 = icmp ult ptr %state.sroa.9.1.lcssa, %loop_end
  br i1 %_4791, label %bb18, label %bb21

bb21:                                             ; preds = %bb18, %bb16
  %state.sroa.27.2.lcssa = phi i64 [ %state.sroa.27.1.lcssa, %bb16 ], [ %11, %bb18 ]
  %state.sroa.9.2.lcssa = phi ptr [ %state.sroa.9.1.lcssa, %bb16 ], [ %_9.i64, %bb18 ]
  %state.sroa.43.2.lcssa = phi ptr [ %state.sroa.43.1.lcssa, %bb16 ], [ %10, %bb18 ]
  %_55 = icmp eq i64 %pivot_pos.sroa.0.0, %v.1
  br i1 %_55, label %bb22, label %bb23

bb18:                                             ; preds = %bb16, %bb18
  %state.sroa.43.294 = phi ptr [ %10, %bb18 ], [ %state.sroa.43.1.lcssa, %bb16 ]
  %state.sroa.9.293 = phi ptr [ %_9.i64, %bb18 ], [ %state.sroa.9.1.lcssa, %bb16 ]
  %state.sroa.27.292 = phi i64 [ %11, %bb18 ], [ %state.sroa.27.1.lcssa, %bb16 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1642)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1645)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1647)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1652)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1655)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1657)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1660)
  %_3.i.i.i.i55 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !1662, !noalias !1663, !noundef !11
  %_4.i.i.i.i56 = load i32, ptr %pivot, align 4, !alias.scope !1663, !noalias !1662, !noundef !11
  %_0.i57 = icmp slt i32 %_3.i.i.i.i55, %_4.i.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_3.i.i.i.i55, ptr %dst.i61, align 4, !noalias !1664
  %_8.i63 = zext i1 %_0.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !1667
  store i32 %13, ptr %dst.i68, align 4, !noalias !1667
  %14 = add i64 %state.sroa.27.2.lcssa, %_8.i70
  %_9.i71 = getelementptr inbounds nuw i8, ptr %state.sroa.9.2.lcssa, i64 4
  br label %bb3

bb22:                                             ; preds = %bb21
  %15 = shl i64 %state.sroa.27.2.lcssa, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.0, ptr nonnull align 4 %scratch.0, i64 %15, i1 false)
  %_63 = sub i64 %v.1, %state.sroa.27.2.lcssa
  %_9798.not = icmp eq i64 %v.1, %state.sroa.27.2.lcssa
  br i1 %_9798.not, label %bb30, label %bb42.lr.ph

bb42.lr.ph:                                       ; preds = %bb22
  %16 = getelementptr i32, ptr %v.0, i64 %state.sroa.27.2.lcssa
  %xtraiter = and i64 %_63, 3
  %17 = sub i64 %state.sroa.27.2.lcssa, %v.1
  %18 = icmp ugt i64 %17, -4
  br i1 %18, label %bb30.loopexit.unr-lcssa, label %bb42.lr.ph.new

bb42.lr.ph.new:                                   ; preds = %bb42.lr.ph
  %unroll_iter = and i64 %_63, -4
  %invariant.gep = getelementptr i8, ptr %16, i64 4
  %invariant.gep114 = getelementptr i8, ptr %16, i64 8
  %invariant.gep116 = getelementptr i8, ptr %16, i64 12
  br label %bb42

bb42:                                             ; preds = %bb42, %bb42.lr.ph.new
  %iter.sroa.0.099 = phi i64 [ 0, %bb42.lr.ph.new ], [ %29, %bb42 ]
  %niter = phi i64 [ 0, %bb42.lr.ph.new ], [ %niter.next.3, %bb42 ]
  %19 = getelementptr i32, ptr %16, i64 %iter.sroa.0.099
  %20 = xor i64 %iter.sroa.0.099, -1
  %21 = getelementptr i32, ptr %_86, i64 %20
  %22 = load i32, ptr %21, align 4
  store i32 %22, ptr %19, align 4
  %gep = getelementptr i32, ptr %invariant.gep, i64 %iter.sroa.0.099
  %23 = xor i64 %iter.sroa.0.099, -2
  %24 = getelementptr i32, ptr %_86, i64 %23
  %25 = load i32, ptr %24, align 4
  store i32 %25, ptr %gep, align 4
  %gep115 = getelementptr i32, ptr %invariant.gep114, i64 %iter.sroa.0.099
  %26 = xor i64 %iter.sroa.0.099, -3
  %27 = getelementptr i32, ptr %_86, i64 %26
  %28 = load i32, ptr %27, align 4
  store i32 %28, ptr %gep115, align 4
  %29 = add nuw i64 %iter.sroa.0.099, 4
  %gep117 = getelementptr i32, ptr %invariant.gep116, i64 %iter.sroa.0.099
  %30 = xor i64 %iter.sroa.0.099, -4
  %31 = getelementptr i32, ptr %_86, i64 %30
  %32 = load i32, ptr %31, align 4
  store i32 %32, ptr %gep117, align 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %bb30.loopexit.unr-lcssa, label %bb42

bb30.loopexit.unr-lcssa:                          ; preds = %bb42, %bb42.lr.ph
  %iter.sroa.0.099.unr = phi i64 [ 0, %bb42.lr.ph ], [ %29, %bb42 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb30, label %bb42.epil

bb42.epil:                                        ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil
  %iter.sroa.0.099.epil = phi i64 [ %33, %bb42.epil ], [ %iter.sroa.0.099.unr, %bb30.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb42.epil ], [ 0, %bb30.loopexit.unr-lcssa ]
  %33 = add nuw i64 %iter.sroa.0.099.epil, 1
  %34 = getelementptr i32, ptr %16, i64 %iter.sroa.0.099.epil
  %35 = xor i64 %iter.sroa.0.099.epil, -1
  %36 = getelementptr i32, ptr %_86, i64 %35
  %37 = load i32, ptr %36, align 4
  store i32 %37, ptr %34, align 4
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !1670

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::PartitionState<T>::partition_one
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define noundef ptr @"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h72ead2ed09a21376E"(ptr noalias noundef align 8 captures(none) dereferenceable(32) %self, i1 noundef zeroext %towards_left) unnamed_addr #12 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 24
  %self1 = load ptr, ptr %0, align 8, !noundef !11
  %1 = getelementptr inbounds i8, ptr %self1, i64 -4
  store ptr %1, ptr %0, align 8
  %2 = load ptr, ptr %self, align 8
  %dst_base.sroa.0.0 = select i1 %towards_left, ptr %2, ptr %1
  %3 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %3, align 8, !noundef !11
  %dst = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0, i64 %count
  %4 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %src = load ptr, ptr %4, align 8, !noundef !11
  %5 = load i32, ptr %src, align 4
  store i32 %5, ptr %dst, align 4
  %_8 = zext i1 %towards_left to i64
  %6 = add i64 %count, %_8
  store i64 %6, ptr %3, align 8
  %_9 = getelementptr inbounds nuw i8, ptr %src, i64 4
  store ptr %_9, ptr %4, align 8
  ret ptr %dst
}

; core::slice::sort::stable::quicksort::quicksort
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17hbf9e74c21b061636E(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #8 {
start:
  %pivot_copy = alloca [4 x i8], align 4
  %_83238 = icmp samesign ult i64 %1, 33
  br i1 %_83238, label %bb3, label %bb5.lr.ph

bb5.lr.ph:                                        ; preds = %start, %bb28
  %v.sroa.0.0.ph42 = phi ptr [ %_54, %bb28 ], [ %0, %start ]
  %v.sroa.16.0.ph41 = phi i64 [ %new_len, %bb28 ], [ %1, %start ]
  %limit.sroa.0.0.ph40 = phi i32 [ %4, %bb28 ], [ %2, %start ]
  %left_ancestor_pivot.sroa.0.0.ph39 = phi ptr [ null, %bb28 ], [ %3, %start ]
  %.not = icmp eq ptr %left_ancestor_pivot.sroa.0.0.ph39, null
  %.sink77 = ptrtoint ptr %v.sroa.0.0.ph42 to i64
  br label %bb5

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17ha1c23a35b9943d9bE.exit"
  %v.sroa.16.034 = phi i64 [ %v.sroa.16.0.ph41, %bb5.lr.ph ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17ha1c23a35b9943d9bE.exit" ]
  %limit.sroa.0.033 = phi i32 [ %limit.sroa.0.0.ph40, %bb5.lr.ph ], [ %4, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17ha1c23a35b9943d9bE.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.033, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17ha1c23a35b9943d9bE.exit", %start
  %v.sroa.0.0.ph.lcssa31 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph42, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17ha1c23a35b9943d9bE.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17ha1c23a35b9943d9bE.exit" ], [ %new_len, %bb28 ]
; call core::slice::sort::shared::smallsort::small_sort_general_with_scratch
  call void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h073f17f73449f968E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph.lcssa31, i64 noundef range(i64 0, 33) %v.sroa.16.0.lcssa, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias nonnull align 8 poison)
  br label %bb22

bb7:                                              ; preds = %bb5
  %4 = add i32 %limit.sroa.0.033, -1
  %len_div_84.i = lshr i64 %v.sroa.16.034, 3
  %b.idx.i = shl nuw nsw i64 %len_div_84.i, 4
  %b.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph42, i64 %b.idx.i
  %c.idx.i = mul nuw nsw i64 %len_div_84.i, 28
  %c.i = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph42, i64 %c.idx.i
  %_12.i = icmp samesign ult i64 %v.sroa.16.034, 64
  br i1 %_12.i, label %bb3.i, label %bb5.i

bb5.i:                                            ; preds = %bb7
; call core::slice::sort::shared::pivot::median3_rec
  %self.i = call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h3615cb3e2a78557bE(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph42, ptr noundef nonnull readonly %b.i, ptr noundef nonnull readonly %c.i, i64 noundef %len_div_84.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less)
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17ha891ac9f7fed5c82E.exit

bb3.i:                                            ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !1671)
  call void @llvm.experimental.noalias.scope.decl(metadata !1674)
  call void @llvm.experimental.noalias.scope.decl(metadata !1676), !noalias !1679
  call void @llvm.experimental.noalias.scope.decl(metadata !1682), !noalias !1679
  call void @llvm.experimental.noalias.scope.decl(metadata !1684), !noalias !1679
  call void @llvm.experimental.noalias.scope.decl(metadata !1687), !noalias !1679
  call void @llvm.experimental.noalias.scope.decl(metadata !1689), !noalias !1679
  call void @llvm.experimental.noalias.scope.decl(metadata !1692), !noalias !1679
  %_3.i.i.i.i.i = load i32, ptr %v.sroa.0.0.ph42, align 4, !alias.scope !1694, !noalias !1697, !noundef !11
  %_4.i.i.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !1699, !noalias !1700, !noundef !11
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_4.i.i.i.i6.i = load i32, ptr %c.i, align 4, !alias.scope !1701, !noalias !1710, !noundef !11
  %_0.i7.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i6.i
  %5 = xor i1 %_0.i.i, %_0.i7.i
  %_0.i10.i = icmp slt i32 %_4.i.i.i.i.i, %_4.i.i.i.i6.i
  %_12.i.i = xor i1 %_0.i.i, %_0.i10.i
  %c.b.i.i = select i1 %_12.i.i, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %5, ptr %v.sroa.0.0.ph42, ptr %c.b.i.i
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17ha891ac9f7fed5c82E.exit

_ZN4core5slice4sort6shared5pivot12choose_pivot17ha891ac9f7fed5c82E.exit: ; preds = %bb5.i, %bb3.i
  %self.i.sink = phi ptr [ %self.i, %bb5.i ], [ %_0.sroa.0.0.i.i, %bb3.i ]
  %6 = ptrtoint ptr %self.i.sink to i64
  %7 = sub nuw i64 %6, %.sink77
  %index.sroa.0.0.i = lshr exact i64 %7, 2
  %cond.i = icmp samesign ult i64 %index.sroa.0.0.i, %v.sroa.16.034
  call void @llvm.assume(i1 %cond.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pivot_copy)
  %src = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph42, i64 %7
  %value = load i32, ptr %src, align 4, !noundef !11
  store i32 %value, ptr %pivot_copy, align 4
  br i1 %.not, label %bb14, label %bb12

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call void @_ZN4core5slice4sort6stable5drift4sort17h8e47ce351825f72dE(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb22

bb12:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17ha891ac9f7fed5c82E.exit
  %_3.i.i.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph39, align 4, !alias.scope !1715, !noalias !1724, !noundef !11
  %_0.i.not = icmp slt i32 %_3.i.i.i.i, %value
  br i1 %_0.i.not, label %bb14, label %bb16

bb14:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17ha891ac9f7fed5c82E.exit, %bb12
; call core::slice::sort::stable::quicksort::stable_partition
  %8 = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17hf9e43994fb201158E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext false, ptr noalias align 8 poison)
  %9 = icmp eq i64 %8, 0
  br label %bb16

bb16:                                             ; preds = %bb14, %bb12
  %left_partition_len.sroa.0.0 = phi i64 [ 0, %bb12 ], [ %8, %bb14 ]
  %perform_equal_partition.sroa.0.0.in = phi i1 [ true, %bb12 ], [ %9, %bb14 ]
  br i1 %perform_equal_partition.sroa.0.0.in, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %left_partition_len.sroa.0.0, %v.sroa.16.034
  br i1 %_6.not.i, label %bb3.i23, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17ha1c23a35b9943d9bE.exit", !prof !14

bb3.i23:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #32, !noalias !1729
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17ha1c23a35b9943d9bE.exit": ; preds = %bb19
  %10 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph42, i64 %left_partition_len.sroa.0.0
  %11 = sub nuw nsw i64 %v.sroa.16.034, %left_partition_len.sroa.0.0
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hbf9e74c21b061636E(ptr noalias noundef nonnull align 4 %10, i64 noundef %11, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %4, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef align 8 dereferenceable(8) %is_less) #33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %left_partition_len.sroa.0.0, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb16
; call core::slice::sort::stable::quicksort::stable_partition
  %mid_eq = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17hae9a490fc7b9c533E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext true, ptr noalias align 8 poison)
  %_47 = icmp ugt i64 %mid_eq, %v.sroa.16.034
  br i1 %_47, label %bb27, label %bb28, !prof !14

bb28:                                             ; preds = %bb17
  %new_len = sub nuw i64 %v.sroa.16.034, %mid_eq
  %_54 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph42, i64 %mid_eq
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_832 = icmp ult i64 %new_len, 33
  br i1 %_832, label %bb3, label %bb5.lr.ph

bb27:                                             ; preds = %bb17
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef %mid_eq, i64 noundef %v.sroa.16.034, i64 noundef %v.sroa.16.034, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0766b232215672ee1bd2195fdb153938) #32
  unreachable

bb22:                                             ; preds = %bb3, %bb6
  ret void
}

; core::slice::index::range
; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_ZN4core5slice5index5range17h2ea26939d47998d4E(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(32) %range, i64 noundef %bounds, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %1 = getelementptr inbounds nuw i8, ptr %range, i64 16
  %_0.0.i = load i64, ptr %1, align 8, !range !1733, !alias.scope !1734, !noundef !11
  %2 = getelementptr inbounds nuw i8, ptr %range, i64 24
  %_0.1.i = load ptr, ptr %2, align 8, !alias.scope !1734
  switch i64 %_0.0.i, label %default.unreachable20 [
    i64 0, label %bb5
    i64 1, label %bb4
    i64 2, label %bb10
  ]

default.unreachable20:                            ; preds = %bb10, %start
  unreachable

bb5:                                              ; preds = %start
  %3 = icmp ne ptr %_0.1.i, null
  tail call void @llvm.assume(i1 %3)
  %end3 = load i64, ptr %_0.1.i, align 8, !noundef !11
  %_7.not = icmp ult i64 %end3, %bounds
  br i1 %_7.not, label %bb7, label %bb6, !prof !1737

bb4:                                              ; preds = %start
  %4 = icmp ne ptr %_0.1.i, null
  tail call void @llvm.assume(i1 %4)
  %5 = load i64, ptr %_0.1.i, align 8, !noundef !11
  %_10 = icmp ugt i64 %5, %bounds
  br i1 %_10, label %bb8, label %bb10, !prof !14

bb7:                                              ; preds = %bb5
  %6 = add i64 %end3, 1
  br label %bb10

bb6:                                              ; preds = %bb5
; call core::slice::index::slice_index_fail
  tail call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef 0, i64 noundef %end3, i64 noundef %bounds, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) #29
  unreachable

bb10:                                             ; preds = %start, %bb4, %bb7
  %end.sroa.0.0 = phi i64 [ %6, %bb7 ], [ %5, %bb4 ], [ %bounds, %start ]
  %_0.0.i18 = load i64, ptr %range, align 8, !range !1733, !alias.scope !1738, !noundef !11
  %7 = getelementptr inbounds nuw i8, ptr %range, i64 8
  %_0.1.i19 = load ptr, ptr %7, align 8, !alias.scope !1738
  switch i64 %_0.0.i18, label %default.unreachable20 [
    i64 0, label %bb13
    i64 1, label %bb14
    i64 2, label %bb19
  ]

bb8:                                              ; preds = %bb4
; call core::slice::index::slice_index_fail
  tail call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef 0, i64 noundef %5, i64 noundef %bounds, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) #29
  unreachable

bb13:                                             ; preds = %bb10
  %8 = icmp ne ptr %_0.1.i19, null
  tail call void @llvm.assume(i1 %8)
  %9 = load i64, ptr %_0.1.i19, align 8, !noundef !11
  %_20 = icmp ugt i64 %9, %end.sroa.0.0
  br i1 %_20, label %bb17, label %bb19, !prof !14

bb14:                                             ; preds = %bb10
  %10 = icmp ne ptr %_0.1.i19, null
  tail call void @llvm.assume(i1 %10)
  %start7 = load i64, ptr %_0.1.i19, align 8, !noundef !11
  %_16.not = icmp ult i64 %start7, %end.sroa.0.0
  br i1 %_16.not, label %bb16, label %bb15, !prof !1737

bb17:                                             ; preds = %bb13
; call core::slice::index::slice_index_fail
  tail call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef %9, i64 noundef %end.sroa.0.0, i64 noundef %bounds, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) #29
  unreachable

bb19:                                             ; preds = %bb10, %bb13, %bb16
  %start1.sroa.0.0 = phi i64 [ %9, %bb13 ], [ %13, %bb16 ], [ 0, %bb10 ]
  %11 = insertvalue { i64, i64 } poison, i64 %start1.sroa.0.0, 0
  %12 = insertvalue { i64, i64 } %11, i64 %end.sroa.0.0, 1
  ret { i64, i64 } %12

bb16:                                             ; preds = %bb14
  %13 = add i64 %start7, 1
  br label %bb19

bb15:                                             ; preds = %bb14
; call core::slice::index::slice_index_fail
  tail call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef %start7, i64 noundef %end.sroa.0.0, i64 noundef %bounds, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) #29
  unreachable
}

; alloc::vec::Vec<T,A>::extend_trusted
; Function Attrs: nonlazybind uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h4dfb4dd7ccd3d3bbE"(ptr noalias noundef align 8 dereferenceable(24) %self, ptr noalias noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %_7.i.i = load ptr, ptr %1, align 8, !alias.scope !1741, !noalias !1744, !nonnull !11, !noundef !11
  %_8.i.i = load ptr, ptr %0, align 8, !alias.scope !1741, !noalias !1744, !nonnull !11, !noundef !11
  %2 = ptrtoint ptr %_7.i.i to i64
  %3 = ptrtoint ptr %_8.i.i to i64
  %4 = sub nuw i64 %2, %3
; call alloc::vec::Vec<T,A>::reserve
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd7d983ab73297baaE"(ptr noalias noundef align 8 dereferenceable(24) %self, i64 noundef %4)
  %5 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_26 = load ptr, ptr %5, align 8, !nonnull !11, !noundef !11
  %len = getelementptr inbounds nuw i8, ptr %self, i64 16
  %_27 = load i64, ptr %len, align 8, !noundef !11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1749)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1752)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1755)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1758)
  br label %bb1.i.i.i.i

bb1.i.i.i.i:                                      ; preds = %bb3.i.i.i.i, %start
  %f.sroa.4.0.i.i.i = phi i64 [ %_27, %start ], [ %6, %bb3.i.i.i.i ]
  %_18.i.i5.i.i.i.i = phi ptr [ %_8.i.i, %start ], [ %_18.i.i4.i.i.i.i, %bb3.i.i.i.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1761)
  %_7.i.i.i.i.i.i = icmp eq ptr %_18.i.i5.i.i.i.i, %_7.i.i
  br i1 %_7.i.i.i.i.i.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E.exit.i.i.i.i.i", label %bb6.i.i.i.i.i.i

bb6.i.i.i.i.i.i:                                  ; preds = %bb1.i.i.i.i
  %_18.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %_18.i.i5.i.i.i.i, i64 1
  store ptr %_18.i.i.i.i.i.i, ptr %0, align 8, !alias.scope !1764, !noalias !1767
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E.exit.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E.exit.i.i.i.i.i": ; preds = %bb6.i.i.i.i.i.i, %bb1.i.i.i.i
  %_18.i.i4.i.i.i.i = phi ptr [ %_18.i.i.i.i.i.i, %bb6.i.i.i.i.i.i ], [ %_18.i.i5.i.i.i.i, %bb1.i.i.i.i ]
  %_0.sroa.0.0.i.i.i.i.i.i = phi ptr [ %_18.i.i5.i.i.i.i, %bb6.i.i.i.i.i.i ], [ null, %bb1.i.i.i.i ]
  %.not.i.not.i.i.i.i = icmp eq ptr %_0.sroa.0.0.i.i.i.i.i.i, null
  br i1 %.not.i.not.i.i.i.i, label %"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE.exit.i.i.i.i", label %bb5.i.i.i.i.i

bb5.i.i.i.i.i:                                    ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E.exit.i.i.i.i.i"
  %v.i.i.i.i.i = load i8, ptr %_0.sroa.0.0.i.i.i.i.i.i, align 1, !noalias !1772, !noundef !11
  br label %"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE.exit.i.i.i.i"

"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE.exit.i.i.i.i": ; preds = %bb5.i.i.i.i.i, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E.exit.i.i.i.i.i"
  %_0.sroa.3.0.i.i.i.i.i = phi i8 [ %v.i.i.i.i.i, %bb5.i.i.i.i.i ], [ undef, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E.exit.i.i.i.i.i" ]
  br i1 %.not.i.not.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator8for_each17h3fc7c7948201a0e0E.exit, label %bb3.i.i.i.i

bb3.i.i.i.i:                                      ; preds = %"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE.exit.i.i.i.i"
  %_3.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %_26, i64 %f.sroa.4.0.i.i.i
  store i8 %_0.sroa.3.0.i.i.i.i.i, ptr %_3.i.i.i.i.i.i.i, align 1, !noalias !1773
  %6 = add i64 %f.sroa.4.0.i.i.i, 1
  br label %bb1.i.i.i.i

_ZN4core4iter6traits8iterator8Iterator8for_each17h3fc7c7948201a0e0E.exit: ; preds = %"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE.exit.i.i.i.i"
  store i64 %f.sroa.4.0.i.i.i, ptr %len, align 8, !noalias !1780
  ret void
}

; alloc::vec::Vec<T,A>::drain
; Function Attrs: nonlazybind uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5drain17hb3139aeca7b0e77fE"(ptr dead_on_unwind noalias noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %_0, ptr noalias noundef align 8 dereferenceable(24) %self, ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(32) %range) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %len1 = load i64, ptr %0, align 8, !noundef !11
  %_15 = icmp sgt i64 %len1, -1
  tail call void @llvm.assume(i1 %_15)
; call core::slice::index::range
  %1 = tail call { i64, i64 } @_ZN4core5slice5index5range17h2ea26939d47998d4E(ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %range, i64 noundef %len1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_c66764e78d07cfd97cd1ec1962f8a17a)
  %_6.0 = extractvalue { i64, i64 } %1, 0
  %_6.1 = extractvalue { i64, i64 } %1, 1
  store i64 %_6.0, ptr %0, align 8
  %2 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_23 = load ptr, ptr %2, align 8, !nonnull !11, !noundef !11
  %3 = getelementptr inbounds nuw i8, ptr %_23, i64 %_6.0
  %_12 = sub i64 %len1, %_6.1
  %_30 = getelementptr inbounds nuw i8, ptr %_23, i64 %_6.1
  %4 = getelementptr inbounds nuw i8, ptr %_0, i64 24
  store i64 %_6.1, ptr %4, align 8
  %5 = getelementptr inbounds nuw i8, ptr %_0, i64 32
  store i64 %_12, ptr %5, align 8
  store ptr %3, ptr %_0, align 8
  %6 = getelementptr inbounds nuw i8, ptr %_0, i64 8
  store ptr %_30, ptr %6, align 8
  %7 = getelementptr inbounds nuw i8, ptr %_0, i64 16
  store ptr %self, ptr %7, align 8
  ret void
}

; alloc::vec::splice::<impl alloc::vec::drain::Drain<T,A>>::fill
; Function Attrs: nofree norecurse nosync nounwind nonlazybind uwtable
define noundef zeroext i1 @"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17h7d2ad50295d8fe52E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %self, ptr noalias noundef align 8 captures(none) dereferenceable(32) %replace_with) unnamed_addr #11 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %_20 = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11
  %1 = getelementptr inbounds nuw i8, ptr %_20, i64 16
  %range_start = load i64, ptr %1, align 8, !noundef !11
  %2 = getelementptr inbounds nuw i8, ptr %self, i64 24
  %range_end = load i64, ptr %2, align 8, !noundef !11
  %3 = getelementptr inbounds nuw i8, ptr %_20, i64 8
  %_21 = load ptr, ptr %3, align 8, !nonnull !11, !noundef !11
  %4 = getelementptr inbounds nuw i8, ptr %_21, i64 %range_end
  %_8.i5.not = icmp samesign eq i64 %range_start, %range_end
  br i1 %_8.i5.not, label %bb9, label %bb4.lr.ph

bb4.lr.ph:                                        ; preds = %start
  %data = getelementptr inbounds nuw i8, ptr %_21, i64 %range_start
  %spec.select7 = getelementptr inbounds nuw i8, ptr %data, i64 1
  %_14.i = getelementptr inbounds nuw i8, ptr %replace_with, i64 24
  %5 = getelementptr inbounds nuw i8, ptr %replace_with, i64 8
  br label %bb4

bb4:                                              ; preds = %bb4.lr.ph, %bb7
  %spec.select10 = phi ptr [ %spec.select7, %bb4.lr.ph ], [ %spec.select, %bb7 ]
  %iter.sroa.0.08 = phi ptr [ %data, %bb4.lr.ph ], [ %spec.select10, %bb7 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1791)
  %_12.i = load ptr, ptr %_14.i, align 8, !alias.scope !1791, !nonnull !11, !noundef !11
  %_21.i = load ptr, ptr %5, align 8, !alias.scope !1791, !nonnull !11, !noundef !11
  %_9.i.not.not.not = icmp ne ptr %_21.i, %_12.i
  br i1 %_9.i.not.not.not, label %bb6.i2, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a39a3184624d2fbE.exit"

bb6.i2:                                           ; preds = %bb4
  %_23.i = getelementptr inbounds nuw i8, ptr %_21.i, i64 1
  store ptr %_23.i, ptr %5, align 8, !alias.scope !1791
  %_17.i = load i8, ptr %_21.i, align 1, !noalias !1791, !noundef !11
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a39a3184624d2fbE.exit"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a39a3184624d2fbE.exit": ; preds = %bb4, %bb6.i2
  %_0.sroa.3.0.i = phi i8 [ %_17.i, %bb6.i2 ], [ undef, %bb4 ]
  br i1 %_9.i.not.not.not, label %bb7, label %bb9

bb9:                                              ; preds = %bb7, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a39a3184624d2fbE.exit", %start
  %not._8.i = phi i1 [ true, %start ], [ %_9.i.not.not.not, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a39a3184624d2fbE.exit" ], [ %_9.i.not.not.not, %bb7 ]
  ret i1 %not._8.i

bb7:                                              ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a39a3184624d2fbE.exit"
  store i8 %_0.sroa.3.0.i, ptr %iter.sroa.0.08, align 1
  %6 = load i64, ptr %1, align 8, !noundef !11
  %7 = add i64 %6, 1
  store i64 %7, ptr %1, align 8
  %_8.i = icmp ne ptr %spec.select10, %4
  %spec.select.idx = zext i1 %_8.i to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %spec.select10, i64 %spec.select.idx
  br i1 %_8.i, label %bb4, label %bb9
}

; alloc::vec::splice::<impl alloc::vec::drain::Drain<T,A>>::fill
; Function Attrs: nofree norecurse nosync nounwind nonlazybind uwtable
define noundef zeroext i1 @"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17he13ad3707454ee2fE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %self, ptr noalias noundef align 8 captures(none) dereferenceable(16) %replace_with) unnamed_addr #11 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %_20 = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11
  %1 = getelementptr inbounds nuw i8, ptr %_20, i64 16
  %range_start = load i64, ptr %1, align 8, !noundef !11
  %2 = getelementptr inbounds nuw i8, ptr %self, i64 24
  %range_end = load i64, ptr %2, align 8, !noundef !11
  %3 = getelementptr inbounds nuw i8, ptr %_20, i64 8
  %_21 = load ptr, ptr %3, align 8, !nonnull !11, !noundef !11
  %4 = getelementptr inbounds nuw i8, ptr %_21, i64 %range_end
  %_8.i6.not = icmp samesign eq i64 %range_start, %range_end
  br i1 %_8.i6.not, label %bb9, label %bb4.lr.ph

bb4.lr.ph:                                        ; preds = %start
  %data = getelementptr inbounds nuw i8, ptr %_21, i64 %range_start
  %spec.select8 = getelementptr inbounds nuw i8, ptr %data, i64 1
  %replace_with.promoted = load ptr, ptr %replace_with, align 8
  %5 = getelementptr inbounds nuw i8, ptr %replace_with, i64 8
  br label %bb4

bb4:                                              ; preds = %bb4.lr.ph, %bb7
  %spec.select12 = phi ptr [ %spec.select8, %bb4.lr.ph ], [ %spec.select, %bb7 ]
  %iter.sroa.0.010 = phi ptr [ %data, %bb4.lr.ph ], [ %spec.select12, %bb7 ]
  %_18.i.i59 = phi ptr [ %replace_with.promoted, %bb4.lr.ph ], [ %_18.i.i4, %bb7 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1794)
  %end_or_len.i.i = load ptr, ptr %5, align 8, !alias.scope !1797, !nonnull !11, !noundef !11
  %_7.i.i = icmp eq ptr %_18.i.i59, %end_or_len.i.i
  br i1 %_7.i.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E.exit.i", label %bb6.i.i

bb6.i.i:                                          ; preds = %bb4
  %_18.i.i = getelementptr inbounds nuw i8, ptr %_18.i.i59, i64 1
  store ptr %_18.i.i, ptr %replace_with, align 8, !alias.scope !1797
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E.exit.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E.exit.i": ; preds = %bb6.i.i, %bb4
  %_18.i.i4 = phi ptr [ %_18.i.i, %bb6.i.i ], [ %_18.i.i59, %bb4 ]
  %_0.sroa.0.0.i.i = phi ptr [ %_18.i.i59, %bb6.i.i ], [ null, %bb4 ]
  %.not.i.not.not.not = icmp ne ptr %_0.sroa.0.0.i.i, null
  br i1 %.not.i.not.not.not, label %bb5.i, label %"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE.exit"

bb5.i:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E.exit.i"
  %v.i = load i8, ptr %_0.sroa.0.0.i.i, align 1, !noalias !1794, !noundef !11
  br label %"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE.exit"

"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE.exit": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E.exit.i", %bb5.i
  %_0.sroa.3.0.i = phi i8 [ %v.i, %bb5.i ], [ undef, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E.exit.i" ]
  br i1 %.not.i.not.not.not, label %bb7, label %bb9

bb9:                                              ; preds = %bb7, %"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE.exit", %start
  %not._8.i = phi i1 [ true, %start ], [ %.not.i.not.not.not, %"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE.exit" ], [ %.not.i.not.not.not, %bb7 ]
  ret i1 %not._8.i

bb7:                                              ; preds = %"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE.exit"
  store i8 %_0.sroa.3.0.i, ptr %iter.sroa.0.010, align 1
  %6 = load i64, ptr %1, align 8, !noundef !11
  %7 = add i64 %6, 1
  store i64 %7, ptr %1, align 8
  %_8.i = icmp ne ptr %spec.select12, %4
  %spec.select.idx = zext i1 %_8.i to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %spec.select12, i64 %spec.select.idx
  br i1 %_8.i, label %bb4, label %bb9
}

; alloc::vec::splice::<impl alloc::vec::drain::Drain<T,A>>::move_tail
; Function Attrs: nonlazybind uwtable
define void @"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h5cacf35e63f71de5E"(ptr noalias noundef align 8 captures(none) dereferenceable(40) %self, i64 noundef %additional) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %_18 = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 24
  %_5 = load i64, ptr %1, align 8, !noundef !11
  %2 = getelementptr inbounds nuw i8, ptr %self, i64 32
  %_6 = load i64, ptr %2, align 8, !noundef !11
  %len = add i64 %_6, %_5
  %self2 = load i64, ptr %_18, align 8, !range !1800, !noundef !11
  %_23 = sub i64 %self2, %len
  %_21 = icmp ugt i64 %additional, %_23
  br i1 %_21, label %bb1, label %bb2, !prof !14

bb2:                                              ; preds = %bb1, %start
  %new_tail_start = add i64 %_5, %additional
  %3 = getelementptr inbounds nuw i8, ptr %_18, i64 8
  %_29 = load ptr, ptr %3, align 8, !nonnull !11, !noundef !11
  %src = getelementptr inbounds nuw i8, ptr %_29, i64 %_5
  %dst = getelementptr inbounds nuw i8, ptr %_29, i64 %new_tail_start
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %dst, ptr nonnull align 1 %src, i64 %_6, i1 false)
  store i64 %new_tail_start, ptr %1, align 8
  ret void

bb1:                                              ; preds = %start
; call alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
  tail call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h3fb8db3e79fd71d4E"(ptr noalias noundef align 8 dereferenceable(16) %_18, i64 noundef %len, i64 noundef %additional, i64 noundef 1, i64 noundef 1)
  br label %bb2
}

; alloc::vec::into_iter::IntoIter<T,A>::as_raw_mut_slice
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$16as_raw_mut_slice17he263b6417d157a6eE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %self) unnamed_addr #13 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %self1 = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11
  %_22 = getelementptr inbounds nuw i8, ptr %self, i64 24
  %_20 = load ptr, ptr %_22, align 8, !nonnull !11, !noundef !11
  %1 = ptrtoint ptr %_20 to i64
  %2 = ptrtoint ptr %self1 to i64
  %3 = sub nuw i64 %1, %2
  %4 = insertvalue { ptr, i64 } poison, ptr %self1, 0
  %5 = insertvalue { ptr, i64 } %4, i64 %3, 1
  ret { ptr, i64 } %5
}

; alloc::slice::<impl core::slice::sort::stable::BufGuard<T> for alloc::vec::Vec<T>>::with_capacity
; Function Attrs: nonlazybind uwtable
define void @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h47ff7f189d415ff6E"(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, i64 noundef %capacity) unnamed_addr #0 {
start:
  %_4.i = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i)
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i, i64 noundef %capacity, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %_5.i = load i64, ptr %_4.i, align 8, !range !12, !noundef !11
  %0 = trunc nuw i64 %_5.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i, i64 8
  %err.0.i = load i64, ptr %1, align 8, !range !13, !noundef !11
  %2 = getelementptr inbounds nuw i8, ptr %_4.i, i64 16
  br i1 %0, label %bb3.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h0c8f4b8bb02748e6E.exit", !prof !14

bb3.i:                                            ; preds = %start
  %err.1.i = load i64, ptr %2, align 8
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i, i64 %err.1.i) #29
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h0c8f4b8bb02748e6E.exit": ; preds = %start
  %this.1.i = load ptr, ptr %2, align 8, !nonnull !11, !noundef !11
  %_7.i = icmp ule i64 %capacity, %err.0.i
  tail call void @llvm.assume(i1 %_7.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i)
  store i64 %err.0.i, ptr %_0, align 8
  %3 = getelementptr inbounds nuw i8, ptr %_0, i64 8
  store ptr %this.1.i, ptr %3, align 8
  %4 = getelementptr inbounds nuw i8, ptr %_0, i64 16
  store i64 0, ptr %4, align 8
  ret void
}

; alloc::slice::<impl core::slice::sort::stable::BufGuard<T> for alloc::vec::Vec<T>>::as_uninit_slice_mut
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$19as_uninit_slice_mut17h4f28b0372a6120c9E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #13 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_10 = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %1, align 8, !noundef !11
  %_3 = getelementptr inbounds nuw i32, ptr %_10, i64 %count
  %self1 = load i64, ptr %self, align 8, !range !1800, !noundef !11
  %len = sub i64 %self1, %count
  %2 = insertvalue { ptr, i64 } poison, ptr %_3, 0
  %3 = insertvalue { ptr, i64 } %2, i64 %len, 1
  ret { ptr, i64 } %3
}

; alloc::string::String::replace_range
; Function Attrs: nonlazybind uwtable
define void @_ZN5alloc6string6String13replace_range17h664d473e476aaa46E(ptr noalias noundef align 8 dereferenceable(24) %self, i64 noundef %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %replace_with.0, i64 noundef %replace_with.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_30 = alloca [32 x i8], align 8
  %_28 = alloca [56 x i8], align 8
  %range = alloca [16 x i8], align 8
  store i64 %0, ptr %range, align 8
  %3 = getelementptr inbounds nuw i8, ptr %range, i64 8
  store i64 %1, ptr %3, align 8
  %4 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_49 = load ptr, ptr %4, align 8, !nonnull !11, !noundef !11
  %5 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %len = load i64, ptr %5, align 8, !noundef !11
  %_54 = icmp eq i64 %0, 0
  br i1 %_54, label %bb5, label %bb30

bb30:                                             ; preds = %start
  %_55.not = icmp ult i64 %0, %len
  br i1 %_55.not, label %bb33, label %bb31

bb31:                                             ; preds = %bb30
  %6 = icmp eq i64 %0, %len
  br label %bb34

bb33:                                             ; preds = %bb30
  %7 = getelementptr inbounds nuw i8, ptr %_49, i64 %0
  %self2 = load i8, ptr %7, align 1, !noundef !11
  %8 = icmp sgt i8 %self2, -65
  br label %bb34

bb34:                                             ; preds = %bb31, %bb33
  %_8.sroa.0.0.in = phi i1 [ %6, %bb31 ], [ %8, %bb33 ]
  br i1 %_8.sroa.0.0.in, label %bb5, label %bb6, !prof !1737

bb6:                                              ; preds = %bb34
; call core::panicking::panic
  tail call void @_ZN4core9panicking5panic17ha2e20a73227bb72eE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @alloc_92ed622ad60a8e3eb42de5b155ee835e, i64 noundef 42, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #29
  unreachable

bb5:                                              ; preds = %start, %bb34
  %_93 = icmp eq i64 %1, 0
  br i1 %_93, label %bb15, label %bb54

bb54:                                             ; preds = %bb5
  %_94.not = icmp ult i64 %1, %len
  br i1 %_94.not, label %bb57, label %bb55

bb55:                                             ; preds = %bb54
  %9 = icmp eq i64 %1, %len
  br label %bb58

bb57:                                             ; preds = %bb54
  %10 = getelementptr inbounds nuw i8, ptr %_49, i64 %1
  %self15 = load i8, ptr %10, align 1, !noundef !11
  %11 = icmp sgt i8 %self15, -65
  br label %bb58

bb58:                                             ; preds = %bb55, %bb57
  %_25.sroa.0.0.in = phi i1 [ %9, %bb55 ], [ %11, %bb57 ]
  br i1 %_25.sroa.0.0.in, label %bb15, label %bb16, !prof !1737

bb16:                                             ; preds = %bb58
; call core::panicking::panic
  tail call void @_ZN4core9panicking5panic17ha2e20a73227bb72eE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @alloc_92ed622ad60a8e3eb42de5b155ee835e, i64 noundef 42, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #29
  unreachable

bb15:                                             ; preds = %bb5, %bb58
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %_28)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %_30)
  store i64 0, ptr %_30, align 8
  %12 = getelementptr inbounds nuw i8, ptr %_30, i64 8
  store ptr %range, ptr %12, align 8
  %13 = getelementptr inbounds nuw i8, ptr %_30, i64 16
  store i64 1, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %_30, i64 24
  store ptr %3, ptr %14, align 8
  %_106 = getelementptr inbounds nuw i8, ptr %replace_with.0, i64 %replace_with.1
  call void @llvm.experimental.noalias.scope.decl(metadata !1801)
  call void @llvm.experimental.noalias.scope.decl(metadata !1804)
  call void @llvm.experimental.noalias.scope.decl(metadata !1806)
  %_15.i.i = icmp sgt i64 %len, -1
  call void @llvm.assume(i1 %_15.i.i)
; call core::slice::index::range
  %15 = call { i64, i64 } @_ZN4core5slice5index5range17h2ea26939d47998d4E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %_30, i64 noundef %len, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_c66764e78d07cfd97cd1ec1962f8a17a), !noalias !1809
  %_6.0.i.i = extractvalue { i64, i64 } %15, 0
  %_6.1.i.i = extractvalue { i64, i64 } %15, 1
  store i64 %_6.0.i.i, ptr %5, align 8, !alias.scope !1811, !noalias !1812
  %16 = getelementptr inbounds nuw i8, ptr %_49, i64 %_6.0.i.i
  %_12.i.i = sub i64 %len, %_6.1.i.i
  %_30.i.i = getelementptr inbounds nuw i8, ptr %_49, i64 %_6.1.i.i
  store ptr %16, ptr %_28, align 8, !alias.scope !1801, !noalias !1815
  %_4.sroa.4.0._0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %_28, i64 8
  store ptr %_30.i.i, ptr %_4.sroa.4.0._0.sroa_idx.i, align 8, !alias.scope !1801, !noalias !1815
  %_4.sroa.5.0._0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %_28, i64 16
  store ptr %self, ptr %_4.sroa.5.0._0.sroa_idx.i, align 8, !alias.scope !1801, !noalias !1815
  %_4.sroa.6.0._0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %_28, i64 24
  store i64 %_6.1.i.i, ptr %_4.sroa.6.0._0.sroa_idx.i, align 8, !alias.scope !1801, !noalias !1815
  %_4.sroa.7.0._0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %_28, i64 32
  store i64 %_12.i.i, ptr %_4.sroa.7.0._0.sroa_idx.i, align 8, !alias.scope !1801, !noalias !1815
  %17 = getelementptr inbounds nuw i8, ptr %_28, i64 40
  store ptr %replace_with.0, ptr %17, align 8, !alias.scope !1801, !noalias !1815
  %18 = getelementptr inbounds nuw i8, ptr %_28, i64 48
  store ptr %_106, ptr %18, align 8, !alias.scope !1801, !noalias !1815
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %_30)
  call void @llvm.experimental.noalias.scope.decl(metadata !1816)
; invoke <alloc::vec::splice::Splice<I,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN81_$LT$alloc..vec..splice..Splice$LT$I$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h320c041d738abf6eE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %_28)
          to label %bb4.i unwind label %cleanup.i

cleanup.i:                                        ; preds = %bb15
  %19 = landingpad { ptr, i32 }
          cleanup
; call core::ptr::drop_in_place<alloc::vec::drain::Drain<u8>>
  call fastcc void @"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h762c86ba9763d124E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %_28) #30
  resume { ptr, i32 } %19

bb4.i:                                            ; preds = %bb15
  call void @llvm.experimental.noalias.scope.decl(metadata !1819)
  call void @llvm.experimental.noalias.scope.decl(metadata !1822)
  %iter.0.i.i.i = load ptr, ptr %_28, align 8, !alias.scope !1825, !nonnull !11, !noundef !11
  %iter.1.i.i.i = load ptr, ptr %_4.sroa.4.0._0.sroa_idx.i, align 8, !alias.scope !1825, !nonnull !11, !noundef !11
  store ptr inttoptr (i64 1 to ptr), ptr %_28, align 8, !alias.scope !1825
  store ptr inttoptr (i64 1 to ptr), ptr %_4.sroa.4.0._0.sroa_idx.i, align 8, !alias.scope !1825
  %_15.i.i.i = icmp eq ptr %iter.1.i.i.i, %iter.0.i.i.i
  %_3.i.i.i.i.i = load i64, ptr %_4.sroa.7.0._0.sroa_idx.i, align 8, !alias.scope !1825, !noalias !11, !noundef !11
  %_2.not.i.i.i.i.i = icmp eq i64 %_3.i.i.i.i.i, 0
  br i1 %_15.i.i.i, label %bb3.i.i.i, label %bb40.i.i.i

bb3.i.i.i:                                        ; preds = %bb4.i
  br i1 %_2.not.i.i.i.i.i, label %"_ZN4core3ptr77drop_in_place$LT$alloc..vec..splice..Splice$LT$core..str..iter..Bytes$GT$$GT$17h554f981d45337611E.exit", label %bb1.i.i.i.i.i

bb1.i.i.i.i.i:                                    ; preds = %bb3.i.i.i
  %_22.i.i.i.i.i = load ptr, ptr %_4.sroa.5.0._0.sroa_idx.i, align 8, !alias.scope !1825, !noalias !1826, !nonnull !11, !noundef !11
  %20 = getelementptr inbounds nuw i8, ptr %_22.i.i.i.i.i, i64 16
  %start1.i.i.i.i.i = load i64, ptr %20, align 8, !noalias !1831, !noundef !11
  %_23.i.i.i.i.i = icmp sgt i64 %start1.i.i.i.i.i, -1
  call void @llvm.assume(i1 %_23.i.i.i.i.i)
  %tail.i.i.i.i.i = load i64, ptr %_4.sroa.6.0._0.sroa_idx.i, align 8, !alias.scope !1825, !noalias !1826, !noundef !11
  %_7.not.i.i.i.i.i = icmp eq i64 %tail.i.i.i.i.i, %start1.i.i.i.i.i
  br i1 %_7.not.i.i.i.i.i, label %bb3.i.i.i.i.i, label %bb2.i.i.i.i.i

bb3.i.i.i.i.i:                                    ; preds = %bb2.i.i.i.i.i, %bb1.i.i.i.i.i
  %new_len.i.i.i.i.i = add i64 %start1.i.i.i.i.i, %_3.i.i.i.i.i
  store i64 %new_len.i.i.i.i.i, ptr %20, align 8, !noalias !1831
  br label %"_ZN4core3ptr77drop_in_place$LT$alloc..vec..splice..Splice$LT$core..str..iter..Bytes$GT$$GT$17h554f981d45337611E.exit"

bb2.i.i.i.i.i:                                    ; preds = %bb1.i.i.i.i.i
  %21 = getelementptr inbounds nuw i8, ptr %_22.i.i.i.i.i, i64 8
  %_24.i.i.i.i.i = load ptr, ptr %21, align 8, !noalias !1831, !nonnull !11, !noundef !11
  %src.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %_24.i.i.i.i.i, i64 %tail.i.i.i.i.i
  %dst.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %_24.i.i.i.i.i, i64 %start1.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %dst.i.i.i.i.i, ptr nonnull align 1 %src.i.i.i.i.i, i64 %_3.i.i.i.i.i, i1 false), !noalias !1831
  br label %bb3.i.i.i.i.i

bb40.i.i.i:                                       ; preds = %bb4.i
  br i1 %_2.not.i.i.i.i.i, label %"_ZN4core3ptr77drop_in_place$LT$alloc..vec..splice..Splice$LT$core..str..iter..Bytes$GT$$GT$17h554f981d45337611E.exit", label %bb1.i.i24.i.i.i

bb1.i.i24.i.i.i:                                  ; preds = %bb40.i.i.i
  %_22.i.i25.i.i.i = load ptr, ptr %_4.sroa.5.0._0.sroa_idx.i, align 8, !alias.scope !1825, !noalias !1832, !nonnull !11, !noundef !11
  %22 = getelementptr inbounds nuw i8, ptr %_22.i.i25.i.i.i, i64 16
  %start1.i.i26.i.i.i = load i64, ptr %22, align 8, !noalias !1837, !noundef !11
  %_23.i.i27.i.i.i = icmp sgt i64 %start1.i.i26.i.i.i, -1
  call void @llvm.assume(i1 %_23.i.i27.i.i.i)
  %tail.i.i28.i.i.i = load i64, ptr %_4.sroa.6.0._0.sroa_idx.i, align 8, !alias.scope !1825, !noalias !1832, !noundef !11
  %_7.not.i.i29.i.i.i = icmp eq i64 %tail.i.i28.i.i.i, %start1.i.i26.i.i.i
  br i1 %_7.not.i.i29.i.i.i, label %bb3.i.i34.i.i.i, label %bb2.i.i30.i.i.i

bb3.i.i34.i.i.i:                                  ; preds = %bb2.i.i30.i.i.i, %bb1.i.i24.i.i.i
  %new_len.i.i36.i.i.i = add i64 %start1.i.i26.i.i.i, %_3.i.i.i.i.i
  store i64 %new_len.i.i36.i.i.i, ptr %22, align 8, !noalias !1837
  br label %"_ZN4core3ptr77drop_in_place$LT$alloc..vec..splice..Splice$LT$core..str..iter..Bytes$GT$$GT$17h554f981d45337611E.exit"

bb2.i.i30.i.i.i:                                  ; preds = %bb1.i.i24.i.i.i
  %23 = getelementptr inbounds nuw i8, ptr %_22.i.i25.i.i.i, i64 8
  %_24.i.i31.i.i.i = load ptr, ptr %23, align 8, !noalias !1837, !nonnull !11, !noundef !11
  %src.i.i32.i.i.i = getelementptr inbounds nuw i8, ptr %_24.i.i31.i.i.i, i64 %tail.i.i28.i.i.i
  %dst.i.i33.i.i.i = getelementptr inbounds nuw i8, ptr %_24.i.i31.i.i.i, i64 %start1.i.i26.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %dst.i.i33.i.i.i, ptr nonnull align 1 %src.i.i32.i.i.i, i64 %_3.i.i.i.i.i, i1 false), !noalias !1837
  br label %bb3.i.i34.i.i.i

"_ZN4core3ptr77drop_in_place$LT$alloc..vec..splice..Splice$LT$core..str..iter..Bytes$GT$$GT$17h554f981d45337611E.exit": ; preds = %bb3.i.i.i, %bb3.i.i.i.i.i, %bb40.i.i.i, %bb3.i.i34.i.i.i
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %_28)
  ret void
}

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he1ec055327b1a03bE"(ptr noalias noundef readnone align 8 captures(none) dereferenceable(24) %self) unnamed_addr #9 {
start:
  ret void
}

; <&mut I as core::iter::traits::iterator::Iterator>::fold
; Function Attrs: nofree norecurse nosync nounwind nonlazybind uwtable
define void @"_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h27995977b519942bE"(ptr noalias noundef align 8 captures(none) dereferenceable(16) %self, ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %f) unnamed_addr #11 personality ptr @rust_eh_personality {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1838)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1841)
  %f.sroa.0.0.copyload.i = load ptr, ptr %f, align 8, !alias.scope !1841, !noalias !1838
  %f.sroa.4.0.fold.sroa_idx.i = getelementptr inbounds nuw i8, ptr %f, i64 8
  %f.sroa.4.0.copyload.i = load i64, ptr %f.sroa.4.0.fold.sroa_idx.i, align 8, !alias.scope !1841, !noalias !1838
  %f.sroa.7.0.fold.sroa_idx.i = getelementptr inbounds nuw i8, ptr %f, i64 16
  %f.sroa.7.0.copyload.i = load ptr, ptr %f.sroa.7.0.fold.sroa_idx.i, align 8, !alias.scope !1841, !noalias !1838
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1843)
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %end_or_len.i.i.i.i = load ptr, ptr %0, align 8, !alias.scope !1846, !noalias !1851, !nonnull !11, !noundef !11
  %self.promoted.i.i = load ptr, ptr %self, align 8, !alias.scope !1846, !noalias !1851
  br label %bb1.i.i

bb1.i.i:                                          ; preds = %bb3.i.i, %start
  %f.sroa.4.0.i = phi i64 [ %f.sroa.4.0.copyload.i, %start ], [ %1, %bb3.i.i ]
  %_18.i.i5.i.i = phi ptr [ %self.promoted.i.i, %start ], [ %_18.i.i4.i.i, %bb3.i.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1853)
  %_7.i.i.i.i = icmp eq ptr %_18.i.i5.i.i, %end_or_len.i.i.i.i
  br i1 %_7.i.i.i.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E.exit.i.i.i", label %bb6.i.i.i.i

bb6.i.i.i.i:                                      ; preds = %bb1.i.i
  %_18.i.i.i.i = getelementptr inbounds nuw i8, ptr %_18.i.i5.i.i, i64 1
  store ptr %_18.i.i.i.i, ptr %self, align 8, !alias.scope !1846, !noalias !1851
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E.exit.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E.exit.i.i.i": ; preds = %bb6.i.i.i.i, %bb1.i.i
  %_18.i.i4.i.i = phi ptr [ %_18.i.i.i.i, %bb6.i.i.i.i ], [ %_18.i.i5.i.i, %bb1.i.i ]
  %_0.sroa.0.0.i.i.i.i = phi ptr [ %_18.i.i5.i.i, %bb6.i.i.i.i ], [ null, %bb1.i.i ]
  %.not.i.not.i.i = icmp eq ptr %_0.sroa.0.0.i.i.i.i, null
  br i1 %.not.i.not.i.i, label %"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE.exit.i.i", label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E.exit.i.i.i"
  %v.i.i.i = load i8, ptr %_0.sroa.0.0.i.i.i.i, align 1, !noalias !1854, !noundef !11
  br label %"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE.exit.i.i"

"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE.exit.i.i": ; preds = %bb5.i.i.i, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E.exit.i.i.i"
  %_0.sroa.3.0.i.i.i = phi i8 [ %v.i.i.i, %bb5.i.i.i ], [ undef, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E.exit.i.i.i" ]
  br i1 %.not.i.not.i.i, label %"_ZN79_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..IteratorRefSpec$GT$9spec_fold17h2b397796b6b9701bE.exit", label %bb3.i.i

bb3.i.i:                                          ; preds = %"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE.exit.i.i"
  %_3.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %f.sroa.7.0.copyload.i, i64 %f.sroa.4.0.i
  store i8 %_0.sroa.3.0.i.i.i, ptr %_3.i.i.i.i.i, align 1, !noalias !1855
  %1 = add i64 %f.sroa.4.0.i, 1
  br label %bb1.i.i

"_ZN79_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..IteratorRefSpec$GT$9spec_fold17h2b397796b6b9701bE.exit": ; preds = %"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE.exit.i.i"
  %2 = icmp ne ptr %f.sroa.0.0.copyload.i, null
  tail call void @llvm.assume(i1 %2)
  store i64 %f.sroa.4.0.i, ptr %f.sroa.0.0.copyload.i, align 8, !noalias !1862
  ret void
}

; <&mut I as core::iter::traits::iterator::Iterator>::size_hint
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @"_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hde7e14e32dc0be06E"(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %_0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %self) unnamed_addr #14 {
start:
  %_3 = load ptr, ptr %self, align 8, !nonnull !11, !align !69, !noundef !11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1873)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1876)
  %0 = getelementptr inbounds nuw i8, ptr %_3, i64 8
  %_7.i = load ptr, ptr %0, align 8, !alias.scope !1876, !noalias !1873, !nonnull !11, !noundef !11
  %_8.i = load ptr, ptr %_3, align 8, !alias.scope !1876, !noalias !1873, !nonnull !11, !noundef !11
  %1 = ptrtoint ptr %_7.i to i64
  %2 = ptrtoint ptr %_8.i to i64
  %3 = sub nuw i64 %1, %2
  store i64 %3, ptr %_0, align 8, !alias.scope !1873, !noalias !1876
  %4 = getelementptr inbounds nuw i8, ptr %_0, i64 8
  store i64 1, ptr %4, align 8, !alias.scope !1873, !noalias !1876
  %5 = getelementptr inbounds nuw i8, ptr %_0, i64 16
  store i64 %3, ptr %5, align 8, !alias.scope !1873, !noalias !1876
  ret void
}

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc7f33b07e3ac4404E"(ptr noalias noundef align 8 dereferenceable(16) %self) unnamed_addr #0 {
start:
; call alloc::raw_vec::RawVecInner<A>::deallocate
  tail call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef align 8 dereferenceable(16) %self, i64 noundef 4, i64 noundef 4)
  ret void
}

; <alloc::vec::drain::Drain<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write) uwtable
define void @"_ZN79_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8732bad187be2872E"(ptr noalias noundef align 8 captures(none) dereferenceable(40) %self) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %iter.0 = load ptr, ptr %self, align 8, !nonnull !11, !noundef !11
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %iter.1 = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11
  store ptr inttoptr (i64 1 to ptr), ptr %self, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %0, align 8
  %_15 = icmp eq ptr %iter.1, %iter.0
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 32
  %_3.i.i = load i64, ptr %1, align 8, !noalias !11, !noundef !11
  %_2.not.i.i = icmp eq i64 %_3.i.i, 0
  br i1 %_15, label %bb3, label %bb40

bb3:                                              ; preds = %start
  br i1 %_2.not.i.i, label %bb9, label %bb1.i.i

bb1.i.i:                                          ; preds = %bb3
  %2 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %_22.i.i = load ptr, ptr %2, align 8, !noalias !1878, !nonnull !11, !noundef !11
  %3 = getelementptr inbounds nuw i8, ptr %_22.i.i, i64 16
  %start1.i.i = load i64, ptr %3, align 8, !noalias !1878, !noundef !11
  %_23.i.i = icmp sgt i64 %start1.i.i, -1
  tail call void @llvm.assume(i1 %_23.i.i)
  %4 = getelementptr inbounds nuw i8, ptr %self, i64 24
  %tail.i.i = load i64, ptr %4, align 8, !noalias !1878, !noundef !11
  %_7.not.i.i = icmp eq i64 %tail.i.i, %start1.i.i
  br i1 %_7.not.i.i, label %bb3.i.i, label %bb2.i.i

bb3.i.i:                                          ; preds = %bb2.i.i, %bb1.i.i
  %new_len.i.i = add i64 %start1.i.i, %_3.i.i
  store i64 %new_len.i.i, ptr %3, align 8, !noalias !1878
  br label %bb9

bb2.i.i:                                          ; preds = %bb1.i.i
  %5 = getelementptr inbounds nuw i8, ptr %_22.i.i, i64 8
  %_24.i.i = load ptr, ptr %5, align 8, !noalias !1878, !nonnull !11, !noundef !11
  %src.i.i = getelementptr inbounds nuw i8, ptr %_24.i.i, i64 %tail.i.i
  %dst.i.i = getelementptr inbounds nuw i8, ptr %_24.i.i, i64 %start1.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %dst.i.i, ptr nonnull align 1 %src.i.i, i64 %_3.i.i, i1 false), !noalias !1878
  br label %bb3.i.i

bb40:                                             ; preds = %start
  br i1 %_2.not.i.i, label %bb9, label %bb1.i.i24

bb1.i.i24:                                        ; preds = %bb40
  %6 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %_22.i.i25 = load ptr, ptr %6, align 8, !noalias !1883, !nonnull !11, !noundef !11
  %7 = getelementptr inbounds nuw i8, ptr %_22.i.i25, i64 16
  %start1.i.i26 = load i64, ptr %7, align 8, !noalias !1883, !noundef !11
  %_23.i.i27 = icmp sgt i64 %start1.i.i26, -1
  tail call void @llvm.assume(i1 %_23.i.i27)
  %8 = getelementptr inbounds nuw i8, ptr %self, i64 24
  %tail.i.i28 = load i64, ptr %8, align 8, !noalias !1883, !noundef !11
  %_7.not.i.i29 = icmp eq i64 %tail.i.i28, %start1.i.i26
  br i1 %_7.not.i.i29, label %bb3.i.i34, label %bb2.i.i30

bb3.i.i34:                                        ; preds = %bb2.i.i30, %bb1.i.i24
  %new_len.i.i36 = add i64 %start1.i.i26, %_3.i.i
  store i64 %new_len.i.i36, ptr %7, align 8, !noalias !1883
  br label %bb9

bb2.i.i30:                                        ; preds = %bb1.i.i24
  %9 = getelementptr inbounds nuw i8, ptr %_22.i.i25, i64 8
  %_24.i.i31 = load ptr, ptr %9, align 8, !noalias !1883, !nonnull !11, !noundef !11
  %src.i.i32 = getelementptr inbounds nuw i8, ptr %_24.i.i31, i64 %tail.i.i28
  %dst.i.i33 = getelementptr inbounds nuw i8, ptr %_24.i.i31, i64 %start1.i.i26
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %dst.i.i33, ptr nonnull align 1 %src.i.i32, i64 %_3.i.i, i1 false), !noalias !1883
  br label %bb3.i.i34

bb9:                                              ; preds = %bb3.i.i34, %bb40, %bb3.i.i, %bb3
  ret void
}

; <alloc::vec::splice::Splice<I,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define void @"_ZN81_$LT$alloc..vec..splice..Splice$LT$I$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h320c041d738abf6eE"(ptr noalias noundef align 8 captures(none) dereferenceable(56) %self) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_4.i.i1.i.i39 = alloca [16 x i8], align 8
  %_4.i.i1.i.i = alloca [16 x i8], align 8
  %_26 = alloca [24 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %end_or_len.i.i = load ptr, ptr %0, align 8, !alias.scope !1888, !nonnull !11, !noundef !11
  %self.promoted.i = load ptr, ptr %self, align 8, !alias.scope !1888
  %_9.i.not3.i = icmp eq ptr %self.promoted.i, %end_or_len.i.i
  br i1 %_9.i.not3.i, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17ha60889ea79de91feE.exit, label %bb1.bb10_crit_edge.i

bb1.bb10_crit_edge.i:                             ; preds = %start
  %self.promoted6.i = ptrtoint ptr %self.promoted.i to i64
  %end_or_len.i5.i = ptrtoint ptr %end_or_len.i.i to i64
  %1 = sub i64 %end_or_len.i5.i, %self.promoted6.i
  %scevgep.i = getelementptr i8, ptr %self.promoted.i, i64 %1
  store ptr %scevgep.i, ptr %self, align 8, !alias.scope !1888
  br label %_ZN4core4iter6traits8iterator8Iterator8try_fold17ha60889ea79de91feE.exit

_ZN4core4iter6traits8iterator8Iterator8try_fold17ha60889ea79de91feE.exit: ; preds = %start, %bb1.bb10_crit_edge.i
  store ptr inttoptr (i64 1 to ptr), ptr %self, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %0, align 8
  %2 = getelementptr inbounds nuw i8, ptr %self, i64 32
  %_6 = load i64, ptr %2, align 8, !noundef !11
  %_5 = icmp eq i64 %_6, 0
  br i1 %_5, label %bb1, label %bb3

bb3:                                              ; preds = %_ZN4core4iter6traits8iterator8Iterator8try_fold17ha60889ea79de91feE.exit
  %_14 = getelementptr inbounds nuw i8, ptr %self, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1893)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1896)
  %3 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %_20.i = load ptr, ptr %3, align 8, !alias.scope !1893, !noalias !1896, !nonnull !11, !noundef !11
  %4 = getelementptr inbounds nuw i8, ptr %_20.i, i64 16
  %range_start.i = load i64, ptr %4, align 8, !noalias !1898, !noundef !11
  %5 = getelementptr inbounds nuw i8, ptr %self, i64 24
  %range_end.i = load i64, ptr %5, align 8, !alias.scope !1893, !noalias !1896, !noundef !11
  %6 = getelementptr inbounds nuw i8, ptr %_20.i, i64 8
  %_21.i = load ptr, ptr %6, align 8, !noalias !1898, !nonnull !11, !noundef !11
  %7 = getelementptr inbounds nuw i8, ptr %_21.i, i64 %range_end.i
  %_8.i6.not.i = icmp samesign eq i64 %range_start.i, %range_end.i
  br i1 %_8.i6.not.i, label %bb5, label %bb4.lr.ph.i

bb4.lr.ph.i:                                      ; preds = %bb3
  %data.i = getelementptr inbounds nuw i8, ptr %_21.i, i64 %range_start.i
  %spec.select8.i = getelementptr inbounds nuw i8, ptr %data.i, i64 1
  %replace_with.promoted.i = load ptr, ptr %_14, align 8, !alias.scope !1896, !noalias !1893
  %8 = getelementptr inbounds nuw i8, ptr %self, i64 48
  %end_or_len.i.i.i = load ptr, ptr %8, align 8, !alias.scope !1899, !noalias !1893, !nonnull !11, !noundef !11
  br label %bb4.i

bb4.i:                                            ; preds = %bb7.i, %bb4.lr.ph.i
  %spec.select12.i = phi ptr [ %spec.select8.i, %bb4.lr.ph.i ], [ %spec.select.i, %bb7.i ]
  %iter.sroa.0.010.i = phi ptr [ %data.i, %bb4.lr.ph.i ], [ %spec.select12.i, %bb7.i ]
  %_18.i.i59.i = phi ptr [ %replace_with.promoted.i, %bb4.lr.ph.i ], [ %_18.i.i4.i, %bb7.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1904)
  %_7.i.i.i = icmp eq ptr %_18.i.i59.i, %end_or_len.i.i.i
  br i1 %_7.i.i.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E.exit.i.i", label %bb6.i.i.i

bb6.i.i.i:                                        ; preds = %bb4.i
  %_18.i.i.i = getelementptr inbounds nuw i8, ptr %_18.i.i59.i, i64 1
  store ptr %_18.i.i.i, ptr %_14, align 8, !alias.scope !1899, !noalias !1893
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E.exit.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E.exit.i.i": ; preds = %bb6.i.i.i, %bb4.i
  %_18.i.i4.i = phi ptr [ %_18.i.i.i, %bb6.i.i.i ], [ %_18.i.i59.i, %bb4.i ]
  %_0.sroa.0.0.i.i.i = phi ptr [ %_18.i.i59.i, %bb6.i.i.i ], [ null, %bb4.i ]
  %.not.i.not.not.i = icmp eq ptr %_0.sroa.0.0.i.i.i, null
  br i1 %.not.i.not.not.i, label %"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE.exit.i", label %bb5.i.i

bb5.i.i:                                          ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E.exit.i.i"
  %v.i.i = load i8, ptr %_0.sroa.0.0.i.i.i, align 1, !noalias !1905, !noundef !11
  br label %"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE.exit.i"

"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE.exit.i": ; preds = %bb5.i.i, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E.exit.i.i"
  %_0.sroa.3.0.i.i = phi i8 [ %v.i.i, %bb5.i.i ], [ undef, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E.exit.i.i" ]
  br i1 %.not.i.not.not.i, label %bb22, label %bb7.i

bb7.i:                                            ; preds = %"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE.exit.i"
  store i8 %_0.sroa.3.0.i.i, ptr %iter.sroa.0.010.i, align 1, !noalias !1898
  %9 = load i64, ptr %4, align 8, !noalias !1898, !noundef !11
  %10 = add i64 %9, 1
  store i64 %10, ptr %4, align 8, !noalias !1898
  %_8.i.i = icmp ne ptr %spec.select12.i, %7
  %spec.select.idx.i = zext i1 %_8.i.i to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %spec.select12.i, i64 %spec.select.idx.i
  br i1 %_8.i.i, label %bb4.i, label %bb5

bb1:                                              ; preds = %_ZN4core4iter6traits8iterator8Iterator8try_fold17ha60889ea79de91feE.exit
  %11 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %_49 = load ptr, ptr %11, align 8, !nonnull !11, !noundef !11
  %_11 = getelementptr inbounds nuw i8, ptr %self, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1906)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1909)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1911)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1914)
  %12 = getelementptr inbounds nuw i8, ptr %self, i64 48
  %_7.i.i.i.i = load ptr, ptr %12, align 8, !alias.scope !1916, !noalias !1919, !nonnull !11, !noundef !11
  %_8.i.i.i.i = load ptr, ptr %_11, align 8, !alias.scope !1916, !noalias !1919, !nonnull !11, !noundef !11
  %13 = ptrtoint ptr %_7.i.i.i.i to i64
  %14 = ptrtoint ptr %_8.i.i.i.i to i64
  %15 = sub nuw i64 %13, %14
; call alloc::vec::Vec<T,A>::reserve
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd7d983ab73297baaE"(ptr noalias noundef align 8 dereferenceable(24) %_49, i64 noundef %15), !noalias !1924
  %16 = getelementptr inbounds nuw i8, ptr %_49, i64 8
  %_26.i.i = load ptr, ptr %16, align 8, !alias.scope !1925, !noalias !1924, !nonnull !11, !noundef !11
  %len.i.i = getelementptr inbounds nuw i8, ptr %_49, i64 16
  %_27.i.i = load i64, ptr %len.i.i, align 8, !alias.scope !1925, !noalias !1924, !noundef !11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1926)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1929)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1932)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1935)
  br label %bb1.i.i.i.i.i.i

bb1.i.i.i.i.i.i:                                  ; preds = %bb3.i.i.i.i.i.i, %bb1
  %f.sroa.4.0.i.i.i.i.i = phi i64 [ %_27.i.i, %bb1 ], [ %17, %bb3.i.i.i.i.i.i ]
  %_18.i.i5.i.i.i.i.i.i = phi ptr [ %_8.i.i.i.i, %bb1 ], [ %_18.i.i4.i.i.i.i.i.i, %bb3.i.i.i.i.i.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1938)
  %_7.i.i.i.i.i.i.i.i = icmp eq ptr %_18.i.i5.i.i.i.i.i.i, %_7.i.i.i.i
  br i1 %_7.i.i.i.i.i.i.i.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E.exit.i.i.i.i.i.i.i", label %bb6.i.i.i.i.i.i.i.i

bb6.i.i.i.i.i.i.i.i:                              ; preds = %bb1.i.i.i.i.i.i
  %_18.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %_18.i.i5.i.i.i.i.i.i, i64 1
  store ptr %_18.i.i.i.i.i.i.i.i, ptr %_11, align 8, !alias.scope !1941, !noalias !1944
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E.exit.i.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E.exit.i.i.i.i.i.i.i": ; preds = %bb6.i.i.i.i.i.i.i.i, %bb1.i.i.i.i.i.i
  %_18.i.i4.i.i.i.i.i.i = phi ptr [ %_18.i.i.i.i.i.i.i.i, %bb6.i.i.i.i.i.i.i.i ], [ %_18.i.i5.i.i.i.i.i.i, %bb1.i.i.i.i.i.i ]
  %_0.sroa.0.0.i.i.i.i.i.i.i.i = phi ptr [ %_18.i.i5.i.i.i.i.i.i, %bb6.i.i.i.i.i.i.i.i ], [ null, %bb1.i.i.i.i.i.i ]
  %.not.i.not.i.i.i.i.i.i = icmp eq ptr %_0.sroa.0.0.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.not.i.i.i.i.i.i, label %"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE.exit.i.i.i.i.i.i", label %bb5.i.i.i.i.i.i.i

bb5.i.i.i.i.i.i.i:                                ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E.exit.i.i.i.i.i.i.i"
  %v.i.i.i.i.i.i.i = load i8, ptr %_0.sroa.0.0.i.i.i.i.i.i.i.i, align 1, !noalias !1949, !noundef !11
  br label %"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE.exit.i.i.i.i.i.i"

"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE.exit.i.i.i.i.i.i": ; preds = %bb5.i.i.i.i.i.i.i, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E.exit.i.i.i.i.i.i.i"
  %_0.sroa.3.0.i.i.i.i.i.i.i = phi i8 [ %v.i.i.i.i.i.i.i, %bb5.i.i.i.i.i.i.i ], [ undef, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E.exit.i.i.i.i.i.i.i" ]
  br i1 %.not.i.not.i.i.i.i.i.i, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hbe17c1eaad2150f2E.exit", label %bb3.i.i.i.i.i.i

bb3.i.i.i.i.i.i:                                  ; preds = %"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE.exit.i.i.i.i.i.i"
  %_3.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %_26.i.i, i64 %f.sroa.4.0.i.i.i.i.i
  store i8 %_0.sroa.3.0.i.i.i.i.i.i.i, ptr %_3.i.i.i.i.i.i.i.i.i, align 1, !noalias !1950
  %17 = add i64 %f.sroa.4.0.i.i.i.i.i, 1
  br label %bb1.i.i.i.i.i.i

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hbe17c1eaad2150f2E.exit": ; preds = %"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE.exit.i.i.i.i.i.i"
  store i64 %f.sroa.4.0.i.i.i.i.i, ptr %len.i.i, align 8, !alias.scope !1925, !noalias !1957
  br label %bb22

bb5:                                              ; preds = %bb7.i, %bb3
  %18 = getelementptr inbounds nuw i8, ptr %self, i64 48
  %_7.i = load ptr, ptr %18, align 8, !alias.scope !1968, !noalias !1971, !nonnull !11, !noundef !11
  %_8.i = load ptr, ptr %_14, align 8, !alias.scope !1968, !noalias !1971, !nonnull !11, !noundef !11
  %19 = ptrtoint ptr %_7.i to i64
  %20 = ptrtoint ptr %_8.i to i64
  %21 = sub nuw i64 %19, %20
  %_19.not = icmp eq ptr %_7.i, %_8.i
  br i1 %_19.not, label %bb13, label %bb8

bb22:                                             ; preds = %"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE.exit.i", %"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE.exit.i31", %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hbe17c1eaad2150f2E.exit", %bb20
  ret void

bb13:                                             ; preds = %bb7.i33, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h5cacf35e63f71de5E.exit", %bb5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_26)
; call <alloc::vec::Vec<T> as alloc::vec::spec_from_iter_nested::SpecFromIterNested<T,I>>::from_iter
  call void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17hbe1afec43c5640b5E"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_26, ptr noalias noundef align 8 dereferenceable(16) %_14)
  %me.sroa.0.0.copyload.i = load i64, ptr %_26, align 8, !alias.scope !1973, !noalias !1976
  %me.sroa.4.0.self.sroa_idx.i = getelementptr inbounds nuw i8, ptr %_26, i64 8
  %me.sroa.4.0.copyload.i = load ptr, ptr %me.sroa.4.0.self.sroa_idx.i, align 8, !alias.scope !1973, !noalias !1976, !nonnull !11, !noundef !11
  %me.sroa.5.0.self.sroa_idx.i = getelementptr inbounds nuw i8, ptr %_26, i64 16
  %me.sroa.5.0.copyload.i = load i64, ptr %me.sroa.5.0.self.sroa_idx.i, align 8, !alias.scope !1973, !noalias !1976
  %_31.i = icmp sgt i64 %me.sroa.5.0.copyload.i, -1
  tail call void @llvm.assume(i1 %_31.i)
  %_16.i = getelementptr inbounds nuw i8, ptr %me.sroa.4.0.copyload.i, i64 %me.sroa.5.0.copyload.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_26)
  %_29.not = icmp eq i64 %me.sroa.5.0.copyload.i, 0
  br i1 %_29.not, label %bb20, label %bb37

bb8:                                              ; preds = %bb5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1978)
  %_18.i = load ptr, ptr %3, align 8, !alias.scope !1978, !nonnull !11, !noundef !11
  %_5.i = load i64, ptr %5, align 8, !alias.scope !1978, !noundef !11
  %_6.i = load i64, ptr %2, align 8, !alias.scope !1978, !noundef !11
  %len.i = add i64 %_6.i, %_5.i
  %self2.i = load i64, ptr %_18.i, align 8, !range !1800, !noalias !1978, !noundef !11
  %_23.i = sub i64 %self2.i, %len.i
  %_21.i7 = icmp ugt i64 %21, %_23.i
  br i1 %_21.i7, label %bb1.i, label %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h5cacf35e63f71de5E.exit", !prof !14

bb1.i:                                            ; preds = %bb8
; call alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
  tail call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h3fb8db3e79fd71d4E"(ptr noalias noundef align 8 dereferenceable(16) %_18.i, i64 noundef %len.i, i64 noundef %21, i64 noundef 1, i64 noundef 1), !noalias !1978
  br label %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h5cacf35e63f71de5E.exit"

"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h5cacf35e63f71de5E.exit": ; preds = %bb8, %bb1.i
  %new_tail_start.i = add i64 %_5.i, %21
  %22 = getelementptr inbounds nuw i8, ptr %_18.i, i64 8
  %_29.i = load ptr, ptr %22, align 8, !noalias !1978, !nonnull !11, !noundef !11
  %src.i = getelementptr inbounds nuw i8, ptr %_29.i, i64 %_5.i
  %dst.i = getelementptr inbounds nuw i8, ptr %_29.i, i64 %new_tail_start.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %dst.i, ptr nonnull align 1 %src.i, i64 %_6.i, i1 false), !noalias !1978
  store i64 %new_tail_start.i, ptr %5, align 8, !alias.scope !1978
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1981)
  %23 = getelementptr inbounds nuw i8, ptr %_18.i, i64 16
  %range_start.i9 = load i64, ptr %23, align 8, !noalias !1984, !noundef !11
  %_21.i11 = load ptr, ptr %22, align 8, !noalias !1984, !nonnull !11, !noundef !11
  %24 = getelementptr inbounds nuw i8, ptr %_21.i11, i64 %new_tail_start.i
  %_8.i6.not.i12 = icmp samesign eq i64 %range_start.i9, %new_tail_start.i
  br i1 %_8.i6.not.i12, label %bb13, label %bb4.lr.ph.i13

bb4.lr.ph.i13:                                    ; preds = %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h5cacf35e63f71de5E.exit"
  %data.i14 = getelementptr inbounds nuw i8, ptr %_21.i11, i64 %range_start.i9
  %spec.select8.i15 = getelementptr inbounds nuw i8, ptr %data.i14, i64 1
  %end_or_len.i.i.i21 = load ptr, ptr %18, align 8, !alias.scope !1986, !noalias !1991, !nonnull !11, !noundef !11
  br label %bb4.i17

bb4.i17:                                          ; preds = %bb7.i33, %bb4.lr.ph.i13
  %spec.select12.i18 = phi ptr [ %spec.select8.i15, %bb4.lr.ph.i13 ], [ %spec.select.i36, %bb7.i33 ]
  %iter.sroa.0.010.i19 = phi ptr [ %data.i14, %bb4.lr.ph.i13 ], [ %spec.select12.i18, %bb7.i33 ]
  %_18.i.i59.i20 = phi ptr [ %_8.i, %bb4.lr.ph.i13 ], [ %_18.i.i4.i26, %bb7.i33 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1992)
  %_7.i.i.i22 = icmp eq ptr %_18.i.i59.i20, %end_or_len.i.i.i21
  br i1 %_7.i.i.i22, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E.exit.i.i25", label %bb6.i.i.i23

bb6.i.i.i23:                                      ; preds = %bb4.i17
  %_18.i.i.i24 = getelementptr inbounds nuw i8, ptr %_18.i.i59.i20, i64 1
  store ptr %_18.i.i.i24, ptr %_14, align 8, !alias.scope !1986, !noalias !1991
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E.exit.i.i25"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E.exit.i.i25": ; preds = %bb6.i.i.i23, %bb4.i17
  %_18.i.i4.i26 = phi ptr [ %_18.i.i.i24, %bb6.i.i.i23 ], [ %_18.i.i59.i20, %bb4.i17 ]
  %_0.sroa.0.0.i.i.i27 = phi ptr [ %_18.i.i59.i20, %bb6.i.i.i23 ], [ null, %bb4.i17 ]
  %.not.i.not.not.i28 = icmp eq ptr %_0.sroa.0.0.i.i.i27, null
  br i1 %.not.i.not.not.i28, label %"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE.exit.i31", label %bb5.i.i29

bb5.i.i29:                                        ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E.exit.i.i25"
  %v.i.i30 = load i8, ptr %_0.sroa.0.0.i.i.i27, align 1, !noalias !1993, !noundef !11
  br label %"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE.exit.i31"

"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE.exit.i31": ; preds = %bb5.i.i29, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E.exit.i.i25"
  %_0.sroa.3.0.i.i32 = phi i8 [ %v.i.i30, %bb5.i.i29 ], [ undef, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E.exit.i.i25" ]
  br i1 %.not.i.not.not.i28, label %bb22, label %bb7.i33

bb7.i33:                                          ; preds = %"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE.exit.i31"
  store i8 %_0.sroa.3.0.i.i32, ptr %iter.sroa.0.010.i19, align 1, !noalias !1984
  %25 = load i64, ptr %23, align 8, !noalias !1984, !noundef !11
  %26 = add i64 %25, 1
  store i64 %26, ptr %23, align 8, !noalias !1984
  %_8.i.i34 = icmp ne ptr %spec.select12.i18, %24
  %spec.select.idx.i35 = zext i1 %_8.i.i34 to i64
  %spec.select.i36 = getelementptr inbounds nuw i8, ptr %spec.select12.i18, i64 %spec.select.idx.i35
  br i1 %_8.i.i34, label %bb4.i17, label %bb13

cleanup:                                          ; preds = %bb1.i53
  %27 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_4.i.i1.i.i), !noalias !1994
  store i64 %me.sroa.0.0.copyload.i, ptr %_4.i.i1.i.i, align 8, !noalias !1994
  %28 = getelementptr inbounds nuw i8, ptr %_4.i.i1.i.i, i64 8
  store ptr %me.sroa.4.0.copyload.i, ptr %28, align 8, !noalias !1994
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %_4.i.i1.i.i)
          to label %"_ZN4core3ptr62drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$u8$GT$$GT$17h22c1786a9a033489E.exit" unwind label %terminate

"_ZN4core3ptr62drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$u8$GT$$GT$17h22c1786a9a033489E.exit": ; preds = %cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_4.i.i1.i.i), !noalias !1994
  resume { ptr, i32 } %27

bb20:                                             ; preds = %bb7.i63, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a39a3184624d2fbE.exit.i", %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h5cacf35e63f71de5E.exit54", %bb13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_4.i.i1.i.i39), !noalias !2003
  store i64 %me.sroa.0.0.copyload.i, ptr %_4.i.i1.i.i39, align 8, !noalias !2003
  %29 = getelementptr inbounds nuw i8, ptr %_4.i.i1.i.i39, i64 8
  store ptr %me.sroa.4.0.copyload.i, ptr %29, align 8, !noalias !2003
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %_4.i.i1.i.i39), !noalias !2003
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_4.i.i1.i.i39), !noalias !2003
  br label %bb22

bb37:                                             ; preds = %bb13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2012)
  %_18.i42 = load ptr, ptr %3, align 8, !alias.scope !2012, !nonnull !11, !noundef !11
  %_5.i43 = load i64, ptr %5, align 8, !alias.scope !2012, !noundef !11
  %_6.i44 = load i64, ptr %2, align 8, !alias.scope !2012, !noundef !11
  %len.i45 = add i64 %_6.i44, %_5.i43
  %self2.i46 = load i64, ptr %_18.i42, align 8, !range !1800, !noalias !2012, !noundef !11
  %_23.i47 = sub i64 %self2.i46, %len.i45
  %_21.i48 = icmp ugt i64 %me.sroa.5.0.copyload.i, %_23.i47
  br i1 %_21.i48, label %bb1.i53, label %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h5cacf35e63f71de5E.exit54", !prof !14

bb1.i53:                                          ; preds = %bb37
; invoke alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h3fb8db3e79fd71d4E"(ptr noalias noundef align 8 dereferenceable(16) %_18.i42, i64 noundef %len.i45, i64 noundef %me.sroa.5.0.copyload.i, i64 noundef 1, i64 noundef 1)
          to label %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h5cacf35e63f71de5E.exit54" unwind label %cleanup

"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h5cacf35e63f71de5E.exit54": ; preds = %bb1.i53, %bb37
  %new_tail_start.i49 = add i64 %_5.i43, %me.sroa.5.0.copyload.i
  %30 = getelementptr inbounds nuw i8, ptr %_18.i42, i64 8
  %_29.i50 = load ptr, ptr %30, align 8, !noalias !2012, !nonnull !11, !noundef !11
  %src.i51 = getelementptr inbounds nuw i8, ptr %_29.i50, i64 %_5.i43
  %dst.i52 = getelementptr inbounds nuw i8, ptr %_29.i50, i64 %new_tail_start.i49
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %dst.i52, ptr nonnull align 1 %src.i51, i64 %_6.i44, i1 false), !noalias !2012
  store i64 %new_tail_start.i49, ptr %5, align 8, !alias.scope !2012
  %31 = getelementptr inbounds nuw i8, ptr %_18.i42, i64 16
  %range_start.i56 = load i64, ptr %31, align 8, !noalias !2015, !noundef !11
  %_21.i58 = load ptr, ptr %30, align 8, !noalias !2015, !nonnull !11, !noundef !11
  %32 = getelementptr inbounds nuw i8, ptr %_21.i58, i64 %new_tail_start.i49
  %_8.i5.not.i = icmp samesign eq i64 %range_start.i56, %new_tail_start.i49
  br i1 %_8.i5.not.i, label %bb20, label %bb4.lr.ph.i59

bb4.lr.ph.i59:                                    ; preds = %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h5cacf35e63f71de5E.exit54"
  %data.i60 = getelementptr inbounds nuw i8, ptr %_21.i58, i64 %range_start.i56
  %spec.select7.i = getelementptr inbounds nuw i8, ptr %data.i60, i64 1
  br label %bb4.i61

bb4.i61:                                          ; preds = %bb7.i63, %bb4.lr.ph.i59
  %collected.sroa.5.0 = phi ptr [ %me.sroa.4.0.copyload.i, %bb4.lr.ph.i59 ], [ %collected.sroa.5.1, %bb7.i63 ]
  %spec.select10.i = phi ptr [ %spec.select7.i, %bb4.lr.ph.i59 ], [ %spec.select.i66, %bb7.i63 ]
  %iter.sroa.0.08.i = phi ptr [ %data.i60, %bb4.lr.ph.i59 ], [ %spec.select10.i, %bb7.i63 ]
  %_9.i.not.not.i = icmp eq ptr %collected.sroa.5.0, %_16.i
  br i1 %_9.i.not.not.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a39a3184624d2fbE.exit.i", label %bb6.i2.i

bb6.i2.i:                                         ; preds = %bb4.i61
  %_23.i.i = getelementptr inbounds nuw i8, ptr %collected.sroa.5.0, i64 1
  %_17.i.i = load i8, ptr %collected.sroa.5.0, align 1, !noalias !2019, !noundef !11
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a39a3184624d2fbE.exit.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a39a3184624d2fbE.exit.i": ; preds = %bb6.i2.i, %bb4.i61
  %collected.sroa.5.1 = phi ptr [ %collected.sroa.5.0, %bb4.i61 ], [ %_23.i.i, %bb6.i2.i ]
  %_0.sroa.3.0.i.i62 = phi i8 [ undef, %bb4.i61 ], [ %_17.i.i, %bb6.i2.i ]
  br i1 %_9.i.not.not.i, label %bb20, label %bb7.i63

bb7.i63:                                          ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a39a3184624d2fbE.exit.i"
  store i8 %_0.sroa.3.0.i.i62, ptr %iter.sroa.0.08.i, align 1, !noalias !2015
  %33 = load i64, ptr %31, align 8, !noalias !2015, !noundef !11
  %34 = add i64 %33, 1
  store i64 %34, ptr %31, align 8, !noalias !2015
  %_8.i.i64 = icmp ne ptr %spec.select10.i, %32
  %spec.select.idx.i65 = zext i1 %_8.i.i64 to i64
  %spec.select.i66 = getelementptr inbounds nuw i8, ptr %spec.select10.i, i64 %spec.select.idx.i65
  br i1 %_8.i.i64, label %bb4.i61, label %bb20

terminate:                                        ; preds = %cleanup
  %35 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #31
  unreachable
}

; <alloc::vec::into_iter::IntoIter<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f27966bc0fb3436E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %self) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_4.i.i1 = alloca [16 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_4.i.i1), !noalias !2022
  %ptr.i.i3 = load ptr, ptr %self, align 8, !noalias !2022, !nonnull !11, !noundef !11
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %capacity1.i.i4 = load i64, ptr %0, align 8, !noalias !2022, !noundef !11
  store i64 %capacity1.i.i4, ptr %_4.i.i1, align 8, !noalias !2022
  %1 = getelementptr inbounds nuw i8, ptr %_4.i.i1, i64 8
  store ptr %ptr.i.i3, ptr %1, align 8, !noalias !2022
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %_4.i.i1), !noalias !2022
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_4.i.i1), !noalias !2022
  ret void
}

; <core::slice::sort::stable::merge::MergeState<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define void @"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb41adbc6ab1e7c12E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #12 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %self1 = load ptr, ptr %0, align 8, !noundef !11
  %_5 = load ptr, ptr %self, align 8, !noundef !11
  %1 = ptrtoint ptr %self1 to i64
  %2 = ptrtoint ptr %_5 to i64
  %3 = sub nuw i64 %1, %2
  %4 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %5 = load ptr, ptr %4, align 8, !noundef !11
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %5, ptr align 4 %_5, i64 %3, i1 false)
  ret void
}

; <core::hint::select_unpredictable::DropOnPanic<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN96_$LT$core..hint..select_unpredictable..DropOnPanic$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haf0bcf6e73516d55E"(ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %self) unnamed_addr #9 {
start:
  ret void
}

; <alloc::vec::Vec<T,A> as alloc::vec::spec_extend::SpecExtend<T,I>>::spec_extend
; Function Attrs: nonlazybind uwtable
define void @"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hbe17c1eaad2150f2E"(ptr noalias noundef align 8 dereferenceable(24) %self, ptr noalias noundef align 8 captures(none) dereferenceable(16) %iterator) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2027)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2030)
  %0 = getelementptr inbounds nuw i8, ptr %iterator, i64 8
  %_7.i.i.i = load ptr, ptr %0, align 8, !alias.scope !2032, !noalias !2035, !nonnull !11, !noundef !11
  %_8.i.i.i = load ptr, ptr %iterator, align 8, !alias.scope !2032, !noalias !2035, !nonnull !11, !noundef !11
  %1 = ptrtoint ptr %_7.i.i.i to i64
  %2 = ptrtoint ptr %_8.i.i.i to i64
  %3 = sub nuw i64 %1, %2
; call alloc::vec::Vec<T,A>::reserve
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd7d983ab73297baaE"(ptr noalias noundef align 8 dereferenceable(24) %self, i64 noundef %3), !noalias !2030
  %4 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_26.i = load ptr, ptr %4, align 8, !alias.scope !2027, !noalias !2030, !nonnull !11, !noundef !11
  %len.i = getelementptr inbounds nuw i8, ptr %self, i64 16
  %_27.i = load i64, ptr %len.i, align 8, !alias.scope !2027, !noalias !2030, !noundef !11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2049)
  br label %bb1.i.i.i.i.i

bb1.i.i.i.i.i:                                    ; preds = %bb3.i.i.i.i.i, %start
  %f.sroa.4.0.i.i.i.i = phi i64 [ %_27.i, %start ], [ %5, %bb3.i.i.i.i.i ]
  %_18.i.i5.i.i.i.i.i = phi ptr [ %_8.i.i.i, %start ], [ %_18.i.i4.i.i.i.i.i, %bb3.i.i.i.i.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2052)
  %_7.i.i.i.i.i.i.i = icmp eq ptr %_18.i.i5.i.i.i.i.i, %_7.i.i.i
  br i1 %_7.i.i.i.i.i.i.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E.exit.i.i.i.i.i.i", label %bb6.i.i.i.i.i.i.i

bb6.i.i.i.i.i.i.i:                                ; preds = %bb1.i.i.i.i.i
  %_18.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %_18.i.i5.i.i.i.i.i, i64 1
  store ptr %_18.i.i.i.i.i.i.i, ptr %iterator, align 8, !alias.scope !2055, !noalias !2058
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E.exit.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E.exit.i.i.i.i.i.i": ; preds = %bb6.i.i.i.i.i.i.i, %bb1.i.i.i.i.i
  %_18.i.i4.i.i.i.i.i = phi ptr [ %_18.i.i.i.i.i.i.i, %bb6.i.i.i.i.i.i.i ], [ %_18.i.i5.i.i.i.i.i, %bb1.i.i.i.i.i ]
  %_0.sroa.0.0.i.i.i.i.i.i.i = phi ptr [ %_18.i.i5.i.i.i.i.i, %bb6.i.i.i.i.i.i.i ], [ null, %bb1.i.i.i.i.i ]
  %.not.i.not.i.i.i.i.i = icmp eq ptr %_0.sroa.0.0.i.i.i.i.i.i.i, null
  br i1 %.not.i.not.i.i.i.i.i, label %"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE.exit.i.i.i.i.i", label %bb5.i.i.i.i.i.i

bb5.i.i.i.i.i.i:                                  ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E.exit.i.i.i.i.i.i"
  %v.i.i.i.i.i.i = load i8, ptr %_0.sroa.0.0.i.i.i.i.i.i.i, align 1, !noalias !2063, !noundef !11
  br label %"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE.exit.i.i.i.i.i"

"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE.exit.i.i.i.i.i": ; preds = %bb5.i.i.i.i.i.i, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E.exit.i.i.i.i.i.i"
  %_0.sroa.3.0.i.i.i.i.i.i = phi i8 [ %v.i.i.i.i.i.i, %bb5.i.i.i.i.i.i ], [ undef, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E.exit.i.i.i.i.i.i" ]
  br i1 %.not.i.not.i.i.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h4dfb4dd7ccd3d3bbE.exit", label %bb3.i.i.i.i.i

bb3.i.i.i.i.i:                                    ; preds = %"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE.exit.i.i.i.i.i"
  %_3.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %_26.i, i64 %f.sroa.4.0.i.i.i.i
  store i8 %_0.sroa.3.0.i.i.i.i.i.i, ptr %_3.i.i.i.i.i.i.i.i, align 1, !noalias !2064
  %5 = add i64 %f.sroa.4.0.i.i.i.i, 1
  br label %bb1.i.i.i.i.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h4dfb4dd7ccd3d3bbE.exit": ; preds = %"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE.exit.i.i.i.i.i"
  store i64 %f.sroa.4.0.i.i.i.i, ptr %len.i, align 8, !alias.scope !2027, !noalias !2071
  ret void
}

; <alloc::vec::Vec<T> as alloc::vec::spec_from_iter::SpecFromIter<T,I>>::from_iter
; Function Attrs: nonlazybind uwtable
define void @"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h6a977c9a745356deE"(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, ptr noalias noundef align 8 captures(none) dereferenceable(16) %iterator) unnamed_addr #0 {
start:
; call <alloc::vec::Vec<T> as alloc::vec::spec_from_iter_nested::SpecFromIterNested<T,I>>::from_iter
  tail call void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17hbe1afec43c5640b5E"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, ptr noalias noundef align 8 dereferenceable(16) %iterator)
  ret void
}

; <core::slice::sort::shared::smallsort::CopyOnDrop<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define void @"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h222f66ad8a44cfa8E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #12 {
start:
  %src = load ptr, ptr %self, align 8, !noundef !11
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %dst = load ptr, ptr %0, align 8, !noundef !11
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %1, align 8, !noundef !11
  %2 = shl i64 %count, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %dst, ptr align 4 %src, i64 %2, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define noundef range(i8 -1, 2) i8 @cmpfunc(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %a, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %b) unnamed_addr #15 {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2082)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2085)
  %_3.i = load i32, ptr %a, align 4, !alias.scope !2082, !noalias !2085, !noundef !11
  %_4.i = load i32, ptr %b, align 4, !alias.scope !2085, !noalias !2082, !noundef !11
  %_0.i = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32 %_3.i, i32 %_4.i)
  ret i8 %_0.i
}

; Function Attrs: nonlazybind uwtable
define void @f_gold(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %s, i32 noundef range(i32 0, 1114112) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_4.i.i.i.i15 = alloca [24 x i8], align 8
  %_5.sroa.0.i.i16 = alloca i32, align 4
  %_4.i.i.i.i = alloca [24 x i8], align 8
  %_5.sroa.0.i.i = alloca i32, align 4
  %_41 = alloca [24 x i8], align 8
  %_32 = alloca [16 x i8], align 8
  %_26 = alloca [24 x i8], align 8
  %_17 = alloca [16 x i8], align 8
  %2 = getelementptr inbounds nuw i8, ptr %s, i64 16
  %_0.i = load i64, ptr %2, align 8, !alias.scope !2087, !noundef !11
  %_2.i = icmp sgt i64 %_0.i, -1
  tail call void @llvm.assume(i1 %_2.i)
  %_0.i.i.i88.not = icmp eq i64 %_0.i, 0
  %_4.i.i.i.i15.sink106.sroa.gep = getelementptr inbounds nuw i8, ptr %_4.i.i.i.i15, i64 8
  %_4.i.i.i.i15.sink106.sroa.gep110 = getelementptr inbounds nuw i8, ptr %_4.i.i.i.i, i64 8
  %_4.i.i.i.i15.sink106.sroa.gep112 = getelementptr inbounds nuw i8, ptr %_4.i.i.i.i15, i64 16
  %_4.i.i.i.i15.sink106.sroa.gep113 = getelementptr inbounds nuw i8, ptr %_4.i.i.i.i, i64 16
  br i1 %_0.i.i.i88.not, label %bb7, label %bb6.lr.ph

bb6.lr.ph:                                        ; preds = %start
  %3 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %4 = getelementptr inbounds nuw i8, ptr %_17, i64 8
  %5 = getelementptr inbounds nuw i8, ptr %_32, i64 8
  %_11.i.i.i18 = icmp samesign ult i32 %0, 128
  %_12.i.i.i20 = icmp samesign ult i32 %0, 2048
  %_13.i.i.i22 = icmp samesign ult i32 %0, 65536
  %..i.i.i23 = select i1 %_13.i.i.i22, i64 3, i64 4
  %_29.i.i.i.i27 = icmp samesign ult i32 %0, 2048
  %6 = trunc i32 %0 to i8
  %_5.i.i.i.i28 = and i8 %6, 63
  %last1.i.i.i.i29 = or disjoint i8 %_5.i.i.i.i28, -128
  %_10.i.i.i.i30 = lshr i32 %0, 6
  %7 = trunc i32 %_10.i.i.i.i30 to i8
  %_8.i.i.i.i31 = and i8 %7, 63
  %last2.i.i.i.i32 = or disjoint i8 %_8.i.i.i.i31, -128
  %_14.i.i.i.i33 = lshr i32 %0, 12
  %8 = trunc i32 %_14.i.i.i.i33 to i8
  %_12.i.i.i.i34 = and i8 %8, 63
  %last3.i.i.i.i35 = or disjoint i8 %_12.i.i.i.i34, -128
  %_18.i.i.i.i36 = lshr i32 %0, 18
  %_16.i.i.i.i37 = trunc nuw nsw i32 %_18.i.i.i.i36 to i8
  %last4.i.i.i.i38 = or disjoint i8 %_16.i.i.i.i37, -16
  %_30.i.i.i.i40 = icmp samesign ult i32 %0, 65536
  %9 = or disjoint i8 %8, -32
  %10 = or disjoint i8 %7, -64
  %11 = trunc nuw nsw i32 %0 to i8
  %12 = getelementptr inbounds nuw i8, ptr %_4.i.i.i.i15, i64 8
  %13 = getelementptr inbounds nuw i8, ptr %_4.i.i.i.i15, i64 16
  %bytes.sroa.4.0._0.sroa_idx.i.i50 = getelementptr inbounds nuw i8, ptr %_41, i64 8
  %bytes.sroa.5.0._0.sroa_idx.i.i51 = getelementptr inbounds nuw i8, ptr %_41, i64 16
  %_11.i.i.i = icmp samesign ult i32 %1, 128
  %_12.i.i.i = icmp samesign ult i32 %1, 2048
  %_13.i.i.i = icmp samesign ult i32 %1, 65536
  %..i.i.i = select i1 %_13.i.i.i, i64 3, i64 4
  %_29.i.i.i.i = icmp samesign ult i32 %1, 2048
  %14 = trunc i32 %1 to i8
  %_5.i.i.i.i = and i8 %14, 63
  %last1.i.i.i.i = or disjoint i8 %_5.i.i.i.i, -128
  %_10.i.i.i.i = lshr i32 %1, 6
  %15 = trunc i32 %_10.i.i.i.i to i8
  %_8.i.i.i.i = and i8 %15, 63
  %last2.i.i.i.i = or disjoint i8 %_8.i.i.i.i, -128
  %_14.i.i.i.i = lshr i32 %1, 12
  %16 = trunc i32 %_14.i.i.i.i to i8
  %_12.i.i.i.i = and i8 %16, 63
  %last3.i.i.i.i = or disjoint i8 %_12.i.i.i.i, -128
  %_18.i.i.i.i = lshr i32 %1, 18
  %_16.i.i.i.i = trunc nuw nsw i32 %_18.i.i.i.i to i8
  %last4.i.i.i.i = or disjoint i8 %_16.i.i.i.i, -16
  %_30.i.i.i.i = icmp samesign ult i32 %1, 65536
  %17 = or disjoint i8 %16, -32
  %18 = or disjoint i8 %15, -64
  %19 = trunc nuw nsw i32 %1 to i8
  %20 = getelementptr inbounds nuw i8, ptr %_4.i.i.i.i, i64 8
  %21 = getelementptr inbounds nuw i8, ptr %_4.i.i.i.i, i64 16
  %bytes.sroa.4.0._0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %_26, i64 8
  %bytes.sroa.5.0._0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %_26, i64 16
  %spec.select93 = select i1 %_12.i.i.i20, i64 2, i64 %..i.i.i23
  %len.sroa.0.0.i.i.i25 = select i1 %_11.i.i.i18, i64 1, i64 %spec.select93
  %_5.sroa.0.i.i16.1.sroa_idx114 = getelementptr inbounds nuw i8, ptr %_5.sroa.0.i.i16, i64 1
  %_5.sroa.0.i.i16.2.sroa_idx116 = getelementptr inbounds nuw i8, ptr %_5.sroa.0.i.i16, i64 2
  %_5.sroa.0.i.i16.3.sroa_idx = getelementptr inbounds nuw i8, ptr %_5.sroa.0.i.i16, i64 3
  %_5.sroa.0.i.i16.1.sroa_idx = getelementptr inbounds nuw i8, ptr %_5.sroa.0.i.i16, i64 1
  %_5.sroa.0.i.i16.2.sroa_idx = getelementptr inbounds nuw i8, ptr %_5.sroa.0.i.i16, i64 2
  %_5.sroa.0.i.i16.1.sroa_idx115 = getelementptr inbounds nuw i8, ptr %_5.sroa.0.i.i16, i64 1
  %spec.select92 = select i1 %_12.i.i.i, i64 2, i64 %..i.i.i
  %len.sroa.0.0.i.i.i = select i1 %_11.i.i.i, i64 1, i64 %spec.select92
  %_5.sroa.0.i.i.1.sroa_idx107 = getelementptr inbounds nuw i8, ptr %_5.sroa.0.i.i, i64 1
  %_5.sroa.0.i.i.2.sroa_idx109 = getelementptr inbounds nuw i8, ptr %_5.sroa.0.i.i, i64 2
  %_5.sroa.0.i.i.3.sroa_idx = getelementptr inbounds nuw i8, ptr %_5.sroa.0.i.i, i64 3
  %_5.sroa.0.i.i.1.sroa_idx = getelementptr inbounds nuw i8, ptr %_5.sroa.0.i.i, i64 1
  %_5.sroa.0.i.i.2.sroa_idx = getelementptr inbounds nuw i8, ptr %_5.sroa.0.i.i, i64 2
  %_5.sroa.0.i.i.1.sroa_idx108 = getelementptr inbounds nuw i8, ptr %_5.sroa.0.i.i, i64 1
  br label %bb6

bb32:                                             ; preds = %cleanup.loopexit, %cleanup.loopexit.split-lp, %cleanup.i.i73, %cleanup.i.i64, %cleanup2, %cleanup1
  %.pn = phi { ptr, i32 } [ %31, %cleanup2 ], [ %27, %cleanup1 ], [ %28, %cleanup.i.i64 ], [ %32, %cleanup.i.i73 ], [ %lpad.loopexit, %cleanup.loopexit ], [ %lpad.loopexit.split-lp, %cleanup.loopexit.split-lp ]
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h99ea250b3a74dcb0E.exit.i" unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %bb32
  %22 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %terminate.body unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %23 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #31
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h99ea250b3a74dcb0E.exit.i": ; preds = %bb32
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %bb33 unwind label %terminate

cleanup.loopexit:                                 ; preds = %_ZN4core4char7methods15encode_utf8_raw17hc175ebbaeebc4df9E.exit.i.i, %_ZN4core4char7methods15encode_utf8_raw17hc175ebbaeebc4df9E.exit.i.i45, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h99ea250b3a74dcb0E.exit.i67", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h99ea250b3a74dcb0E.exit.i76"
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb32

cleanup.loopexit.split-lp:                        ; preds = %bb3.i.i3.i.i.invoke, %bb2.i.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb32

bb6:                                              ; preds = %bb6.lr.ph, %bb29
  %spec.select91 = phi i64 [ 1, %bb6.lr.ph ], [ %spec.select, %bb29 ]
  %iter.sroa.0.090 = phi i64 [ 0, %bb6.lr.ph ], [ %spec.select91, %bb29 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_17)
  %_6.i.i = load ptr, ptr %3, align 8, !alias.scope !2090, !nonnull !11, !noundef !11
  %len.i.i = load i64, ptr %2, align 8, !alias.scope !2090, !noundef !11
  %_7.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %len.i.i
  store ptr %_6.i.i, ptr %_17, align 8
  store ptr %_7.i, ptr %4, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_15 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hb3fa37af0af5de09E(ptr noalias noundef align 8 dereferenceable(16) %_17, i64 noundef %iter.sroa.0.090)
  %.not.i5 = icmp eq i32 %_15, 1114112
  br i1 %.not.i5, label %bb2.i.invoke, label %bb11, !prof !14

bb7:                                              ; preds = %bb29, %start
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_0, ptr noundef nonnull align 8 dereferenceable(24) %s, i64 24, i1 false)
  ret void

bb11:                                             ; preds = %bb6
  %_13 = icmp eq i32 %_15, %0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_17)
  br i1 %_13, label %bb12, label %bb17

bb17:                                             ; preds = %bb11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_32)
  store ptr %_6.i.i, ptr %_32, align 8
  store ptr %_7.i, ptr %5, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_30 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hb3fa37af0af5de09E(ptr noalias noundef align 8 dereferenceable(16) %_32, i64 noundef %iter.sroa.0.090)
  %.not.i = icmp eq i32 %_30, 1114112
  br i1 %.not.i, label %bb2.i.invoke, label %bb21, !prof !14

bb12:                                             ; preds = %bb11
  %_23 = add nuw nsw i64 %iter.sroa.0.090, 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_26)
  call void @llvm.experimental.noalias.scope.decl(metadata !2095)
  call void @llvm.experimental.noalias.scope.decl(metadata !2098)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_5.sroa.0.i.i)
  store i32 0, ptr %_5.sroa.0.i.i, align 4, !noalias !2101
  br i1 %_11.i.i.i, label %bb12.i.i.i.i, label %bb7.i.i.i.i

bb7.i.i.i.i:                                      ; preds = %bb12
  br i1 %_29.i.i.i.i, label %bb1.i.i.i.i, label %bb2.i.i.i.i

bb12.i.i.i.i:                                     ; preds = %bb12
  store i8 %19, ptr %_5.sroa.0.i.i, align 4, !alias.scope !2104, !noalias !2101
  br label %_ZN4core4char7methods15encode_utf8_raw17hc175ebbaeebc4df9E.exit.i.i

bb2.i.i.i.i:                                      ; preds = %bb7.i.i.i.i
  br i1 %_30.i.i.i.i, label %bb3.i.i.i.i, label %bb4.i.i.i.i

bb1.i.i.i.i:                                      ; preds = %bb7.i.i.i.i
  store i8 %18, ptr %_5.sroa.0.i.i, align 4, !alias.scope !2104, !noalias !2101
  store i8 %last1.i.i.i.i, ptr %_5.sroa.0.i.i.1.sroa_idx108, align 1, !alias.scope !2104, !noalias !2101
  br label %_ZN4core4char7methods15encode_utf8_raw17hc175ebbaeebc4df9E.exit.i.i

bb4.i.i.i.i:                                      ; preds = %bb2.i.i.i.i
  store i8 %last4.i.i.i.i, ptr %_5.sroa.0.i.i, align 4, !alias.scope !2104, !noalias !2101
  store i8 %last3.i.i.i.i, ptr %_5.sroa.0.i.i.1.sroa_idx107, align 1, !alias.scope !2104, !noalias !2101
  store i8 %last2.i.i.i.i, ptr %_5.sroa.0.i.i.2.sroa_idx109, align 2, !alias.scope !2104, !noalias !2101
  store i8 %last1.i.i.i.i, ptr %_5.sroa.0.i.i.3.sroa_idx, align 1, !alias.scope !2104, !noalias !2101
  br label %_ZN4core4char7methods15encode_utf8_raw17hc175ebbaeebc4df9E.exit.i.i

bb3.i.i.i.i:                                      ; preds = %bb2.i.i.i.i
  store i8 %17, ptr %_5.sroa.0.i.i, align 4, !alias.scope !2104, !noalias !2101
  store i8 %last2.i.i.i.i, ptr %_5.sroa.0.i.i.1.sroa_idx, align 1, !alias.scope !2104, !noalias !2101
  store i8 %last1.i.i.i.i, ptr %_5.sroa.0.i.i.2.sroa_idx, align 2, !alias.scope !2104, !noalias !2101
  br label %_ZN4core4char7methods15encode_utf8_raw17hc175ebbaeebc4df9E.exit.i.i

_ZN4core4char7methods15encode_utf8_raw17hc175ebbaeebc4df9E.exit.i.i: ; preds = %bb3.i.i.i.i, %bb4.i.i.i.i, %bb1.i.i.i.i, %bb12.i.i.i.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i.i.i), !noalias !2107
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i.i.i, i64 noundef range(i64 1, 5) %len.sroa.0.0.i.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc12 unwind label %cleanup.loopexit

.noexc12:                                         ; preds = %_ZN4core4char7methods15encode_utf8_raw17hc175ebbaeebc4df9E.exit.i.i
  %_5.i.i2.i.i = load i64, ptr %_4.i.i.i.i, align 8, !range !12, !noalias !2107, !noundef !11
  %24 = trunc nuw i64 %_5.i.i2.i.i to i1
  br i1 %24, label %bb3.i.i3.i.i.invoke, label %"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17ha031fa6408ab7105E.exit", !prof !14

bb3.i.i3.i.i.invoke:                              ; preds = %.noexc12, %.noexc61
  %_4.i.i.i.i15.sink106.sroa.phi = phi ptr [ %_4.i.i.i.i15.sink106.sroa.gep, %.noexc61 ], [ %_4.i.i.i.i15.sink106.sroa.gep110, %.noexc12 ]
  %_4.i.i.i.i15.sink106.sroa.phi111 = phi ptr [ %_4.i.i.i.i15.sink106.sroa.gep112, %.noexc61 ], [ %_4.i.i.i.i15.sink106.sroa.gep113, %.noexc12 ]
  %err.0.i.i.i.i53 = load i64, ptr %_4.i.i.i.i15.sink106.sroa.phi, align 8, !range !13, !noalias !11, !noundef !11
  %err.1.i.i.i.i54 = load i64, ptr %_4.i.i.i.i15.sink106.sroa.phi111, align 8, !noalias !11
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i.i.i53, i64 %err.1.i.i.i.i54) #29
          to label %bb3.i.i3.i.i.cont unwind label %cleanup.loopexit.split-lp

bb3.i.i3.i.i.cont:                                ; preds = %bb3.i.i3.i.i.invoke
  unreachable

"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17ha031fa6408ab7105E.exit": ; preds = %.noexc12
  %this.0.i.i.i.i = load i64, ptr %20, align 8, !range !1800, !noalias !2107, !noundef !11
  %this.1.i.i.i.i = load ptr, ptr %21, align 8, !noalias !2107, !nonnull !11, !noundef !11
  %_7.i.i.i.i = icmp samesign ule i64 %len.sroa.0.0.i.i.i, %this.0.i.i.i.i
  call void @llvm.assume(i1 %_7.i.i.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i.i.i), !noalias !2107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %this.1.i.i.i.i, ptr noundef nonnull readonly align 4 dereferenceable(1) %_5.sroa.0.i.i, i64 range(i64 1, 5) %len.sroa.0.0.i.i.i, i1 false), !noalias !2111
  store i64 %this.0.i.i.i.i, ptr %_26, align 8, !alias.scope !2112, !noalias !2113
  store ptr %this.1.i.i.i.i, ptr %bytes.sroa.4.0._0.sroa_idx.i.i, align 8, !alias.scope !2112, !noalias !2113
  store i64 %len.sroa.0.0.i.i.i, ptr %bytes.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !2112, !noalias !2113
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_5.sroa.0.i.i)
; invoke alloc::string::String::replace_range
  invoke void @_ZN5alloc6string6String13replace_range17h664d473e476aaa46E(ptr noalias noundef align 8 dereferenceable(24) %s, i64 noundef %iter.sroa.0.090, i64 noundef %_23, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %this.1.i.i.i.i, i64 noundef %len.sroa.0.0.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_2e9ecbc1f42a5da546130bf029d2e0a9)
          to label %bb15 unwind label %cleanup2

bb2.i.invoke:                                     ; preds = %bb17, %bb6
  %25 = phi ptr [ @alloc_95740aa5a3105863e5e0aea14ec0eaa4, %bb6 ], [ @alloc_f2778d43092910bbc687852be59ae1a4, %bb17 ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %25) #32
          to label %bb2.i.cont unwind label %cleanup.loopexit.split-lp

bb2.i.cont:                                       ; preds = %bb2.i.invoke
  unreachable

bb21:                                             ; preds = %bb17
  %_28 = icmp eq i32 %_30, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_32)
  br i1 %_28, label %bb22, label %bb29

bb22:                                             ; preds = %bb21
  %_38 = add nuw nsw i64 %iter.sroa.0.090, 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_41)
  call void @llvm.experimental.noalias.scope.decl(metadata !2114)
  call void @llvm.experimental.noalias.scope.decl(metadata !2117)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_5.sroa.0.i.i16)
  store i32 0, ptr %_5.sroa.0.i.i16, align 4, !noalias !2120
  br i1 %_11.i.i.i18, label %bb12.i.i.i.i60, label %bb7.i.i.i.i26

bb7.i.i.i.i26:                                    ; preds = %bb22
  br i1 %_29.i.i.i.i27, label %bb1.i.i.i.i58, label %bb2.i.i.i.i39

bb12.i.i.i.i60:                                   ; preds = %bb22
  store i8 %11, ptr %_5.sroa.0.i.i16, align 4, !alias.scope !2123, !noalias !2120
  br label %_ZN4core4char7methods15encode_utf8_raw17hc175ebbaeebc4df9E.exit.i.i45

bb2.i.i.i.i39:                                    ; preds = %bb7.i.i.i.i26
  br i1 %_30.i.i.i.i40, label %bb3.i.i.i.i55, label %bb4.i.i.i.i41

bb1.i.i.i.i58:                                    ; preds = %bb7.i.i.i.i26
  store i8 %10, ptr %_5.sroa.0.i.i16, align 4, !alias.scope !2123, !noalias !2120
  store i8 %last1.i.i.i.i29, ptr %_5.sroa.0.i.i16.1.sroa_idx115, align 1, !alias.scope !2123, !noalias !2120
  br label %_ZN4core4char7methods15encode_utf8_raw17hc175ebbaeebc4df9E.exit.i.i45

bb4.i.i.i.i41:                                    ; preds = %bb2.i.i.i.i39
  store i8 %last4.i.i.i.i38, ptr %_5.sroa.0.i.i16, align 4, !alias.scope !2123, !noalias !2120
  store i8 %last3.i.i.i.i35, ptr %_5.sroa.0.i.i16.1.sroa_idx114, align 1, !alias.scope !2123, !noalias !2120
  store i8 %last2.i.i.i.i32, ptr %_5.sroa.0.i.i16.2.sroa_idx116, align 2, !alias.scope !2123, !noalias !2120
  store i8 %last1.i.i.i.i29, ptr %_5.sroa.0.i.i16.3.sroa_idx, align 1, !alias.scope !2123, !noalias !2120
  br label %_ZN4core4char7methods15encode_utf8_raw17hc175ebbaeebc4df9E.exit.i.i45

bb3.i.i.i.i55:                                    ; preds = %bb2.i.i.i.i39
  store i8 %9, ptr %_5.sroa.0.i.i16, align 4, !alias.scope !2123, !noalias !2120
  store i8 %last2.i.i.i.i32, ptr %_5.sroa.0.i.i16.1.sroa_idx, align 1, !alias.scope !2123, !noalias !2120
  store i8 %last1.i.i.i.i29, ptr %_5.sroa.0.i.i16.2.sroa_idx, align 2, !alias.scope !2123, !noalias !2120
  br label %_ZN4core4char7methods15encode_utf8_raw17hc175ebbaeebc4df9E.exit.i.i45

_ZN4core4char7methods15encode_utf8_raw17hc175ebbaeebc4df9E.exit.i.i45: ; preds = %bb3.i.i.i.i55, %bb4.i.i.i.i41, %bb1.i.i.i.i58, %bb12.i.i.i.i60
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i.i.i15), !noalias !2126
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i.i.i15, i64 noundef range(i64 1, 5) %len.sroa.0.0.i.i.i25, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc61 unwind label %cleanup.loopexit

.noexc61:                                         ; preds = %_ZN4core4char7methods15encode_utf8_raw17hc175ebbaeebc4df9E.exit.i.i45
  %_5.i.i2.i.i46 = load i64, ptr %_4.i.i.i.i15, align 8, !range !12, !noalias !2126, !noundef !11
  %26 = trunc nuw i64 %_5.i.i2.i.i46 to i1
  br i1 %26, label %bb3.i.i3.i.i.invoke, label %"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17ha031fa6408ab7105E.exit63", !prof !14

"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17ha031fa6408ab7105E.exit63": ; preds = %.noexc61
  %this.0.i.i.i.i47 = load i64, ptr %12, align 8, !range !1800, !noalias !2126, !noundef !11
  %this.1.i.i.i.i48 = load ptr, ptr %13, align 8, !noalias !2126, !nonnull !11, !noundef !11
  %_7.i.i.i.i49 = icmp samesign ule i64 %len.sroa.0.0.i.i.i25, %this.0.i.i.i.i47
  call void @llvm.assume(i1 %_7.i.i.i.i49)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i.i.i15), !noalias !2126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %this.1.i.i.i.i48, ptr noundef nonnull readonly align 4 dereferenceable(1) %_5.sroa.0.i.i16, i64 range(i64 1, 5) %len.sroa.0.0.i.i.i25, i1 false), !noalias !2130
  store i64 %this.0.i.i.i.i47, ptr %_41, align 8, !alias.scope !2131, !noalias !2132
  store ptr %this.1.i.i.i.i48, ptr %bytes.sroa.4.0._0.sroa_idx.i.i50, align 8, !alias.scope !2131, !noalias !2132
  store i64 %len.sroa.0.0.i.i.i25, ptr %bytes.sroa.5.0._0.sroa_idx.i.i51, align 8, !alias.scope !2131, !noalias !2132
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_5.sroa.0.i.i16)
; invoke alloc::string::String::replace_range
  invoke void @_ZN5alloc6string6String13replace_range17h664d473e476aaa46E(ptr noalias noundef align 8 dereferenceable(24) %s, i64 noundef %iter.sroa.0.090, i64 noundef %_38, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %this.1.i.i.i.i48, i64 noundef %len.sroa.0.0.i.i.i25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4df0d0febdd5d3a64363530ad4e25ffb)
          to label %bb25 unwind label %cleanup1

cleanup1:                                         ; preds = %"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17ha031fa6408ab7105E.exit63"
  %27 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h2fc0af7d5458b074E"(ptr noalias noundef align 8 dereferenceable(24) %_41) #30
          to label %bb32 unwind label %terminate

bb25:                                             ; preds = %"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17ha031fa6408ab7105E.exit63"
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_41)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h99ea250b3a74dcb0E.exit.i67" unwind label %cleanup.i.i64

cleanup.i.i64:                                    ; preds = %bb25
  %28 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_41)
          to label %bb32 unwind label %terminate.i.i65

terminate.i.i65:                                  ; preds = %cleanup.i.i64
  %29 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #31
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h99ea250b3a74dcb0E.exit.i67": ; preds = %bb25
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_41)
          to label %bb26 unwind label %cleanup.loopexit

bb26:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h99ea250b3a74dcb0E.exit.i67"
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_41)
  br label %bb29

bb29:                                             ; preds = %bb21, %bb26, %bb16
  %_0.i.i.i = icmp ult i64 %spec.select91, %_0.i
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select91, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb6, label %bb7

terminate:                                        ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h99ea250b3a74dcb0E.exit.i", %cleanup2, %cleanup1
  %30 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  br label %terminate.body

terminate.body:                                   ; preds = %cleanup.i.i, %terminate
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #31
  unreachable

cleanup2:                                         ; preds = %"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17ha031fa6408ab7105E.exit"
  %31 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h2fc0af7d5458b074E"(ptr noalias noundef align 8 dereferenceable(24) %_26) #30
          to label %bb32 unwind label %terminate

bb15:                                             ; preds = %"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17ha031fa6408ab7105E.exit"
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_26)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h99ea250b3a74dcb0E.exit.i76" unwind label %cleanup.i.i73

cleanup.i.i73:                                    ; preds = %bb15
  %32 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_26)
          to label %bb32 unwind label %terminate.i.i74

terminate.i.i74:                                  ; preds = %cleanup.i.i73
  %33 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #31
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h99ea250b3a74dcb0E.exit.i76": ; preds = %bb15
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_26)
          to label %bb16 unwind label %cleanup.loopexit

bb16:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h99ea250b3a74dcb0E.exit.i76"
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_26)
  br label %bb29

bb33:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h99ea250b3a74dcb0E.exit.i"
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i64 0, 2305843009213693952) i64 @len(ptr noalias noundef nonnull readonly align 4 captures(none) %arr.0, i64 noundef returned range(i64 0, 2305843009213693952) %arr.1) unnamed_addr #9 {
start:
  ret i64 %arr.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i32 @max(i32 noundef %x, i32 noundef %y) unnamed_addr #9 {
start:
  %x.y = tail call i32 @llvm.smax.i32(i32 %x, i32 %y)
  ret i32 %x.y
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i32 @min(i32 noundef %x, i32 noundef %y) unnamed_addr #9 {
start:
  %x.y = tail call i32 @llvm.smin.i32(i32 %x, i32 %y)
  ret i32 %x.y
}

; Function Attrs: nonlazybind uwtable
define void @sort(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %compare.i = alloca [0 x i8], align 1
  %is_less.i.i = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2133
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !2136
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17ha698072e04d5ef62E.exit", label %bb7.i.i, !prof !1737

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !1737

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17hd35de4adb83fad78E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17ha698072e04d5ef62E.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h66e929b23f8108b6E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i64 noundef 1, ptr noalias align 8 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17ha698072e04d5ef62E.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17ha698072e04d5ef62E.exit": ; preds = %start, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2133
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #18

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #19

; core::panicking::panic_in_cleanup
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() unnamed_addr #20

; core::panicking::panic_fmt
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #21

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #19

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32, i32) #22

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
declare void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
declare void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; core::panicking::panic
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking5panic17ha2e20a73227bb72eE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #21

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #23

; core::slice::sort::shared::smallsort::panic_on_ord_violation
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() unnamed_addr #21

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #24

; core::slice::index::slice_index_fail
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #21

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #22

; core::slice::sort::stable::drift::sqrt_approx
; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h72a4dc1ae46294f4E(i64 noundef) unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #22

; core::option::unwrap_failed
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #21

; alloc::vec::Vec<T,A>::reserve
; Function Attrs: nonlazybind uwtable
declare void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd7d983ab73297baaE"(ptr noalias noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
; Function Attrs: cold nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h3fb8db3e79fd71d4E"(ptr noalias noundef align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #25

; alloc::raw_vec::RawVecInner<A>::try_allocate_in
; Function Attrs: nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; alloc::raw_vec::handle_error
; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #26

; alloc::raw_vec::RawVecInner<A>::deallocate
; Function Attrs: nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef align 8 dereferenceable(16), i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #28

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nofree norecurse nosync nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #19 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #20 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #24 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #25 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { noreturn }
attributes #30 = { cold }
attributes #31 = { cold noreturn nounwind }
attributes #32 = { noinline noreturn }
attributes #33 = { noinline }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.93.1 (01f6ddf75 2026-02-11)"}
!3 = !{!4}
!4 = distinct !{!4, !5, !"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he6318308207387e9E: %self"}
!5 = distinct !{!5, !"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he6318308207387e9E"}
!6 = !{!7, !8, !10}
!7 = distinct !{!7, !5, !"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he6318308207387e9E: %_0"}
!8 = distinct !{!8, !9, !"_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hde7e14e32dc0be06E: %_0"}
!9 = distinct !{!9, !"_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hde7e14e32dc0be06E"}
!10 = distinct !{!10, !9, !"_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hde7e14e32dc0be06E: %self"}
!11 = !{}
!12 = !{i64 0, i64 2}
!13 = !{i64 0, i64 -9223372036854775807}
!14 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hbe17c1eaad2150f2E: %self"}
!17 = distinct !{!17, !"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hbe17c1eaad2150f2E"}
!18 = !{!19}
!19 = distinct !{!19, !17, !"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hbe17c1eaad2150f2E: %iterator"}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h4dfb4dd7ccd3d3bbE: %self"}
!22 = distinct !{!22, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h4dfb4dd7ccd3d3bbE"}
!23 = !{!24}
!24 = distinct !{!24, !22, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h4dfb4dd7ccd3d3bbE: argument 1"}
!25 = !{!21, !16}
!26 = !{!24, !19}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_ZN4core4iter6traits8iterator8Iterator8for_each17h3fc7c7948201a0e0E: %self"}
!29 = distinct !{!29, !"_ZN4core4iter6traits8iterator8Iterator8for_each17h3fc7c7948201a0e0E"}
!30 = !{!31}
!31 = distinct !{!31, !32, !"_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h27995977b519942bE: %self"}
!32 = distinct !{!32, !"_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h27995977b519942bE"}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_ZN79_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..IteratorRefSpec$GT$9spec_fold17h2b397796b6b9701bE: %self"}
!35 = distinct !{!35, !"_ZN79_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..IteratorRefSpec$GT$9spec_fold17h2b397796b6b9701bE"}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17hb2b762f30a1b0aa6E: %self"}
!38 = distinct !{!38, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17hb2b762f30a1b0aa6E"}
!39 = !{!40}
!40 = distinct !{!40, !41, !"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE: %self"}
!41 = distinct !{!41, !"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE"}
!42 = !{!43, !40, !37, !34, !31, !28, !24, !19}
!43 = distinct !{!43, !44, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E: %self"}
!44 = distinct !{!44, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E"}
!45 = !{!46, !47, !48, !49, !21, !16}
!46 = distinct !{!46, !38, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17hb2b762f30a1b0aa6E: %f"}
!47 = distinct !{!47, !35, !"_ZN79_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..IteratorRefSpec$GT$9spec_fold17h2b397796b6b9701bE: %fold"}
!48 = distinct !{!48, !32, !"_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h27995977b519942bE: %f"}
!49 = distinct !{!49, !29, !"_ZN4core4iter6traits8iterator8Iterator8for_each17h3fc7c7948201a0e0E: %f"}
!50 = !{!40, !37, !46, !34, !47, !31, !48, !28, !49, !24, !19}
!51 = !{!52, !54, !56, !37, !46, !34, !47, !31, !48, !28, !49, !24, !19}
!52 = distinct !{!52, !53, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted28_$u7b$$u7b$closure$u7d$$u7d$17ha3560bb8d95a1997E: %_1"}
!53 = distinct !{!53, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted28_$u7b$$u7b$closure$u7d$$u7d$17ha3560bb8d95a1997E"}
!54 = distinct !{!54, !55, !"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h20f332f386876823E: %_1"}
!55 = distinct !{!55, !"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h20f332f386876823E"}
!56 = distinct !{!56, !57, !"_ZN4core3ops9try_trait26NeverShortCircuit$LT$T$GT$10wrap_mut_228_$u7b$$u7b$closure$u7d$$u7d$17h0edf119265f3dddbE: %_1"}
!57 = distinct !{!57, !"_ZN4core3ops9try_trait26NeverShortCircuit$LT$T$GT$10wrap_mut_228_$u7b$$u7b$closure$u7d$$u7d$17h0edf119265f3dddbE"}
!58 = !{!59, !61, !63, !65, !67, !37, !46, !34, !47, !31, !48, !28, !49, !24, !19}
!59 = distinct !{!59, !60, !"_ZN83_$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc595cb6c8b2aa3efE: %self"}
!60 = distinct !{!60, !"_ZN83_$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc595cb6c8b2aa3efE"}
!61 = distinct !{!61, !62, !"_ZN4core3ptr62drop_in_place$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$GT$17h1f1aab2bacf9b9b4E: %_1"}
!62 = distinct !{!62, !"_ZN4core3ptr62drop_in_place$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$GT$17h1f1aab2bacf9b9b4E"}
!63 = distinct !{!63, !64, !"_ZN4core3ptr133drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$..extend_trusted$LT$$RF$mut$u20$core..str..iter..Bytes$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hf91b5f580814f756E: %_1"}
!64 = distinct !{!64, !"_ZN4core3ptr133drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$..extend_trusted$LT$$RF$mut$u20$core..str..iter..Bytes$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hf91b5f580814f756E"}
!65 = distinct !{!65, !66, !"_ZN4core3ptr229drop_in_place$LT$core..iter..traits..iterator..Iterator..for_each..call$LT$u8$C$alloc..vec..Vec$LT$u8$GT$..extend_trusted$LT$$RF$mut$u20$core..str..iter..Bytes$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h23647e0417c63defE: %_1"}
!66 = distinct !{!66, !"_ZN4core3ptr229drop_in_place$LT$core..iter..traits..iterator..Iterator..for_each..call$LT$u8$C$alloc..vec..Vec$LT$u8$GT$..extend_trusted$LT$$RF$mut$u20$core..str..iter..Bytes$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h23647e0417c63defE"}
!67 = distinct !{!67, !68, !"_ZN4core3ptr349drop_in_place$LT$core..ops..try_trait..NeverShortCircuit$LT$$LP$$RP$$GT$..wrap_mut_2$LT$$LP$$RP$$C$u8$C$core..iter..traits..iterator..Iterator..for_each..call$LT$u8$C$alloc..vec..Vec$LT$u8$GT$..extend_trusted$LT$$RF$mut$u20$core..str..iter..Bytes$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h0579d3110ba2d4c7E: %_1"}
!68 = distinct !{!68, !"_ZN4core3ptr349drop_in_place$LT$core..ops..try_trait..NeverShortCircuit$LT$$LP$$RP$$GT$..wrap_mut_2$LT$$LP$$RP$$C$u8$C$core..iter..traits..iterator..Iterator..for_each..call$LT$u8$C$alloc..vec..Vec$LT$u8$GT$..extend_trusted$LT$$RF$mut$u20$core..str..iter..Bytes$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h0579d3110ba2d4c7E"}
!69 = !{i64 8}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZN4core3ptr10swap_chunk17h1290c1db3f08ea73E: %x"}
!72 = distinct !{!72, !"_ZN4core3ptr10swap_chunk17h1290c1db3f08ea73E"}
!73 = !{!74}
!74 = distinct !{!74, !72, !"_ZN4core3ptr10swap_chunk17h1290c1db3f08ea73E: %y"}
!75 = !{!76}
!76 = distinct !{!76, !72, !"_ZN4core3ptr10swap_chunk17h1290c1db3f08ea73E: %x:It1"}
!77 = !{!78}
!78 = distinct !{!78, !72, !"_ZN4core3ptr10swap_chunk17h1290c1db3f08ea73E: %y:It1"}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZN79_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8732bad187be2872E: %self"}
!81 = distinct !{!81, !"_ZN79_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8732bad187be2872E"}
!82 = !{!83, !85}
!83 = distinct !{!83, !84, !"_ZN150_$LT$$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2ecf85fda31b43b2E: %self"}
!84 = distinct !{!84, !"_ZN150_$LT$$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2ecf85fda31b43b2E"}
!85 = distinct !{!85, !86, !"_ZN4core3ptr149drop_in_place$LT$$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$u8$C$alloc..alloc..Global$GT$$GT$17hde8ef4c655ab9482E: %_1"}
!86 = distinct !{!86, !"_ZN4core3ptr149drop_in_place$LT$$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$u8$C$alloc..alloc..Global$GT$$GT$17hde8ef4c655ab9482E"}
!87 = !{!83, !85, !80}
!88 = !{!89, !91}
!89 = distinct !{!89, !90, !"_ZN150_$LT$$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2ecf85fda31b43b2E: %self"}
!90 = distinct !{!90, !"_ZN150_$LT$$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2ecf85fda31b43b2E"}
!91 = distinct !{!91, !92, !"_ZN4core3ptr149drop_in_place$LT$$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$u8$C$alloc..alloc..Global$GT$$GT$17hde8ef4c655ab9482E: %_1"}
!92 = distinct !{!92, !"_ZN4core3ptr149drop_in_place$LT$$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$u8$C$alloc..alloc..Global$GT$$GT$17hde8ef4c655ab9482E"}
!93 = !{!89, !91, !80}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E: %self"}
!96 = distinct !{!96, !"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"}
!97 = !{!98, !95}
!98 = distinct !{!98, !99, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h1116aa408d57acd4E: %self"}
!99 = distinct !{!99, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h1116aa408d57acd4E"}
!100 = !{!101, !95}
!101 = distinct !{!101, !102, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h1116aa408d57acd4E: %self"}
!102 = distinct !{!102, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h1116aa408d57acd4E"}
!103 = !{!104, !95}
!104 = distinct !{!104, !105, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h1116aa408d57acd4E: %self"}
!105 = distinct !{!105, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h1116aa408d57acd4E"}
!106 = !{!107}
!107 = distinct !{!107, !108, !"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E: %self"}
!108 = distinct !{!108, !"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E"}
!109 = !{!110}
!110 = distinct !{!110, !111, !"_ZN4core3str11validations15next_code_point17h224ec93d13e62fdcE: %bytes"}
!111 = distinct !{!111, !"_ZN4core3str11validations15next_code_point17h224ec93d13e62fdcE"}
!112 = !{!113, !110, !107}
!113 = distinct !{!113, !114, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E: %self"}
!114 = distinct !{!114, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E"}
!115 = !{!110, !107}
!116 = !{!117, !110, !107}
!117 = distinct !{!117, !118, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E: %self"}
!118 = distinct !{!118, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E"}
!119 = !{!120, !110, !107}
!120 = distinct !{!120, !121, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E: %self"}
!121 = distinct !{!121, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E"}
!122 = !{!123, !110, !107}
!123 = distinct !{!123, !124, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E: %self"}
!124 = distinct !{!124, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E"}
!125 = !{!126}
!126 = distinct !{!126, !127, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!127 = distinct !{!127, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!128 = !{!129}
!129 = distinct !{!129, !127, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!130 = !{!131}
!131 = distinct !{!131, !132, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!132 = distinct !{!132, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!133 = !{!134}
!134 = distinct !{!134, !135, !"_ZN4core5slice4sort6shared5pivot7median317h5cadbf89edcd1b98E: %c"}
!135 = distinct !{!135, !"_ZN4core5slice4sort6shared5pivot7median317h5cadbf89edcd1b98E"}
!136 = !{!137}
!137 = distinct !{!137, !132, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!138 = !{!139}
!139 = distinct !{!139, !140, !"cmpfunc: %a"}
!140 = distinct !{!140, !"cmpfunc"}
!141 = !{!142}
!142 = distinct !{!142, !140, !"cmpfunc: %b"}
!143 = !{!144}
!144 = distinct !{!144, !145, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!145 = distinct !{!145, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!146 = !{!147}
!147 = distinct !{!147, !145, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!148 = !{!144, !139, !131, !126}
!149 = !{!147, !142, !137, !129, !134}
!150 = !{!147, !142, !137, !129}
!151 = !{!144, !139, !131, !126, !134}
!152 = !{!153, !155, !157, !159}
!153 = distinct !{!153, !154, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!154 = distinct !{!154, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!155 = distinct !{!155, !156, !"cmpfunc: %b"}
!156 = distinct !{!156, !"cmpfunc"}
!157 = distinct !{!157, !158, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!158 = distinct !{!158, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!159 = distinct !{!159, !160, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!160 = distinct !{!160, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!161 = !{!162, !163, !164, !165}
!162 = distinct !{!162, !154, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!163 = distinct !{!163, !156, !"cmpfunc: %a"}
!164 = distinct !{!164, !158, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!165 = distinct !{!165, !160, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!166 = !{!167}
!167 = distinct !{!167, !168, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!168 = distinct !{!168, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!169 = !{!170}
!170 = distinct !{!170, !168, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!171 = !{!172}
!172 = distinct !{!172, !173, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!173 = distinct !{!173, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!174 = !{!175}
!175 = distinct !{!175, !173, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!176 = !{!177}
!177 = distinct !{!177, !178, !"cmpfunc: %a"}
!178 = distinct !{!178, !"cmpfunc"}
!179 = !{!180}
!180 = distinct !{!180, !178, !"cmpfunc: %b"}
!181 = !{!182}
!182 = distinct !{!182, !183, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!183 = distinct !{!183, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!184 = !{!185}
!185 = distinct !{!185, !183, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!186 = !{!182, !177, !172, !167}
!187 = !{!185, !180, !175, !170}
!188 = !{!189, !191, !193, !195}
!189 = distinct !{!189, !190, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!190 = distinct !{!190, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!191 = distinct !{!191, !192, !"cmpfunc: %b"}
!192 = distinct !{!192, !"cmpfunc"}
!193 = distinct !{!193, !194, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!194 = distinct !{!194, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!195 = distinct !{!195, !196, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!196 = distinct !{!196, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!197 = !{!198, !199, !200, !201}
!198 = distinct !{!198, !190, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!199 = distinct !{!199, !192, !"cmpfunc: %a"}
!200 = distinct !{!200, !194, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!201 = distinct !{!201, !196, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!202 = !{!203, !205}
!203 = distinct !{!203, !204, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h222f66ad8a44cfa8E: %self"}
!204 = distinct !{!204, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h222f66ad8a44cfa8E"}
!205 = distinct !{!205, !206, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h468cbb08835e7a95E: %_1"}
!206 = distinct !{!206, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h468cbb08835e7a95E"}
!207 = !{!208}
!208 = distinct !{!208, !209, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!209 = distinct !{!209, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!210 = !{!211}
!211 = distinct !{!211, !209, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!212 = !{!213}
!213 = distinct !{!213, !214, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!214 = distinct !{!214, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!215 = !{!216}
!216 = distinct !{!216, !214, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!217 = !{!218}
!218 = distinct !{!218, !219, !"cmpfunc: %a"}
!219 = distinct !{!219, !"cmpfunc"}
!220 = !{!221}
!221 = distinct !{!221, !219, !"cmpfunc: %b"}
!222 = !{!223}
!223 = distinct !{!223, !224, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!224 = distinct !{!224, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!225 = !{!226}
!226 = distinct !{!226, !224, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!227 = !{!223, !218, !213, !208}
!228 = !{!226, !221, !216, !211}
!229 = !{!230}
!230 = distinct !{!230, !231, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!231 = distinct !{!231, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!232 = !{!233}
!233 = distinct !{!233, !231, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!234 = !{!235}
!235 = distinct !{!235, !236, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!236 = distinct !{!236, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!237 = !{!238}
!238 = distinct !{!238, !236, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!239 = !{!240}
!240 = distinct !{!240, !241, !"cmpfunc: %a"}
!241 = distinct !{!241, !"cmpfunc"}
!242 = !{!243}
!243 = distinct !{!243, !241, !"cmpfunc: %b"}
!244 = !{!245}
!245 = distinct !{!245, !246, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!246 = distinct !{!246, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!247 = !{!248}
!248 = distinct !{!248, !246, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!249 = !{!245, !240, !235, !230}
!250 = !{!248, !243, !238, !233}
!251 = !{!252}
!252 = distinct !{!252, !253, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!253 = distinct !{!253, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!254 = !{!255}
!255 = distinct !{!255, !253, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!256 = !{!257}
!257 = distinct !{!257, !258, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!258 = distinct !{!258, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!259 = !{!260}
!260 = distinct !{!260, !258, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!261 = !{!262}
!262 = distinct !{!262, !263, !"cmpfunc: %a"}
!263 = distinct !{!263, !"cmpfunc"}
!264 = !{!265}
!265 = distinct !{!265, !263, !"cmpfunc: %b"}
!266 = !{!267}
!267 = distinct !{!267, !268, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!268 = distinct !{!268, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!269 = !{!270}
!270 = distinct !{!270, !268, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!271 = !{!267, !262, !257, !252}
!272 = !{!270, !265, !260, !255}
!273 = !{!274}
!274 = distinct !{!274, !275, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!275 = distinct !{!275, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!276 = !{!277}
!277 = distinct !{!277, !275, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!278 = !{!279}
!279 = distinct !{!279, !280, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!280 = distinct !{!280, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!281 = !{!282}
!282 = distinct !{!282, !280, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!283 = !{!284}
!284 = distinct !{!284, !285, !"cmpfunc: %a"}
!285 = distinct !{!285, !"cmpfunc"}
!286 = !{!287}
!287 = distinct !{!287, !285, !"cmpfunc: %b"}
!288 = !{!289}
!289 = distinct !{!289, !290, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!290 = distinct !{!290, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!291 = !{!292}
!292 = distinct !{!292, !290, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!293 = !{!289, !284, !279, !274}
!294 = !{!292, !287, !282, !277}
!295 = !{!296}
!296 = distinct !{!296, !297, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!297 = distinct !{!297, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!298 = !{!299}
!299 = distinct !{!299, !297, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!300 = !{!301}
!301 = distinct !{!301, !302, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!302 = distinct !{!302, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!303 = !{!304}
!304 = distinct !{!304, !302, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!305 = !{!306}
!306 = distinct !{!306, !307, !"cmpfunc: %a"}
!307 = distinct !{!307, !"cmpfunc"}
!308 = !{!309}
!309 = distinct !{!309, !307, !"cmpfunc: %b"}
!310 = !{!311}
!311 = distinct !{!311, !312, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!312 = distinct !{!312, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!313 = !{!314}
!314 = distinct !{!314, !312, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!315 = !{!311, !306, !301, !296}
!316 = !{!314, !309, !304, !299}
!317 = !{!318}
!318 = distinct !{!318, !319, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!319 = distinct !{!319, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!320 = !{!321}
!321 = distinct !{!321, !319, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!322 = !{!323}
!323 = distinct !{!323, !324, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!324 = distinct !{!324, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!325 = !{!326}
!326 = distinct !{!326, !324, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!327 = !{!328}
!328 = distinct !{!328, !329, !"cmpfunc: %a"}
!329 = distinct !{!329, !"cmpfunc"}
!330 = !{!331}
!331 = distinct !{!331, !329, !"cmpfunc: %b"}
!332 = !{!333}
!333 = distinct !{!333, !334, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!334 = distinct !{!334, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!335 = !{!336}
!336 = distinct !{!336, !334, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!337 = !{!333, !328, !323, !318}
!338 = !{!336, !331, !326, !321}
!339 = !{!340}
!340 = distinct !{!340, !341, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!341 = distinct !{!341, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!342 = !{!343}
!343 = distinct !{!343, !341, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!344 = !{!345}
!345 = distinct !{!345, !346, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!346 = distinct !{!346, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!347 = !{!348}
!348 = distinct !{!348, !346, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!349 = !{!350}
!350 = distinct !{!350, !351, !"cmpfunc: %a"}
!351 = distinct !{!351, !"cmpfunc"}
!352 = !{!353}
!353 = distinct !{!353, !351, !"cmpfunc: %b"}
!354 = !{!355}
!355 = distinct !{!355, !356, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!356 = distinct !{!356, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!357 = !{!358}
!358 = distinct !{!358, !356, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!359 = !{!355, !350, !345, !340}
!360 = !{!358, !353, !348, !343}
!361 = !{!362}
!362 = distinct !{!362, !363, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!363 = distinct !{!363, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!364 = !{!365}
!365 = distinct !{!365, !363, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!366 = !{!367}
!367 = distinct !{!367, !368, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!368 = distinct !{!368, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!369 = !{!370}
!370 = distinct !{!370, !368, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!371 = !{!372}
!372 = distinct !{!372, !373, !"cmpfunc: %a"}
!373 = distinct !{!373, !"cmpfunc"}
!374 = !{!375}
!375 = distinct !{!375, !373, !"cmpfunc: %b"}
!376 = !{!377}
!377 = distinct !{!377, !378, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!378 = distinct !{!378, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!379 = !{!380}
!380 = distinct !{!380, !378, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!381 = !{!377, !372, !367, !362}
!382 = !{!380, !375, !370, !365}
!383 = !{!384}
!384 = distinct !{!384, !385, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!385 = distinct !{!385, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!386 = !{!387}
!387 = distinct !{!387, !385, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!388 = !{!389}
!389 = distinct !{!389, !390, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!390 = distinct !{!390, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!391 = !{!392}
!392 = distinct !{!392, !390, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!393 = !{!394}
!394 = distinct !{!394, !395, !"cmpfunc: %a"}
!395 = distinct !{!395, !"cmpfunc"}
!396 = !{!397}
!397 = distinct !{!397, !395, !"cmpfunc: %b"}
!398 = !{!399}
!399 = distinct !{!399, !400, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!400 = distinct !{!400, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!401 = !{!402}
!402 = distinct !{!402, !400, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!403 = !{!399, !394, !389, !384}
!404 = !{!402, !397, !392, !387}
!405 = !{!406}
!406 = distinct !{!406, !407, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!407 = distinct !{!407, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!408 = !{!409}
!409 = distinct !{!409, !407, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!410 = !{!411}
!411 = distinct !{!411, !412, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!412 = distinct !{!412, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!413 = !{!414}
!414 = distinct !{!414, !412, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!415 = !{!416}
!416 = distinct !{!416, !417, !"cmpfunc: %a"}
!417 = distinct !{!417, !"cmpfunc"}
!418 = !{!419}
!419 = distinct !{!419, !417, !"cmpfunc: %b"}
!420 = !{!421}
!421 = distinct !{!421, !422, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!422 = distinct !{!422, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!423 = !{!424}
!424 = distinct !{!424, !422, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!425 = !{!421, !416, !411, !406}
!426 = !{!424, !419, !414, !409}
!427 = !{!428}
!428 = distinct !{!428, !429, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!429 = distinct !{!429, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!430 = !{!431}
!431 = distinct !{!431, !429, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!432 = !{!433}
!433 = distinct !{!433, !434, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!434 = distinct !{!434, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!435 = !{!436}
!436 = distinct !{!436, !434, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!437 = !{!438}
!438 = distinct !{!438, !439, !"cmpfunc: %a"}
!439 = distinct !{!439, !"cmpfunc"}
!440 = !{!441}
!441 = distinct !{!441, !439, !"cmpfunc: %b"}
!442 = !{!443}
!443 = distinct !{!443, !444, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!444 = distinct !{!444, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!445 = !{!446}
!446 = distinct !{!446, !444, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!447 = !{!443, !438, !433, !428}
!448 = !{!446, !441, !436, !431}
!449 = !{!450}
!450 = distinct !{!450, !451, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!451 = distinct !{!451, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!452 = !{!453}
!453 = distinct !{!453, !451, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!454 = !{!455}
!455 = distinct !{!455, !456, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!456 = distinct !{!456, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!457 = !{!458}
!458 = distinct !{!458, !456, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!459 = !{!460}
!460 = distinct !{!460, !461, !"cmpfunc: %a"}
!461 = distinct !{!461, !"cmpfunc"}
!462 = !{!463}
!463 = distinct !{!463, !461, !"cmpfunc: %b"}
!464 = !{!465}
!465 = distinct !{!465, !466, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!466 = distinct !{!466, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!467 = !{!468}
!468 = distinct !{!468, !466, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!469 = !{!465, !460, !455, !450}
!470 = !{!468, !463, !458, !453}
!471 = !{!472}
!472 = distinct !{!472, !473, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!473 = distinct !{!473, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!474 = !{!475}
!475 = distinct !{!475, !473, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!476 = !{!477}
!477 = distinct !{!477, !478, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!478 = distinct !{!478, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!479 = !{!480}
!480 = distinct !{!480, !478, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!481 = !{!482}
!482 = distinct !{!482, !483, !"cmpfunc: %a"}
!483 = distinct !{!483, !"cmpfunc"}
!484 = !{!485}
!485 = distinct !{!485, !483, !"cmpfunc: %b"}
!486 = !{!487}
!487 = distinct !{!487, !488, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!488 = distinct !{!488, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!489 = !{!490}
!490 = distinct !{!490, !488, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!491 = !{!487, !482, !477, !472}
!492 = !{!490, !485, !480, !475}
!493 = !{!494}
!494 = distinct !{!494, !495, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!495 = distinct !{!495, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!496 = !{!497}
!497 = distinct !{!497, !495, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!498 = !{!499}
!499 = distinct !{!499, !500, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!500 = distinct !{!500, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!501 = !{!502}
!502 = distinct !{!502, !500, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!503 = !{!504}
!504 = distinct !{!504, !505, !"cmpfunc: %a"}
!505 = distinct !{!505, !"cmpfunc"}
!506 = !{!507}
!507 = distinct !{!507, !505, !"cmpfunc: %b"}
!508 = !{!509}
!509 = distinct !{!509, !510, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!510 = distinct !{!510, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!511 = !{!512}
!512 = distinct !{!512, !510, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!513 = !{!509, !504, !499, !494}
!514 = !{!512, !507, !502, !497}
!515 = !{!516}
!516 = distinct !{!516, !517, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!517 = distinct !{!517, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!518 = !{!519}
!519 = distinct !{!519, !517, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!520 = !{!521}
!521 = distinct !{!521, !522, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!522 = distinct !{!522, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!523 = !{!524}
!524 = distinct !{!524, !522, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!525 = !{!526}
!526 = distinct !{!526, !527, !"cmpfunc: %a"}
!527 = distinct !{!527, !"cmpfunc"}
!528 = !{!529}
!529 = distinct !{!529, !527, !"cmpfunc: %b"}
!530 = !{!531}
!531 = distinct !{!531, !532, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!532 = distinct !{!532, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!533 = !{!534}
!534 = distinct !{!534, !532, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!535 = !{!531, !526, !521, !516}
!536 = !{!534, !529, !524, !519}
!537 = !{!538}
!538 = distinct !{!538, !539, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h53d647054ed97a16E: %v.0"}
!539 = distinct !{!539, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h53d647054ed97a16E"}
!540 = !{!541}
!541 = distinct !{!541, !542, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!542 = distinct !{!542, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!543 = !{!544}
!544 = distinct !{!544, !542, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!545 = !{!546}
!546 = distinct !{!546, !547, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!547 = distinct !{!547, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!548 = !{!549}
!549 = distinct !{!549, !550, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h6260f714737b843cE: %_0"}
!550 = distinct !{!550, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h6260f714737b843cE"}
!551 = !{!552}
!552 = distinct !{!552, !547, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!553 = !{!554}
!554 = distinct !{!554, !555, !"cmpfunc: %a"}
!555 = distinct !{!555, !"cmpfunc"}
!556 = !{!557}
!557 = distinct !{!557, !555, !"cmpfunc: %b"}
!558 = !{!559}
!559 = distinct !{!559, !560, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!560 = distinct !{!560, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!561 = !{!562}
!562 = distinct !{!562, !560, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!563 = !{!559, !554, !546, !541, !538}
!564 = !{!562, !557, !552, !544, !549}
!565 = !{!562, !557, !552, !544, !538}
!566 = !{!559, !554, !546, !541, !549}
!567 = !{!549, !568, !538}
!568 = distinct !{!568, !550, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h6260f714737b843cE: %is_less"}
!569 = !{!570}
!570 = distinct !{!570, !571, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!571 = distinct !{!571, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!572 = !{!573}
!573 = distinct !{!573, !571, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!574 = !{!575}
!575 = distinct !{!575, !576, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!576 = distinct !{!576, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!577 = !{!578}
!578 = distinct !{!578, !579, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h03bae2d2a7093d17E: %_0"}
!579 = distinct !{!579, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h03bae2d2a7093d17E"}
!580 = !{!581}
!581 = distinct !{!581, !576, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!582 = !{!583}
!583 = distinct !{!583, !584, !"cmpfunc: %a"}
!584 = distinct !{!584, !"cmpfunc"}
!585 = !{!586}
!586 = distinct !{!586, !584, !"cmpfunc: %b"}
!587 = !{!588}
!588 = distinct !{!588, !589, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!589 = distinct !{!589, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!590 = !{!591}
!591 = distinct !{!591, !589, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!592 = !{!588, !583, !575, !570, !538}
!593 = !{!591, !586, !581, !573, !578}
!594 = !{!591, !586, !581, !573, !538}
!595 = !{!588, !583, !575, !570, !578}
!596 = !{!578, !597, !538}
!597 = distinct !{!597, !579, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h03bae2d2a7093d17E: %is_less"}
!598 = !{!599}
!599 = distinct !{!599, !542, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a:It1"}
!600 = !{!601}
!601 = distinct !{!601, !542, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b:It1"}
!602 = !{!603}
!603 = distinct !{!603, !547, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0:It1"}
!604 = !{!605}
!605 = distinct !{!605, !547, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1:It1"}
!606 = !{!607}
!607 = distinct !{!607, !555, !"cmpfunc: %a:It1"}
!608 = !{!609}
!609 = distinct !{!609, !555, !"cmpfunc: %b:It1"}
!610 = !{!611}
!611 = distinct !{!611, !560, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It1"}
!612 = !{!613}
!613 = distinct !{!613, !560, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It1"}
!614 = !{!611, !607, !603, !599, !538}
!615 = !{!613, !609, !605, !601, !549}
!616 = !{!613, !609, !605, !601, !538}
!617 = !{!611, !607, !603, !599, !549}
!618 = !{!619}
!619 = distinct !{!619, !571, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a:It1"}
!620 = !{!621}
!621 = distinct !{!621, !571, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b:It1"}
!622 = !{!623}
!623 = distinct !{!623, !576, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0:It1"}
!624 = !{!625}
!625 = distinct !{!625, !576, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1:It1"}
!626 = !{!627}
!627 = distinct !{!627, !584, !"cmpfunc: %a:It1"}
!628 = !{!629}
!629 = distinct !{!629, !584, !"cmpfunc: %b:It1"}
!630 = !{!631}
!631 = distinct !{!631, !589, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It1"}
!632 = !{!633}
!633 = distinct !{!633, !589, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It1"}
!634 = !{!631, !627, !623, !619, !538}
!635 = !{!633, !629, !625, !621, !578}
!636 = !{!633, !629, !625, !621, !538}
!637 = !{!631, !627, !623, !619, !578}
!638 = !{!639}
!639 = distinct !{!639, !542, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a:It2"}
!640 = !{!641}
!641 = distinct !{!641, !542, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b:It2"}
!642 = !{!643}
!643 = distinct !{!643, !547, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0:It2"}
!644 = !{!645}
!645 = distinct !{!645, !547, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1:It2"}
!646 = !{!647}
!647 = distinct !{!647, !555, !"cmpfunc: %a:It2"}
!648 = !{!649}
!649 = distinct !{!649, !555, !"cmpfunc: %b:It2"}
!650 = !{!651}
!651 = distinct !{!651, !560, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It2"}
!652 = !{!653}
!653 = distinct !{!653, !560, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It2"}
!654 = !{!651, !647, !643, !639, !538}
!655 = !{!653, !649, !645, !641, !549}
!656 = !{!653, !649, !645, !641, !538}
!657 = !{!651, !647, !643, !639, !549}
!658 = !{!659}
!659 = distinct !{!659, !571, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a:It2"}
!660 = !{!661}
!661 = distinct !{!661, !571, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b:It2"}
!662 = !{!663}
!663 = distinct !{!663, !576, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0:It2"}
!664 = !{!665}
!665 = distinct !{!665, !576, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1:It2"}
!666 = !{!667}
!667 = distinct !{!667, !584, !"cmpfunc: %a:It2"}
!668 = !{!669}
!669 = distinct !{!669, !584, !"cmpfunc: %b:It2"}
!670 = !{!671}
!671 = distinct !{!671, !589, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It2"}
!672 = !{!673}
!673 = distinct !{!673, !589, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It2"}
!674 = !{!671, !667, !663, !659, !538}
!675 = !{!673, !669, !665, !661, !578}
!676 = !{!673, !669, !665, !661, !538}
!677 = !{!671, !667, !663, !659, !578}
!678 = !{!679}
!679 = distinct !{!679, !542, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a:It3"}
!680 = !{!681}
!681 = distinct !{!681, !542, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b:It3"}
!682 = !{!683}
!683 = distinct !{!683, !547, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0:It3"}
!684 = !{!685}
!685 = distinct !{!685, !547, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1:It3"}
!686 = !{!687}
!687 = distinct !{!687, !555, !"cmpfunc: %a:It3"}
!688 = !{!689}
!689 = distinct !{!689, !555, !"cmpfunc: %b:It3"}
!690 = !{!691}
!691 = distinct !{!691, !560, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It3"}
!692 = !{!693}
!693 = distinct !{!693, !560, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It3"}
!694 = !{!691, !687, !683, !679, !538}
!695 = !{!693, !689, !685, !681, !549}
!696 = !{!693, !689, !685, !681, !538}
!697 = !{!691, !687, !683, !679, !549}
!698 = !{!699}
!699 = distinct !{!699, !571, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a:It3"}
!700 = !{!701}
!701 = distinct !{!701, !571, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b:It3"}
!702 = !{!703}
!703 = distinct !{!703, !576, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0:It3"}
!704 = !{!705}
!705 = distinct !{!705, !576, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1:It3"}
!706 = !{!707}
!707 = distinct !{!707, !584, !"cmpfunc: %a:It3"}
!708 = !{!709}
!709 = distinct !{!709, !584, !"cmpfunc: %b:It3"}
!710 = !{!711}
!711 = distinct !{!711, !589, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It3"}
!712 = !{!713}
!713 = distinct !{!713, !589, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It3"}
!714 = !{!711, !707, !703, !699, !538}
!715 = !{!713, !709, !705, !701, !578}
!716 = !{!713, !709, !705, !701, !538}
!717 = !{!711, !707, !703, !699, !578}
!718 = !{!"branch_weights", i32 4001, i32 4000000}
!719 = !{!720}
!720 = distinct !{!720, !721, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!721 = distinct !{!721, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!722 = !{!723}
!723 = distinct !{!723, !721, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!724 = !{!725}
!725 = distinct !{!725, !726, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!726 = distinct !{!726, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!727 = !{!728}
!728 = distinct !{!728, !729, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h6260f714737b843cE: %_0"}
!729 = distinct !{!729, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h6260f714737b843cE"}
!730 = !{!731}
!731 = distinct !{!731, !726, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!732 = !{!733}
!733 = distinct !{!733, !734, !"cmpfunc: %a"}
!734 = distinct !{!734, !"cmpfunc"}
!735 = !{!736}
!736 = distinct !{!736, !734, !"cmpfunc: %b"}
!737 = !{!738}
!738 = distinct !{!738, !739, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!739 = distinct !{!739, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!740 = !{!741}
!741 = distinct !{!741, !739, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!742 = !{!738, !733, !725, !720}
!743 = !{!741, !736, !731, !723, !728}
!744 = !{!741, !736, !731, !723}
!745 = !{!738, !733, !725, !720, !728}
!746 = !{!728, !747}
!747 = distinct !{!747, !729, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h6260f714737b843cE: %is_less"}
!748 = !{!749}
!749 = distinct !{!749, !750, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!750 = distinct !{!750, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!751 = !{!752}
!752 = distinct !{!752, !750, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!753 = !{!754}
!754 = distinct !{!754, !755, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!755 = distinct !{!755, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!756 = !{!757}
!757 = distinct !{!757, !758, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h03bae2d2a7093d17E: %_0"}
!758 = distinct !{!758, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h03bae2d2a7093d17E"}
!759 = !{!760}
!760 = distinct !{!760, !755, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!761 = !{!762}
!762 = distinct !{!762, !763, !"cmpfunc: %a"}
!763 = distinct !{!763, !"cmpfunc"}
!764 = !{!765}
!765 = distinct !{!765, !763, !"cmpfunc: %b"}
!766 = !{!767}
!767 = distinct !{!767, !768, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!768 = distinct !{!768, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!769 = !{!770}
!770 = distinct !{!770, !768, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!771 = !{!767, !762, !754, !749}
!772 = !{!770, !765, !760, !752, !757}
!773 = !{!770, !765, !760, !752}
!774 = !{!767, !762, !754, !749, !757}
!775 = !{!757, !776}
!776 = distinct !{!776, !758, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h03bae2d2a7093d17E: %is_less"}
!777 = !{!778}
!778 = distinct !{!778, !779, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!779 = distinct !{!779, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!780 = !{!781}
!781 = distinct !{!781, !779, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!782 = !{!783}
!783 = distinct !{!783, !784, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!784 = distinct !{!784, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!785 = !{!786}
!786 = distinct !{!786, !784, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!787 = !{!788}
!788 = distinct !{!788, !789, !"cmpfunc: %a"}
!789 = distinct !{!789, !"cmpfunc"}
!790 = !{!791}
!791 = distinct !{!791, !789, !"cmpfunc: %b"}
!792 = !{!793}
!793 = distinct !{!793, !794, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!794 = distinct !{!794, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!795 = !{!796}
!796 = distinct !{!796, !794, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!797 = !{!793, !788, !783, !778}
!798 = !{!796, !791, !786, !781}
!799 = !{!800, !802, !804, !806}
!800 = distinct !{!800, !801, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!801 = distinct !{!801, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!802 = distinct !{!802, !803, !"cmpfunc: %b"}
!803 = distinct !{!803, !"cmpfunc"}
!804 = distinct !{!804, !805, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!805 = distinct !{!805, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!806 = distinct !{!806, !807, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!807 = distinct !{!807, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!808 = !{!809, !810, !811, !812}
!809 = distinct !{!809, !801, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!810 = distinct !{!810, !803, !"cmpfunc: %a"}
!811 = distinct !{!811, !805, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!812 = distinct !{!812, !807, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!813 = !{!814, !816}
!814 = distinct !{!814, !815, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h222f66ad8a44cfa8E: %self"}
!815 = distinct !{!815, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h222f66ad8a44cfa8E"}
!816 = distinct !{!816, !817, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h468cbb08835e7a95E: %_1"}
!817 = distinct !{!817, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h468cbb08835e7a95E"}
!818 = !{!819}
!819 = distinct !{!819, !820, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!820 = distinct !{!820, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!821 = !{!822}
!822 = distinct !{!822, !820, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!823 = !{!824}
!824 = distinct !{!824, !825, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!825 = distinct !{!825, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!826 = !{!827}
!827 = distinct !{!827, !825, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!828 = !{!829}
!829 = distinct !{!829, !830, !"cmpfunc: %a"}
!830 = distinct !{!830, !"cmpfunc"}
!831 = !{!832}
!832 = distinct !{!832, !830, !"cmpfunc: %b"}
!833 = !{!834}
!834 = distinct !{!834, !835, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!835 = distinct !{!835, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!836 = !{!837}
!837 = distinct !{!837, !835, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!838 = !{!834, !829, !824, !819}
!839 = !{!837, !832, !827, !822}
!840 = !{!841}
!841 = distinct !{!841, !842, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!842 = distinct !{!842, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!843 = !{!844}
!844 = distinct !{!844, !842, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!845 = !{!846}
!846 = distinct !{!846, !847, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!847 = distinct !{!847, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!848 = !{!849}
!849 = distinct !{!849, !847, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!850 = !{!851}
!851 = distinct !{!851, !852, !"cmpfunc: %a"}
!852 = distinct !{!852, !"cmpfunc"}
!853 = !{!854}
!854 = distinct !{!854, !852, !"cmpfunc: %b"}
!855 = !{!856}
!856 = distinct !{!856, !857, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!857 = distinct !{!857, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!858 = !{!859}
!859 = distinct !{!859, !857, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!860 = !{!856, !851, !846, !841}
!861 = !{!859, !854, !849, !844}
!862 = !{!863}
!863 = distinct !{!863, !864, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!864 = distinct !{!864, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!865 = !{!866}
!866 = distinct !{!866, !864, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!867 = !{!868}
!868 = distinct !{!868, !869, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!869 = distinct !{!869, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!870 = !{!871}
!871 = distinct !{!871, !869, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!872 = !{!873}
!873 = distinct !{!873, !874, !"cmpfunc: %a"}
!874 = distinct !{!874, !"cmpfunc"}
!875 = !{!876}
!876 = distinct !{!876, !874, !"cmpfunc: %b"}
!877 = !{!878}
!878 = distinct !{!878, !879, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!879 = distinct !{!879, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!880 = !{!881}
!881 = distinct !{!881, !879, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!882 = !{!878, !873, !868, !863}
!883 = !{!881, !876, !871, !866}
!884 = !{!885}
!885 = distinct !{!885, !886, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!886 = distinct !{!886, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!887 = !{!888}
!888 = distinct !{!888, !886, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!889 = !{!890}
!890 = distinct !{!890, !891, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!891 = distinct !{!891, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!892 = !{!893}
!893 = distinct !{!893, !891, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!894 = !{!895}
!895 = distinct !{!895, !896, !"cmpfunc: %a"}
!896 = distinct !{!896, !"cmpfunc"}
!897 = !{!898}
!898 = distinct !{!898, !896, !"cmpfunc: %b"}
!899 = !{!900}
!900 = distinct !{!900, !901, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!901 = distinct !{!901, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!902 = !{!903}
!903 = distinct !{!903, !901, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!904 = !{!900, !895, !890, !885}
!905 = !{!903, !898, !893, !888}
!906 = !{!907}
!907 = distinct !{!907, !908, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!908 = distinct !{!908, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!909 = !{!910}
!910 = distinct !{!910, !908, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!911 = !{!912}
!912 = distinct !{!912, !913, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!913 = distinct !{!913, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!914 = !{!915}
!915 = distinct !{!915, !913, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!916 = !{!917}
!917 = distinct !{!917, !918, !"cmpfunc: %a"}
!918 = distinct !{!918, !"cmpfunc"}
!919 = !{!920}
!920 = distinct !{!920, !918, !"cmpfunc: %b"}
!921 = !{!922}
!922 = distinct !{!922, !923, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!923 = distinct !{!923, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!924 = !{!925}
!925 = distinct !{!925, !923, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!926 = !{!922, !917, !912, !907}
!927 = !{!925, !920, !915, !910}
!928 = !{!929}
!929 = distinct !{!929, !930, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!930 = distinct !{!930, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!931 = !{!932}
!932 = distinct !{!932, !930, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!933 = !{!934}
!934 = distinct !{!934, !935, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!935 = distinct !{!935, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!936 = !{!937}
!937 = distinct !{!937, !935, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!938 = !{!939}
!939 = distinct !{!939, !940, !"cmpfunc: %a"}
!940 = distinct !{!940, !"cmpfunc"}
!941 = !{!942}
!942 = distinct !{!942, !940, !"cmpfunc: %b"}
!943 = !{!944}
!944 = distinct !{!944, !945, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!945 = distinct !{!945, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!946 = !{!947}
!947 = distinct !{!947, !945, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!948 = !{!944, !939, !934, !929}
!949 = !{!947, !942, !937, !932}
!950 = !{!951}
!951 = distinct !{!951, !952, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!952 = distinct !{!952, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!953 = !{!954}
!954 = distinct !{!954, !952, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!955 = !{!956}
!956 = distinct !{!956, !957, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!957 = distinct !{!957, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!958 = !{!959}
!959 = distinct !{!959, !957, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!960 = !{!961}
!961 = distinct !{!961, !962, !"cmpfunc: %a"}
!962 = distinct !{!962, !"cmpfunc"}
!963 = !{!964}
!964 = distinct !{!964, !962, !"cmpfunc: %b"}
!965 = !{!966}
!966 = distinct !{!966, !967, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!967 = distinct !{!967, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!968 = !{!969}
!969 = distinct !{!969, !967, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!970 = !{!966, !961, !956, !951}
!971 = !{!969, !964, !959, !954}
!972 = !{!973}
!973 = distinct !{!973, !974, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!974 = distinct !{!974, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!975 = !{!976}
!976 = distinct !{!976, !974, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!977 = !{!978}
!978 = distinct !{!978, !979, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!979 = distinct !{!979, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!980 = !{!981}
!981 = distinct !{!981, !979, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!982 = !{!983}
!983 = distinct !{!983, !984, !"cmpfunc: %a"}
!984 = distinct !{!984, !"cmpfunc"}
!985 = !{!986}
!986 = distinct !{!986, !984, !"cmpfunc: %b"}
!987 = !{!988}
!988 = distinct !{!988, !989, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!989 = distinct !{!989, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!990 = !{!991}
!991 = distinct !{!991, !989, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!992 = !{!988, !983, !978, !973}
!993 = !{!991, !986, !981, !976}
!994 = !{!995}
!995 = distinct !{!995, !996, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!996 = distinct !{!996, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!997 = !{!998}
!998 = distinct !{!998, !996, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!999 = !{!1000}
!1000 = distinct !{!1000, !1001, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!1001 = distinct !{!1001, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!1002 = !{!1003}
!1003 = distinct !{!1003, !1001, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!1004 = !{!1005}
!1005 = distinct !{!1005, !1006, !"cmpfunc: %a"}
!1006 = distinct !{!1006, !"cmpfunc"}
!1007 = !{!1008}
!1008 = distinct !{!1008, !1006, !"cmpfunc: %b"}
!1009 = !{!1010}
!1010 = distinct !{!1010, !1011, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1011 = distinct !{!1011, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1012 = !{!1013}
!1013 = distinct !{!1013, !1011, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1014 = !{!1010, !1005, !1000, !995}
!1015 = !{!1013, !1008, !1003, !998}
!1016 = !{!1017}
!1017 = distinct !{!1017, !1018, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!1018 = distinct !{!1018, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!1019 = !{!1020}
!1020 = distinct !{!1020, !1018, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!1021 = !{!1022}
!1022 = distinct !{!1022, !1023, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!1023 = distinct !{!1023, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!1024 = !{!1025}
!1025 = distinct !{!1025, !1023, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!1026 = !{!1027}
!1027 = distinct !{!1027, !1028, !"cmpfunc: %a"}
!1028 = distinct !{!1028, !"cmpfunc"}
!1029 = !{!1030}
!1030 = distinct !{!1030, !1028, !"cmpfunc: %b"}
!1031 = !{!1032}
!1032 = distinct !{!1032, !1033, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1033 = distinct !{!1033, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1034 = !{!1035}
!1035 = distinct !{!1035, !1033, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1036 = !{!1032, !1027, !1022, !1017}
!1037 = !{!1035, !1030, !1025, !1020}
!1038 = !{!1039}
!1039 = distinct !{!1039, !1040, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h3bbb43efa7a139c7E: %self.0"}
!1040 = distinct !{!1040, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h3bbb43efa7a139c7E"}
!1041 = !{!1042}
!1042 = distinct !{!1042, !1043, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h53d647054ed97a16E: %v.0"}
!1043 = distinct !{!1043, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h53d647054ed97a16E"}
!1044 = !{!1045}
!1045 = distinct !{!1045, !1046, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!1046 = distinct !{!1046, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!1047 = !{!1048}
!1048 = distinct !{!1048, !1046, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!1049 = !{!1050}
!1050 = distinct !{!1050, !1051, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!1051 = distinct !{!1051, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!1052 = !{!1053}
!1053 = distinct !{!1053, !1054, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h6260f714737b843cE: %_0"}
!1054 = distinct !{!1054, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h6260f714737b843cE"}
!1055 = !{!1056}
!1056 = distinct !{!1056, !1051, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!1057 = !{!1058}
!1058 = distinct !{!1058, !1059, !"cmpfunc: %a"}
!1059 = distinct !{!1059, !"cmpfunc"}
!1060 = !{!1061}
!1061 = distinct !{!1061, !1059, !"cmpfunc: %b"}
!1062 = !{!1063}
!1063 = distinct !{!1063, !1064, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1064 = distinct !{!1064, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1065 = !{!1066}
!1066 = distinct !{!1066, !1064, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1067 = !{!1063, !1058, !1050, !1045, !1042}
!1068 = !{!1066, !1061, !1056, !1048, !1053}
!1069 = !{!1066, !1061, !1056, !1048, !1042}
!1070 = !{!1063, !1058, !1050, !1045, !1053}
!1071 = !{!1053, !1072, !1042}
!1072 = distinct !{!1072, !1054, !"_ZN4core5slice4sort6shared9smallsort8merge_up17h6260f714737b843cE: %is_less"}
!1073 = !{!1074}
!1074 = distinct !{!1074, !1075, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!1075 = distinct !{!1075, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!1076 = !{!1077}
!1077 = distinct !{!1077, !1075, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!1078 = !{!1079}
!1079 = distinct !{!1079, !1080, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!1080 = distinct !{!1080, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!1081 = !{!1082}
!1082 = distinct !{!1082, !1083, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h03bae2d2a7093d17E: %_0"}
!1083 = distinct !{!1083, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h03bae2d2a7093d17E"}
!1084 = !{!1085}
!1085 = distinct !{!1085, !1080, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!1086 = !{!1087}
!1087 = distinct !{!1087, !1088, !"cmpfunc: %a"}
!1088 = distinct !{!1088, !"cmpfunc"}
!1089 = !{!1090}
!1090 = distinct !{!1090, !1088, !"cmpfunc: %b"}
!1091 = !{!1092}
!1092 = distinct !{!1092, !1093, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1093 = distinct !{!1093, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1094 = !{!1095}
!1095 = distinct !{!1095, !1093, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1096 = !{!1092, !1087, !1079, !1074, !1042}
!1097 = !{!1095, !1090, !1085, !1077, !1082}
!1098 = !{!1095, !1090, !1085, !1077, !1042}
!1099 = !{!1092, !1087, !1079, !1074, !1082}
!1100 = !{!1082, !1101, !1042}
!1101 = distinct !{!1101, !1083, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h03bae2d2a7093d17E: %is_less"}
!1102 = !{!1103, !1105}
!1103 = distinct !{!1103, !1104, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h222f66ad8a44cfa8E: %self"}
!1104 = distinct !{!1104, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h222f66ad8a44cfa8E"}
!1105 = distinct !{!1105, !1106, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h468cbb08835e7a95E: %_1"}
!1106 = distinct !{!1106, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h468cbb08835e7a95E"}
!1107 = !{!1108, !1110, !1112, !1114}
!1108 = distinct !{!1108, !1109, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1109 = distinct !{!1109, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1110 = distinct !{!1110, !1111, !"cmpfunc: %b"}
!1111 = distinct !{!1111, !"cmpfunc"}
!1112 = distinct !{!1112, !1113, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!1113 = distinct !{!1113, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!1114 = distinct !{!1114, !1115, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!1115 = distinct !{!1115, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!1116 = !{!1117, !1118, !1119, !1120}
!1117 = distinct !{!1117, !1109, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1118 = distinct !{!1118, !1111, !"cmpfunc: %a"}
!1119 = distinct !{!1119, !1113, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!1120 = distinct !{!1120, !1115, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!1121 = !{!1122, !1124, !1126, !1128}
!1122 = distinct !{!1122, !1123, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1123 = distinct !{!1123, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1124 = distinct !{!1124, !1125, !"cmpfunc: %b"}
!1125 = distinct !{!1125, !"cmpfunc"}
!1126 = distinct !{!1126, !1127, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!1127 = distinct !{!1127, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!1128 = distinct !{!1128, !1129, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!1129 = distinct !{!1129, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!1130 = !{!1131, !1132, !1133, !1134}
!1131 = distinct !{!1131, !1123, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1132 = distinct !{!1132, !1125, !"cmpfunc: %a"}
!1133 = distinct !{!1133, !1127, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!1134 = distinct !{!1134, !1129, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!1135 = !{!1136, !1138}
!1136 = distinct !{!1136, !1137, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h222f66ad8a44cfa8E: %self"}
!1137 = distinct !{!1137, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h222f66ad8a44cfa8E"}
!1138 = distinct !{!1138, !1139, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h468cbb08835e7a95E: %_1"}
!1139 = distinct !{!1139, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h468cbb08835e7a95E"}
!1140 = !{!1141}
!1141 = distinct !{!1141, !1142, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h47ff7f189d415ff6E: %_0"}
!1142 = distinct !{!1142, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h47ff7f189d415ff6E"}
!1143 = !{!1144}
!1144 = distinct !{!1144, !1145, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!1145 = distinct !{!1145, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!1146 = !{!1147}
!1147 = distinct !{!1147, !1145, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!1148 = !{!1149}
!1149 = distinct !{!1149, !1150, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!1150 = distinct !{!1150, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!1151 = !{!1152}
!1152 = distinct !{!1152, !1150, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!1153 = !{!1154}
!1154 = distinct !{!1154, !1155, !"cmpfunc: %a"}
!1155 = distinct !{!1155, !"cmpfunc"}
!1156 = !{!1157}
!1157 = distinct !{!1157, !1155, !"cmpfunc: %b"}
!1158 = !{!1159}
!1159 = distinct !{!1159, !1160, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1160 = distinct !{!1160, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1161 = !{!1162}
!1162 = distinct !{!1162, !1160, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1163 = !{!1159, !1154, !1149, !1144}
!1164 = !{!1162, !1157, !1152, !1147}
!1165 = !{!1166}
!1166 = distinct !{!1166, !1167, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!1167 = distinct !{!1167, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!1168 = !{!1169}
!1169 = distinct !{!1169, !1167, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!1170 = !{!1171}
!1171 = distinct !{!1171, !1172, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!1172 = distinct !{!1172, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!1173 = !{!1174}
!1174 = distinct !{!1174, !1172, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!1175 = !{!1176}
!1176 = distinct !{!1176, !1177, !"cmpfunc: %a"}
!1177 = distinct !{!1177, !"cmpfunc"}
!1178 = !{!1179}
!1179 = distinct !{!1179, !1177, !"cmpfunc: %b"}
!1180 = !{!1181}
!1181 = distinct !{!1181, !1182, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1182 = distinct !{!1182, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1183 = !{!1184}
!1184 = distinct !{!1184, !1182, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1185 = !{!1181, !1176, !1171, !1166}
!1186 = !{!1184, !1179, !1174, !1169}
!1187 = !{!1188}
!1188 = distinct !{!1188, !1189, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!1189 = distinct !{!1189, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!1190 = !{!1191}
!1191 = distinct !{!1191, !1189, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!1192 = !{!1193}
!1193 = distinct !{!1193, !1194, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!1194 = distinct !{!1194, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!1195 = !{!1196}
!1196 = distinct !{!1196, !1194, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!1197 = !{!1198}
!1198 = distinct !{!1198, !1199, !"cmpfunc: %a"}
!1199 = distinct !{!1199, !"cmpfunc"}
!1200 = !{!1201}
!1201 = distinct !{!1201, !1199, !"cmpfunc: %b"}
!1202 = !{!1203}
!1203 = distinct !{!1203, !1204, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1204 = distinct !{!1204, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1205 = !{!1206}
!1206 = distinct !{!1206, !1204, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1207 = !{!1203, !1198, !1193, !1188}
!1208 = !{!1206, !1201, !1196, !1191}
!1209 = !{!1210, !1212}
!1210 = distinct !{!1210, !1211, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hb2e0b8f63947a80eE: %a.0"}
!1211 = distinct !{!1211, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hb2e0b8f63947a80eE"}
!1212 = distinct !{!1212, !1213, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1a1351b9194618c0E: %self.0"}
!1213 = distinct !{!1213, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1a1351b9194618c0E"}
!1214 = !{!1215}
!1215 = distinct !{!1215, !1211, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hb2e0b8f63947a80eE: %b.0"}
!1216 = !{!1215, !1212}
!1217 = !{!1210}
!1218 = !{!1219}
!1219 = distinct !{!1219, !1220, !"_ZN4core5slice4sort6stable5merge5merge17h7c0738b142990bf2E: %v.0"}
!1220 = distinct !{!1220, !"_ZN4core5slice4sort6stable5merge5merge17h7c0738b142990bf2E"}
!1221 = !{!1222}
!1222 = distinct !{!1222, !1220, !"_ZN4core5slice4sort6stable5merge5merge17h7c0738b142990bf2E: %scratch.0"}
!1223 = !{!1219, !1222}
!1224 = !{!1225}
!1225 = distinct !{!1225, !1226, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!1226 = distinct !{!1226, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!1227 = !{!1228}
!1228 = distinct !{!1228, !1226, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!1229 = !{!1230}
!1230 = distinct !{!1230, !1231, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!1231 = distinct !{!1231, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!1232 = !{!1233}
!1233 = distinct !{!1233, !1231, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!1234 = !{!1235}
!1235 = distinct !{!1235, !1236, !"cmpfunc: %a"}
!1236 = distinct !{!1236, !"cmpfunc"}
!1237 = !{!1238}
!1238 = distinct !{!1238, !1236, !"cmpfunc: %b"}
!1239 = !{!1240}
!1240 = distinct !{!1240, !1241, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1241 = distinct !{!1241, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1242 = !{!1243}
!1243 = distinct !{!1243, !1241, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1244 = !{!1240, !1235, !1230, !1225, !1222}
!1245 = !{!1243, !1238, !1233, !1228, !1246, !1219}
!1246 = distinct !{!1246, !1247, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hbeafcd5000d6f60dE: %self"}
!1247 = distinct !{!1247, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hbeafcd5000d6f60dE"}
!1248 = !{!1243, !1238, !1233, !1228, !1219}
!1249 = !{!1240, !1235, !1230, !1225, !1246, !1222}
!1250 = !{!1246, !1222}
!1251 = !{!1252}
!1252 = distinct !{!1252, !1253, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!1253 = distinct !{!1253, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!1254 = !{!1255}
!1255 = distinct !{!1255, !1253, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!1256 = !{!1257}
!1257 = distinct !{!1257, !1258, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!1258 = distinct !{!1258, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!1259 = !{!1260}
!1260 = distinct !{!1260, !1258, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!1261 = !{!1262}
!1262 = distinct !{!1262, !1263, !"cmpfunc: %a"}
!1263 = distinct !{!1263, !"cmpfunc"}
!1264 = !{!1265}
!1265 = distinct !{!1265, !1263, !"cmpfunc: %b"}
!1266 = !{!1267}
!1267 = distinct !{!1267, !1268, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1268 = distinct !{!1268, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1269 = !{!1270}
!1270 = distinct !{!1270, !1268, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1271 = !{!1267, !1262, !1257, !1252, !1219}
!1272 = !{!1270, !1265, !1260, !1255, !1273, !1222}
!1273 = distinct !{!1273, !1274, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17ha931045cc8cec290E: %self"}
!1274 = distinct !{!1274, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17ha931045cc8cec290E"}
!1275 = !{!1270, !1265, !1260, !1255, !1222}
!1276 = !{!1267, !1262, !1257, !1252, !1273, !1219}
!1277 = !{!1273, !1222}
!1278 = !{!1279, !1281}
!1279 = distinct !{!1279, !1280, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb41adbc6ab1e7c12E: %self"}
!1280 = distinct !{!1280, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb41adbc6ab1e7c12E"}
!1281 = distinct !{!1281, !1282, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17hf97c56f39f52ea60E: %_1"}
!1282 = distinct !{!1282, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17hf97c56f39f52ea60E"}
!1283 = !{!1284}
!1284 = distinct !{!1284, !1285, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!1285 = distinct !{!1285, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!1286 = !{!1287}
!1287 = distinct !{!1287, !1285, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!1288 = !{!1289}
!1289 = distinct !{!1289, !1290, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!1290 = distinct !{!1290, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!1291 = !{!1292}
!1292 = distinct !{!1292, !1290, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!1293 = !{!1294}
!1294 = distinct !{!1294, !1295, !"cmpfunc: %a"}
!1295 = distinct !{!1295, !"cmpfunc"}
!1296 = !{!1297}
!1297 = distinct !{!1297, !1295, !"cmpfunc: %b"}
!1298 = !{!1299}
!1299 = distinct !{!1299, !1300, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1300 = distinct !{!1300, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1301 = !{!1302}
!1302 = distinct !{!1302, !1300, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1303 = !{!1299, !1294, !1289, !1284}
!1304 = !{!1302, !1297, !1292, !1287}
!1305 = !{!1306}
!1306 = distinct !{!1306, !1307, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!1307 = distinct !{!1307, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!1308 = !{!1309}
!1309 = distinct !{!1309, !1307, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!1310 = !{!1311}
!1311 = distinct !{!1311, !1312, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!1312 = distinct !{!1312, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!1313 = !{!1314}
!1314 = distinct !{!1314, !1312, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!1315 = !{!1316}
!1316 = distinct !{!1316, !1317, !"cmpfunc: %a"}
!1317 = distinct !{!1317, !"cmpfunc"}
!1318 = !{!1319}
!1319 = distinct !{!1319, !1317, !"cmpfunc: %b"}
!1320 = !{!1321}
!1321 = distinct !{!1321, !1322, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1322 = distinct !{!1322, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1323 = !{!1324}
!1324 = distinct !{!1324, !1322, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1325 = !{!1321, !1316, !1311, !1306}
!1326 = !{!1324, !1319, !1314, !1309}
!1327 = !{!1328}
!1328 = distinct !{!1328, !1329, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!1329 = distinct !{!1329, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!1330 = !{!1331}
!1331 = distinct !{!1331, !1329, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!1332 = !{!1333}
!1333 = distinct !{!1333, !1334, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!1334 = distinct !{!1334, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!1335 = !{!1336}
!1336 = distinct !{!1336, !1334, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!1337 = !{!1338}
!1338 = distinct !{!1338, !1339, !"cmpfunc: %a"}
!1339 = distinct !{!1339, !"cmpfunc"}
!1340 = !{!1341}
!1341 = distinct !{!1341, !1339, !"cmpfunc: %b"}
!1342 = !{!1343}
!1343 = distinct !{!1343, !1344, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1344 = distinct !{!1344, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1345 = !{!1346}
!1346 = distinct !{!1346, !1344, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1347 = !{!1343, !1338, !1333, !1328}
!1348 = !{!1346, !1341, !1336, !1331, !1349}
!1349 = distinct !{!1349, !1350, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hbeafcd5000d6f60dE: %self"}
!1350 = distinct !{!1350, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hbeafcd5000d6f60dE"}
!1351 = !{!1346, !1341, !1336, !1331}
!1352 = !{!1343, !1338, !1333, !1328, !1349}
!1353 = !{!1349}
!1354 = !{!1355}
!1355 = distinct !{!1355, !1356, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!1356 = distinct !{!1356, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!1357 = !{!1358}
!1358 = distinct !{!1358, !1356, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!1359 = !{!1360}
!1360 = distinct !{!1360, !1361, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!1361 = distinct !{!1361, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!1362 = !{!1363}
!1363 = distinct !{!1363, !1361, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!1364 = !{!1365}
!1365 = distinct !{!1365, !1366, !"cmpfunc: %a"}
!1366 = distinct !{!1366, !"cmpfunc"}
!1367 = !{!1368}
!1368 = distinct !{!1368, !1366, !"cmpfunc: %b"}
!1369 = !{!1370}
!1370 = distinct !{!1370, !1371, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1371 = distinct !{!1371, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1372 = !{!1373}
!1373 = distinct !{!1373, !1371, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1374 = !{!1370, !1365, !1360, !1355}
!1375 = !{!1373, !1368, !1363, !1358, !1376}
!1376 = distinct !{!1376, !1377, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17ha931045cc8cec290E: %self"}
!1377 = distinct !{!1377, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17ha931045cc8cec290E"}
!1378 = !{!1373, !1368, !1363, !1358}
!1379 = !{!1370, !1365, !1360, !1355, !1376}
!1380 = !{!1376}
!1381 = !{!1382, !1384}
!1382 = distinct !{!1382, !1383, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb41adbc6ab1e7c12E: %self"}
!1383 = distinct !{!1383, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb41adbc6ab1e7c12E"}
!1384 = distinct !{!1384, !1385, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17hf97c56f39f52ea60E: %_1"}
!1385 = distinct !{!1385, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17hf97c56f39f52ea60E"}
!1386 = !{!"branch_weights", i32 4000000, i32 4001}
!1387 = !{!1388}
!1388 = distinct !{!1388, !1389, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h79c3fb0f73b44951E: %a"}
!1389 = distinct !{!1389, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h79c3fb0f73b44951E"}
!1390 = !{!1391}
!1391 = distinct !{!1391, !1389, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h79c3fb0f73b44951E: %b"}
!1392 = !{!1393}
!1393 = distinct !{!1393, !1394, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!1394 = distinct !{!1394, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!1395 = !{!1396}
!1396 = distinct !{!1396, !1394, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!1397 = !{!1398}
!1398 = distinct !{!1398, !1399, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!1399 = distinct !{!1399, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!1400 = !{!1401}
!1401 = distinct !{!1401, !1399, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!1402 = !{!1403}
!1403 = distinct !{!1403, !1404, !"cmpfunc: %a"}
!1404 = distinct !{!1404, !"cmpfunc"}
!1405 = !{!1406}
!1406 = distinct !{!1406, !1404, !"cmpfunc: %b"}
!1407 = !{!1408}
!1408 = distinct !{!1408, !1409, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1409 = distinct !{!1409, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1410 = !{!1411}
!1411 = distinct !{!1411, !1409, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1412 = !{!1408, !1403, !1398, !1393, !1391}
!1413 = !{!1411, !1406, !1401, !1396, !1388}
!1414 = !{!1415}
!1415 = distinct !{!1415, !1416, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h72ead2ed09a21376E: %self"}
!1416 = distinct !{!1416, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h72ead2ed09a21376E"}
!1417 = !{!1418}
!1418 = distinct !{!1418, !1419, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h79c3fb0f73b44951E: %a"}
!1419 = distinct !{!1419, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h79c3fb0f73b44951E"}
!1420 = !{!1421}
!1421 = distinct !{!1421, !1419, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h79c3fb0f73b44951E: %b"}
!1422 = !{!1423}
!1423 = distinct !{!1423, !1424, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!1424 = distinct !{!1424, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!1425 = !{!1426}
!1426 = distinct !{!1426, !1424, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!1427 = !{!1428}
!1428 = distinct !{!1428, !1429, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!1429 = distinct !{!1429, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!1430 = !{!1431}
!1431 = distinct !{!1431, !1429, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!1432 = !{!1433}
!1433 = distinct !{!1433, !1434, !"cmpfunc: %a"}
!1434 = distinct !{!1434, !"cmpfunc"}
!1435 = !{!1436}
!1436 = distinct !{!1436, !1434, !"cmpfunc: %b"}
!1437 = !{!1438}
!1438 = distinct !{!1438, !1439, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1439 = distinct !{!1439, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1440 = !{!1441}
!1441 = distinct !{!1441, !1439, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1442 = !{!1438, !1433, !1428, !1423, !1421}
!1443 = !{!1441, !1436, !1431, !1426, !1418}
!1444 = !{!1445}
!1445 = distinct !{!1445, !1446, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h72ead2ed09a21376E: %self"}
!1446 = distinct !{!1446, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h72ead2ed09a21376E"}
!1447 = !{!1448}
!1448 = distinct !{!1448, !1449, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h79c3fb0f73b44951E: %a"}
!1449 = distinct !{!1449, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h79c3fb0f73b44951E"}
!1450 = !{!1451}
!1451 = distinct !{!1451, !1449, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h79c3fb0f73b44951E: %b"}
!1452 = !{!1453}
!1453 = distinct !{!1453, !1454, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!1454 = distinct !{!1454, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!1455 = !{!1456}
!1456 = distinct !{!1456, !1454, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!1457 = !{!1458}
!1458 = distinct !{!1458, !1459, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!1459 = distinct !{!1459, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!1460 = !{!1461}
!1461 = distinct !{!1461, !1459, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!1462 = !{!1463}
!1463 = distinct !{!1463, !1464, !"cmpfunc: %a"}
!1464 = distinct !{!1464, !"cmpfunc"}
!1465 = !{!1466}
!1466 = distinct !{!1466, !1464, !"cmpfunc: %b"}
!1467 = !{!1468}
!1468 = distinct !{!1468, !1469, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1469 = distinct !{!1469, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1470 = !{!1471}
!1471 = distinct !{!1471, !1469, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1472 = !{!1468, !1463, !1458, !1453, !1451}
!1473 = !{!1471, !1466, !1461, !1456, !1448}
!1474 = !{!1475}
!1475 = distinct !{!1475, !1476, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h72ead2ed09a21376E: %self"}
!1476 = distinct !{!1476, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h72ead2ed09a21376E"}
!1477 = !{!1478}
!1478 = distinct !{!1478, !1479, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h79c3fb0f73b44951E: %a"}
!1479 = distinct !{!1479, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h79c3fb0f73b44951E"}
!1480 = !{!1481}
!1481 = distinct !{!1481, !1479, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h79c3fb0f73b44951E: %b"}
!1482 = !{!1483}
!1483 = distinct !{!1483, !1484, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!1484 = distinct !{!1484, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!1485 = !{!1486}
!1486 = distinct !{!1486, !1484, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!1487 = !{!1488}
!1488 = distinct !{!1488, !1489, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!1489 = distinct !{!1489, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!1490 = !{!1491}
!1491 = distinct !{!1491, !1489, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!1492 = !{!1493}
!1493 = distinct !{!1493, !1494, !"cmpfunc: %a"}
!1494 = distinct !{!1494, !"cmpfunc"}
!1495 = !{!1496}
!1496 = distinct !{!1496, !1494, !"cmpfunc: %b"}
!1497 = !{!1498}
!1498 = distinct !{!1498, !1499, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1499 = distinct !{!1499, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1500 = !{!1501}
!1501 = distinct !{!1501, !1499, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1502 = !{!1498, !1493, !1488, !1483, !1481}
!1503 = !{!1501, !1496, !1491, !1486, !1478}
!1504 = !{!1505}
!1505 = distinct !{!1505, !1506, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h72ead2ed09a21376E: %self"}
!1506 = distinct !{!1506, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h72ead2ed09a21376E"}
!1507 = !{!1508}
!1508 = distinct !{!1508, !1509, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h79c3fb0f73b44951E: %a"}
!1509 = distinct !{!1509, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h79c3fb0f73b44951E"}
!1510 = !{!1511}
!1511 = distinct !{!1511, !1509, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h79c3fb0f73b44951E: %b"}
!1512 = !{!1513}
!1513 = distinct !{!1513, !1514, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!1514 = distinct !{!1514, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!1515 = !{!1516}
!1516 = distinct !{!1516, !1514, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!1517 = !{!1518}
!1518 = distinct !{!1518, !1519, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!1519 = distinct !{!1519, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!1520 = !{!1521}
!1521 = distinct !{!1521, !1519, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!1522 = !{!1523}
!1523 = distinct !{!1523, !1524, !"cmpfunc: %a"}
!1524 = distinct !{!1524, !"cmpfunc"}
!1525 = !{!1526}
!1526 = distinct !{!1526, !1524, !"cmpfunc: %b"}
!1527 = !{!1528}
!1528 = distinct !{!1528, !1529, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1529 = distinct !{!1529, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1530 = !{!1531}
!1531 = distinct !{!1531, !1529, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1532 = !{!1528, !1523, !1518, !1513, !1511}
!1533 = !{!1531, !1526, !1521, !1516, !1508}
!1534 = !{!1535}
!1535 = distinct !{!1535, !1536, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h72ead2ed09a21376E: %self"}
!1536 = distinct !{!1536, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h72ead2ed09a21376E"}
!1537 = !{!1538}
!1538 = distinct !{!1538, !1539, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h72ead2ed09a21376E: %self"}
!1539 = distinct !{!1539, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h72ead2ed09a21376E"}
!1540 = distinct !{!1540, !1541}
!1541 = !{!"llvm.loop.unroll.disable"}
!1542 = !{!1543}
!1543 = distinct !{!1543, !1544, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!1544 = distinct !{!1544, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!1545 = !{!1546}
!1546 = distinct !{!1546, !1544, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!1547 = !{!1548}
!1548 = distinct !{!1548, !1549, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!1549 = distinct !{!1549, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!1550 = !{!1551}
!1551 = distinct !{!1551, !1549, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!1552 = !{!1553}
!1553 = distinct !{!1553, !1554, !"cmpfunc: %a"}
!1554 = distinct !{!1554, !"cmpfunc"}
!1555 = !{!1556}
!1556 = distinct !{!1556, !1554, !"cmpfunc: %b"}
!1557 = !{!1558}
!1558 = distinct !{!1558, !1559, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1559 = distinct !{!1559, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1560 = !{!1561}
!1561 = distinct !{!1561, !1559, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1562 = !{!1558, !1553, !1548, !1543}
!1563 = !{!1561, !1556, !1551, !1546}
!1564 = !{!1565}
!1565 = distinct !{!1565, !1566, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h72ead2ed09a21376E: %self"}
!1566 = distinct !{!1566, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h72ead2ed09a21376E"}
!1567 = !{!1568}
!1568 = distinct !{!1568, !1569, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!1569 = distinct !{!1569, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!1570 = !{!1571}
!1571 = distinct !{!1571, !1569, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!1572 = !{!1573}
!1573 = distinct !{!1573, !1574, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!1574 = distinct !{!1574, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!1575 = !{!1576}
!1576 = distinct !{!1576, !1574, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!1577 = !{!1578}
!1578 = distinct !{!1578, !1579, !"cmpfunc: %a"}
!1579 = distinct !{!1579, !"cmpfunc"}
!1580 = !{!1581}
!1581 = distinct !{!1581, !1579, !"cmpfunc: %b"}
!1582 = !{!1583}
!1583 = distinct !{!1583, !1584, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1584 = distinct !{!1584, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1585 = !{!1586}
!1586 = distinct !{!1586, !1584, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1587 = !{!1583, !1578, !1573, !1568}
!1588 = !{!1586, !1581, !1576, !1571}
!1589 = !{!1590}
!1590 = distinct !{!1590, !1591, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h72ead2ed09a21376E: %self"}
!1591 = distinct !{!1591, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h72ead2ed09a21376E"}
!1592 = !{!1593}
!1593 = distinct !{!1593, !1594, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!1594 = distinct !{!1594, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!1595 = !{!1596}
!1596 = distinct !{!1596, !1594, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!1597 = !{!1598}
!1598 = distinct !{!1598, !1599, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!1599 = distinct !{!1599, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!1600 = !{!1601}
!1601 = distinct !{!1601, !1599, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!1602 = !{!1603}
!1603 = distinct !{!1603, !1604, !"cmpfunc: %a"}
!1604 = distinct !{!1604, !"cmpfunc"}
!1605 = !{!1606}
!1606 = distinct !{!1606, !1604, !"cmpfunc: %b"}
!1607 = !{!1608}
!1608 = distinct !{!1608, !1609, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1609 = distinct !{!1609, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1610 = !{!1611}
!1611 = distinct !{!1611, !1609, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1612 = !{!1608, !1603, !1598, !1593}
!1613 = !{!1611, !1606, !1601, !1596}
!1614 = !{!1615}
!1615 = distinct !{!1615, !1616, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h72ead2ed09a21376E: %self"}
!1616 = distinct !{!1616, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h72ead2ed09a21376E"}
!1617 = !{!1618}
!1618 = distinct !{!1618, !1619, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!1619 = distinct !{!1619, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!1620 = !{!1621}
!1621 = distinct !{!1621, !1619, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!1622 = !{!1623}
!1623 = distinct !{!1623, !1624, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!1624 = distinct !{!1624, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!1625 = !{!1626}
!1626 = distinct !{!1626, !1624, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!1627 = !{!1628}
!1628 = distinct !{!1628, !1629, !"cmpfunc: %a"}
!1629 = distinct !{!1629, !"cmpfunc"}
!1630 = !{!1631}
!1631 = distinct !{!1631, !1629, !"cmpfunc: %b"}
!1632 = !{!1633}
!1633 = distinct !{!1633, !1634, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1634 = distinct !{!1634, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1635 = !{!1636}
!1636 = distinct !{!1636, !1634, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1637 = !{!1633, !1628, !1623, !1618}
!1638 = !{!1636, !1631, !1626, !1621}
!1639 = !{!1640}
!1640 = distinct !{!1640, !1641, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h72ead2ed09a21376E: %self"}
!1641 = distinct !{!1641, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h72ead2ed09a21376E"}
!1642 = !{!1643}
!1643 = distinct !{!1643, !1644, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!1644 = distinct !{!1644, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!1645 = !{!1646}
!1646 = distinct !{!1646, !1644, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!1647 = !{!1648}
!1648 = distinct !{!1648, !1649, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!1649 = distinct !{!1649, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!1650 = !{!1651}
!1651 = distinct !{!1651, !1649, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!1652 = !{!1653}
!1653 = distinct !{!1653, !1654, !"cmpfunc: %a"}
!1654 = distinct !{!1654, !"cmpfunc"}
!1655 = !{!1656}
!1656 = distinct !{!1656, !1654, !"cmpfunc: %b"}
!1657 = !{!1658}
!1658 = distinct !{!1658, !1659, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1659 = distinct !{!1659, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1660 = !{!1661}
!1661 = distinct !{!1661, !1659, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1662 = !{!1658, !1653, !1648, !1643}
!1663 = !{!1661, !1656, !1651, !1646}
!1664 = !{!1665}
!1665 = distinct !{!1665, !1666, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h72ead2ed09a21376E: %self"}
!1666 = distinct !{!1666, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h72ead2ed09a21376E"}
!1667 = !{!1668}
!1668 = distinct !{!1668, !1669, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h72ead2ed09a21376E: %self"}
!1669 = distinct !{!1669, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17h72ead2ed09a21376E"}
!1670 = distinct !{!1670, !1541}
!1671 = !{!1672}
!1672 = distinct !{!1672, !1673, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!1673 = distinct !{!1673, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!1674 = !{!1675}
!1675 = distinct !{!1675, !1673, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!1676 = !{!1677}
!1677 = distinct !{!1677, !1678, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!1678 = distinct !{!1678, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!1679 = !{!1680}
!1680 = distinct !{!1680, !1681, !"_ZN4core5slice4sort6shared5pivot7median317h5cadbf89edcd1b98E: %c"}
!1681 = distinct !{!1681, !"_ZN4core5slice4sort6shared5pivot7median317h5cadbf89edcd1b98E"}
!1682 = !{!1683}
!1683 = distinct !{!1683, !1678, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!1684 = !{!1685}
!1685 = distinct !{!1685, !1686, !"cmpfunc: %a"}
!1686 = distinct !{!1686, !"cmpfunc"}
!1687 = !{!1688}
!1688 = distinct !{!1688, !1686, !"cmpfunc: %b"}
!1689 = !{!1690}
!1690 = distinct !{!1690, !1691, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1691 = distinct !{!1691, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1692 = !{!1693}
!1693 = distinct !{!1693, !1691, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1694 = !{!1690, !1685, !1677, !1672, !1695}
!1695 = distinct !{!1695, !1696, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17ha891ac9f7fed5c82E: %v.0"}
!1696 = distinct !{!1696, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17ha891ac9f7fed5c82E"}
!1697 = !{!1693, !1688, !1683, !1675, !1680, !1698}
!1698 = distinct !{!1698, !1696, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17ha891ac9f7fed5c82E: %is_less"}
!1699 = !{!1693, !1688, !1683, !1675, !1695}
!1700 = !{!1690, !1685, !1677, !1672, !1680, !1698}
!1701 = !{!1702, !1704, !1706, !1708, !1695}
!1702 = distinct !{!1702, !1703, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1703 = distinct !{!1703, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1704 = distinct !{!1704, !1705, !"cmpfunc: %b"}
!1705 = distinct !{!1705, !"cmpfunc"}
!1706 = distinct !{!1706, !1707, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!1707 = distinct !{!1707, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!1708 = distinct !{!1708, !1709, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!1709 = distinct !{!1709, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!1710 = !{!1711, !1712, !1713, !1714, !1698}
!1711 = distinct !{!1711, !1703, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1712 = distinct !{!1712, !1705, !"cmpfunc: %a"}
!1713 = distinct !{!1713, !1707, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!1714 = distinct !{!1714, !1709, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!1715 = !{!1716, !1718, !1720, !1722}
!1716 = distinct !{!1716, !1717, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1717 = distinct !{!1717, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1718 = distinct !{!1718, !1719, !"cmpfunc: %a"}
!1719 = distinct !{!1719, !"cmpfunc"}
!1720 = distinct !{!1720, !1721, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 0"}
!1721 = distinct !{!1721, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE"}
!1722 = distinct !{!1722, !1723, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %a"}
!1723 = distinct !{!1723, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E"}
!1724 = !{!1725, !1726, !1727, !1728}
!1725 = distinct !{!1725, !1717, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1726 = distinct !{!1726, !1719, !"cmpfunc: %b"}
!1727 = distinct !{!1727, !1721, !"_ZN4core3ops8function5FnMut8call_mut17h96715ab5dd47dd4eE: argument 1"}
!1728 = distinct !{!1728, !1723, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h2e0dc785cd67a547E: %b"}
!1729 = !{!1730, !1732}
!1730 = distinct !{!1730, !1731, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17ha1c23a35b9943d9bE: %pair"}
!1731 = distinct !{!1731, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17ha1c23a35b9943d9bE"}
!1732 = distinct !{!1732, !1731, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17ha1c23a35b9943d9bE: %self.0"}
!1733 = !{i64 0, i64 3}
!1734 = !{!1735}
!1735 = distinct !{!1735, !1736, !"_ZN142_$LT$$LP$core..ops..range..Bound$LT$$RF$T$GT$$C$core..ops..range..Bound$LT$$RF$T$GT$$RP$$u20$as$u20$core..ops..range..RangeBounds$LT$T$GT$$GT$9end_bound17hb0681bf3a0e4dd7aE: %self"}
!1736 = distinct !{!1736, !"_ZN142_$LT$$LP$core..ops..range..Bound$LT$$RF$T$GT$$C$core..ops..range..Bound$LT$$RF$T$GT$$RP$$u20$as$u20$core..ops..range..RangeBounds$LT$T$GT$$GT$9end_bound17hb0681bf3a0e4dd7aE"}
!1737 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!1738 = !{!1739}
!1739 = distinct !{!1739, !1740, !"_ZN142_$LT$$LP$core..ops..range..Bound$LT$$RF$T$GT$$C$core..ops..range..Bound$LT$$RF$T$GT$$RP$$u20$as$u20$core..ops..range..RangeBounds$LT$T$GT$$GT$11start_bound17hab509b51481653e2E: %self"}
!1740 = distinct !{!1740, !"_ZN142_$LT$$LP$core..ops..range..Bound$LT$$RF$T$GT$$C$core..ops..range..Bound$LT$$RF$T$GT$$RP$$u20$as$u20$core..ops..range..RangeBounds$LT$T$GT$$GT$11start_bound17hab509b51481653e2E"}
!1741 = !{!1742}
!1742 = distinct !{!1742, !1743, !"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he6318308207387e9E: %self"}
!1743 = distinct !{!1743, !"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he6318308207387e9E"}
!1744 = !{!1745, !1746, !1748}
!1745 = distinct !{!1745, !1743, !"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he6318308207387e9E: %_0"}
!1746 = distinct !{!1746, !1747, !"_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hde7e14e32dc0be06E: %_0"}
!1747 = distinct !{!1747, !"_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hde7e14e32dc0be06E"}
!1748 = distinct !{!1748, !1747, !"_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hde7e14e32dc0be06E: %self"}
!1749 = !{!1750}
!1750 = distinct !{!1750, !1751, !"_ZN4core4iter6traits8iterator8Iterator8for_each17h3fc7c7948201a0e0E: %self"}
!1751 = distinct !{!1751, !"_ZN4core4iter6traits8iterator8Iterator8for_each17h3fc7c7948201a0e0E"}
!1752 = !{!1753}
!1753 = distinct !{!1753, !1754, !"_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h27995977b519942bE: %self"}
!1754 = distinct !{!1754, !"_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h27995977b519942bE"}
!1755 = !{!1756}
!1756 = distinct !{!1756, !1757, !"_ZN79_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..IteratorRefSpec$GT$9spec_fold17h2b397796b6b9701bE: %self"}
!1757 = distinct !{!1757, !"_ZN79_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..IteratorRefSpec$GT$9spec_fold17h2b397796b6b9701bE"}
!1758 = !{!1759}
!1759 = distinct !{!1759, !1760, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17hb2b762f30a1b0aa6E: %self"}
!1760 = distinct !{!1760, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17hb2b762f30a1b0aa6E"}
!1761 = !{!1762}
!1762 = distinct !{!1762, !1763, !"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE: %self"}
!1763 = distinct !{!1763, !"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE"}
!1764 = !{!1765, !1762, !1759, !1756, !1753, !1750}
!1765 = distinct !{!1765, !1766, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E: %self"}
!1766 = distinct !{!1766, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E"}
!1767 = !{!1768, !1769, !1770, !1771}
!1768 = distinct !{!1768, !1760, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17hb2b762f30a1b0aa6E: %f"}
!1769 = distinct !{!1769, !1757, !"_ZN79_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..IteratorRefSpec$GT$9spec_fold17h2b397796b6b9701bE: %fold"}
!1770 = distinct !{!1770, !1754, !"_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h27995977b519942bE: %f"}
!1771 = distinct !{!1771, !1751, !"_ZN4core4iter6traits8iterator8Iterator8for_each17h3fc7c7948201a0e0E: %f"}
!1772 = !{!1762, !1759, !1768, !1756, !1769, !1753, !1770, !1750, !1771}
!1773 = !{!1774, !1776, !1778, !1759, !1768, !1756, !1769, !1753, !1770, !1750, !1771}
!1774 = distinct !{!1774, !1775, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted28_$u7b$$u7b$closure$u7d$$u7d$17ha3560bb8d95a1997E: %_1"}
!1775 = distinct !{!1775, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted28_$u7b$$u7b$closure$u7d$$u7d$17ha3560bb8d95a1997E"}
!1776 = distinct !{!1776, !1777, !"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h20f332f386876823E: %_1"}
!1777 = distinct !{!1777, !"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h20f332f386876823E"}
!1778 = distinct !{!1778, !1779, !"_ZN4core3ops9try_trait26NeverShortCircuit$LT$T$GT$10wrap_mut_228_$u7b$$u7b$closure$u7d$$u7d$17h0edf119265f3dddbE: %_1"}
!1779 = distinct !{!1779, !"_ZN4core3ops9try_trait26NeverShortCircuit$LT$T$GT$10wrap_mut_228_$u7b$$u7b$closure$u7d$$u7d$17h0edf119265f3dddbE"}
!1780 = !{!1781, !1783, !1785, !1787, !1789, !1759, !1768, !1756, !1769, !1753, !1770, !1750, !1771}
!1781 = distinct !{!1781, !1782, !"_ZN83_$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc595cb6c8b2aa3efE: %self"}
!1782 = distinct !{!1782, !"_ZN83_$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc595cb6c8b2aa3efE"}
!1783 = distinct !{!1783, !1784, !"_ZN4core3ptr62drop_in_place$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$GT$17h1f1aab2bacf9b9b4E: %_1"}
!1784 = distinct !{!1784, !"_ZN4core3ptr62drop_in_place$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$GT$17h1f1aab2bacf9b9b4E"}
!1785 = distinct !{!1785, !1786, !"_ZN4core3ptr133drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$..extend_trusted$LT$$RF$mut$u20$core..str..iter..Bytes$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hf91b5f580814f756E: %_1"}
!1786 = distinct !{!1786, !"_ZN4core3ptr133drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$..extend_trusted$LT$$RF$mut$u20$core..str..iter..Bytes$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hf91b5f580814f756E"}
!1787 = distinct !{!1787, !1788, !"_ZN4core3ptr229drop_in_place$LT$core..iter..traits..iterator..Iterator..for_each..call$LT$u8$C$alloc..vec..Vec$LT$u8$GT$..extend_trusted$LT$$RF$mut$u20$core..str..iter..Bytes$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h23647e0417c63defE: %_1"}
!1788 = distinct !{!1788, !"_ZN4core3ptr229drop_in_place$LT$core..iter..traits..iterator..Iterator..for_each..call$LT$u8$C$alloc..vec..Vec$LT$u8$GT$..extend_trusted$LT$$RF$mut$u20$core..str..iter..Bytes$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h23647e0417c63defE"}
!1789 = distinct !{!1789, !1790, !"_ZN4core3ptr349drop_in_place$LT$core..ops..try_trait..NeverShortCircuit$LT$$LP$$RP$$GT$..wrap_mut_2$LT$$LP$$RP$$C$u8$C$core..iter..traits..iterator..Iterator..for_each..call$LT$u8$C$alloc..vec..Vec$LT$u8$GT$..extend_trusted$LT$$RF$mut$u20$core..str..iter..Bytes$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h0579d3110ba2d4c7E: %_1"}
!1790 = distinct !{!1790, !"_ZN4core3ptr349drop_in_place$LT$core..ops..try_trait..NeverShortCircuit$LT$$LP$$RP$$GT$..wrap_mut_2$LT$$LP$$RP$$C$u8$C$core..iter..traits..iterator..Iterator..for_each..call$LT$u8$C$alloc..vec..Vec$LT$u8$GT$..extend_trusted$LT$$RF$mut$u20$core..str..iter..Bytes$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h0579d3110ba2d4c7E"}
!1791 = !{!1792}
!1792 = distinct !{!1792, !1793, !"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a39a3184624d2fbE: %self"}
!1793 = distinct !{!1793, !"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a39a3184624d2fbE"}
!1794 = !{!1795}
!1795 = distinct !{!1795, !1796, !"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE: %self"}
!1796 = distinct !{!1796, !"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE"}
!1797 = !{!1798, !1795}
!1798 = distinct !{!1798, !1799, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E: %self"}
!1799 = distinct !{!1799, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E"}
!1800 = !{i64 0, i64 -9223372036854775808}
!1801 = !{!1802}
!1802 = distinct !{!1802, !1803, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6splice17h1db5f345fd4bb3f6E: %_0"}
!1803 = distinct !{!1803, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6splice17h1db5f345fd4bb3f6E"}
!1804 = !{!1805}
!1805 = distinct !{!1805, !1803, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6splice17h1db5f345fd4bb3f6E: %self"}
!1806 = !{!1807}
!1807 = distinct !{!1807, !1808, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5drain17hb3139aeca7b0e77fE: %self"}
!1808 = distinct !{!1808, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5drain17hb3139aeca7b0e77fE"}
!1809 = !{!1810, !1807, !1802, !1805}
!1810 = distinct !{!1810, !1808, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5drain17hb3139aeca7b0e77fE: %_0"}
!1811 = !{!1807, !1805}
!1812 = !{!1810, !1813, !1802, !1814}
!1813 = distinct !{!1813, !1808, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5drain17hb3139aeca7b0e77fE: %range"}
!1814 = distinct !{!1814, !1803, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6splice17h1db5f345fd4bb3f6E: %range"}
!1815 = !{!1805, !1814}
!1816 = !{!1817}
!1817 = distinct !{!1817, !1818, !"_ZN4core3ptr77drop_in_place$LT$alloc..vec..splice..Splice$LT$core..str..iter..Bytes$GT$$GT$17h554f981d45337611E: %_1"}
!1818 = distinct !{!1818, !"_ZN4core3ptr77drop_in_place$LT$alloc..vec..splice..Splice$LT$core..str..iter..Bytes$GT$$GT$17h554f981d45337611E"}
!1819 = !{!1820}
!1820 = distinct !{!1820, !1821, !"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h762c86ba9763d124E: %_1"}
!1821 = distinct !{!1821, !"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h762c86ba9763d124E"}
!1822 = !{!1823}
!1823 = distinct !{!1823, !1824, !"_ZN79_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8732bad187be2872E: %self"}
!1824 = distinct !{!1824, !"_ZN79_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8732bad187be2872E"}
!1825 = !{!1823, !1820, !1817}
!1826 = !{!1827, !1829}
!1827 = distinct !{!1827, !1828, !"_ZN150_$LT$$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2ecf85fda31b43b2E: %self"}
!1828 = distinct !{!1828, !"_ZN150_$LT$$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2ecf85fda31b43b2E"}
!1829 = distinct !{!1829, !1830, !"_ZN4core3ptr149drop_in_place$LT$$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$u8$C$alloc..alloc..Global$GT$$GT$17hde8ef4c655ab9482E: %_1"}
!1830 = distinct !{!1830, !"_ZN4core3ptr149drop_in_place$LT$$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$u8$C$alloc..alloc..Global$GT$$GT$17hde8ef4c655ab9482E"}
!1831 = !{!1827, !1829, !1823, !1820, !1817}
!1832 = !{!1833, !1835}
!1833 = distinct !{!1833, !1834, !"_ZN150_$LT$$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2ecf85fda31b43b2E: %self"}
!1834 = distinct !{!1834, !"_ZN150_$LT$$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2ecf85fda31b43b2E"}
!1835 = distinct !{!1835, !1836, !"_ZN4core3ptr149drop_in_place$LT$$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$u8$C$alloc..alloc..Global$GT$$GT$17hde8ef4c655ab9482E: %_1"}
!1836 = distinct !{!1836, !"_ZN4core3ptr149drop_in_place$LT$$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$u8$C$alloc..alloc..Global$GT$$GT$17hde8ef4c655ab9482E"}
!1837 = !{!1833, !1835, !1823, !1820, !1817}
!1838 = !{!1839}
!1839 = distinct !{!1839, !1840, !"_ZN79_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..IteratorRefSpec$GT$9spec_fold17h2b397796b6b9701bE: %self"}
!1840 = distinct !{!1840, !"_ZN79_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..IteratorRefSpec$GT$9spec_fold17h2b397796b6b9701bE"}
!1841 = !{!1842}
!1842 = distinct !{!1842, !1840, !"_ZN79_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..IteratorRefSpec$GT$9spec_fold17h2b397796b6b9701bE: %fold"}
!1843 = !{!1844}
!1844 = distinct !{!1844, !1845, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17hb2b762f30a1b0aa6E: %self"}
!1845 = distinct !{!1845, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17hb2b762f30a1b0aa6E"}
!1846 = !{!1847, !1849, !1844, !1839}
!1847 = distinct !{!1847, !1848, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E: %self"}
!1848 = distinct !{!1848, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E"}
!1849 = distinct !{!1849, !1850, !"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE: %self"}
!1850 = distinct !{!1850, !"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE"}
!1851 = !{!1852, !1842}
!1852 = distinct !{!1852, !1845, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17hb2b762f30a1b0aa6E: %f"}
!1853 = !{!1849}
!1854 = !{!1849, !1844, !1852, !1839, !1842}
!1855 = !{!1856, !1858, !1860, !1844, !1852, !1839, !1842}
!1856 = distinct !{!1856, !1857, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted28_$u7b$$u7b$closure$u7d$$u7d$17ha3560bb8d95a1997E: %_1"}
!1857 = distinct !{!1857, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted28_$u7b$$u7b$closure$u7d$$u7d$17ha3560bb8d95a1997E"}
!1858 = distinct !{!1858, !1859, !"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h20f332f386876823E: %_1"}
!1859 = distinct !{!1859, !"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h20f332f386876823E"}
!1860 = distinct !{!1860, !1861, !"_ZN4core3ops9try_trait26NeverShortCircuit$LT$T$GT$10wrap_mut_228_$u7b$$u7b$closure$u7d$$u7d$17h0edf119265f3dddbE: %_1"}
!1861 = distinct !{!1861, !"_ZN4core3ops9try_trait26NeverShortCircuit$LT$T$GT$10wrap_mut_228_$u7b$$u7b$closure$u7d$$u7d$17h0edf119265f3dddbE"}
!1862 = !{!1863, !1865, !1867, !1869, !1871, !1844, !1852, !1839, !1842}
!1863 = distinct !{!1863, !1864, !"_ZN83_$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc595cb6c8b2aa3efE: %self"}
!1864 = distinct !{!1864, !"_ZN83_$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc595cb6c8b2aa3efE"}
!1865 = distinct !{!1865, !1866, !"_ZN4core3ptr62drop_in_place$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$GT$17h1f1aab2bacf9b9b4E: %_1"}
!1866 = distinct !{!1866, !"_ZN4core3ptr62drop_in_place$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$GT$17h1f1aab2bacf9b9b4E"}
!1867 = distinct !{!1867, !1868, !"_ZN4core3ptr133drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$..extend_trusted$LT$$RF$mut$u20$core..str..iter..Bytes$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hf91b5f580814f756E: %_1"}
!1868 = distinct !{!1868, !"_ZN4core3ptr133drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$..extend_trusted$LT$$RF$mut$u20$core..str..iter..Bytes$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hf91b5f580814f756E"}
!1869 = distinct !{!1869, !1870, !"_ZN4core3ptr229drop_in_place$LT$core..iter..traits..iterator..Iterator..for_each..call$LT$u8$C$alloc..vec..Vec$LT$u8$GT$..extend_trusted$LT$$RF$mut$u20$core..str..iter..Bytes$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h23647e0417c63defE: %_1"}
!1870 = distinct !{!1870, !"_ZN4core3ptr229drop_in_place$LT$core..iter..traits..iterator..Iterator..for_each..call$LT$u8$C$alloc..vec..Vec$LT$u8$GT$..extend_trusted$LT$$RF$mut$u20$core..str..iter..Bytes$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h23647e0417c63defE"}
!1871 = distinct !{!1871, !1872, !"_ZN4core3ptr349drop_in_place$LT$core..ops..try_trait..NeverShortCircuit$LT$$LP$$RP$$GT$..wrap_mut_2$LT$$LP$$RP$$C$u8$C$core..iter..traits..iterator..Iterator..for_each..call$LT$u8$C$alloc..vec..Vec$LT$u8$GT$..extend_trusted$LT$$RF$mut$u20$core..str..iter..Bytes$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h0579d3110ba2d4c7E: %_1"}
!1872 = distinct !{!1872, !"_ZN4core3ptr349drop_in_place$LT$core..ops..try_trait..NeverShortCircuit$LT$$LP$$RP$$GT$..wrap_mut_2$LT$$LP$$RP$$C$u8$C$core..iter..traits..iterator..Iterator..for_each..call$LT$u8$C$alloc..vec..Vec$LT$u8$GT$..extend_trusted$LT$$RF$mut$u20$core..str..iter..Bytes$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h0579d3110ba2d4c7E"}
!1873 = !{!1874}
!1874 = distinct !{!1874, !1875, !"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he6318308207387e9E: %_0"}
!1875 = distinct !{!1875, !"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he6318308207387e9E"}
!1876 = !{!1877}
!1877 = distinct !{!1877, !1875, !"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he6318308207387e9E: %self"}
!1878 = !{!1879, !1881}
!1879 = distinct !{!1879, !1880, !"_ZN150_$LT$$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2ecf85fda31b43b2E: %self"}
!1880 = distinct !{!1880, !"_ZN150_$LT$$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2ecf85fda31b43b2E"}
!1881 = distinct !{!1881, !1882, !"_ZN4core3ptr149drop_in_place$LT$$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$u8$C$alloc..alloc..Global$GT$$GT$17hde8ef4c655ab9482E: %_1"}
!1882 = distinct !{!1882, !"_ZN4core3ptr149drop_in_place$LT$$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$u8$C$alloc..alloc..Global$GT$$GT$17hde8ef4c655ab9482E"}
!1883 = !{!1884, !1886}
!1884 = distinct !{!1884, !1885, !"_ZN150_$LT$$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2ecf85fda31b43b2E: %self"}
!1885 = distinct !{!1885, !"_ZN150_$LT$$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2ecf85fda31b43b2E"}
!1886 = distinct !{!1886, !1887, !"_ZN4core3ptr149drop_in_place$LT$$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$u8$C$alloc..alloc..Global$GT$$GT$17hde8ef4c655ab9482E: %_1"}
!1887 = distinct !{!1887, !"_ZN4core3ptr149drop_in_place$LT$$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$u8$C$alloc..alloc..Global$GT$$GT$17hde8ef4c655ab9482E"}
!1888 = !{!1889, !1891}
!1889 = distinct !{!1889, !1890, !"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he383899dda24e05cE: %self"}
!1890 = distinct !{!1890, !"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he383899dda24e05cE"}
!1891 = distinct !{!1891, !1892, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17ha60889ea79de91feE: %self"}
!1892 = distinct !{!1892, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17ha60889ea79de91feE"}
!1893 = !{!1894}
!1894 = distinct !{!1894, !1895, !"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17he13ad3707454ee2fE: %self"}
!1895 = distinct !{!1895, !"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17he13ad3707454ee2fE"}
!1896 = !{!1897}
!1897 = distinct !{!1897, !1895, !"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17he13ad3707454ee2fE: %replace_with"}
!1898 = !{!1894, !1897}
!1899 = !{!1900, !1902, !1897}
!1900 = distinct !{!1900, !1901, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E: %self"}
!1901 = distinct !{!1901, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E"}
!1902 = distinct !{!1902, !1903, !"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE: %self"}
!1903 = distinct !{!1903, !"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE"}
!1904 = !{!1902}
!1905 = !{!1902, !1894, !1897}
!1906 = !{!1907}
!1907 = distinct !{!1907, !1908, !"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hbe17c1eaad2150f2E: %self"}
!1908 = distinct !{!1908, !"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hbe17c1eaad2150f2E"}
!1909 = !{!1910}
!1910 = distinct !{!1910, !1908, !"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hbe17c1eaad2150f2E: %iterator"}
!1911 = !{!1912}
!1912 = distinct !{!1912, !1913, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h4dfb4dd7ccd3d3bbE: %self"}
!1913 = distinct !{!1913, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h4dfb4dd7ccd3d3bbE"}
!1914 = !{!1915}
!1915 = distinct !{!1915, !1913, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h4dfb4dd7ccd3d3bbE: argument 1"}
!1916 = !{!1917, !1915, !1910}
!1917 = distinct !{!1917, !1918, !"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he6318308207387e9E: %self"}
!1918 = distinct !{!1918, !"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he6318308207387e9E"}
!1919 = !{!1920, !1921, !1923, !1912, !1907}
!1920 = distinct !{!1920, !1918, !"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he6318308207387e9E: %_0"}
!1921 = distinct !{!1921, !1922, !"_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hde7e14e32dc0be06E: %_0"}
!1922 = distinct !{!1922, !"_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hde7e14e32dc0be06E"}
!1923 = distinct !{!1923, !1922, !"_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hde7e14e32dc0be06E: %self"}
!1924 = !{!1915, !1910}
!1925 = !{!1912, !1907}
!1926 = !{!1927}
!1927 = distinct !{!1927, !1928, !"_ZN4core4iter6traits8iterator8Iterator8for_each17h3fc7c7948201a0e0E: %self"}
!1928 = distinct !{!1928, !"_ZN4core4iter6traits8iterator8Iterator8for_each17h3fc7c7948201a0e0E"}
!1929 = !{!1930}
!1930 = distinct !{!1930, !1931, !"_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h27995977b519942bE: %self"}
!1931 = distinct !{!1931, !"_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h27995977b519942bE"}
!1932 = !{!1933}
!1933 = distinct !{!1933, !1934, !"_ZN79_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..IteratorRefSpec$GT$9spec_fold17h2b397796b6b9701bE: %self"}
!1934 = distinct !{!1934, !"_ZN79_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..IteratorRefSpec$GT$9spec_fold17h2b397796b6b9701bE"}
!1935 = !{!1936}
!1936 = distinct !{!1936, !1937, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17hb2b762f30a1b0aa6E: %self"}
!1937 = distinct !{!1937, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17hb2b762f30a1b0aa6E"}
!1938 = !{!1939}
!1939 = distinct !{!1939, !1940, !"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE: %self"}
!1940 = distinct !{!1940, !"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE"}
!1941 = !{!1942, !1939, !1936, !1933, !1930, !1927, !1915, !1910}
!1942 = distinct !{!1942, !1943, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E: %self"}
!1943 = distinct !{!1943, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E"}
!1944 = !{!1945, !1946, !1947, !1948, !1912, !1907}
!1945 = distinct !{!1945, !1937, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17hb2b762f30a1b0aa6E: %f"}
!1946 = distinct !{!1946, !1934, !"_ZN79_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..IteratorRefSpec$GT$9spec_fold17h2b397796b6b9701bE: %fold"}
!1947 = distinct !{!1947, !1931, !"_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h27995977b519942bE: %f"}
!1948 = distinct !{!1948, !1928, !"_ZN4core4iter6traits8iterator8Iterator8for_each17h3fc7c7948201a0e0E: %f"}
!1949 = !{!1939, !1936, !1945, !1933, !1946, !1930, !1947, !1927, !1948, !1915, !1910}
!1950 = !{!1951, !1953, !1955, !1936, !1945, !1933, !1946, !1930, !1947, !1927, !1948, !1915, !1910}
!1951 = distinct !{!1951, !1952, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted28_$u7b$$u7b$closure$u7d$$u7d$17ha3560bb8d95a1997E: %_1"}
!1952 = distinct !{!1952, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted28_$u7b$$u7b$closure$u7d$$u7d$17ha3560bb8d95a1997E"}
!1953 = distinct !{!1953, !1954, !"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h20f332f386876823E: %_1"}
!1954 = distinct !{!1954, !"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h20f332f386876823E"}
!1955 = distinct !{!1955, !1956, !"_ZN4core3ops9try_trait26NeverShortCircuit$LT$T$GT$10wrap_mut_228_$u7b$$u7b$closure$u7d$$u7d$17h0edf119265f3dddbE: %_1"}
!1956 = distinct !{!1956, !"_ZN4core3ops9try_trait26NeverShortCircuit$LT$T$GT$10wrap_mut_228_$u7b$$u7b$closure$u7d$$u7d$17h0edf119265f3dddbE"}
!1957 = !{!1958, !1960, !1962, !1964, !1966, !1936, !1945, !1933, !1946, !1930, !1947, !1927, !1948, !1915, !1910}
!1958 = distinct !{!1958, !1959, !"_ZN83_$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc595cb6c8b2aa3efE: %self"}
!1959 = distinct !{!1959, !"_ZN83_$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc595cb6c8b2aa3efE"}
!1960 = distinct !{!1960, !1961, !"_ZN4core3ptr62drop_in_place$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$GT$17h1f1aab2bacf9b9b4E: %_1"}
!1961 = distinct !{!1961, !"_ZN4core3ptr62drop_in_place$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$GT$17h1f1aab2bacf9b9b4E"}
!1962 = distinct !{!1962, !1963, !"_ZN4core3ptr133drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$..extend_trusted$LT$$RF$mut$u20$core..str..iter..Bytes$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hf91b5f580814f756E: %_1"}
!1963 = distinct !{!1963, !"_ZN4core3ptr133drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$..extend_trusted$LT$$RF$mut$u20$core..str..iter..Bytes$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hf91b5f580814f756E"}
!1964 = distinct !{!1964, !1965, !"_ZN4core3ptr229drop_in_place$LT$core..iter..traits..iterator..Iterator..for_each..call$LT$u8$C$alloc..vec..Vec$LT$u8$GT$..extend_trusted$LT$$RF$mut$u20$core..str..iter..Bytes$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h23647e0417c63defE: %_1"}
!1965 = distinct !{!1965, !"_ZN4core3ptr229drop_in_place$LT$core..iter..traits..iterator..Iterator..for_each..call$LT$u8$C$alloc..vec..Vec$LT$u8$GT$..extend_trusted$LT$$RF$mut$u20$core..str..iter..Bytes$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h23647e0417c63defE"}
!1966 = distinct !{!1966, !1967, !"_ZN4core3ptr349drop_in_place$LT$core..ops..try_trait..NeverShortCircuit$LT$$LP$$RP$$GT$..wrap_mut_2$LT$$LP$$RP$$C$u8$C$core..iter..traits..iterator..Iterator..for_each..call$LT$u8$C$alloc..vec..Vec$LT$u8$GT$..extend_trusted$LT$$RF$mut$u20$core..str..iter..Bytes$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h0579d3110ba2d4c7E: %_1"}
!1967 = distinct !{!1967, !"_ZN4core3ptr349drop_in_place$LT$core..ops..try_trait..NeverShortCircuit$LT$$LP$$RP$$GT$..wrap_mut_2$LT$$LP$$RP$$C$u8$C$core..iter..traits..iterator..Iterator..for_each..call$LT$u8$C$alloc..vec..Vec$LT$u8$GT$..extend_trusted$LT$$RF$mut$u20$core..str..iter..Bytes$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h0579d3110ba2d4c7E"}
!1968 = !{!1969}
!1969 = distinct !{!1969, !1970, !"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he6318308207387e9E: %self"}
!1970 = distinct !{!1970, !"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he6318308207387e9E"}
!1971 = !{!1972}
!1972 = distinct !{!1972, !1970, !"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he6318308207387e9E: %_0"}
!1973 = !{!1974}
!1974 = distinct !{!1974, !1975, !"_ZN90_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17haf2c34239aa17e22E: %self"}
!1975 = distinct !{!1975, !"_ZN90_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17haf2c34239aa17e22E"}
!1976 = !{!1977}
!1977 = distinct !{!1977, !1975, !"_ZN90_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17haf2c34239aa17e22E: %_0"}
!1978 = !{!1979}
!1979 = distinct !{!1979, !1980, !"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h5cacf35e63f71de5E: %self"}
!1980 = distinct !{!1980, !"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h5cacf35e63f71de5E"}
!1981 = !{!1982}
!1982 = distinct !{!1982, !1983, !"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17he13ad3707454ee2fE: %replace_with"}
!1983 = distinct !{!1983, !"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17he13ad3707454ee2fE"}
!1984 = !{!1985, !1982}
!1985 = distinct !{!1985, !1983, !"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17he13ad3707454ee2fE: %self"}
!1986 = !{!1987, !1989, !1982}
!1987 = distinct !{!1987, !1988, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E: %self"}
!1988 = distinct !{!1988, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E"}
!1989 = distinct !{!1989, !1990, !"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE: %self"}
!1990 = distinct !{!1990, !"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE"}
!1991 = !{!1985}
!1992 = !{!1989}
!1993 = !{!1989, !1985, !1982}
!1994 = !{!1995, !1997, !1999, !2001}
!1995 = distinct !{!1995, !1996, !"_ZN157_$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h37186e8a8f517616E: %self"}
!1996 = distinct !{!1996, !"_ZN157_$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h37186e8a8f517616E"}
!1997 = distinct !{!1997, !1998, !"_ZN4core3ptr156drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$u8$C$alloc..alloc..Global$GT$$GT$17h8e12aea2ecb38033E: %_1"}
!1998 = distinct !{!1998, !"_ZN4core3ptr156drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$u8$C$alloc..alloc..Global$GT$$GT$17h8e12aea2ecb38033E"}
!1999 = distinct !{!1999, !2000, !"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f27966bc0fb3436E: %self"}
!2000 = distinct !{!2000, !"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f27966bc0fb3436E"}
!2001 = distinct !{!2001, !2002, !"_ZN4core3ptr62drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$u8$GT$$GT$17h22c1786a9a033489E: %_1"}
!2002 = distinct !{!2002, !"_ZN4core3ptr62drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$u8$GT$$GT$17h22c1786a9a033489E"}
!2003 = !{!2004, !2006, !2008, !2010}
!2004 = distinct !{!2004, !2005, !"_ZN157_$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h37186e8a8f517616E: %self"}
!2005 = distinct !{!2005, !"_ZN157_$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h37186e8a8f517616E"}
!2006 = distinct !{!2006, !2007, !"_ZN4core3ptr156drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$u8$C$alloc..alloc..Global$GT$$GT$17h8e12aea2ecb38033E: %_1"}
!2007 = distinct !{!2007, !"_ZN4core3ptr156drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$u8$C$alloc..alloc..Global$GT$$GT$17h8e12aea2ecb38033E"}
!2008 = distinct !{!2008, !2009, !"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f27966bc0fb3436E: %self"}
!2009 = distinct !{!2009, !"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f27966bc0fb3436E"}
!2010 = distinct !{!2010, !2011, !"_ZN4core3ptr62drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$u8$GT$$GT$17h22c1786a9a033489E: %_1"}
!2011 = distinct !{!2011, !"_ZN4core3ptr62drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$u8$GT$$GT$17h22c1786a9a033489E"}
!2012 = !{!2013}
!2013 = distinct !{!2013, !2014, !"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h5cacf35e63f71de5E: %self"}
!2014 = distinct !{!2014, !"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h5cacf35e63f71de5E"}
!2015 = !{!2016, !2018}
!2016 = distinct !{!2016, !2017, !"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17h7d2ad50295d8fe52E: %self"}
!2017 = distinct !{!2017, !"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17h7d2ad50295d8fe52E"}
!2018 = distinct !{!2018, !2017, !"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17h7d2ad50295d8fe52E: %replace_with"}
!2019 = !{!2020, !2016, !2018}
!2020 = distinct !{!2020, !2021, !"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a39a3184624d2fbE: %self"}
!2021 = distinct !{!2021, !"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a39a3184624d2fbE"}
!2022 = !{!2023, !2025}
!2023 = distinct !{!2023, !2024, !"_ZN157_$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h37186e8a8f517616E: %self"}
!2024 = distinct !{!2024, !"_ZN157_$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h37186e8a8f517616E"}
!2025 = distinct !{!2025, !2026, !"_ZN4core3ptr156drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$u8$C$alloc..alloc..Global$GT$$GT$17h8e12aea2ecb38033E: %_1"}
!2026 = distinct !{!2026, !"_ZN4core3ptr156drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$u8$C$alloc..alloc..Global$GT$$GT$17h8e12aea2ecb38033E"}
!2027 = !{!2028}
!2028 = distinct !{!2028, !2029, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h4dfb4dd7ccd3d3bbE: %self"}
!2029 = distinct !{!2029, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h4dfb4dd7ccd3d3bbE"}
!2030 = !{!2031}
!2031 = distinct !{!2031, !2029, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h4dfb4dd7ccd3d3bbE: argument 1"}
!2032 = !{!2033, !2031}
!2033 = distinct !{!2033, !2034, !"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he6318308207387e9E: %self"}
!2034 = distinct !{!2034, !"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he6318308207387e9E"}
!2035 = !{!2036, !2037, !2039, !2028}
!2036 = distinct !{!2036, !2034, !"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he6318308207387e9E: %_0"}
!2037 = distinct !{!2037, !2038, !"_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hde7e14e32dc0be06E: %_0"}
!2038 = distinct !{!2038, !"_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hde7e14e32dc0be06E"}
!2039 = distinct !{!2039, !2038, !"_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hde7e14e32dc0be06E: %self"}
!2040 = !{!2041}
!2041 = distinct !{!2041, !2042, !"_ZN4core4iter6traits8iterator8Iterator8for_each17h3fc7c7948201a0e0E: %self"}
!2042 = distinct !{!2042, !"_ZN4core4iter6traits8iterator8Iterator8for_each17h3fc7c7948201a0e0E"}
!2043 = !{!2044}
!2044 = distinct !{!2044, !2045, !"_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h27995977b519942bE: %self"}
!2045 = distinct !{!2045, !"_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h27995977b519942bE"}
!2046 = !{!2047}
!2047 = distinct !{!2047, !2048, !"_ZN79_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..IteratorRefSpec$GT$9spec_fold17h2b397796b6b9701bE: %self"}
!2048 = distinct !{!2048, !"_ZN79_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..IteratorRefSpec$GT$9spec_fold17h2b397796b6b9701bE"}
!2049 = !{!2050}
!2050 = distinct !{!2050, !2051, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17hb2b762f30a1b0aa6E: %self"}
!2051 = distinct !{!2051, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17hb2b762f30a1b0aa6E"}
!2052 = !{!2053}
!2053 = distinct !{!2053, !2054, !"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE: %self"}
!2054 = distinct !{!2054, !"_ZN81_$LT$core..str..iter..Bytes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d2470c5d9a8e5ffE"}
!2055 = !{!2056, !2053, !2050, !2047, !2044, !2041, !2031}
!2056 = distinct !{!2056, !2057, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E: %self"}
!2057 = distinct !{!2057, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7d1340a322c1c85E"}
!2058 = !{!2059, !2060, !2061, !2062, !2028}
!2059 = distinct !{!2059, !2051, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17hb2b762f30a1b0aa6E: %f"}
!2060 = distinct !{!2060, !2048, !"_ZN79_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..IteratorRefSpec$GT$9spec_fold17h2b397796b6b9701bE: %fold"}
!2061 = distinct !{!2061, !2045, !"_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h27995977b519942bE: %f"}
!2062 = distinct !{!2062, !2042, !"_ZN4core4iter6traits8iterator8Iterator8for_each17h3fc7c7948201a0e0E: %f"}
!2063 = !{!2053, !2050, !2059, !2047, !2060, !2044, !2061, !2041, !2062, !2031}
!2064 = !{!2065, !2067, !2069, !2050, !2059, !2047, !2060, !2044, !2061, !2041, !2062, !2031}
!2065 = distinct !{!2065, !2066, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted28_$u7b$$u7b$closure$u7d$$u7d$17ha3560bb8d95a1997E: %_1"}
!2066 = distinct !{!2066, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted28_$u7b$$u7b$closure$u7d$$u7d$17ha3560bb8d95a1997E"}
!2067 = distinct !{!2067, !2068, !"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h20f332f386876823E: %_1"}
!2068 = distinct !{!2068, !"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h20f332f386876823E"}
!2069 = distinct !{!2069, !2070, !"_ZN4core3ops9try_trait26NeverShortCircuit$LT$T$GT$10wrap_mut_228_$u7b$$u7b$closure$u7d$$u7d$17h0edf119265f3dddbE: %_1"}
!2070 = distinct !{!2070, !"_ZN4core3ops9try_trait26NeverShortCircuit$LT$T$GT$10wrap_mut_228_$u7b$$u7b$closure$u7d$$u7d$17h0edf119265f3dddbE"}
!2071 = !{!2072, !2074, !2076, !2078, !2080, !2050, !2059, !2047, !2060, !2044, !2061, !2041, !2062, !2031}
!2072 = distinct !{!2072, !2073, !"_ZN83_$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc595cb6c8b2aa3efE: %self"}
!2073 = distinct !{!2073, !"_ZN83_$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc595cb6c8b2aa3efE"}
!2074 = distinct !{!2074, !2075, !"_ZN4core3ptr62drop_in_place$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$GT$17h1f1aab2bacf9b9b4E: %_1"}
!2075 = distinct !{!2075, !"_ZN4core3ptr62drop_in_place$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$GT$17h1f1aab2bacf9b9b4E"}
!2076 = distinct !{!2076, !2077, !"_ZN4core3ptr133drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$..extend_trusted$LT$$RF$mut$u20$core..str..iter..Bytes$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hf91b5f580814f756E: %_1"}
!2077 = distinct !{!2077, !"_ZN4core3ptr133drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$..extend_trusted$LT$$RF$mut$u20$core..str..iter..Bytes$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hf91b5f580814f756E"}
!2078 = distinct !{!2078, !2079, !"_ZN4core3ptr229drop_in_place$LT$core..iter..traits..iterator..Iterator..for_each..call$LT$u8$C$alloc..vec..Vec$LT$u8$GT$..extend_trusted$LT$$RF$mut$u20$core..str..iter..Bytes$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h23647e0417c63defE: %_1"}
!2079 = distinct !{!2079, !"_ZN4core3ptr229drop_in_place$LT$core..iter..traits..iterator..Iterator..for_each..call$LT$u8$C$alloc..vec..Vec$LT$u8$GT$..extend_trusted$LT$$RF$mut$u20$core..str..iter..Bytes$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h23647e0417c63defE"}
!2080 = distinct !{!2080, !2081, !"_ZN4core3ptr349drop_in_place$LT$core..ops..try_trait..NeverShortCircuit$LT$$LP$$RP$$GT$..wrap_mut_2$LT$$LP$$RP$$C$u8$C$core..iter..traits..iterator..Iterator..for_each..call$LT$u8$C$alloc..vec..Vec$LT$u8$GT$..extend_trusted$LT$$RF$mut$u20$core..str..iter..Bytes$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h0579d3110ba2d4c7E: %_1"}
!2081 = distinct !{!2081, !"_ZN4core3ptr349drop_in_place$LT$core..ops..try_trait..NeverShortCircuit$LT$$LP$$RP$$GT$..wrap_mut_2$LT$$LP$$RP$$C$u8$C$core..iter..traits..iterator..Iterator..for_each..call$LT$u8$C$alloc..vec..Vec$LT$u8$GT$..extend_trusted$LT$$RF$mut$u20$core..str..iter..Bytes$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h0579d3110ba2d4c7E"}
!2082 = !{!2083}
!2083 = distinct !{!2083, !2084, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!2084 = distinct !{!2084, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!2085 = !{!2086}
!2086 = distinct !{!2086, !2084, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!2087 = !{!2088}
!2088 = distinct !{!2088, !2089, !"_ZN5alloc6string6String3len17hc147619d2ad1db0cE: %self"}
!2089 = distinct !{!2089, !"_ZN5alloc6string6String3len17hc147619d2ad1db0cE"}
!2090 = !{!2091, !2093}
!2091 = distinct !{!2091, !2092, !"_ZN5alloc6string6String6as_str17h5d0f4124dd88b637E: %self"}
!2092 = distinct !{!2092, !"_ZN5alloc6string6String6as_str17h5d0f4124dd88b637E"}
!2093 = distinct !{!2093, !2094, !"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hf2dd8c0f474e3d11E: %self"}
!2094 = distinct !{!2094, !"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hf2dd8c0f474e3d11E"}
!2095 = !{!2096}
!2096 = distinct !{!2096, !2097, !"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17ha031fa6408ab7105E: %_0"}
!2097 = distinct !{!2097, !"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17ha031fa6408ab7105E"}
!2098 = !{!2099}
!2099 = distinct !{!2099, !2100, !"_ZN52_$LT$char$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h24af00a4c4862662E: %_0"}
!2100 = distinct !{!2100, !"_ZN52_$LT$char$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h24af00a4c4862662E"}
!2101 = !{!2099, !2102, !2096, !2103}
!2102 = distinct !{!2102, !2100, !"_ZN52_$LT$char$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h24af00a4c4862662E: %self"}
!2103 = distinct !{!2103, !2097, !"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17ha031fa6408ab7105E: %self"}
!2104 = !{!2105}
!2105 = distinct !{!2105, !2106, !"_ZN4core4char7methods15encode_utf8_raw17hc175ebbaeebc4df9E: %dst.0"}
!2106 = distinct !{!2106, !"_ZN4core4char7methods15encode_utf8_raw17hc175ebbaeebc4df9E"}
!2107 = !{!2108, !2110, !2099, !2102, !2096, !2103}
!2108 = distinct !{!2108, !2109, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h18d069103a6ee23cE: %v"}
!2109 = distinct !{!2109, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h18d069103a6ee23cE"}
!2110 = distinct !{!2110, !2109, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h18d069103a6ee23cE: %s.0"}
!2111 = !{!2108, !2099, !2102, !2096, !2103}
!2112 = !{!2099, !2096}
!2113 = !{!2102, !2103}
!2114 = !{!2115}
!2115 = distinct !{!2115, !2116, !"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17ha031fa6408ab7105E: %_0"}
!2116 = distinct !{!2116, !"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17ha031fa6408ab7105E"}
!2117 = !{!2118}
!2118 = distinct !{!2118, !2119, !"_ZN52_$LT$char$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h24af00a4c4862662E: %_0"}
!2119 = distinct !{!2119, !"_ZN52_$LT$char$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h24af00a4c4862662E"}
!2120 = !{!2118, !2121, !2115, !2122}
!2121 = distinct !{!2121, !2119, !"_ZN52_$LT$char$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h24af00a4c4862662E: %self"}
!2122 = distinct !{!2122, !2116, !"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17ha031fa6408ab7105E: %self"}
!2123 = !{!2124}
!2124 = distinct !{!2124, !2125, !"_ZN4core4char7methods15encode_utf8_raw17hc175ebbaeebc4df9E: %dst.0"}
!2125 = distinct !{!2125, !"_ZN4core4char7methods15encode_utf8_raw17hc175ebbaeebc4df9E"}
!2126 = !{!2127, !2129, !2118, !2121, !2115, !2122}
!2127 = distinct !{!2127, !2128, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h18d069103a6ee23cE: %v"}
!2128 = distinct !{!2128, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h18d069103a6ee23cE"}
!2129 = distinct !{!2129, !2128, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h18d069103a6ee23cE: %s.0"}
!2130 = !{!2127, !2118, !2121, !2115, !2122}
!2131 = !{!2118, !2115}
!2132 = !{!2121, !2122}
!2133 = !{!2134}
!2134 = distinct !{!2134, !2135, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17ha698072e04d5ef62E: %self.0"}
!2135 = distinct !{!2135, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17ha698072e04d5ef62E"}
!2136 = !{!2137, !2139, !2134}
!2137 = distinct !{!2137, !2138, !"_ZN5alloc5slice11stable_sort17h94dc56583da94d12E: %v.0"}
!2138 = distinct !{!2138, !"_ZN5alloc5slice11stable_sort17h94dc56583da94d12E"}
!2139 = distinct !{!2139, !2138, !"_ZN5alloc5slice11stable_sort17h94dc56583da94d12E: argument 1"}
