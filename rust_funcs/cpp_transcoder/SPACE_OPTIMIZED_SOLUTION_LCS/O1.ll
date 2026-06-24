; ModuleID = 'SPACE_OPTIMIZED_SOLUTION_LCS_emit.4cb0d7ad0689668c-cgu.0'
source_filename = "SPACE_OPTIMIZED_SOLUTION_LCS_emit.4cb0d7ad0689668c-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>" = type { [8 x i8] }
%"alloc::vec::Vec<i32>" = type { %"alloc::raw_vec::RawVec<i32>", i64 }
%"alloc::raw_vec::RawVec<i32>" = type { %"alloc::raw_vec::RawVecInner", %"core::marker::PhantomData<i32>" }
%"alloc::raw_vec::RawVecInner" = type { i64, ptr, %"alloc::alloc::Global" }
%"alloc::alloc::Global" = type {}
%"core::marker::PhantomData<i32>" = type {}

@alloc_d1084648e479974e70c9329824bf76f9 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@alloc_e8e5fd9f509afcb950667480b3e3e42a = private unnamed_addr constant [126 x i8] c"/root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/sort/stable/quicksort.rs\00", align 1
@alloc_58d434a1e795f965ef82c8e9c5db822a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00J\00\00\00\1F\00\00\00" }>, align 8
@alloc_0766b232215672ee1bd2195fdb153938 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e8e5fd9f509afcb950667480b3e3e42a, [16 x i8] c"}\00\00\00\00\00\00\00D\00\00\00\17\00\00\00" }>, align 8
@alloc_db51a71a1b6b25b4224d4dc5277f93e7 = private unnamed_addr constant [256 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04\00\00\00\00\00\00\00\00\00\00\00", align 1
@alloc_f791f0a3250244bebeb7f3fa27a5a316 = private unnamed_addr constant [111 x i8] c"/root/es/vert/vert/rust_funcs/cpp_transcoder/SPACE_OPTIMIZED_SOLUTION_LCS/SPACE_OPTIMIZED_SOLUTION_LCS_emit.rs\00", align 1
@alloc_e5cea990743572c516560e03329fb198 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f791f0a3250244bebeb7f3fa27a5a316, [16 x i8] c"n\00\00\00\00\00\00\00'\00\00\00\06\00\00\00" }>, align 8
@alloc_8cb7c192ee1ec0060ed9f767f36f2c9e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f791f0a3250244bebeb7f3fa27a5a316, [16 x i8] c"n\00\00\00\00\00\00\00'\00\00\00\0A\00\00\00" }>, align 8
@alloc_455f6da57be4aa27106e364f8d7b8599 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f791f0a3250244bebeb7f3fa27a5a316, [16 x i8] c"n\00\00\00\00\00\00\00#\00\00\00&\00\00\00" }>, align 8
@alloc_7ecdd2b7719c07fbecfa7e040c70555b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f791f0a3250244bebeb7f3fa27a5a316, [16 x i8] c"n\00\00\00\00\00\00\00#\00\00\00.\00\00\00" }>, align 8
@alloc_d0e34cd241e8189c6593b7385f5f379c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f791f0a3250244bebeb7f3fa27a5a316, [16 x i8] c"n\00\00\00\00\00\00\00#\00\00\004\00\00\00" }>, align 8
@alloc_037f547cb5df5bedfad12176aeb72b79 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f791f0a3250244bebeb7f3fa27a5a316, [16 x i8] c"n\00\00\00\00\00\00\00#\00\00\008\00\00\00" }>, align 8
@alloc_a9c490451cd9c7d3a440aacf8c0d7183 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f791f0a3250244bebeb7f3fa27a5a316, [16 x i8] c"n\00\00\00\00\00\00\00#\00\00\00\16\00\00\00" }>, align 8
@alloc_d5ba85c33213dac699e5ee0a47dd0a37 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f791f0a3250244bebeb7f3fa27a5a316, [16 x i8] c"n\00\00\00\00\00\00\00!\00\00\00\1D\00\00\00" }>, align 8
@alloc_f1e41b190b84bd02d38089fab6d74940 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f791f0a3250244bebeb7f3fa27a5a316, [16 x i8] c"n\00\00\00\00\00\00\00!\00\00\00%\00\00\00" }>, align 8
@alloc_cf20fb0e18c4ea37932feaeda39df7cf = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f791f0a3250244bebeb7f3fa27a5a316, [16 x i8] c"n\00\00\00\00\00\00\00!\00\00\00\12\00\00\00" }>, align 8
@alloc_4a22b1a21adf3638edf77849667ba91c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f791f0a3250244bebeb7f3fa27a5a316, [16 x i8] c"n\00\00\00\00\00\00\00!\00\00\00\16\00\00\00" }>, align 8
@alloc_a99a63d008f34bc6907e6f9478a494d7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f791f0a3250244bebeb7f3fa27a5a316, [16 x i8] c"n\00\00\00\00\00\00\00\1F\00\00\00\12\00\00\00" }>, align 8
@alloc_f5e2ee6bccd6b724dfb61b6dd55a2ee7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f791f0a3250244bebeb7f3fa27a5a316, [16 x i8] c"n\00\00\00\00\00\00\00\1F\00\00\00\16\00\00\00" }>, align 8

; core::ptr::swap_nonoverlapping_bytes::swap_nonoverlapping_chunks
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h54d61750230d159dE(ptr noundef captures(none) %x, ptr noundef captures(none) %y, i64 noundef range(i64 1, 0) %chunks) unnamed_addr #0 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6)
  %_3.sroa.0.0.copyload.i.epil = load i64, ptr %_11.epil, align 1, !alias.scope !3, !noalias !6
  %_4.sroa.0.0.copyload.i.epil = load i64, ptr %_13.epil, align 1, !alias.scope !6, !noalias !3
  store i64 %_4.sroa.0.0.copyload.i.epil, ptr %_11.epil, align 1, !alias.scope !3, !noalias !6
  store i64 %_3.sroa.0.0.copyload.i.epil, ptr %_13.epil, align 1, !alias.scope !6, !noalias !3
  br label %bb4

bb4:                                              ; preds = %bb4.unr-lcssa, %bb3.epil
  ret void

bb3:                                              ; preds = %bb3, %start.new
  %iter.sroa.0.02 = phi i64 [ 0, %start.new ], [ %_18.1, %bb3 ]
  %niter = phi i64 [ 0, %start.new ], [ %niter.next.1, %bb3 ]
  %_18 = or disjoint i64 %iter.sroa.0.02, 1
  %_11 = getelementptr inbounds nuw %"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>", ptr %x, i64 %iter.sroa.0.02
  %_13 = getelementptr inbounds nuw %"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>", ptr %y, i64 %iter.sroa.0.02
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6)
  %_3.sroa.0.0.copyload.i = load i64, ptr %_11, align 1, !alias.scope !3, !noalias !6
  %_4.sroa.0.0.copyload.i = load i64, ptr %_13, align 1, !alias.scope !6, !noalias !3
  store i64 %_4.sroa.0.0.copyload.i, ptr %_11, align 1, !alias.scope !3, !noalias !6
  store i64 %_3.sroa.0.0.copyload.i, ptr %_13, align 1, !alias.scope !6, !noalias !3
  %_18.1 = add nuw i64 %iter.sroa.0.02, 2
  %_11.1 = getelementptr inbounds nuw %"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>", ptr %x, i64 %_18
  %_13.1 = getelementptr inbounds nuw %"core::mem::maybe_uninit::MaybeUninit<[u8; 8]>", ptr %y, i64 %_18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10)
  %_3.sroa.0.0.copyload.i.1 = load i64, ptr %_11.1, align 1, !alias.scope !8, !noalias !10
  %_4.sroa.0.0.copyload.i.1 = load i64, ptr %_13.1, align 1, !alias.scope !10, !noalias !8
  store i64 %_4.sroa.0.0.copyload.i.1, ptr %_11.1, align 1, !alias.scope !8, !noalias !10
  store i64 %_3.sroa.0.0.copyload.i.1, ptr %_13.1, align 1, !alias.scope !10, !noalias !8
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb4.unr-lcssa, label %bb3
}

; core::ptr::drop_in_place<alloc::string::String>
; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcbe033eebee81fb1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_1) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_1)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h16fb91a53d81c8f8E.exit" unwind label %cleanup.i

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
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #28
  unreachable

bb1.i:                                            ; preds = %cleanup.i
  resume { ptr, i32 } %0

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h16fb91a53d81c8f8E.exit": ; preds = %start
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_1)
  ret void
}

; core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h44214dba56b9c7e4E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_1) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  %0 = getelementptr inbounds nuw i8, ptr %_1, i64 8
  %_5.i = load ptr, ptr %0, align 8, !alias.scope !12, !nonnull !15, !noundef !15
  %1 = getelementptr inbounds nuw i8, ptr %_1, i64 16
  %len.i = load i64, ptr %1, align 8, !alias.scope !12, !noundef !15
  br label %bb6.i.i

bb6.i.i:                                          ; preds = %bb5.i.i, %start
  %_3.sroa.0.0.i.i = phi i64 [ 0, %start ], [ %2, %bb5.i.i ]
  %_7.i.i = icmp eq i64 %_3.sroa.0.0.i.i, %len.i
  br i1 %_7.i.i, label %bb4, label %bb5.i.i

bb5.i.i:                                          ; preds = %bb6.i.i
  %_6.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_5.i, i64 %_3.sroa.0.0.i.i
  %2 = add i64 %_3.sroa.0.0.i.i, 1
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_6.i.i, i64 noundef 4, i64 noundef 4)
          to label %bb6.i.i unwind label %cleanup.i.i, !noalias !12

bb4.i.i:                                          ; preds = %bb3.i.i, %cleanup.i.i
  %_3.sroa.0.1.i.i = phi i64 [ %2, %cleanup.i.i ], [ %4, %bb3.i.i ]
  %_5.i.i = icmp eq i64 %_3.sroa.0.1.i.i, %len.i
  br i1 %_5.i.i, label %cleanup.body, label %bb3.i.i

cleanup.i.i:                                      ; preds = %bb5.i.i
  %3 = landingpad { ptr, i32 }
          cleanup
  br label %bb4.i.i

bb3.i.i:                                          ; preds = %bb4.i.i
  %_4.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_5.i, i64 %_3.sroa.0.1.i.i
  %4 = add i64 %_3.sroa.0.1.i.i, 1
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_4.i.i, i64 noundef 4, i64 noundef 4)
          to label %bb4.i.i unwind label %terminate.i.i, !noalias !12

terminate.i.i:                                    ; preds = %bb3.i.i
  %5 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #28, !noalias !12
  unreachable

cleanup.body:                                     ; preds = %bb4.i.i
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %_1, i64 noundef 8, i64 noundef 24)
          to label %bb1 unwind label %terminate

bb4:                                              ; preds = %bb6.i.i
; call alloc::raw_vec::RawVecInner<A>::deallocate
  tail call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %_1, i64 noundef 8, i64 noundef 24)
  ret void

terminate:                                        ; preds = %cleanup.body
  %6 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #28
  unreachable

bb1:                                              ; preds = %cleanup.body
  resume { ptr, i32 } %3
}

; core::iter::traits::iterator::Iterator::nth
; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc noundef range(i32 0, 1114113) i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hd6310bf1b462ad66E(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(16) %self, i64 noundef range(i64 0, -1) %n) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %start_bytes.i = alloca [32 x i8], align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %start_bytes.i)
  %_3.i = icmp ugt i64 %n, 31
  br i1 %_3.i, label %bb1.i, label %bb25.i

bb1.i:                                            ; preds = %start
  %self5.i = load ptr, ptr %self, align 8, !alias.scope !16, !nonnull !15, !noundef !15
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_57.i = load ptr, ptr %0, align 8, !alias.scope !16, !nonnull !15, !noundef !15
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
  %self.promoted55.i = load ptr, ptr %self, align 8, !alias.scope !16
  %5 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_116.i = load ptr, ptr %5, align 8, !alias.scope !16, !nonnull !15, !noundef !15
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
  store ptr %_19.i.i, ptr %self, align 8, !alias.scope !19
  %.not27.i = icmp ule i64 %bytes_skipped.sroa.0.0.lcssa.i, %3
  tail call void @llvm.assume(i1 %.not27.i)
  %_30.not53.i = icmp eq ptr %_57.i, %_19.i.i
  br i1 %_30.not53.i, label %bb25.i, label %bb18.i

bb5.i:                                            ; preds = %bb4.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %start_bytes.i, i8 0, i64 32, i1 false), !noalias !16
  br label %bb10.i

bb2.i.i.i:                                        ; preds = %bb10.i
  %_92.sroa.34.0.copyload.i = load i8, ptr %_92.sroa.34.0.start_bytes.sroa_idx.i, align 1, !noalias !16
  %_92.sroa.33.0.copyload.i = load i8, ptr %_92.sroa.33.0.start_bytes.sroa_idx.i, align 1, !noalias !16
  %_92.sroa.32.0.copyload.i = load i8, ptr %_92.sroa.32.0.start_bytes.sroa_idx.i, align 1, !noalias !16
  %_92.sroa.31.0.copyload.i = load i8, ptr %_92.sroa.31.0.start_bytes.sroa_idx.i, align 1, !noalias !16
  %_92.sroa.30.0.copyload.i = load i8, ptr %_92.sroa.30.0.start_bytes.sroa_idx.i, align 1, !noalias !16
  %_92.sroa.29.0.copyload.i = load i8, ptr %_92.sroa.29.0.start_bytes.sroa_idx.i, align 1, !noalias !16
  %_92.sroa.28.0.copyload.i = load i8, ptr %_92.sroa.28.0.start_bytes.sroa_idx.i, align 1, !noalias !16
  %_92.sroa.27.0.copyload.i = load i8, ptr %_92.sroa.27.0.start_bytes.sroa_idx.i, align 1, !noalias !16
  %_92.sroa.26.0.copyload.i = load i8, ptr %_92.sroa.26.0.start_bytes.sroa_idx.i, align 1, !noalias !16
  %_92.sroa.25.0.copyload.i = load i8, ptr %_92.sroa.25.0.start_bytes.sroa_idx.i, align 1, !noalias !16
  %_92.sroa.24.0.copyload.i = load i8, ptr %_92.sroa.24.0.start_bytes.sroa_idx.i, align 1, !noalias !16
  %_92.sroa.23.0.copyload.i = load i8, ptr %_92.sroa.23.0.start_bytes.sroa_idx.i, align 1, !noalias !16
  %_92.sroa.22.0.copyload.i = load i8, ptr %_92.sroa.22.0.start_bytes.sroa_idx.i, align 1, !noalias !16
  %_92.sroa.21.0.copyload.i = load i8, ptr %_92.sroa.21.0.start_bytes.sroa_idx.i, align 1, !noalias !16
  %_92.sroa.20.0.copyload.i = load i8, ptr %_92.sroa.20.0.start_bytes.sroa_idx.i, align 1, !noalias !16
  %_92.sroa.19.0.copyload.i = load i8, ptr %_92.sroa.19.0.start_bytes.sroa_idx.i, align 1, !noalias !16
  %_92.sroa.18.0.copyload.i = load i8, ptr %_92.sroa.18.0.start_bytes.sroa_idx.i, align 1, !noalias !16
  %_92.sroa.17.0.copyload.i = load i8, ptr %_92.sroa.17.0.start_bytes.sroa_idx.i, align 1, !noalias !16
  %_92.sroa.16.0.copyload.i = load i8, ptr %_92.sroa.16.0.start_bytes.sroa_idx.i, align 1, !noalias !16
  %_92.sroa.15.0.copyload.i = load i8, ptr %_92.sroa.15.0.start_bytes.sroa_idx.i, align 1, !noalias !16
  %_92.sroa.14.0.copyload.i = load i8, ptr %_92.sroa.14.0.start_bytes.sroa_idx.i, align 1, !noalias !16
  %_92.sroa.13.0.copyload.i = load i8, ptr %_92.sroa.13.0.start_bytes.sroa_idx.i, align 1, !noalias !16
  %_92.sroa.12.0.copyload.i = load i8, ptr %_92.sroa.12.0.start_bytes.sroa_idx.i, align 1, !noalias !16
  %_92.sroa.11.0.copyload.i = load i8, ptr %_92.sroa.11.0.start_bytes.sroa_idx.i, align 1, !noalias !16
  %_92.sroa.10.0.copyload.i = load i8, ptr %_92.sroa.10.0.start_bytes.sroa_idx.i, align 1, !noalias !16
  %_92.sroa.9.0.copyload.i = load i8, ptr %_92.sroa.9.0.start_bytes.sroa_idx.i, align 1, !noalias !16
  %_92.sroa.8.0.copyload.i = load i8, ptr %_92.sroa.8.0.start_bytes.sroa_idx.i, align 1, !noalias !16
  %_92.sroa.7.0.copyload.i = load i8, ptr %_92.sroa.7.0.start_bytes.sroa_idx.i, align 1, !noalias !16
  %_92.sroa.6.0.copyload.i = load i8, ptr %_92.sroa.6.0.start_bytes.sroa_idx.i, align 1, !noalias !16
  %_92.sroa.5.0.copyload.i = load i8, ptr %_92.sroa.5.0.start_bytes.sroa_idx.i, align 1, !noalias !16
  %_92.sroa.4.0.copyload.i = load i8, ptr %_92.sroa.4.0.start_bytes.sroa_idx.i, align 1, !noalias !16
  %_92.sroa.0.0.copyload.i = load i8, ptr %start_bytes.i, align 1, !noalias !16
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
  %byte.i = load i8, ptr %9, align 1, !noalias !16, !noundef !15
  %_22.i = icmp sgt i8 %byte.i, -65
  %10 = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 %iter.sroa.0.041.i
  %11 = zext i1 %_22.i to i8
  store i8 %11, ptr %10, align 1, !noalias !16
  %_88.i.1 = or disjoint i64 %iter.sroa.0.041.i, 2
  %12 = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i, i64 %_88.i
  %byte.i.1 = load i8, ptr %12, align 1, !noalias !16, !noundef !15
  %_22.i.1 = icmp sgt i8 %byte.i.1, -65
  %13 = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 %_88.i
  %14 = zext i1 %_22.i.1 to i8
  store i8 %14, ptr %13, align 1, !noalias !16
  %_88.i.2 = or disjoint i64 %iter.sroa.0.041.i, 3
  %15 = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i, i64 %_88.i.1
  %byte.i.2 = load i8, ptr %15, align 1, !noalias !16, !noundef !15
  %_22.i.2 = icmp sgt i8 %byte.i.2, -65
  %16 = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 %_88.i.1
  %17 = zext i1 %_22.i.2 to i8
  store i8 %17, ptr %16, align 1, !noalias !16
  %_88.i.3 = add nuw nsw i64 %iter.sroa.0.041.i, 4
  %18 = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i, i64 %_88.i.2
  %byte.i.3 = load i8, ptr %18, align 1, !noalias !16, !noundef !15
  %_22.i.3 = icmp sgt i8 %byte.i.3, -65
  %19 = getelementptr inbounds nuw i8, ptr %start_bytes.i, i64 %_88.i.2
  %20 = zext i1 %_22.i.3 to i8
  store i8 %20, ptr %19, align 1, !noalias !16
  %exitcond.not.i.3 = icmp eq i64 %_88.i.3, 32
  br i1 %exitcond.not.i.3, label %bb2.i.i.i, label %bb10.i

bb18.i:                                           ; preds = %bb14.i, %bb19.i
  %_19.i335254.i = phi ptr [ %_19.i33.i, %bb19.i ], [ %_19.i.i, %bb14.i ]
  %b.i = load i8, ptr %_19.i335254.i, align 1, !noalias !16, !noundef !15
  %_36.i = icmp slt i8 %b.i, -64
  br i1 %_36.i, label %bb19.i, label %bb25.i

bb19.i:                                           ; preds = %bb18.i
  %_19.i33.i = getelementptr inbounds nuw i8, ptr %_19.i335254.i, i64 1
  store ptr %_19.i33.i, ptr %self, align 8, !alias.scope !22
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
  %b15.i = load i8, ptr %_19.i385658.i, align 1, !noalias !16, !noundef !15
  %_130.i = zext i8 %b15.i to i64
  %24 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i
  %_128.i = load i8, ptr %24, align 1, !noalias !16, !noundef !15
  %slurp.i = zext i8 %_128.i to i64
  %_19.i38.i = getelementptr inbounds nuw i8, ptr %_19.i385658.i, i64 %slurp.i
  store ptr %_19.i38.i, ptr %self, align 8, !alias.scope !25
  %.not28.i = icmp uge i64 %22, %slurp.i
  tail call void @llvm.assume(i1 %.not28.i)
  %_39.not.i = icmp eq i64 %23, 0
  br i1 %_39.not.i, label %bb5.critedge, label %bb27.i

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E.exit": ; preds = %bb27.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %start_bytes.i)
  br label %bb3

bb5.critedge:                                     ; preds = %bb28.i, %bb25.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %start_bytes.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  %ptr.i.i.i = load ptr, ptr %self, align 8, !alias.scope !34, !nonnull !15, !noundef !15
  %25 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %end_or_len.i.i.i = load ptr, ptr %25, align 8, !alias.scope !34, !nonnull !15, !noundef !15
  %_7.i.i.i = icmp eq ptr %ptr.i.i.i, %end_or_len.i.i.i
  br i1 %_7.i.i.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4d692be219c9982E.exit.i.i", label %bb6.i.i.i

bb6.i.i.i:                                        ; preds = %bb5.critedge
  %_18.i.i.i = getelementptr inbounds nuw i8, ptr %ptr.i.i.i, i64 1
  store ptr %_18.i.i.i, ptr %self, align 8, !alias.scope !34
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4d692be219c9982E.exit.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4d692be219c9982E.exit.i.i": ; preds = %bb6.i.i.i, %bb5.critedge
  %_0.sroa.0.0.i.i.i = phi ptr [ %ptr.i.i.i, %bb6.i.i.i ], [ null, %bb5.critedge ]
  %.not.i.not.i = icmp eq ptr %_0.sroa.0.0.i.i.i, null
  br i1 %.not.i.not.i, label %bb3, label %bb14.i.i

bb14.i.i:                                         ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4d692be219c9982E.exit.i.i"
  %x.i.i = load i8, ptr %_0.sroa.0.0.i.i.i, align 1, !noalias !37, !noundef !15
  %_6.i.i = icmp sgt i8 %x.i.i, -1
  br i1 %_6.i.i, label %bb3.i.i, label %bb4.i.i

bb4.i.i:                                          ; preds = %bb14.i.i
  %_30.i.i = and i8 %x.i.i, 31
  %init.i.i = zext nneg i8 %_30.i.i to i32
  %ptr.i8.i.i = load ptr, ptr %self, align 8, !alias.scope !38, !nonnull !15, !noundef !15
  %_7.i10.i.i = icmp ne ptr %ptr.i8.i.i, %end_or_len.i.i.i
  tail call void @llvm.assume(i1 %_7.i10.i.i)
  %_18.i12.i.i = getelementptr inbounds nuw i8, ptr %ptr.i8.i.i, i64 1
  store ptr %_18.i12.i.i, ptr %self, align 8, !alias.scope !38
  %y.i.i = load i8, ptr %ptr.i8.i.i, align 1, !noalias !37, !noundef !15
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
  store ptr %_18.i19.i.i, ptr %self, align 8, !alias.scope !41
  %z.i.i = load i8, ptr %_18.i12.i.i, align 1, !noalias !37, !noundef !15
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
  store ptr %_18.i26.i.i, ptr %self, align 8, !alias.scope !44
  %w.i.i = load i8, ptr %_18.i19.i.i, align 1, !noalias !37, !noundef !15
  %_26.i.i = shl nuw nsw i32 %init.i.i, 18
  %_25.i.i = and i32 %_26.i.i, 1835008
  %_46.i.i = shl nuw nsw i32 %y_z.i.i, 6
  %_48.i.i = and i8 %w.i.i, 63
  %_47.i.i = zext nneg i8 %_48.i.i to i32
  %_27.i.i = or disjoint i32 %_46.i.i, %_47.i.i
  %28 = or disjoint i32 %_27.i.i, %_25.i.i
  br label %bb3

bb3:                                              ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E.exit", %bb8.i.i, %bb6.i.i, %bb3.i.i, %bb4.i.i, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4d692be219c9982E.exit.i.i"
  %_0.sroa.0.0 = phi i32 [ 1114112, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E.exit" ], [ %_7.i.i, %bb3.i.i ], [ 1114112, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4d692be219c9982E.exit.i.i" ], [ %28, %bb8.i.i ], [ %27, %bb6.i.i ], [ %26, %bb4.i.i ]
  ret i32 %_0.sroa.0.0
}

; core::slice::sort::shared::pivot::median3_rec
; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable
define noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17ha687117de2139b61E(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %n, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #3 {
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
  %4 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17ha687117de2139b61E(ptr noundef %0, ptr noundef %_10, ptr noundef %_13, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_16 = getelementptr inbounds nuw i32, ptr %1, i64 %count
  %_18 = getelementptr inbounds nuw i32, ptr %1, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %5 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17ha687117de2139b61E(ptr noundef %1, ptr noundef %_16, ptr noundef %_18, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  %_20 = getelementptr inbounds nuw i32, ptr %2, i64 %count
  %_22 = getelementptr inbounds nuw i32, ptr %2, i64 %count1
; call core::slice::sort::shared::pivot::median3_rec
  %6 = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17ha687117de2139b61E(ptr noundef %2, ptr noundef %_20, ptr noundef %_22, i64 noundef %n84, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb6

bb6:                                              ; preds = %start, %bb1
  %c.sroa.0.0 = phi ptr [ %6, %bb1 ], [ %2, %start ]
  %b.sroa.0.0 = phi ptr [ %5, %bb1 ], [ %1, %start ]
  %a.sroa.0.0 = phi ptr [ %4, %bb1 ], [ %0, %start ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52), !noalias !55
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58), !noalias !55
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60), !noalias !55
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63), !noalias !55
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65), !noalias !55
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68), !noalias !55
  %_3.i.i.i.i = load i32, ptr %a.sroa.0.0, align 4, !alias.scope !70, !noalias !71, !noundef !15
  %_4.i.i.i.i = load i32, ptr %b.sroa.0.0, align 4, !alias.scope !72, !noalias !73, !noundef !15
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_4.i.i.i.i6 = load i32, ptr %c.sroa.0.0, align 4, !alias.scope !74, !noalias !83, !noundef !15
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
define void @_ZN4core5slice4sort6shared9smallsort11insert_tail17h9a752aba2093a096E(ptr noundef readnone captures(address) %begin, ptr noundef captures(address) %tail, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds i8, ptr %tail, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %_3.i.i.i.i = load i32, ptr %tail, align 4, !alias.scope !108, !noalias !109, !noundef !15
  %_4.i.i.i.i = load i32, ptr %0, align 4, !alias.scope !109, !noalias !108, !noundef !15
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
  %_4.i.i.i.i2 = load i32, ptr %2, align 4, !alias.scope !110, !noalias !119, !noundef !15
  %_0.i3 = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i2
  br i1 %_0.i3, label %bb4, label %bb10

bb10:                                             ; preds = %bb6, %bb4
  store i32 %_3.i.i.i.i, ptr %sift.sroa.0.0, align 4, !noalias !124
  br label %bb12
}

; core::slice::sort::shared::smallsort::sort4_stable
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17he7602d5590c73a63E(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 16)) %dst, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %_7 = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %_3.i.i.i.i = load i32, ptr %_7, align 4, !alias.scope !149, !noalias !150, !noundef !15
  %_4.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !150, !noalias !149, !noundef !15
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_12 = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14 = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %_3.i.i.i.i7 = load i32, ptr %_12, align 4, !alias.scope !171, !noalias !172, !noundef !15
  %_4.i.i.i.i8 = load i32, ptr %_14, align 4, !alias.scope !172, !noalias !171, !noundef !15
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  %_3.i.i.i.i10 = load i32, ptr %c, align 4, !alias.scope !193, !noalias !194, !noundef !15
  %_4.i.i.i.i11 = load i32, ptr %a, align 4, !alias.scope !194, !noalias !193, !noundef !15
  %_0.i12 = icmp slt i32 %_3.i.i.i.i10, %_4.i.i.i.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %_3.i.i.i.i13 = load i32, ptr %d, align 4, !alias.scope !215, !noalias !216, !noundef !15
  %_4.i.i.i.i14 = load i32, ptr %b, align 4, !alias.scope !216, !noalias !215, !noundef !15
  %_0.i15 = icmp slt i32 %_3.i.i.i.i13, %_4.i.i.i.i14
  %0 = select i1 %_0.i12, ptr %c, ptr %a, !unpredictable !15
  %1 = select i1 %_0.i15, ptr %c, ptr %b, !unpredictable !15
  %2 = select i1 %_0.i12, ptr %a, ptr %1, !unpredictable !15
  %3 = select i1 %_0.i12, ptr %b, ptr %c, !unpredictable !15
  %4 = select i1 %_0.i15, ptr %d, ptr %3, !unpredictable !15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !217)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  %_3.i.i.i.i16 = load i32, ptr %4, align 4, !alias.scope !237, !noalias !238, !noundef !15
  %_4.i.i.i.i17 = load i32, ptr %2, align 4, !alias.scope !238, !noalias !237, !noundef !15
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
define void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h8a5722dd17d7e1caE(ptr noundef readonly captures(none) %v_base, ptr noundef writeonly captures(none) initializes((0, 32)) %dst, ptr noundef captures(address) initializes((0, 32)) %scratch_base, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_7.i = getelementptr inbounds nuw i8, ptr %v_base, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257)
  %_3.i.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !259, !noalias !260, !noundef !15
  %_4.i.i.i.i.i = load i32, ptr %v_base, align 4, !alias.scope !260, !noalias !259, !noundef !15
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v_base, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v_base, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !269)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !271)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  %_3.i.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !281, !noalias !282, !noundef !15
  %_4.i.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !282, !noalias !281, !noundef !15
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !291)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !301)
  %_3.i.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !303, !noalias !304, !noundef !15
  %_4.i.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !304, !noalias !303, !noundef !15
  %_0.i12.i = icmp slt i32 %_3.i.i.i.i10.i, %_4.i.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !313)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  %_3.i.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !325, !noalias !326, !noundef !15
  %_4.i.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !326, !noalias !325, !noundef !15
  %_0.i15.i = icmp slt i32 %_3.i.i.i.i13.i, %_4.i.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !15
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !15
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !15
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !15
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345)
  %_3.i.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !347, !noalias !348, !noundef !15
  %_4.i.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !348, !noalias !347, !noundef !15
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !357)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !367)
  %_3.i.i.i.i.i2 = load i32, ptr %_7.i1, align 4, !alias.scope !369, !noalias !370, !noundef !15
  %_4.i.i.i.i.i3 = load i32, ptr %_9, align 4, !alias.scope !370, !noalias !369, !noundef !15
  %_0.i.i4 = icmp slt i32 %_3.i.i.i.i.i2, %_4.i.i.i.i.i3
  %_12.i5 = getelementptr inbounds nuw i8, ptr %v_base, i64 28
  %_14.i6 = getelementptr inbounds nuw i8, ptr %v_base, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !374)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !389)
  %_3.i.i.i.i7.i7 = load i32, ptr %_12.i5, align 4, !alias.scope !391, !noalias !392, !noundef !15
  %_4.i.i.i.i8.i8 = load i32, ptr %_14.i6, align 4, !alias.scope !392, !noalias !391, !noundef !15
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !393)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !396)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !398)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  %_3.i.i.i.i10.i19 = load i32, ptr %c.i16, align 4, !alias.scope !413, !noalias !414, !noundef !15
  %_4.i.i.i.i11.i20 = load i32, ptr %a.i11, align 4, !alias.scope !414, !noalias !413, !noundef !15
  %_0.i12.i21 = icmp slt i32 %_3.i.i.i.i10.i19, %_4.i.i.i.i11.i20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !420)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !430)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !433)
  %_3.i.i.i.i13.i22 = load i32, ptr %d.i18, align 4, !alias.scope !435, !noalias !436, !noundef !15
  %_4.i.i.i.i14.i23 = load i32, ptr %b.i14, align 4, !alias.scope !436, !noalias !435, !noundef !15
  %_0.i15.i24 = icmp slt i32 %_3.i.i.i.i13.i22, %_4.i.i.i.i14.i23
  %10 = select i1 %_0.i12.i21, ptr %c.i16, ptr %a.i11, !unpredictable !15
  %11 = select i1 %_0.i15.i24, ptr %c.i16, ptr %b.i14, !unpredictable !15
  %12 = select i1 %_0.i12.i21, ptr %a.i11, ptr %11, !unpredictable !15
  %13 = select i1 %_0.i12.i21, ptr %b.i14, ptr %c.i16, !unpredictable !15
  %14 = select i1 %_0.i15.i24, ptr %d.i18, ptr %13, !unpredictable !15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !437)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !440)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !442)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !445)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !447)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !452)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !455)
  %_3.i.i.i.i16.i25 = load i32, ptr %14, align 4, !alias.scope !457, !noalias !458, !noundef !15
  %_4.i.i.i.i17.i26 = load i32, ptr %12, align 4, !alias.scope !458, !noalias !457, !noundef !15
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !459)
  %20 = getelementptr i8, ptr %scratch_base, i64 12
  %21 = getelementptr inbounds nuw i8, ptr %scratch_base, i64 28
  %22 = getelementptr inbounds nuw i8, ptr %dst, i64 28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !462)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !465)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !467), !noalias !470
  tail call void @llvm.experimental.noalias.scope.decl(metadata !473), !noalias !470
  tail call void @llvm.experimental.noalias.scope.decl(metadata !475), !noalias !470
  tail call void @llvm.experimental.noalias.scope.decl(metadata !478), !noalias !470
  tail call void @llvm.experimental.noalias.scope.decl(metadata !480), !noalias !470
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483), !noalias !470
  %_3.i.i.i.i.i36 = load i32, ptr %_10, align 4, !alias.scope !485, !noalias !486, !noundef !15
  %_4.i.i.i.i.i37 = load i32, ptr %scratch_base, align 4, !alias.scope !487, !noalias !488, !noundef !15
  %_0.i.i38 = icmp slt i32 %_3.i.i.i.i.i36, %_4.i.i.i.i.i37
  %is_l.i18.i = xor i1 %_0.i.i38, true
  %23 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36, i32 %_4.i.i.i.i.i37)
  store i32 %23, ptr %dst, align 4, !noalias !489
  %count.i.i = zext i1 %_0.i.i38 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %_10, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %scratch_base, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !491)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !494)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496), !noalias !499
  tail call void @llvm.experimental.noalias.scope.decl(metadata !502), !noalias !499
  tail call void @llvm.experimental.noalias.scope.decl(metadata !504), !noalias !499
  tail call void @llvm.experimental.noalias.scope.decl(metadata !507), !noalias !499
  tail call void @llvm.experimental.noalias.scope.decl(metadata !509), !noalias !499
  tail call void @llvm.experimental.noalias.scope.decl(metadata !512), !noalias !499
  %_3.i.i.i.i19.i = load i32, ptr %21, align 4, !alias.scope !514, !noalias !515, !noundef !15
  %_4.i.i.i.i20.i = load i32, ptr %20, align 4, !alias.scope !516, !noalias !517, !noundef !15
  %_0.i21.i = icmp slt i32 %_3.i.i.i.i19.i, %_4.i.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %24 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i, i32 %_4.i.i.i.i20.i)
  store i32 %24, ptr %22, align 4, !noalias !518
  %count.neg.i.i = sext i1 %is_l.i.i to i64
  %25 = getelementptr i32, ptr %21, i64 %count.neg.i.i
  %count3.neg.i.i = sext i1 %_0.i21.i to i64
  %26 = getelementptr i32, ptr %20, i64 %count3.neg.i.i
  %27 = getelementptr inbounds nuw i8, ptr %dst, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !520)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !524), !noalias !470
  tail call void @llvm.experimental.noalias.scope.decl(metadata !526), !noalias !470
  tail call void @llvm.experimental.noalias.scope.decl(metadata !528), !noalias !470
  tail call void @llvm.experimental.noalias.scope.decl(metadata !530), !noalias !470
  tail call void @llvm.experimental.noalias.scope.decl(metadata !532), !noalias !470
  tail call void @llvm.experimental.noalias.scope.decl(metadata !534), !noalias !470
  %_3.i.i.i.i.i36.1 = load i32, ptr %_12.i.i, align 4, !alias.scope !536, !noalias !537, !noundef !15
  %_4.i.i.i.i.i37.1 = load i32, ptr %_14.i.i, align 4, !alias.scope !538, !noalias !539, !noundef !15
  %_0.i.i38.1 = icmp slt i32 %_3.i.i.i.i.i36.1, %_4.i.i.i.i.i37.1
  %is_l.i18.i.1 = xor i1 %_0.i.i38.1, true
  %28 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.1, i32 %_4.i.i.i.i.i37.1)
  store i32 %28, ptr %_16.i.i, align 4, !noalias !489
  %count.i.i.1 = zext i1 %_0.i.i38.1 to i64
  %_12.i.i.1 = getelementptr inbounds nuw i32, ptr %_12.i.i, i64 %count.i.i.1
  %count2.i.i.1 = zext i1 %is_l.i18.i.1 to i64
  %_14.i.i.1 = getelementptr inbounds nuw i32, ptr %_14.i.i, i64 %count2.i.i.1
  %_16.i.i.1 = getelementptr inbounds nuw i8, ptr %dst, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !540)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !544), !noalias !499
  tail call void @llvm.experimental.noalias.scope.decl(metadata !546), !noalias !499
  tail call void @llvm.experimental.noalias.scope.decl(metadata !548), !noalias !499
  tail call void @llvm.experimental.noalias.scope.decl(metadata !550), !noalias !499
  tail call void @llvm.experimental.noalias.scope.decl(metadata !552), !noalias !499
  tail call void @llvm.experimental.noalias.scope.decl(metadata !554), !noalias !499
  %_3.i.i.i.i19.i.1 = load i32, ptr %25, align 4, !alias.scope !556, !noalias !557, !noundef !15
  %_4.i.i.i.i20.i.1 = load i32, ptr %26, align 4, !alias.scope !558, !noalias !559, !noundef !15
  %_0.i21.i.1 = icmp slt i32 %_3.i.i.i.i19.i.1, %_4.i.i.i.i20.i.1
  %is_l.i.i.1 = xor i1 %_0.i21.i.1, true
  %29 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.1, i32 %_4.i.i.i.i20.i.1)
  store i32 %29, ptr %27, align 4, !noalias !518
  %count.neg.i.i.1 = sext i1 %is_l.i.i.1 to i64
  %30 = getelementptr i32, ptr %25, i64 %count.neg.i.i.1
  %count3.neg.i.i.1 = sext i1 %_0.i21.i.1 to i64
  %31 = getelementptr i32, ptr %26, i64 %count3.neg.i.i.1
  %32 = getelementptr inbounds nuw i8, ptr %dst, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !560)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !562)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !564), !noalias !470
  tail call void @llvm.experimental.noalias.scope.decl(metadata !566), !noalias !470
  tail call void @llvm.experimental.noalias.scope.decl(metadata !568), !noalias !470
  tail call void @llvm.experimental.noalias.scope.decl(metadata !570), !noalias !470
  tail call void @llvm.experimental.noalias.scope.decl(metadata !572), !noalias !470
  tail call void @llvm.experimental.noalias.scope.decl(metadata !574), !noalias !470
  %_3.i.i.i.i.i36.2 = load i32, ptr %_12.i.i.1, align 4, !alias.scope !576, !noalias !577, !noundef !15
  %_4.i.i.i.i.i37.2 = load i32, ptr %_14.i.i.1, align 4, !alias.scope !578, !noalias !579, !noundef !15
  %_0.i.i38.2 = icmp slt i32 %_3.i.i.i.i.i36.2, %_4.i.i.i.i.i37.2
  %is_l.i18.i.2 = xor i1 %_0.i.i38.2, true
  %33 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.2, i32 %_4.i.i.i.i.i37.2)
  store i32 %33, ptr %_16.i.i.1, align 4, !noalias !489
  %count.i.i.2 = zext i1 %_0.i.i38.2 to i64
  %_12.i.i.2 = getelementptr inbounds nuw i32, ptr %_12.i.i.1, i64 %count.i.i.2
  %count2.i.i.2 = zext i1 %is_l.i18.i.2 to i64
  %_14.i.i.2 = getelementptr inbounds nuw i32, ptr %_14.i.i.1, i64 %count2.i.i.2
  %_16.i.i.2 = getelementptr inbounds nuw i8, ptr %dst, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !580)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !582)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !584), !noalias !499
  tail call void @llvm.experimental.noalias.scope.decl(metadata !586), !noalias !499
  tail call void @llvm.experimental.noalias.scope.decl(metadata !588), !noalias !499
  tail call void @llvm.experimental.noalias.scope.decl(metadata !590), !noalias !499
  tail call void @llvm.experimental.noalias.scope.decl(metadata !592), !noalias !499
  tail call void @llvm.experimental.noalias.scope.decl(metadata !594), !noalias !499
  %_3.i.i.i.i19.i.2 = load i32, ptr %30, align 4, !alias.scope !596, !noalias !597, !noundef !15
  %_4.i.i.i.i20.i.2 = load i32, ptr %31, align 4, !alias.scope !598, !noalias !599, !noundef !15
  %_0.i21.i.2 = icmp slt i32 %_3.i.i.i.i19.i.2, %_4.i.i.i.i20.i.2
  %is_l.i.i.2 = xor i1 %_0.i21.i.2, true
  %34 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.2, i32 %_4.i.i.i.i20.i.2)
  store i32 %34, ptr %32, align 4, !noalias !518
  %count.neg.i.i.2 = sext i1 %is_l.i.i.2 to i64
  %35 = getelementptr i32, ptr %30, i64 %count.neg.i.i.2
  %count3.neg.i.i.2 = sext i1 %_0.i21.i.2 to i64
  %36 = getelementptr i32, ptr %31, i64 %count3.neg.i.i.2
  %37 = getelementptr inbounds nuw i8, ptr %dst, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !602)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !604), !noalias !470
  tail call void @llvm.experimental.noalias.scope.decl(metadata !606), !noalias !470
  tail call void @llvm.experimental.noalias.scope.decl(metadata !608), !noalias !470
  tail call void @llvm.experimental.noalias.scope.decl(metadata !610), !noalias !470
  tail call void @llvm.experimental.noalias.scope.decl(metadata !612), !noalias !470
  tail call void @llvm.experimental.noalias.scope.decl(metadata !614), !noalias !470
  %_3.i.i.i.i.i36.3 = load i32, ptr %_12.i.i.2, align 4, !alias.scope !616, !noalias !617, !noundef !15
  %_4.i.i.i.i.i37.3 = load i32, ptr %_14.i.i.2, align 4, !alias.scope !618, !noalias !619, !noundef !15
  %_0.i.i38.3 = icmp slt i32 %_3.i.i.i.i.i36.3, %_4.i.i.i.i.i37.3
  %is_l.i18.i.3 = xor i1 %_0.i.i38.3, true
  %38 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i36.3, i32 %_4.i.i.i.i.i37.3)
  store i32 %38, ptr %_16.i.i.2, align 4, !noalias !489
  %count.i.i.3 = zext i1 %_0.i.i38.3 to i64
  %_12.i.i.3 = getelementptr inbounds nuw i32, ptr %_12.i.i.2, i64 %count.i.i.3
  %count2.i.i.3 = zext i1 %is_l.i18.i.3 to i64
  %_14.i.i.3 = getelementptr inbounds nuw i32, ptr %_14.i.i.2, i64 %count2.i.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !620)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !622)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !624), !noalias !499
  tail call void @llvm.experimental.noalias.scope.decl(metadata !626), !noalias !499
  tail call void @llvm.experimental.noalias.scope.decl(metadata !628), !noalias !499
  tail call void @llvm.experimental.noalias.scope.decl(metadata !630), !noalias !499
  tail call void @llvm.experimental.noalias.scope.decl(metadata !632), !noalias !499
  tail call void @llvm.experimental.noalias.scope.decl(metadata !634), !noalias !499
  %_3.i.i.i.i19.i.3 = load i32, ptr %35, align 4, !alias.scope !636, !noalias !637, !noundef !15
  %_4.i.i.i.i20.i.3 = load i32, ptr %36, align 4, !alias.scope !638, !noalias !639, !noundef !15
  %_0.i21.i.3 = icmp slt i32 %_3.i.i.i.i19.i.3, %_4.i.i.i.i20.i.3
  %is_l.i.i.3 = xor i1 %_0.i21.i.3, true
  %39 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i.3, i32 %_4.i.i.i.i20.i.3)
  store i32 %39, ptr %37, align 4, !noalias !518
  %count.neg.i.i.3 = sext i1 %is_l.i.i.3 to i64
  %40 = getelementptr i32, ptr %35, i64 %count.neg.i.i.3
  %count3.neg.i.i.3 = sext i1 %_0.i21.i.3 to i64
  %41 = getelementptr i32, ptr %36, i64 %count3.neg.i.i.3
  %42 = getelementptr i8, ptr %41, i64 4
  %43 = getelementptr i8, ptr %40, i64 4
  %_31.i = icmp ne ptr %_14.i.i.3, %42
  %_32.i = icmp ne ptr %_12.i.i.3, %43
  %or.cond.i = select i1 %_31.i, i1 true, i1 %_32.i
  br i1 %or.cond.i, label %bb13.i, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h928b61429abd813bE.exit, !prof !640

bb13.i:                                           ; preds = %start
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #29, !noalias !459
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h928b61429abd813bE.exit: ; preds = %start
  ret void
}

; core::slice::sort::shared::smallsort::bidirectional_merge
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h928b61429abd813bE(ptr noalias noundef nonnull readonly align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #1 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !641)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !644)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !646), !noalias !649
  tail call void @llvm.experimental.noalias.scope.decl(metadata !652), !noalias !649
  tail call void @llvm.experimental.noalias.scope.decl(metadata !654), !noalias !649
  tail call void @llvm.experimental.noalias.scope.decl(metadata !657), !noalias !649
  tail call void @llvm.experimental.noalias.scope.decl(metadata !659), !noalias !649
  tail call void @llvm.experimental.noalias.scope.decl(metadata !662), !noalias !649
  %_3.i.i.i.i = load i32, ptr %right.sroa.0.026, align 4, !alias.scope !664, !noalias !665, !noundef !15
  %_4.i.i.i.i = load i32, ptr %left.sroa.0.027, align 4, !alias.scope !666, !noalias !667, !noundef !15
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %is_l.i18 = xor i1 %_0.i, true
  %7 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i, i32 %_4.i.i.i.i)
  store i32 %7, ptr %dst.sroa.0.029, align 4, !noalias !668
  %count.i = zext i1 %_0.i to i64
  %_12.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026, i64 %count.i
  %count2.i = zext i1 %is_l.i18 to i64
  %_14.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027, i64 %count2.i
  %_16.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !670)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !673)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !675), !noalias !678
  tail call void @llvm.experimental.noalias.scope.decl(metadata !681), !noalias !678
  tail call void @llvm.experimental.noalias.scope.decl(metadata !683), !noalias !678
  tail call void @llvm.experimental.noalias.scope.decl(metadata !686), !noalias !678
  tail call void @llvm.experimental.noalias.scope.decl(metadata !688), !noalias !678
  tail call void @llvm.experimental.noalias.scope.decl(metadata !691), !noalias !678
  %_3.i.i.i.i19 = load i32, ptr %right_rev.sroa.0.024, align 4, !alias.scope !693, !noalias !694, !noundef !15
  %_4.i.i.i.i20 = load i32, ptr %left_rev.sroa.0.025, align 4, !alias.scope !695, !noalias !696, !noundef !15
  %_0.i21 = icmp slt i32 %_3.i.i.i.i19, %_4.i.i.i.i20
  %is_l.i = xor i1 %_0.i21, true
  %8 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19, i32 %_4.i.i.i.i20)
  store i32 %8, ptr %dst_rev.sroa.0.023, align 4, !noalias !697
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
  br i1 %or.cond, label %bb13, label %bb14, !prof !640

bb14:                                             ; preds = %bb9
  ret void

bb13:                                             ; preds = %bb9
; call core::slice::sort::shared::smallsort::panic_on_ord_violation
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #29
  unreachable
}

; core::slice::sort::shared::smallsort::insertion_sort_shift_left
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h24e57d9a9cc53bfaE(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, i64 noundef %offset, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #5 personality ptr @rust_eh_personality {
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

bb7:                                              ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9a752aba2093a096E.exit, %bb3
  ret void

bb5:                                              ; preds = %bb5.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9a752aba2093a096E.exit
  %tail.sroa.0.02 = phi ptr [ %_15, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9a752aba2093a096E.exit ], [ %1, %bb5.preheader ]
  %2 = getelementptr inbounds i8, ptr %tail.sroa.0.02, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !699)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !702)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !704)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !707)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !709)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !712)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !714)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !717)
  %_3.i.i.i.i.i = load i32, ptr %tail.sroa.0.02, align 4, !alias.scope !719, !noalias !720, !noundef !15
  %_4.i.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !720, !noalias !719, !noundef !15
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  br i1 %_0.i.i, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9a752aba2093a096E.exit

bb4.i:                                            ; preds = %bb5, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %tail.sroa.0.02, %bb5 ]
  %sift.sroa.0.0.i = phi ptr [ %4, %bb6.i ], [ %2, %bb5 ]
  %3 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %3, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %v.0
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %4 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i.i.i2.i = load i32, ptr %4, align 4, !alias.scope !721, !noalias !730, !noundef !15
  %_0.i3.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i2.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %_3.i.i.i.i.i, ptr %sift.sroa.0.0.i, align 4, !noalias !735
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9a752aba2093a096E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h9a752aba2093a096E.exit: ; preds = %bb5, %bb10.i
  %_15 = getelementptr inbounds nuw i8, ptr %tail.sroa.0.02, i64 4
  %_11.not = icmp eq ptr %_15, %v_end
  br i1 %_11.not, label %bb7, label %bb5
}

; core::slice::sort::shared::smallsort::small_sort_general_with_scratch
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h7dfbbddb023c8e20E(ptr noalias noundef nonnull align 4 captures(none) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(address) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h8a5722dd17d7e1caE(ptr noundef nonnull %v.0, ptr noundef nonnull %scratch.0, ptr noundef nonnull %_16, ptr noalias align 8 poison)
  %_18 = getelementptr inbounds nuw i32, ptr %v.0, i64 %len_div_211
  %_19 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %len_div_211
  %_20 = getelementptr inbounds nuw i8, ptr %_16, i64 32
; call core::slice::sort::shared::smallsort::sort8_stable
  tail call void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h8a5722dd17d7e1caE(ptr noundef nonnull %_18, ptr noundef nonnull %_19, ptr noundef nonnull %_20, ptr noalias align 8 poison)
  br label %bb15

bb10:                                             ; preds = %bb9
  %_7.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !740)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !743)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !745)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !748)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !750)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !753)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !755)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !758)
  %_3.i.i.i.i.i = load i32, ptr %_7.i, align 4, !alias.scope !760, !noalias !761, !noundef !15
  %_4.i.i.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !761, !noalias !760, !noundef !15
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_12.i = getelementptr inbounds nuw i8, ptr %v.0, i64 12
  %_14.i = getelementptr inbounds nuw i8, ptr %v.0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !762)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !765)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !767)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !770)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !772)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !775)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !777)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !780)
  %_3.i.i.i.i7.i = load i32, ptr %_12.i, align 4, !alias.scope !782, !noalias !783, !noundef !15
  %_4.i.i.i.i8.i = load i32, ptr %_14.i, align 4, !alias.scope !783, !noalias !782, !noundef !15
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !784)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !787)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !789)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !792)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !794)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !797)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !799)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !802)
  %_3.i.i.i.i10.i = load i32, ptr %c.i, align 4, !alias.scope !804, !noalias !805, !noundef !15
  %_4.i.i.i.i11.i = load i32, ptr %a.i, align 4, !alias.scope !805, !noalias !804, !noundef !15
  %_0.i12.i = icmp slt i32 %_3.i.i.i.i10.i, %_4.i.i.i.i11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !806)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !809)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !811)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !814)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !816)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !819)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !821)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !824)
  %_3.i.i.i.i13.i = load i32, ptr %d.i, align 4, !alias.scope !826, !noalias !827, !noundef !15
  %_4.i.i.i.i14.i = load i32, ptr %b.i, align 4, !alias.scope !827, !noalias !826, !noundef !15
  %_0.i15.i = icmp slt i32 %_3.i.i.i.i13.i, %_4.i.i.i.i14.i
  %0 = select i1 %_0.i12.i, ptr %c.i, ptr %a.i, !unpredictable !15
  %1 = select i1 %_0.i15.i, ptr %c.i, ptr %b.i, !unpredictable !15
  %2 = select i1 %_0.i12.i, ptr %a.i, ptr %1, !unpredictable !15
  %3 = select i1 %_0.i12.i, ptr %b.i, ptr %c.i, !unpredictable !15
  %4 = select i1 %_0.i15.i, ptr %d.i, ptr %3, !unpredictable !15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !828)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !831)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !833)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !836)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !838)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !841)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !843)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !846)
  %_3.i.i.i.i16.i = load i32, ptr %4, align 4, !alias.scope !848, !noalias !849, !noundef !15
  %_4.i.i.i.i17.i = load i32, ptr %2, align 4, !alias.scope !849, !noalias !848, !noundef !15
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !850)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !853)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !855)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !858)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !860)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !863)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !865)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !868)
  %_3.i.i.i.i.i14 = load i32, ptr %_7.i13, align 4, !alias.scope !870, !noalias !871, !noundef !15
  %_4.i.i.i.i.i15 = load i32, ptr %_27, align 4, !alias.scope !871, !noalias !870, !noundef !15
  %_0.i.i16 = icmp slt i32 %_3.i.i.i.i.i14, %_4.i.i.i.i.i15
  %_12.i17 = getelementptr inbounds nuw i8, ptr %_27, i64 12
  %_14.i18 = getelementptr inbounds nuw i8, ptr %_27, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !872)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !875)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !877)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !880)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !882)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !885)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !887)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !890)
  %_3.i.i.i.i7.i19 = load i32, ptr %_12.i17, align 4, !alias.scope !892, !noalias !893, !noundef !15
  %_4.i.i.i.i8.i20 = load i32, ptr %_14.i18, align 4, !alias.scope !893, !noalias !892, !noundef !15
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !894)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !897)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !899)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !902)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !904)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !907)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !909)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !912)
  %_3.i.i.i.i10.i31 = load i32, ptr %c.i28, align 4, !alias.scope !914, !noalias !915, !noundef !15
  %_4.i.i.i.i11.i32 = load i32, ptr %a.i23, align 4, !alias.scope !915, !noalias !914, !noundef !15
  %_0.i12.i33 = icmp slt i32 %_3.i.i.i.i10.i31, %_4.i.i.i.i11.i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !916)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !919)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !921)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !924)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !926)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !929)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !931)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !934)
  %_3.i.i.i.i13.i34 = load i32, ptr %d.i30, align 4, !alias.scope !936, !noalias !937, !noundef !15
  %_4.i.i.i.i14.i35 = load i32, ptr %b.i26, align 4, !alias.scope !937, !noalias !936, !noundef !15
  %_0.i15.i36 = icmp slt i32 %_3.i.i.i.i13.i34, %_4.i.i.i.i14.i35
  %10 = select i1 %_0.i12.i33, ptr %c.i28, ptr %a.i23, !unpredictable !15
  %11 = select i1 %_0.i15.i36, ptr %c.i28, ptr %b.i26, !unpredictable !15
  %12 = select i1 %_0.i12.i33, ptr %a.i23, ptr %11, !unpredictable !15
  %13 = select i1 %_0.i12.i33, ptr %b.i26, ptr %c.i28, !unpredictable !15
  %14 = select i1 %_0.i15.i36, ptr %d.i30, ptr %13, !unpredictable !15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !938)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !941)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !943)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !946)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !948)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !951)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !953)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !956)
  %_3.i.i.i.i16.i37 = load i32, ptr %14, align 4, !alias.scope !958, !noalias !959, !noundef !15
  %_4.i.i.i.i17.i38 = load i32, ptr %12, align 4, !alias.scope !959, !noalias !958, !noundef !15
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
  br i1 %_5.not.i.not, label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h1f1750cbfa45ce3aE.exit", label %bb1.i

bb1.i:                                            ; preds = %bb16
  %_11.i = add nuw nsw i64 %24, 1
  store i64 %_11.i, ptr %iter, align 8, !alias.scope !960
  %_20.i = icmp ult i64 %24, 2
  tail call void @llvm.assume(i1 %_20.i)
  %self3.i = getelementptr inbounds nuw i64, ptr %_37.sroa.5.0.iter.sroa_idx, i64 %24
  %_15.i = load i64, ptr %self3.i, align 8, !alias.scope !960, !noundef !15
  br label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h1f1750cbfa45ce3aE.exit"

"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h1f1750cbfa45ce3aE.exit": ; preds = %bb16, %bb1.i
  %25 = phi i64 [ %_11.i, %bb1.i ], [ %24, %bb16 ]
  %_0.sroa.3.0.i = phi i64 [ %_15.i, %bb1.i ], [ undef, %bb16 ]
  br i1 %_5.not.i.not, label %bb19, label %bb18

bb18:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h1f1750cbfa45ce3aE.exit"
  %src5 = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.3.0.i
  %dst6 = getelementptr inbounds nuw i32, ptr %scratch.0, i64 %_0.sroa.3.0.i
  %_47 = icmp eq i64 %_0.sroa.3.0.i, 0
  %desired_len.sroa.0.0 = select i1 %_47, i64 %len_div_211, i64 %23
  %_8059 = icmp ult i64 %presorted_len.sroa.0.0, %desired_len.sroa.0.0
  br i1 %_8059, label %bb24, label %bb16.backedge

bb16.backedge:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9a752aba2093a096E.exit, %bb18
  br label %bb16

bb19:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h1f1750cbfa45ce3aE.exit"
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !963)
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !966)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !969)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !971), !noalias !974
  tail call void @llvm.experimental.noalias.scope.decl(metadata !977), !noalias !974
  tail call void @llvm.experimental.noalias.scope.decl(metadata !979), !noalias !974
  tail call void @llvm.experimental.noalias.scope.decl(metadata !982), !noalias !974
  tail call void @llvm.experimental.noalias.scope.decl(metadata !984), !noalias !974
  tail call void @llvm.experimental.noalias.scope.decl(metadata !987), !noalias !974
  %_3.i.i.i.i.i49 = load i32, ptr %right.sroa.0.026.i, align 4, !alias.scope !989, !noalias !990, !noundef !15
  %_4.i.i.i.i.i50 = load i32, ptr %left.sroa.0.027.i, align 4, !alias.scope !991, !noalias !992, !noundef !15
  %_0.i.i51 = icmp slt i32 %_3.i.i.i.i.i49, %_4.i.i.i.i.i50
  %is_l.i18.i = xor i1 %_0.i.i51, true
  %32 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i49, i32 %_4.i.i.i.i.i50)
  store i32 %32, ptr %dst.sroa.0.029.i, align 4, !noalias !993
  %count.i.i = zext i1 %_0.i.i51 to i64
  %_12.i.i = getelementptr inbounds nuw i32, ptr %right.sroa.0.026.i, i64 %count.i.i
  %count2.i.i = zext i1 %is_l.i18.i to i64
  %_14.i.i = getelementptr inbounds nuw i32, ptr %left.sroa.0.027.i, i64 %count2.i.i
  %_16.i.i = getelementptr inbounds nuw i8, ptr %dst.sroa.0.029.i, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !995)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !998)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1000), !noalias !1003
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1006), !noalias !1003
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1008), !noalias !1003
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1011), !noalias !1003
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1013), !noalias !1003
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1016), !noalias !1003
  %_3.i.i.i.i19.i = load i32, ptr %right_rev.sroa.0.024.i, align 4, !alias.scope !1018, !noalias !1019, !noundef !15
  %_4.i.i.i.i20.i = load i32, ptr %left_rev.sroa.0.025.i, align 4, !alias.scope !1020, !noalias !1021, !noundef !15
  %_0.i21.i = icmp slt i32 %_3.i.i.i.i19.i, %_4.i.i.i.i20.i
  %is_l.i.i = xor i1 %_0.i21.i, true
  %33 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i19.i, i32 %_4.i.i.i.i20.i)
  store i32 %33, ptr %dst_rev.sroa.0.023.i, align 4, !noalias !1022
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
  %37 = load i32, ptr %left.sroa.0.0.right.sroa.0.0.i, align 4, !alias.scope !963
  store i32 %37, ptr %_16.i.i, align 4, !noalias !963
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
  br i1 %or.cond.i, label %bb13.i, label %bb29, !prof !640

bb13.i:                                           ; preds = %bb9.i
; invoke core::slice::sort::shared::smallsort::panic_on_ord_violation
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() #29
          to label %.noexc unwind label %cleanup2

.noexc:                                           ; preds = %bb13.i
  unreachable

cleanup2:                                         ; preds = %bb13.i
  %38 = landingpad { ptr, i32 }
          cleanup
  %39 = shl nuw nsw i64 %v.1, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %v.0, ptr nonnull align 4 %scratch.0, i64 %39, i1 false), !noalias !1024
  resume { ptr, i32 } %38

bb29:                                             ; preds = %bb9.i, %start
  ret void

bb24:                                             ; preds = %bb18, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9a752aba2093a096E.exit
  %iter1.sroa.0.163 = phi i64 [ %iter1.sroa.0.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9a752aba2093a096E.exit ], [ %iter1.sroa.0.161, %bb18 ]
  %iter1.sroa.0.062 = phi i64 [ %iter1.sroa.0.163, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9a752aba2093a096E.exit ], [ %presorted_len.sroa.0.0, %bb18 ]
  %_55 = getelementptr inbounds nuw i32, ptr %src5, i64 %iter1.sroa.0.062
  %dst7 = getelementptr inbounds nuw i32, ptr %dst6, i64 %iter1.sroa.0.062
  %40 = load i32, ptr %_55, align 4
  store i32 %40, ptr %dst7, align 4
  %41 = getelementptr inbounds i8, ptr %dst7, i64 -4
  %_4.i.i.i.i.i56 = load i32, ptr %41, align 4, !alias.scope !1029, !noalias !1038, !noundef !15
  %_0.i.i57 = icmp slt i32 %40, %_4.i.i.i.i.i56
  br i1 %_0.i.i57, label %bb4.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9a752aba2093a096E.exit

bb4.i:                                            ; preds = %bb24, %bb6.i
  %gap_guard.sroa.5.0.i = phi ptr [ %sift.sroa.0.0.i, %bb6.i ], [ %dst7, %bb24 ]
  %sift.sroa.0.0.i = phi ptr [ %43, %bb6.i ], [ %41, %bb24 ]
  %42 = load i32, ptr %sift.sroa.0.0.i, align 4
  store i32 %42, ptr %gap_guard.sroa.5.0.i, align 4
  %_18.i = icmp eq ptr %sift.sroa.0.0.i, %dst6
  br i1 %_18.i, label %bb10.i, label %bb6.i

bb6.i:                                            ; preds = %bb4.i
  %43 = getelementptr inbounds i8, ptr %sift.sroa.0.0.i, i64 -4
  %_4.i.i.i.i2.i = load i32, ptr %43, align 4, !alias.scope !1043, !noalias !1052, !noundef !15
  %_0.i3.i = icmp slt i32 %40, %_4.i.i.i.i2.i
  br i1 %_0.i3.i, label %bb4.i, label %bb10.i

bb10.i:                                           ; preds = %bb6.i, %bb4.i
  store i32 %40, ptr %sift.sroa.0.0.i, align 4, !noalias !1057
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h9a752aba2093a096E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h9a752aba2093a096E.exit: ; preds = %bb24, %bb10.i
  %_80 = icmp ult i64 %iter1.sroa.0.163, %desired_len.sroa.0.0
  %_84 = zext i1 %_80 to i64
  %iter1.sroa.0.1 = add nuw i64 %iter1.sroa.0.163, %_84
  br i1 %_80, label %bb24, label %bb16.backedge
}

; core::slice::sort::stable::driftsort_main
; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17hdfd7fa55f1643b16E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #6 personality ptr @rust_eh_personality {
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1062
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i, i64 noundef %_0.sroa.0.0.i7, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb4
  %_5.i.i = load i64, ptr %_4.i.i, align 8, !range !1065, !noalias !1062, !noundef !15
  %0 = trunc nuw i64 %_5.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1066, !noalias !1062, !noundef !15
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 16
  br i1 %0, label %bb3.i.i, label %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hf4e0df9c8f1398f2E.exit", !prof !1067

bb3.i.i:                                          ; preds = %.noexc
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1062
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #30
          to label %.noexc8 unwind label %cleanup

.noexc8:                                          ; preds = %bb3.i.i
  unreachable

"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hf4e0df9c8f1398f2E.exit": ; preds = %.noexc
  %this.1.i.i = load ptr, ptr %2, align 8, !noalias !1062, !nonnull !15, !noundef !15
  %_7.i.i = icmp ule i64 %_0.sroa.0.0.i7, %err.0.i.i
  tail call void @llvm.assume(i1 %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1062
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

bb8:                                              ; preds = %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hf4e0df9c8f1398f2E.exit", %start
  %_24.sroa.0.1 = phi i8 [ 0, %start ], [ 1, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hf4e0df9c8f1398f2E.exit" ]
  %stack_scratch.sroa.4.0 = phi i64 [ 1024, %start ], [ %err.0.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hf4e0df9c8f1398f2E.exit" ]
  %stack_buf.pn = phi ptr [ %stack_buf, %start ], [ %this.1.i.i, %"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hf4e0df9c8f1398f2E.exit" ]
  %eager_sort = icmp samesign ult i64 %v.1, 65
; invoke core::slice::sort::stable::drift::sort
  invoke void @_ZN4core5slice4sort6stable5drift4sort17ha7ecc1b613f56314E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %stack_buf.pn, i64 noundef %stack_scratch.sroa.4.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #28
  unreachable
}

; core::slice::sort::stable::AlignedStorage<T,_>::as_uninit_slice_mut
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @"_ZN4core5slice4sort6stable27AlignedStorage$LT$T$C$_$GT$19as_uninit_slice_mut17h62ef92d6bb507937E"(ptr noalias noundef align 4 dereferenceable(4096) %self) unnamed_addr #7 {
start:
  %0 = insertvalue { ptr, i64 } poison, ptr %self, 0
  %1 = insertvalue { ptr, i64 } %0, i64 1024, 1
  ret { ptr, i64 } %1
}

; core::slice::sort::stable::drift::create_run
; Function Attrs: nonlazybind uwtable
define noundef range(i64 0, -1) i64 @_ZN4core5slice4sort6stable5drift10create_run17hee77d5a45f9b344aE(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %min_good_run_len, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_7.not = icmp ult i64 %v.1, %min_good_run_len
  br i1 %_7.not, label %bb7, label %bb1

bb7:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hd1085d4425f2afe1E.exit, %start
  br i1 %eager_sort, label %bb8, label %bb11

bb1:                                              ; preds = %start
  %_4.i = icmp samesign ult i64 %v.1, 2
  br i1 %_4.i, label %_ZN4core5slice4sort6shared17find_existing_run17hd1085d4425f2afe1E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb1
  %_28.i = getelementptr inbounds nuw i8, ptr %v.0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1068)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1071)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1073)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1076)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1078)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1081)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1083)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1086)
  %_3.i.i.i.i = load i32, ptr %_28.i, align 4, !alias.scope !1088, !noalias !1089, !noundef !15
  %_4.i.i.i.i = load i32, ptr %v.0, align 4, !alias.scope !1089, !noalias !1088, !noundef !15
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %_10.i13.not = icmp eq i64 %v.1, 2
  br i1 %_0.i, label %bb4.i.preheader, label %bb11.i.preheader

bb11.i.preheader:                                 ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17hd1085d4425f2afe1E.exit, label %bb12.i.preheader

bb12.i.preheader:                                 ; preds = %bb11.i.preheader
  %invariant.gep = getelementptr i8, ptr %v.0, i64 -4
  br label %bb12.i

bb4.i.preheader:                                  ; preds = %bb2.i
  br i1 %_10.i13.not, label %_ZN4core5slice4sort6shared17find_existing_run17hd1085d4425f2afe1E.exit, label %bb5.i.preheader

bb5.i.preheader:                                  ; preds = %bb4.i.preheader
  %invariant.gep24 = getelementptr i8, ptr %v.0, i64 -4
  br label %bb5.i

bb12.i:                                           ; preds = %bb12.i.preheader, %bb15.i
  %run_len.sroa.0.0.i11 = phi i64 [ %1, %bb15.i ], [ 2, %bb12.i.preheader ]
  %0 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.0.i11
  %gep = getelementptr i32, ptr %invariant.gep, i64 %run_len.sroa.0.0.i11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1090)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1093)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1095)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1098)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1108)
  %_3.i.i.i.i1 = load i32, ptr %0, align 4, !alias.scope !1110, !noalias !1111, !noundef !15
  %_4.i.i.i.i2 = load i32, ptr %gep, align 4, !alias.scope !1111, !noalias !1110, !noundef !15
  %_0.i3 = icmp slt i32 %_3.i.i.i.i1, %_4.i.i.i.i2
  br i1 %_0.i3, label %_ZN4core5slice4sort6shared17find_existing_run17hd1085d4425f2afe1E.exit, label %bb15.i

bb15.i:                                           ; preds = %bb12.i
  %1 = add nuw nsw i64 %run_len.sroa.0.0.i11, 1
  %exitcond.not = icmp eq i64 %1, %v.1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17hd1085d4425f2afe1E.exit, label %bb12.i

bb5.i:                                            ; preds = %bb5.i.preheader, %bb7.i
  %run_len.sroa.0.1.i14 = phi i64 [ %3, %bb7.i ], [ 2, %bb5.i.preheader ]
  %2 = getelementptr inbounds nuw i32, ptr %v.0, i64 %run_len.sroa.0.1.i14
  %gep25 = getelementptr i32, ptr %invariant.gep24, i64 %run_len.sroa.0.1.i14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1130)
  %_3.i.i.i.i4 = load i32, ptr %2, align 4, !alias.scope !1132, !noalias !1133, !noundef !15
  %_4.i.i.i.i5 = load i32, ptr %gep25, align 4, !alias.scope !1133, !noalias !1132, !noundef !15
  %_0.i6 = icmp slt i32 %_3.i.i.i.i4, %_4.i.i.i.i5
  br i1 %_0.i6, label %bb7.i, label %_ZN4core5slice4sort6shared17find_existing_run17hd1085d4425f2afe1E.exit

bb7.i:                                            ; preds = %bb5.i
  %3 = add nuw nsw i64 %run_len.sroa.0.1.i14, 1
  %exitcond19.not = icmp eq i64 %3, %v.1
  br i1 %exitcond19.not, label %_ZN4core5slice4sort6shared17find_existing_run17hd1085d4425f2afe1E.exit, label %bb5.i

_ZN4core5slice4sort6shared17find_existing_run17hd1085d4425f2afe1E.exit: ; preds = %bb12.i, %bb15.i, %bb5.i, %bb7.i, %bb11.i.preheader, %bb4.i.preheader, %bb1
  %_0.sroa.3.0.i = phi i1 [ false, %bb1 ], [ true, %bb4.i.preheader ], [ false, %bb11.i.preheader ], [ true, %bb7.i ], [ true, %bb5.i ], [ false, %bb15.i ], [ false, %bb12.i ]
  %_0.sroa.0.0.i = phi i64 [ %v.1, %bb1 ], [ 2, %bb4.i.preheader ], [ 2, %bb11.i.preheader ], [ %run_len.sroa.0.1.i14, %bb5.i ], [ %v.1, %bb7.i ], [ %run_len.sroa.0.0.i11, %bb12.i ], [ %v.1, %bb15.i ]
  %_12 = icmp samesign ule i64 %_0.sroa.0.0.i, %v.1
  tail call void @llvm.assume(i1 %_12)
  %_13.not = icmp ult i64 %_0.sroa.0.0.i, %min_good_run_len
  br i1 %_13.not, label %bb7, label %bb3

bb3:                                              ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hd1085d4425f2afe1E.exit
  br i1 %_0.sroa.3.0.i, label %bb14, label %bb5

bb11:                                             ; preds = %bb7
  %_0.sroa.0.0.i7 = tail call noundef i64 @llvm.umin.i64(i64 %v.1, i64 %min_good_run_len)
  %_36 = shl nuw nsw i64 %_0.sroa.0.0.i7, 1
  br label %bb12

bb8:                                              ; preds = %bb7
  %_0.sroa.0.0.i8 = tail call noundef i64 @llvm.umin.i64(i64 %v.1, i64 32)
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hdaefa162ad445ab5E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %_0.sroa.0.0.i8, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #31
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
  %6 = load i32, ptr %x.i.i.epil, align 4, !alias.scope !1134, !noalias !1139, !noundef !15
  %7 = load i32, ptr %y.i.i.epil, align 4, !alias.scope !1141, !noalias !1142
  store i32 %7, ptr %x.i.i.epil, align 4, !alias.scope !1134, !noalias !1139
  store i32 %6, ptr %y.i.i.epil, align 4, !alias.scope !1141, !noalias !1142
  br label %bb5

bb5:                                              ; preds = %bb5.i.i.epil, %bb5.loopexit.unr-lcssa, %bb14, %bb3
  %_27 = shl nuw nsw i64 %_0.sroa.0.0.i, 1
  %_26 = or disjoint i64 %_27, 1
  br label %bb12

bb14:                                             ; preds = %bb3
  %half_len2.i = lshr i64 %_0.sroa.0.0.i, 1
  %end.i = getelementptr inbounds nuw i32, ptr %v.0, i64 %_0.sroa.0.0.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1139)
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
  %10 = load i32, ptr %x.i.i, align 4, !alias.scope !1134, !noalias !1139, !noundef !15
  %11 = load i32, ptr %y.i.i, align 4, !alias.scope !1141, !noalias !1142
  store i32 %11, ptr %x.i.i, align 4, !alias.scope !1134, !noalias !1139
  store i32 %10, ptr %y.i.i, align 4, !alias.scope !1141, !noalias !1142
  %12 = xor i64 %i.sroa.0.016.i.i, -2
  %gep27 = getelementptr inbounds i32, ptr %invariant.gep26, i64 %i.sroa.0.016.i.i
  %y.i.i.1 = getelementptr i32, ptr %end.i, i64 %12
  %13 = load i32, ptr %gep27, align 4, !alias.scope !1134, !noalias !1139, !noundef !15
  %14 = load i32, ptr %y.i.i.1, align 4, !alias.scope !1141, !noalias !1142
  store i32 %14, ptr %gep27, align 4, !alias.scope !1134, !noalias !1139
  store i32 %13, ptr %y.i.i.1, align 4, !alias.scope !1141, !noalias !1142
  %15 = add nuw nsw i64 %i.sroa.0.016.i.i, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb5.loopexit.unr-lcssa, label %bb5.i.i
}

; core::slice::sort::stable::drift::stable_quicksort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift16stable_quicksort17h9daa7346065f43c1E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 {
start:
  %self = or i64 %v.1, 1
  %0 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self, i1 true)
  %1 = trunc nuw nsw i64 %0 to i32
  %log = shl nuw nsw i32 %1, 1
  %limit = xor i32 %log, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hdaefa162ad445ab5E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %limit, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #31
  ret void
}

; core::slice::sort::stable::drift::sort
; Function Attrs: nonlazybind uwtable
define void @_ZN4core5slice4sort6stable5drift4sort17ha7ecc1b613f56314E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  %2 = tail call noundef i64 @_ZN4core5slice4sort6stable5drift10create_run17hee77d5a45f9b344aE(ptr noalias noundef nonnull align 4 %_82, i64 noundef %new_len, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %min_good_run_len.sroa.0.0, i1 noundef zeroext %eager_sort, ptr noalias noundef align 8 dereferenceable(8) %is_less)
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

bb12:                                             ; preds = %bb12.lr.ph, %_ZN4core5slice4sort6stable5drift13logical_merge17h1c70196c34f8d776E.exit
  %stack_len.sroa.0.150 = phi i64 [ %stack_len.sroa.0.0, %bb12.lr.ph ], [ %count, %_ZN4core5slice4sort6stable5drift13logical_merge17h1c70196c34f8d776E.exit ]
  %prev_run.sroa.0.149 = phi i64 [ %prev_run.sroa.0.0, %bb12.lr.ph ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h1c70196c34f8d776E.exit ]
  %count = add i64 %stack_len.sroa.0.150, -1
  %_41 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %count
  %_40 = load i8, ptr %_41, align 1, !noundef !15
  %_39.not = icmp ult i8 %_40, %desired_depth.sroa.0.0
  br i1 %_39.not, label %bb17, label %bb13

bb17:                                             ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h1c70196c34f8d776E.exit, %bb12, %bb10
  %prev_run.sroa.0.1.lcssa = phi i64 [ %prev_run.sroa.0.0, %bb10 ], [ %_0.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h1c70196c34f8d776E.exit ], [ %prev_run.sroa.0.149, %bb12 ]
  %stack_len.sroa.0.1.lcssa = phi i64 [ %stack_len.sroa.0.0, %bb10 ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h1c70196c34f8d776E.exit ], [ %stack_len.sroa.0.150, %bb12 ]
  %_59 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %stack_len.sroa.0.1.lcssa
  store i64 %prev_run.sroa.0.1.lcssa, ptr %_59, align 8
  %_61 = getelementptr inbounds nuw i8, ptr %desired_depth_storage, i64 %stack_len.sroa.0.1.lcssa
  store i8 %desired_depth.sroa.0.0, ptr %_61, align 1
  br i1 %_22, label %bb19, label %bb18

bb13:                                             ; preds = %bb12
  %_46 = getelementptr inbounds nuw i64, ptr %run_storage, i64 %count
  %left10 = load i64, ptr %_46, align 8, !noundef !15
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h1c70196c34f8d776E.exit

bb5.i:                                            ; preds = %bb11.i, %bb3.i
  br i1 %_10.not.i, label %bb16.i, label %bb7.i

bb11.i:                                           ; preds = %bb3.i
  %self.i = or i64 %_50, 1
  %8 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i, i1 true)
  %9 = trunc nuw nsw i64 %8 to i32
  %log.i = shl nuw nsw i32 %9, 1
  %limit.i = xor i32 %log.i, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hdaefa162ad445ab5E(ptr noalias noundef nonnull align 4 %_98, i64 noundef range(i64 0, 2305843009213693952) %_50, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #31
  br label %bb5.i

bb7.i:                                            ; preds = %bb16.i, %bb5.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  %_6.i = icmp ult i64 %left10, 2
  %_7.i = icmp ult i64 %prev_run.sroa.0.149, 2
  %or.cond.i = or i1 %_7.i, %_6.i
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17hf1471d068efe340fE.exit, label %bb2.i

bb2.i:                                            ; preds = %bb7.i
  %_0.sroa.0.0.i.i = tail call i64 @llvm.umin.i64(i64 %_51, i64 %_50)
  %_8.i = icmp samesign ult i64 %scratch.1, %_0.sroa.0.0.i.i
  br i1 %_8.i, label %_ZN4core5slice4sort6stable5merge5merge17hf1471d068efe340fE.exit, label %bb5.i37

bb5.i37:                                          ; preds = %bb2.i
  %v_mid.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %left_is_shorter.not.i = icmp samesign ugt i64 %_50, %_51
  %spec.select.i = select i1 %left_is_shorter.not.i, ptr %v_mid.i, ptr %_98
  %10 = shl nuw nsw i64 %_0.sroa.0.0.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scratch.0, ptr nonnull align 4 %spec.select.i, i64 %10, i1 false), !alias.scope !1148
  %_22.i38 = getelementptr inbounds nuw i8, ptr %scratch.0, i64 %10
  br i1 %left_is_shorter.not.i, label %bb1.i.i, label %bb3.i.i

bb1.i.i:                                          ; preds = %bb5.i37, %bb1.i.i
  %_2110.i.i = phi ptr [ %_21.i.i, %bb1.i.i ], [ %_22.i38, %bb5.i37 ]
  %_188.i.i = phi ptr [ %_18.i.i, %bb1.i.i ], [ %spec.select.i, %bb5.i37 ]
  %out.sroa.0.0.i.i = phi ptr [ %13, %bb1.i.i ], [ %v_end.i, %bb5.i37 ]
  %11 = getelementptr inbounds i8, ptr %_188.i.i, i64 -4
  %12 = getelementptr inbounds i8, ptr %_2110.i.i, i64 -4
  %13 = getelementptr inbounds i8, ptr %out.sroa.0.0.i.i, i64 -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1162)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1167)
  %_3.i.i.i.i.i.i = load i32, ptr %12, align 4, !alias.scope !1169, !noalias !1170, !noundef !15
  %_4.i.i.i.i.i.i = load i32, ptr %11, align 4, !alias.scope !1173, !noalias !1174, !noundef !15
  %_0.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i, %_4.i.i.i.i.i.i
  %14 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i.i, i32 %_4.i.i.i.i.i.i)
  store i32 %14, ptr %13, align 4, !alias.scope !1143, !noalias !1175
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1194)
  %_3.i.i.i.i.i12.i = load i32, ptr %right.sroa.0.010.i.i, align 4, !alias.scope !1196, !noalias !1197, !noundef !15
  %_4.i.i.i.i.i13.i = load i32, ptr %_2059.i.i, align 4, !alias.scope !1200, !noalias !1201, !noundef !15
  %_0.i.i14.i = icmp slt i32 %_3.i.i.i.i.i12.i, %_4.i.i.i.i.i13.i
  %consume_left.i.i = xor i1 %_0.i.i14.i, true
  %15 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i12.i, i32 %_4.i.i.i.i.i13.i)
  store i32 %15, ptr %_2511.i.i, align 4, !alias.scope !1143, !noalias !1202
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0.i, ptr align 4 %merge_state.sroa.0.0.i, i64 %18, i1 false), !alias.scope !1148, !noalias !1203
  br label %_ZN4core5slice4sort6stable5merge5merge17hf1471d068efe340fE.exit

_ZN4core5slice4sort6stable5merge5merge17hf1471d068efe340fE.exit: ; preds = %bb7.i, %bb2.i, %bb16.i40
  %_39.i = shl nuw nsw i64 %merged_len, 1
  %_38.i = or disjoint i64 %_39.i, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h1c70196c34f8d776E.exit

bb16.i:                                           ; preds = %bb5.i
  %_37.i = getelementptr inbounds nuw i32, ptr %_98, i64 %_50
  %self.i41 = or i64 %_51, 1
  %19 = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %self.i41, i1 true)
  %20 = trunc nuw nsw i64 %19 to i32
  %log.i42 = shl nuw nsw i32 %20, 1
  %limit.i43 = xor i32 %log.i42, 126
; call core::slice::sort::stable::quicksort::quicksort
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hdaefa162ad445ab5E(ptr noalias noundef nonnull align 4 %_37.i, i64 noundef range(i64 0, 2305843009213693952) %_51, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i43, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less) #31
  br label %bb7.i

_ZN4core5slice4sort6stable5drift13logical_merge17h1c70196c34f8d776E.exit: ; preds = %bb9.i, %_ZN4core5slice4sort6stable5merge5merge17hf1471d068efe340fE.exit
  %_0.sroa.0.0.i = phi i64 [ %_38.i, %_ZN4core5slice4sort6stable5merge5merge17hf1471d068efe340fE.exit ], [ %_40.i, %bb9.i ]
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
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hdaefa162ad445ab5E(ptr noalias noundef nonnull align 4 %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %limit.i46, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef align 8 dereferenceable(8) %is_less) #31
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
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h2efe162886d2dcd0E"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readnone captures(address) %left_end, ptr noundef readnone captures(address) %right_end, ptr noundef writeonly captures(none) %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #8 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1226)
  %_3.i.i.i.i = load i32, ptr %4, align 4, !alias.scope !1228, !noalias !1229, !noundef !15
  %_4.i.i.i.i = load i32, ptr %3, align 4, !alias.scope !1229, !noalias !1228, !noundef !15
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
define void @"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17hcc561469da747713E"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noundef readonly captures(address) %0, ptr noundef readnone captures(address) %right_end, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #9 {
start:
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_9 = load ptr, ptr %1, align 8, !noundef !15
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1248)
  %_3.i.i.i.i = load i32, ptr %right.sroa.0.010, align 4, !alias.scope !1250, !noalias !1251, !noundef !15
  %_4.i.i.i.i = load i32, ptr %_2059, align 4, !alias.scope !1251, !noalias !1250, !noundef !15
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
define void @_ZN4core5slice4sort6stable5merge5merge17hf1471d068efe340fE(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %is_less) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1255)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1257)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1270)
  %_3.i.i.i.i.i = load i32, ptr %3, align 4, !alias.scope !1272, !noalias !1273, !noundef !15
  %_4.i.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !1276, !noalias !1277, !noundef !15
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %5 = tail call i32 @llvm.smax.i32(i32 %_3.i.i.i.i.i, i32 %_4.i.i.i.i.i)
  store i32 %5, ptr %4, align 4, !noalias !1278
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1287)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1297)
  %_3.i.i.i.i.i12 = load i32, ptr %right.sroa.0.010.i, align 4, !alias.scope !1299, !noalias !1300, !noundef !15
  %_4.i.i.i.i.i13 = load i32, ptr %_2059.i, align 4, !alias.scope !1303, !noalias !1304, !noundef !15
  %_0.i.i14 = icmp slt i32 %_3.i.i.i.i.i12, %_4.i.i.i.i.i13
  %consume_left.i = xor i1 %_0.i.i14, true
  %6 = tail call i32 @llvm.smin.i32(i32 %_3.i.i.i.i.i12, i32 %_4.i.i.i.i.i13)
  store i32 %6, ptr %_2511.i, align 4, !noalias !1305
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %merge_state.sroa.13.0, ptr align 4 %merge_state.sroa.0.0, i64 %9, i1 false), !noalias !1306
  br label %bb18

bb18:                                             ; preds = %bb2, %start, %bb16
  ret void
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h14c0591afb1dca44E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #5 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !1311

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1325)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1332)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1335)
  %_3.i.i.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !1337, !noalias !1338, !noundef !15
  %_4.i.i.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !1338, !noalias !1337, !noundef !15
  %_0.i.i = icmp sge i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_4.i.i.i.i.i, ptr %dst.i, align 4, !noalias !1339
  %_8.i = zext i1 %_0.i.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1355)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1357)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1360)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1365)
  %_3.i.i.i.i.i25 = load i32, ptr %pivot, align 4, !alias.scope !1367, !noalias !1368, !noundef !15
  %_4.i.i.i.i.i26 = load i32, ptr %_9.i, align 4, !alias.scope !1368, !noalias !1367, !noundef !15
  %_0.i.i27 = icmp sge i32 %_3.i.i.i.i.i25, %_4.i.i.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_4.i.i.i.i.i26, ptr %dst.i31, align 4, !noalias !1369
  %_8.i33 = zext i1 %_0.i.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1372)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1377)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1385)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1390)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1395)
  %_3.i.i.i.i.i35 = load i32, ptr %pivot, align 4, !alias.scope !1397, !noalias !1398, !noundef !15
  %_4.i.i.i.i.i36 = load i32, ptr %_9.i34, align 4, !alias.scope !1398, !noalias !1397, !noundef !15
  %_0.i.i37 = icmp sge i32 %_3.i.i.i.i.i35, %_4.i.i.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_4.i.i.i.i.i36, ptr %dst.i41, align 4, !noalias !1399
  %_8.i43 = zext i1 %_0.i.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1410)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1417)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1420)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1425)
  %_3.i.i.i.i.i45 = load i32, ptr %pivot, align 4, !alias.scope !1427, !noalias !1428, !noundef !15
  %_4.i.i.i.i.i46 = load i32, ptr %_9.i44, align 4, !alias.scope !1428, !noalias !1427, !noundef !15
  %_0.i.i47 = icmp sge i32 %_3.i.i.i.i.i45, %_4.i.i.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_4.i.i.i.i.i46, ptr %dst.i51, align 4, !noalias !1429
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1432)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1437)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1440)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1442)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1445)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1447)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1452)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1455)
  %_3.i.i.i.i.i55 = load i32, ptr %pivot, align 4, !alias.scope !1457, !noalias !1458, !noundef !15
  %_4.i.i.i.i.i56 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !1458, !noalias !1457, !noundef !15
  %_0.i.i57 = icmp sge i32 %_3.i.i.i.i.i55, %_4.i.i.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_4.i.i.i.i.i56, ptr %dst.i61, align 4, !noalias !1459
  %_8.i63 = zext i1 %_0.i.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !1462
  store i32 %13, ptr %dst.i68, align 4, !noalias !1462
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
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !1465

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::stable_partition
; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17hc7eaeb6583007ed4E(ptr noalias noundef nonnull align 4 captures(address) %v.0, i64 noundef range(i64 0, 2305843009213693952) %v.1, ptr noalias noundef nonnull align 4 captures(none) %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i64 noundef %0, i1 noundef zeroext %pivot_goes_left, ptr noalias readnone align 8 captures(none) %is_less) unnamed_addr #5 {
start:
  %_8 = icmp samesign uge i64 %scratch.1, %v.1
  %.not = icmp ult i64 %0, %v.1
  %or.cond = and i1 %_8, %.not
  br i1 %or.cond, label %bb33, label %bb31, !prof !1311

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1467)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1470)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1472)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1477)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1482)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1485)
  %_3.i.i.i.i = load i32, ptr %state.sroa.9.187, align 4, !alias.scope !1487, !noalias !1488, !noundef !15
  %_4.i.i.i.i = load i32, ptr %pivot, align 4, !alias.scope !1488, !noalias !1487, !noundef !15
  %_0.i = icmp slt i32 %_3.i.i.i.i, %_4.i.i.i.i
  %2 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -4
  %dst_base.sroa.0.0.i = select i1 %_0.i, ptr %scratch.0, ptr %2
  %dst.i = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i, i64 %state.sroa.27.186
  store i32 %_3.i.i.i.i, ptr %dst.i, align 4, !noalias !1489
  %_8.i = zext i1 %_0.i to i64
  %3 = add i64 %state.sroa.27.186, %_8.i
  %_9.i = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1492)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1495)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1497)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1502)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1505)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1507)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1510)
  %_3.i.i.i.i25 = load i32, ptr %_9.i, align 4, !alias.scope !1512, !noalias !1513, !noundef !15
  %_4.i.i.i.i26 = load i32, ptr %pivot, align 4, !alias.scope !1513, !noalias !1512, !noundef !15
  %_0.i27 = icmp slt i32 %_3.i.i.i.i25, %_4.i.i.i.i26
  %4 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -8
  %dst_base.sroa.0.0.i29 = select i1 %_0.i27, ptr %scratch.0, ptr %4
  %dst.i31 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i29, i64 %3
  store i32 %_3.i.i.i.i25, ptr %dst.i31, align 4, !noalias !1514
  %_8.i33 = zext i1 %_0.i27 to i64
  %5 = add i64 %3, %_8.i33
  %_9.i34 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1517)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1520)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1530)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1532)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1535)
  %_3.i.i.i.i35 = load i32, ptr %_9.i34, align 4, !alias.scope !1537, !noalias !1538, !noundef !15
  %_4.i.i.i.i36 = load i32, ptr %pivot, align 4, !alias.scope !1538, !noalias !1537, !noundef !15
  %_0.i37 = icmp slt i32 %_3.i.i.i.i35, %_4.i.i.i.i36
  %6 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -12
  %dst_base.sroa.0.0.i39 = select i1 %_0.i37, ptr %scratch.0, ptr %6
  %dst.i41 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i39, i64 %5
  store i32 %_3.i.i.i.i35, ptr %dst.i41, align 4, !noalias !1539
  %_8.i43 = zext i1 %_0.i37 to i64
  %7 = add i64 %5, %_8.i43
  %_9.i44 = getelementptr inbounds nuw i8, ptr %state.sroa.9.187, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1545)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1547)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1550)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1552)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1555)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1560)
  %_3.i.i.i.i45 = load i32, ptr %_9.i44, align 4, !alias.scope !1562, !noalias !1563, !noundef !15
  %_4.i.i.i.i46 = load i32, ptr %pivot, align 4, !alias.scope !1563, !noalias !1562, !noundef !15
  %_0.i47 = icmp slt i32 %_3.i.i.i.i45, %_4.i.i.i.i46
  %8 = getelementptr inbounds i8, ptr %state.sroa.43.188, i64 -16
  %dst_base.sroa.0.0.i49 = select i1 %_0.i47, ptr %scratch.0, ptr %8
  %dst.i51 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i49, i64 %7
  store i32 %_3.i.i.i.i45, ptr %dst.i51, align 4, !noalias !1564
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1567)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1570)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1572)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1575)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1577)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1580)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1582)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1585)
  %_3.i.i.i.i55 = load i32, ptr %state.sroa.9.293, align 4, !alias.scope !1587, !noalias !1588, !noundef !15
  %_4.i.i.i.i56 = load i32, ptr %pivot, align 4, !alias.scope !1588, !noalias !1587, !noundef !15
  %_0.i57 = icmp slt i32 %_3.i.i.i.i55, %_4.i.i.i.i56
  %10 = getelementptr inbounds i8, ptr %state.sroa.43.294, i64 -4
  %dst_base.sroa.0.0.i59 = select i1 %_0.i57, ptr %scratch.0, ptr %10
  %dst.i61 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i59, i64 %state.sroa.27.292
  store i32 %_3.i.i.i.i55, ptr %dst.i61, align 4, !noalias !1589
  %_8.i63 = zext i1 %_0.i57 to i64
  %11 = add i64 %state.sroa.27.292, %_8.i63
  %_9.i64 = getelementptr inbounds nuw i8, ptr %state.sroa.9.293, i64 4
  %_47 = icmp ult ptr %_9.i64, %loop_end
  br i1 %_47, label %bb18, label %bb21

bb23:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %state.sroa.43.2.lcssa, i64 -4
  %dst_base.sroa.0.0.i66 = select i1 %pivot_goes_left, ptr %scratch.0, ptr %12
  %dst.i68 = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0.i66, i64 %state.sroa.27.2.lcssa
  %13 = load i32, ptr %state.sroa.9.2.lcssa, align 4, !noalias !1592
  store i32 %13, ptr %dst.i68, align 4, !noalias !1592
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
  br i1 %epil.iter.cmp.not, label %bb30, label %bb42.epil, !llvm.loop !1595

bb30:                                             ; preds = %bb30.loopexit.unr-lcssa, %bb42.epil, %bb22
  ret i64 %state.sroa.27.2.lcssa
}

; core::slice::sort::stable::quicksort::PartitionState<T>::partition_one
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define noundef ptr @"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hdd78d4b9647768dbE"(ptr noalias noundef align 8 captures(none) dereferenceable(32) %self, i1 noundef zeroext %towards_left) unnamed_addr #10 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 24
  %self1 = load ptr, ptr %0, align 8, !noundef !15
  %1 = getelementptr inbounds i8, ptr %self1, i64 -4
  store ptr %1, ptr %0, align 8
  %2 = load ptr, ptr %self, align 8
  %dst_base.sroa.0.0 = select i1 %towards_left, ptr %2, ptr %1
  %3 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %3, align 8, !noundef !15
  %dst = getelementptr inbounds nuw i32, ptr %dst_base.sroa.0.0, i64 %count
  %4 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %src = load ptr, ptr %4, align 8, !noundef !15
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
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17hdaefa162ad445ab5E(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %3, ptr noalias noundef align 8 dereferenceable(8) %is_less) unnamed_addr #6 {
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

bb5:                                              ; preds = %bb5.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h4c537d97a3de3be2E.exit"
  %v.sroa.16.034 = phi i64 [ %v.sroa.16.0.ph41, %bb5.lr.ph ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h4c537d97a3de3be2E.exit" ]
  %limit.sroa.0.033 = phi i32 [ %limit.sroa.0.0.ph40, %bb5.lr.ph ], [ %4, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h4c537d97a3de3be2E.exit" ]
  %_11 = icmp eq i32 %limit.sroa.0.033, 0
  br i1 %_11, label %bb6, label %bb7

bb3:                                              ; preds = %bb28, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h4c537d97a3de3be2E.exit", %start
  %v.sroa.0.0.ph.lcssa31 = phi ptr [ %0, %start ], [ %v.sroa.0.0.ph42, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h4c537d97a3de3be2E.exit" ], [ %_54, %bb28 ]
  %v.sroa.16.0.lcssa = phi i64 [ %1, %start ], [ %left_partition_len.sroa.0.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h4c537d97a3de3be2E.exit" ], [ %new_len, %bb28 ]
; call core::slice::sort::shared::smallsort::small_sort_general_with_scratch
  call void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h7dfbbddb023c8e20E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph.lcssa31, i64 noundef range(i64 0, 33) %v.sroa.16.0.lcssa, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef range(i64 0, 2305843009213693952) %scratch.1, ptr noalias nonnull align 8 poison)
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
  %self.i = call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17ha687117de2139b61E(ptr noundef nonnull readonly align 4 %v.sroa.0.0.ph42, ptr noundef nonnull readonly %b.i, ptr noundef nonnull readonly %c.i, i64 noundef %len_div_84.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less)
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17ha56bcbeffaf4e1a4E.exit

bb3.i:                                            ; preds = %bb7
  call void @llvm.experimental.noalias.scope.decl(metadata !1596)
  call void @llvm.experimental.noalias.scope.decl(metadata !1599)
  call void @llvm.experimental.noalias.scope.decl(metadata !1601), !noalias !1604
  call void @llvm.experimental.noalias.scope.decl(metadata !1607), !noalias !1604
  call void @llvm.experimental.noalias.scope.decl(metadata !1609), !noalias !1604
  call void @llvm.experimental.noalias.scope.decl(metadata !1612), !noalias !1604
  call void @llvm.experimental.noalias.scope.decl(metadata !1614), !noalias !1604
  call void @llvm.experimental.noalias.scope.decl(metadata !1617), !noalias !1604
  %_3.i.i.i.i.i = load i32, ptr %v.sroa.0.0.ph42, align 4, !alias.scope !1619, !noalias !1622, !noundef !15
  %_4.i.i.i.i.i = load i32, ptr %b.i, align 4, !alias.scope !1624, !noalias !1625, !noundef !15
  %_0.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  %_4.i.i.i.i6.i = load i32, ptr %c.i, align 4, !alias.scope !1626, !noalias !1635, !noundef !15
  %_0.i7.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i6.i
  %5 = xor i1 %_0.i.i, %_0.i7.i
  %_0.i10.i = icmp slt i32 %_4.i.i.i.i.i, %_4.i.i.i.i6.i
  %_12.i.i = xor i1 %_0.i.i, %_0.i10.i
  %c.b.i.i = select i1 %_12.i.i, ptr %c.i, ptr %b.i
  %_0.sroa.0.0.i.i = select i1 %5, ptr %v.sroa.0.0.ph42, ptr %c.b.i.i
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17ha56bcbeffaf4e1a4E.exit

_ZN4core5slice4sort6shared5pivot12choose_pivot17ha56bcbeffaf4e1a4E.exit: ; preds = %bb5.i, %bb3.i
  %self.i.sink = phi ptr [ %self.i, %bb5.i ], [ %_0.sroa.0.0.i.i, %bb3.i ]
  %6 = ptrtoint ptr %self.i.sink to i64
  %7 = sub nuw i64 %6, %.sink77
  %index.sroa.0.0.i = lshr exact i64 %7, 2
  %cond.i = icmp samesign ult i64 %index.sroa.0.0.i, %v.sroa.16.034
  call void @llvm.assume(i1 %cond.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pivot_copy)
  %src = getelementptr inbounds nuw i8, ptr %v.sroa.0.0.ph42, i64 %7
  %value = load i32, ptr %src, align 4, !noundef !15
  store i32 %value, ptr %pivot_copy, align 4
  br i1 %.not, label %bb14, label %bb12

bb6:                                              ; preds = %bb5
; call core::slice::sort::stable::drift::sort
  call void @_ZN4core5slice4sort6stable5drift4sort17ha7ecc1b613f56314E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %is_less)
  br label %bb22

bb12:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17ha56bcbeffaf4e1a4E.exit
  %_3.i.i.i.i = load i32, ptr %left_ancestor_pivot.sroa.0.0.ph39, align 4, !alias.scope !1640, !noalias !1649, !noundef !15
  %_0.i.not = icmp slt i32 %_3.i.i.i.i, %value
  br i1 %_0.i.not, label %bb14, label %bb16

bb14:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17ha56bcbeffaf4e1a4E.exit, %bb12
; call core::slice::sort::stable::quicksort::stable_partition
  %8 = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17hc7eaeb6583007ed4E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext false, ptr noalias align 8 poison)
  %9 = icmp eq i64 %8, 0
  br label %bb16

bb16:                                             ; preds = %bb14, %bb12
  %left_partition_len.sroa.0.0 = phi i64 [ 0, %bb12 ], [ %8, %bb14 ]
  %perform_equal_partition.sroa.0.0.in = phi i1 [ true, %bb12 ], [ %9, %bb14 ]
  br i1 %perform_equal_partition.sroa.0.0.in, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  %_6.not.i = icmp ugt i64 %left_partition_len.sroa.0.0, %v.sroa.16.034
  br i1 %_6.not.i, label %bb3.i23, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h4c537d97a3de3be2E.exit", !prof !1067

bb3.i23:                                          ; preds = %bb19
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull @alloc_d1084648e479974e70c9329824bf76f9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_58d434a1e795f965ef82c8e9c5db822a) #29, !noalias !1654
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h4c537d97a3de3be2E.exit": ; preds = %bb19
  %10 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph42, i64 %left_partition_len.sroa.0.0
  %11 = sub nuw nsw i64 %v.sroa.16.034, %left_partition_len.sroa.0.0
; call core::slice::sort::stable::quicksort::quicksort
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hdaefa162ad445ab5E(ptr noalias noundef nonnull align 4 %10, i64 noundef %11, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i32 noundef %4, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %pivot_copy, ptr noalias noundef align 8 dereferenceable(8) %is_less) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_8 = icmp ult i64 %left_partition_len.sroa.0.0, 33
  br i1 %_8, label %bb3, label %bb5

bb17:                                             ; preds = %bb16
; call core::slice::sort::stable::quicksort::stable_partition
  %mid_eq = call noundef i64 @_ZN4core5slice4sort6stable9quicksort16stable_partition17h14c0591afb1dca44E(ptr noalias noundef nonnull align 4 %v.sroa.0.0.ph42, i64 noundef %v.sroa.16.034, ptr noalias noundef nonnull align 4 %scratch.0, i64 noundef %scratch.1, i64 noundef %index.sroa.0.0.i, i1 noundef zeroext true, ptr noalias align 8 poison)
  %_47 = icmp ugt i64 %mid_eq, %v.sroa.16.034
  br i1 %_47, label %bb27, label %bb28, !prof !1067

bb28:                                             ; preds = %bb17
  %new_len = sub nuw i64 %v.sroa.16.034, %mid_eq
  %_54 = getelementptr inbounds nuw i32, ptr %v.sroa.0.0.ph42, i64 %mid_eq
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pivot_copy)
  %_832 = icmp ult i64 %new_len, 33
  br i1 %_832, label %bb3, label %bb5.lr.ph

bb27:                                             ; preds = %bb17
; call core::slice::index::slice_index_fail
  call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef %mid_eq, i64 noundef %v.sroa.16.034, i64 noundef %v.sroa.16.034, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0766b232215672ee1bd2195fdb153938) #29
  unreachable

bb22:                                             ; preds = %bb3, %bb6
  ret void
}

; alloc::vec::Vec<T,A>::extend_with
; Function Attrs: nonlazybind uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11extend_with17h8b5d057dd6780631E"(ptr noalias noundef align 8 dereferenceable(24) %self, i64 noundef %n, i32 noundef %0) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %len.i = load i64, ptr %1, align 8, !alias.scope !1658, !noundef !15
  %self2.i = load i64, ptr %self, align 8, !range !1661, !alias.scope !1658, !noundef !15
  %_9.i = sub i64 %self2.i, %len.i
  %_7.i = icmp ugt i64 %n, %_9.i
  br i1 %_7.i, label %bb1.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h65c4050f1d45e954E.exit", !prof !1067

bb1.i:                                            ; preds = %start
; call alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
  tail call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h3fb8db3e79fd71d4E"(ptr noalias noundef align 8 dereferenceable(24) %self, i64 noundef %len.i, i64 noundef %n, i64 noundef 4, i64 noundef 4)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h65c4050f1d45e954E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h65c4050f1d45e954E.exit": ; preds = %start, %bb1.i
  %2 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_21 = load ptr, ptr %2, align 8, !nonnull !15, !noundef !15
  %count = load i64, ptr %1, align 8, !noundef !15
  %_22 = icmp ult i64 %count, 2305843009213693952
  tail call void @llvm.assume(i1 %_22)
  %3 = getelementptr inbounds nuw i32, ptr %_21, i64 %count
  %_2415 = icmp ugt i64 %n, 1
  br i1 %_2415, label %bb13.preheader, label %bb14

bb13.preheader:                                   ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h65c4050f1d45e954E.exit"
  %4 = add i64 %n, -1
  %5 = add i64 %n, -2
  %xtraiter = and i64 %4, 7
  %6 = icmp ult i64 %5, 7
  br i1 %6, label %bb14.loopexit.unr-lcssa, label %bb13.preheader.new

bb13.preheader.new:                               ; preds = %bb13.preheader
  %unroll_iter = and i64 %4, -8
  br label %bb13

bb14.loopexit.unr-lcssa:                          ; preds = %bb13, %bb13.preheader
  %_15.lcssa.ph = phi ptr [ poison, %bb13.preheader ], [ %_15.7, %bb13 ]
  %ptr.sroa.0.018.unr = phi ptr [ %3, %bb13.preheader ], [ %_15.7, %bb13 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb14.loopexit, label %bb13.epil

bb13.epil:                                        ; preds = %bb14.loopexit.unr-lcssa, %bb13.epil
  %ptr.sroa.0.018.epil = phi ptr [ %_15.epil, %bb13.epil ], [ %ptr.sroa.0.018.unr, %bb14.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb13.epil ], [ 0, %bb14.loopexit.unr-lcssa ]
  store i32 %0, ptr %ptr.sroa.0.018.epil, align 4
  %_15.epil = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.epil, i64 4
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %bb14.loopexit, label %bb13.epil, !llvm.loop !1662

bb14.loopexit:                                    ; preds = %bb13.epil, %bb14.loopexit.unr-lcssa
  %_15.lcssa = phi ptr [ %_15.lcssa.ph, %bb14.loopexit.unr-lcssa ], [ %_15.epil, %bb13.epil ]
  %7 = add i64 %count, %n
  %8 = add i64 %7, -1
  br label %bb14

bb14:                                             ; preds = %bb14.loopexit, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h65c4050f1d45e954E.exit"
  %storemerge.lcssa = phi i64 [ %count, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h65c4050f1d45e954E.exit" ], [ %8, %bb14.loopexit ]
  %ptr.sroa.0.0.lcssa = phi ptr [ %3, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h65c4050f1d45e954E.exit" ], [ %_15.lcssa, %bb14.loopexit ]
  %_17.not = icmp eq i64 %n, 0
  br i1 %_17.not, label %bb7, label %bb4

bb13:                                             ; preds = %bb13, %bb13.preheader.new
  %ptr.sroa.0.018 = phi ptr [ %3, %bb13.preheader.new ], [ %_15.7, %bb13 ]
  %niter = phi i64 [ 0, %bb13.preheader.new ], [ %niter.next.7, %bb13 ]
  store i32 %0, ptr %ptr.sroa.0.018, align 4
  %_15 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018, i64 4
  store i32 %0, ptr %_15, align 4
  %_15.1 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018, i64 8
  store i32 %0, ptr %_15.1, align 4
  %_15.2 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018, i64 12
  store i32 %0, ptr %_15.2, align 4
  %_15.3 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018, i64 16
  store i32 %0, ptr %_15.3, align 4
  %_15.4 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018, i64 20
  store i32 %0, ptr %_15.4, align 4
  %_15.5 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018, i64 24
  store i32 %0, ptr %_15.5, align 4
  %_15.6 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018, i64 28
  store i32 %0, ptr %_15.6, align 4
  %_15.7 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018, i64 32
  %niter.next.7 = add i64 %niter, 8
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %bb14.loopexit.unr-lcssa, label %bb13

bb4:                                              ; preds = %bb14
  store i32 %0, ptr %ptr.sroa.0.0.lcssa, align 4
  %9 = add i64 %storemerge.lcssa, 1
  br label %bb7

bb7:                                              ; preds = %bb14, %bb4
  %storemerge14 = phi i64 [ %9, %bb4 ], [ %storemerge.lcssa, %bb14 ]
  store i64 %storemerge14, ptr %1, align 8, !noalias !15
  ret void
}

; alloc::vec::Vec<T,A>::extend_with
; Function Attrs: nonlazybind uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11extend_with17ha4e69f5b705c0ba1E"(ptr noalias noundef align 8 dereferenceable(24) %self, i64 noundef %n, ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %value) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_4.i.i.i = alloca [24 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %len.i = load i64, ptr %0, align 8, !alias.scope !1663, !noundef !15
  %self2.i = load i64, ptr %self, align 8, !range !1661, !alias.scope !1663, !noundef !15
  %_9.i = sub i64 %self2.i, %len.i
  %_7.i = icmp ugt i64 %n, %_9.i
  br i1 %_7.i, label %bb1.i, label %bb1, !prof !1067

bb1.i:                                            ; preds = %start
; invoke alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h3fb8db3e79fd71d4E"(ptr noalias noundef align 8 dereferenceable(24) %self, i64 noundef %len.i, i64 noundef %n, i64 noundef 8, i64 noundef 24)
          to label %bb1 unwind label %cleanup

cleanup:                                          ; preds = %bb1.i
  %1 = landingpad { ptr, i32 }
          cleanup
  br label %bb11

bb1:                                              ; preds = %start, %bb1.i
  %2 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_21 = load ptr, ptr %2, align 8, !nonnull !15, !noundef !15
  %count = load i64, ptr %0, align 8, !noundef !15
  %_22 = icmp ult i64 %count, 384307168202282326
  tail call void @llvm.assume(i1 %_22)
  %3 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_21, i64 %count
  %_2425 = icmp ugt i64 %n, 1
  br i1 %_2425, label %bb13.lr.ph, label %bb14

bb13.lr.ph:                                       ; preds = %bb1
  %_3.i = getelementptr inbounds nuw i8, ptr %value, i64 16
  %4 = getelementptr inbounds nuw i8, ptr %value, i64 8
  %5 = getelementptr inbounds nuw i8, ptr %_4.i.i.i, i64 8
  %6 = getelementptr inbounds nuw i8, ptr %_4.i.i.i, i64 16
  %7 = add i64 %count, %n
  %8 = add i64 %7, -1
  br label %bb13

bb14:                                             ; preds = %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hc4b1201a97f36e73E.exit", %bb1
  %storemerge.lcssa = phi i64 [ %count, %bb1 ], [ %8, %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hc4b1201a97f36e73E.exit" ]
  %ptr.sroa.0.0.lcssa = phi ptr [ %3, %bb1 ], [ %_15, %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hc4b1201a97f36e73E.exit" ]
  %_17.not = icmp eq i64 %n, 0
  br i1 %_17.not, label %bb5, label %bb4

bb13:                                             ; preds = %bb13.lr.ph, %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hc4b1201a97f36e73E.exit"
  %ptr.sroa.0.028 = phi ptr [ %3, %bb13.lr.ph ], [ %_15, %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hc4b1201a97f36e73E.exit" ]
  %iter.sroa.0.027 = phi i64 [ 1, %bb13.lr.ph ], [ %_28, %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hc4b1201a97f36e73E.exit" ]
  %storemerge26 = phi i64 [ %count, %bb13.lr.ph ], [ %13, %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hc4b1201a97f36e73E.exit" ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1666)
  %_7.i7 = load ptr, ptr %4, align 8, !alias.scope !1666, !noalias !1669, !nonnull !15, !noundef !15
  %len.i8 = load i64, ptr %_3.i, align 8, !alias.scope !1666, !noalias !1669, !noundef !15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i.i), !noalias !1671
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i.i, i64 noundef range(i64 0, 2305843009213693952) %len.i8, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc9 unwind label %cleanup2.loopexit

.noexc9:                                          ; preds = %bb13
  %_5.i.i.i = load i64, ptr %_4.i.i.i, align 8, !range !1065, !noalias !1671, !noundef !15
  %9 = trunc nuw i64 %_5.i.i.i to i1
  br i1 %9, label %bb3.i.i.i, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hc4b1201a97f36e73E.exit", !prof !1067

bb3.i.i.i:                                        ; preds = %.noexc9
  %10 = getelementptr inbounds nuw i8, ptr %_4.i.i.i, i64 8
  %err.0.i.i.i = load i64, ptr %10, align 8, !range !1066, !noalias !1671, !noundef !15
  %11 = getelementptr inbounds nuw i8, ptr %_4.i.i.i, i64 16
  %err.1.i.i.i = load i64, ptr %11, align 8, !noalias !1671
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i.i, i64 %err.1.i.i.i) #30
          to label %.noexc10 unwind label %cleanup2.loopexit.split-lp

.noexc10:                                         ; preds = %bb3.i.i.i
  unreachable

"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hc4b1201a97f36e73E.exit": ; preds = %.noexc9
  %this.0.i.i.i = load i64, ptr %5, align 8, !range !1661, !noalias !1671, !noundef !15
  %this.1.i.i.i = load ptr, ptr %6, align 8, !noalias !1671, !nonnull !15, !noundef !15
  %_7.i.i.i = icmp samesign ule i64 %len.i8, %this.0.i.i.i
  tail call void @llvm.assume(i1 %_7.i.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i.i), !noalias !1671
  %12 = shl nuw nsw i64 %len.i8, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %this.1.i.i.i, ptr nonnull readonly align 4 %_7.i7, i64 %12, i1 false), !noalias !1675
  %_28 = add nuw i64 %iter.sroa.0.027, 1
  store i64 %this.0.i.i.i, ptr %ptr.sroa.0.028, align 8
  %src.sroa.4.0.ptr.sroa.0.0.sroa_idx = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028, i64 8
  store ptr %this.1.i.i.i, ptr %src.sroa.4.0.ptr.sroa.0.0.sroa_idx, align 8
  %src.sroa.5.0.ptr.sroa.0.0.sroa_idx = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028, i64 16
  store i64 %len.i8, ptr %src.sroa.5.0.ptr.sroa.0.0.sroa_idx, align 8
  %_15 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028, i64 24
  %13 = add i64 %storemerge26, 1
  %exitcond.not = icmp eq i64 %_28, %n
  br i1 %exitcond.not, label %bb14, label %bb13

bb5:                                              ; preds = %bb14
  store i64 %storemerge.lcssa, ptr %0, align 8, !noalias !1676
; call alloc::raw_vec::RawVecInner<A>::deallocate
  tail call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %value, i64 noundef 4, i64 noundef 4)
  br label %bb7

bb4:                                              ; preds = %bb14
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %ptr.sroa.0.0.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %value, i64 24, i1 false)
  %14 = add i64 %storemerge.lcssa, 1
  store i64 %14, ptr %0, align 8, !noalias !1681
  br label %bb7

bb7:                                              ; preds = %bb4, %bb5
  ret void

cleanup2.loopexit:                                ; preds = %bb13
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %cleanup2

cleanup2.loopexit.split-lp:                       ; preds = %bb3.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %cleanup2

cleanup2:                                         ; preds = %cleanup2.loopexit.split-lp, %cleanup2.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup2.loopexit ], [ %lpad.loopexit.split-lp, %cleanup2.loopexit.split-lp ]
  store i64 %storemerge26, ptr %0, align 8, !noalias !1686
  br label %bb11

terminate:                                        ; preds = %bb11
  %15 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #28
  unreachable

bb11:                                             ; preds = %cleanup, %cleanup2
  %.pn = phi { ptr, i32 } [ %lpad.phi, %cleanup2 ], [ %1, %cleanup ]
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %value, i64 noundef 4, i64 noundef 4)
          to label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h594295e0659e970fE.exit" unwind label %terminate

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h594295e0659e970fE.exit": ; preds = %bb11
  resume { ptr, i32 } %.pn
}

; alloc::vec::Vec<T,A>::reserve
; Function Attrs: nonlazybind uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h005d0b634ecef0e2E"(ptr noalias noundef align 8 dereferenceable(24) %self, i64 noundef %additional) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %len = load i64, ptr %0, align 8, !noundef !15
  %self2 = load i64, ptr %self, align 8, !range !1661, !noundef !15
  %_9 = sub i64 %self2, %len
  %_7 = icmp ugt i64 %additional, %_9
  br i1 %_7, label %bb1, label %bb2, !prof !1067

bb2:                                              ; preds = %bb1, %start
  ret void

bb1:                                              ; preds = %start
; call alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
  tail call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h3fb8db3e79fd71d4E"(ptr noalias noundef align 8 dereferenceable(16) %self, i64 noundef %len, i64 noundef %additional, i64 noundef 8, i64 noundef 24)
  br label %bb2
}

; alloc::vec::Vec<T,A>::reserve
; Function Attrs: nonlazybind uwtable
define void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h65c4050f1d45e954E"(ptr noalias noundef align 8 dereferenceable(24) %self, i64 noundef %additional) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %len = load i64, ptr %0, align 8, !noundef !15
  %self2 = load i64, ptr %self, align 8, !range !1661, !noundef !15
  %_9 = sub i64 %self2, %len
  %_7 = icmp ugt i64 %additional, %_9
  br i1 %_7, label %bb1, label %bb2, !prof !1067

bb2:                                              ; preds = %bb1, %start
  ret void

bb1:                                              ; preds = %start
; call alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
  tail call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h3fb8db3e79fd71d4E"(ptr noalias noundef align 8 dereferenceable(16) %self, i64 noundef %len, i64 noundef %additional, i64 noundef 4, i64 noundef 4)
  br label %bb2
}

; alloc::vec::from_elem
; Function Attrs: nonlazybind uwtable
define void @_ZN5alloc3vec9from_elem17h529fd68caacc536cE(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %elem, i64 noundef %n) unnamed_addr #1 {
start:
; call <T as alloc::vec::spec_from_elem::SpecFromElem>::from_elem
  tail call void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hde15162a6a161f62E"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %elem, i64 noundef %n)
  ret void
}

; alloc::vec::from_elem
; Function Attrs: nonlazybind uwtable
define void @_ZN5alloc3vec9from_elem17had7d64d6a4a48132E(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, i32 noundef %elem, i64 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_4.i.i = alloca [24 x i8], align 8
  %_16.i = alloca [24 x i8], align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1691)
  %_0.i.i = icmp eq i32 %elem, 0
  br i1 %_0.i.i, label %bb2.i, label %bb3.i

bb3.i:                                            ; preds = %start
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1691
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i, i64 noundef %n, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !noalias !1691
  %_5.i.i = load i64, ptr %_4.i.i, align 8, !range !1065, !noalias !1691, !noundef !15
  %0 = trunc nuw i64 %_5.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1066, !noalias !1691, !noundef !15
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 16
  br i1 %0, label %bb3.i.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hcf31513a1957c6a5E.exit.i", !prof !1067

bb3.i.i:                                          ; preds = %bb3.i
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1691
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #30, !noalias !1691
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hcf31513a1957c6a5E.exit.i": ; preds = %bb3.i
  %this.1.i.i = load ptr, ptr %2, align 8, !noalias !1691, !nonnull !15, !noundef !15
  %_7.i.i = icmp ule i64 %n, %err.0.i.i
  tail call void @llvm.assume(i1 %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1691
  %_2415.i.i = icmp ugt i64 %n, 1
  br i1 %_2415.i.i, label %bb13.i.i.preheader, label %bb14.i.i

bb13.i.i.preheader:                               ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hcf31513a1957c6a5E.exit.i"
  %3 = add i64 %n, -1
  %4 = add i64 %n, -2
  %xtraiter = and i64 %3, 7
  %5 = icmp ult i64 %4, 7
  br i1 %5, label %bb14.loopexit.i.i.unr-lcssa, label %bb13.i.i.preheader.new

bb13.i.i.preheader.new:                           ; preds = %bb13.i.i.preheader
  %unroll_iter = and i64 %3, -8
  br label %bb13.i.i

bb14.loopexit.i.i.unr-lcssa:                      ; preds = %bb13.i.i, %bb13.i.i.preheader
  %_15.i.i.lcssa.ph = phi ptr [ poison, %bb13.i.i.preheader ], [ %_15.i.i.7, %bb13.i.i ]
  %ptr.sroa.0.018.i.i.unr = phi ptr [ %this.1.i.i, %bb13.i.i.preheader ], [ %_15.i.i.7, %bb13.i.i ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb14.loopexit.i.i, label %bb13.i.i.epil

bb13.i.i.epil:                                    ; preds = %bb14.loopexit.i.i.unr-lcssa, %bb13.i.i.epil
  %ptr.sroa.0.018.i.i.epil = phi ptr [ %_15.i.i.epil, %bb13.i.i.epil ], [ %ptr.sroa.0.018.i.i.unr, %bb14.loopexit.i.i.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb13.i.i.epil ], [ 0, %bb14.loopexit.i.i.unr-lcssa ]
  store i32 %elem, ptr %ptr.sroa.0.018.i.i.epil, align 4, !noalias !1691
  %_15.i.i.epil = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.epil, i64 4
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %bb14.loopexit.i.i, label %bb13.i.i.epil, !llvm.loop !1694

bb14.loopexit.i.i:                                ; preds = %bb13.i.i.epil, %bb14.loopexit.i.i.unr-lcssa
  %_15.i.i.lcssa = phi ptr [ %_15.i.i.lcssa.ph, %bb14.loopexit.i.i.unr-lcssa ], [ %_15.i.i.epil, %bb13.i.i.epil ]
  %6 = add i64 %n, -1
  br label %bb14.i.i

bb14.i.i:                                         ; preds = %bb14.loopexit.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hcf31513a1957c6a5E.exit.i"
  %storemerge.lcssa.i.i = phi i64 [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hcf31513a1957c6a5E.exit.i" ], [ %6, %bb14.loopexit.i.i ]
  %ptr.sroa.0.0.lcssa.i.i = phi ptr [ %this.1.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hcf31513a1957c6a5E.exit.i" ], [ %_15.i.i.lcssa, %bb14.loopexit.i.i ]
  %_17.not.i.i = icmp eq i64 %n, 0
  br i1 %_17.not.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3201b135c6bc89d5E.exit", label %bb4.i.i

bb13.i.i:                                         ; preds = %bb13.i.i, %bb13.i.i.preheader.new
  %ptr.sroa.0.018.i.i = phi ptr [ %this.1.i.i, %bb13.i.i.preheader.new ], [ %_15.i.i.7, %bb13.i.i ]
  %niter = phi i64 [ 0, %bb13.i.i.preheader.new ], [ %niter.next.7, %bb13.i.i ]
  store i32 %elem, ptr %ptr.sroa.0.018.i.i, align 4, !noalias !1691
  %_15.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i, i64 4
  store i32 %elem, ptr %_15.i.i, align 4, !noalias !1691
  %_15.i.i.1 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i, i64 8
  store i32 %elem, ptr %_15.i.i.1, align 4, !noalias !1691
  %_15.i.i.2 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i, i64 12
  store i32 %elem, ptr %_15.i.i.2, align 4, !noalias !1691
  %_15.i.i.3 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i, i64 16
  store i32 %elem, ptr %_15.i.i.3, align 4, !noalias !1691
  %_15.i.i.4 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i, i64 20
  store i32 %elem, ptr %_15.i.i.4, align 4, !noalias !1691
  %_15.i.i.5 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i, i64 24
  store i32 %elem, ptr %_15.i.i.5, align 4, !noalias !1691
  %_15.i.i.6 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i, i64 28
  store i32 %elem, ptr %_15.i.i.6, align 4, !noalias !1691
  %_15.i.i.7 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i, i64 32
  %niter.next.7 = add i64 %niter, 8
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %bb14.loopexit.i.i.unr-lcssa, label %bb13.i.i

bb4.i.i:                                          ; preds = %bb14.i.i
  store i32 %elem, ptr %ptr.sroa.0.0.lcssa.i.i, align 4, !noalias !1691
  %7 = add i64 %storemerge.lcssa.i.i, 1
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3201b135c6bc89d5E.exit"

bb2.i:                                            ; preds = %start
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i), !noalias !1691
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i, i64 noundef %n, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !1691
  %_17.i = load i64, ptr %_16.i, align 8, !range !1065, !noalias !1691, !noundef !15
  %8 = trunc nuw i64 %_17.i to i1
  %9 = getelementptr inbounds nuw i8, ptr %_16.i, i64 8
  %err.0.i = load i64, ptr %9, align 8, !range !1066, !noalias !1691, !noundef !15
  %10 = getelementptr inbounds nuw i8, ptr %_16.i, i64 16
  br i1 %8, label %bb14.i, label %bb15.i, !prof !1067

bb14.i:                                           ; preds = %bb2.i
  %err.1.i = load i64, ptr %10, align 8, !noalias !1691
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i, i64 %err.1.i) #30, !noalias !1691
  unreachable

bb15.i:                                           ; preds = %bb2.i
  %res.1.i = load ptr, ptr %10, align 8, !noalias !1691, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i), !noalias !1691
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3201b135c6bc89d5E.exit"

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3201b135c6bc89d5E.exit": ; preds = %bb14.i.i, %bb4.i.i, %bb15.i
  %err.0.i.i.sink = phi i64 [ %err.0.i, %bb15.i ], [ %err.0.i.i, %bb4.i.i ], [ %err.0.i.i, %bb14.i.i ]
  %this.1.i.i.sink = phi ptr [ %res.1.i, %bb15.i ], [ %this.1.i.i, %bb4.i.i ], [ %this.1.i.i, %bb14.i.i ]
  %storemerge14.i.i.sink = phi i64 [ %n, %bb15.i ], [ %7, %bb4.i.i ], [ %storemerge.lcssa.i.i, %bb14.i.i ]
  store i64 %err.0.i.i.sink, ptr %_0, align 8, !alias.scope !1691
  %v.sroa.4.0._0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %_0, i64 8
  store ptr %this.1.i.i.sink, ptr %v.sroa.4.0._0.sroa_idx.i, align 8, !alias.scope !1691
  %v.sroa.5.0._0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %_0, i64 16
  store i64 %storemerge14.i.i.sink, ptr %v.sroa.5.0._0.sroa_idx.i, align 8, !alias.scope !1691
  ret void
}

; alloc::slice::<impl core::slice::sort::stable::BufGuard<T> for alloc::vec::Vec<T>>::with_capacity
; Function Attrs: nonlazybind uwtable
define void @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hf4e0df9c8f1398f2E"(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, i64 noundef %capacity) unnamed_addr #1 {
start:
  %_4.i = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i)
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i, i64 noundef %capacity, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %_5.i = load i64, ptr %_4.i, align 8, !range !1065, !noundef !15
  %0 = trunc nuw i64 %_5.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i, i64 8
  %err.0.i = load i64, ptr %1, align 8, !range !1066, !noundef !15
  %2 = getelementptr inbounds nuw i8, ptr %_4.i, i64 16
  br i1 %0, label %bb3.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hcf31513a1957c6a5E.exit", !prof !1067

bb3.i:                                            ; preds = %start
  %err.1.i = load i64, ptr %2, align 8
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i, i64 %err.1.i) #30
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hcf31513a1957c6a5E.exit": ; preds = %start
  %this.1.i = load ptr, ptr %2, align 8, !nonnull !15, !noundef !15
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
define { ptr, i64 } @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$19as_uninit_slice_mut17hf675ba1b4d6abb9bE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #11 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_10 = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %1, align 8, !noundef !15
  %_3 = getelementptr inbounds nuw i32, ptr %_10, i64 %count
  %self1 = load i64, ptr %self, align 8, !range !1661, !noundef !15
  %len = sub i64 %self1, %count
  %2 = insertvalue { ptr, i64 } poison, ptr %_3, 0
  %3 = insertvalue { ptr, i64 } %2, i64 %len, 1
  ret { ptr, i64 } %3
}

; <T as alloc::vec::spec_from_elem::SpecFromElem>::from_elem
; Function Attrs: nonlazybind uwtable
define void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hde15162a6a161f62E"(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %elem, i64 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_4.i = alloca [24 x i8], align 8
  %_7 = alloca [24 x i8], align 8
  %v = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %v)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i)
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i, i64 noundef %n, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %start
  %_5.i = load i64, ptr %_4.i, align 8, !range !1065, !noundef !15
  %0 = trunc nuw i64 %_5.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i, i64 8
  %err.0.i = load i64, ptr %1, align 8, !range !1066, !noundef !15
  %2 = getelementptr inbounds nuw i8, ptr %_4.i, i64 16
  br i1 %0, label %bb3.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hcf31513a1957c6a5E.exit", !prof !1067

bb3.i:                                            ; preds = %.noexc
  %err.1.i = load i64, ptr %2, align 8
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i, i64 %err.1.i) #30
          to label %.noexc3 unwind label %cleanup

.noexc3:                                          ; preds = %bb3.i
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hcf31513a1957c6a5E.exit": ; preds = %.noexc
  %this.1.i = load ptr, ptr %2, align 8, !nonnull !15, !noundef !15
  %_7.i = icmp ule i64 %n, %err.0.i
  tail call void @llvm.assume(i1 %_7.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i)
  store i64 %err.0.i, ptr %v, align 8
  %3 = getelementptr inbounds nuw i8, ptr %v, i64 8
  store ptr %this.1.i, ptr %3, align 8
  %4 = getelementptr inbounds nuw i8, ptr %v, i64 16
  store i64 0, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_7, ptr noundef nonnull align 8 dereferenceable(24) %elem, i64 24, i1 false)
; invoke alloc::vec::Vec<T,A>::extend_with
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11extend_with17ha4e69f5b705c0ba1E"(ptr noalias noundef align 8 dereferenceable(24) %v, i64 noundef %n, ptr noalias noundef align 8 captures(address) dereferenceable(24) %_7)
          to label %bb1 unwind label %cleanup1

bb5:                                              ; preds = %cleanup1, %cleanup
  %.pn = phi { ptr, i32 } [ %6, %cleanup1 ], [ %5, %cleanup ]
  %_8.sroa.0.0 = phi i1 [ false, %cleanup1 ], [ true, %cleanup ]
  br i1 %_8.sroa.0.0, label %bb4, label %bb3

cleanup:                                          ; preds = %bb3.i, %start
  %5 = landingpad { ptr, i32 }
          cleanup
  br label %bb5

cleanup1:                                         ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hcf31513a1957c6a5E.exit"
  %6 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h44214dba56b9c7e4E"(ptr noalias noundef align 8 dereferenceable(24) %v) #32
          to label %bb5 unwind label %terminate

bb1:                                              ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hcf31513a1957c6a5E.exit"
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_0, ptr noundef nonnull align 8 dereferenceable(24) %v, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v)
  ret void

terminate:                                        ; preds = %bb4, %cleanup1
  %7 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #28
  unreachable

bb3:                                              ; preds = %bb4, %bb5
  resume { ptr, i32 } %.pn

bb4:                                              ; preds = %bb5
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %elem, i64 noundef 4, i64 noundef 4)
          to label %bb3 unwind label %terminate
}

; <alloc::vec::Vec<T,A> as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hc4b1201a97f36e73E"(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #1 {
start:
  %_4.i.i = alloca [24 x i8], align 8
  %_3 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_7 = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15
  %len = load i64, ptr %_3, align 8, !noundef !15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1695)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1698
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i, i64 noundef range(i64 0, 2305843009213693952) %len, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !noalias !1698
  %_5.i.i = load i64, ptr %_4.i.i, align 8, !range !1065, !noalias !1698, !noundef !15
  %1 = trunc nuw i64 %_5.i.i to i1
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 8
  %err.0.i.i = load i64, ptr %2, align 8, !range !1066, !noalias !1698, !noundef !15
  %3 = getelementptr inbounds nuw i8, ptr %_4.i.i, i64 16
  br i1 %1, label %bb3.i.i, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17heab6df6ef8037225E.exit", !prof !1067

bb3.i.i:                                          ; preds = %start
  %err.1.i.i = load i64, ptr %3, align 8, !noalias !1698
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #30, !noalias !1698
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17heab6df6ef8037225E.exit": ; preds = %start
  %this.1.i.i = load ptr, ptr %3, align 8, !noalias !1698, !nonnull !15, !noundef !15
  %_7.i.i = icmp samesign ule i64 %len, %err.0.i.i
  tail call void @llvm.assume(i1 %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i), !noalias !1698
  store i64 %err.0.i.i, ptr %_0, align 8, !alias.scope !1695, !noalias !1700
  %4 = getelementptr inbounds nuw i8, ptr %_0, i64 8
  store ptr %this.1.i.i, ptr %4, align 8, !alias.scope !1695, !noalias !1700
  %5 = getelementptr inbounds nuw i8, ptr %_0, i64 16
  store i64 0, ptr %5, align 8, !alias.scope !1695, !noalias !1700
  %6 = shl nuw nsw i64 %len, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %this.1.i.i, ptr nonnull readonly align 4 %_7, i64 %6, i1 false), !noalias !1695
  store i64 %len, ptr %5, align 8, !alias.scope !1695, !noalias !1700
  ret void
}

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h42886b35e0f5b228E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_5 = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %len = load i64, ptr %1, align 8, !noundef !15
  br label %bb6.i

bb6.i:                                            ; preds = %bb5.i, %start
  %_3.sroa.0.0.i = phi i64 [ 0, %start ], [ %2, %bb5.i ]
  %_7.i = icmp eq i64 %_3.sroa.0.0.i, %len
  br i1 %_7.i, label %"_ZN4core3ptr57drop_in_place$LT$$u5b$alloc..vec..Vec$LT$i32$GT$$u5d$$GT$17h30587c7a845ba69fE.exit", label %bb5.i

bb5.i:                                            ; preds = %bb6.i
  %_6.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_5, i64 %_3.sroa.0.0.i
  %2 = add i64 %_3.sroa.0.0.i, 1
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_6.i, i64 noundef 4, i64 noundef 4)
          to label %bb6.i unwind label %cleanup.i

bb4.i:                                            ; preds = %bb3.i, %cleanup.i
  %_3.sroa.0.1.i = phi i64 [ %2, %cleanup.i ], [ %4, %bb3.i ]
  %_5.i = icmp eq i64 %_3.sroa.0.1.i, %len
  br i1 %_5.i, label %bb2.i, label %bb3.i

cleanup.i:                                        ; preds = %bb5.i
  %3 = landingpad { ptr, i32 }
          cleanup
  br label %bb4.i

bb3.i:                                            ; preds = %bb4.i
  %_4.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_5, i64 %_3.sroa.0.1.i
  %4 = add i64 %_3.sroa.0.1.i, 1
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_4.i, i64 noundef 4, i64 noundef 4)
          to label %bb4.i unwind label %terminate.i

bb2.i:                                            ; preds = %bb4.i
  resume { ptr, i32 } %3

terminate.i:                                      ; preds = %bb3.i
  %5 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #28
  unreachable

"_ZN4core3ptr57drop_in_place$LT$$u5b$alloc..vec..Vec$LT$i32$GT$$u5d$$GT$17h30587c7a845ba69fE.exit": ; preds = %bb6.i
  ret void
}

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6de9c668c89c0d7cE"(ptr noalias noundef readnone align 8 captures(none) dereferenceable(24) %self) unnamed_addr #7 {
start:
  ret void
}

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha2162ffd8339a436E"(ptr noalias noundef align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
; call alloc::raw_vec::RawVecInner<A>::deallocate
  tail call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef align 8 dereferenceable(16) %self, i64 noundef 8, i64 noundef 24)
  ret void
}

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf0a804c573d20746E"(ptr noalias noundef align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
; call alloc::raw_vec::RawVecInner<A>::deallocate
  tail call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef align 8 dereferenceable(16) %self, i64 noundef 4, i64 noundef 4)
  ret void
}

; <core::slice::sort::stable::merge::MergeState<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define void @"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8b474e45e515e585E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #10 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %self1 = load ptr, ptr %0, align 8, !noundef !15
  %_5 = load ptr, ptr %self, align 8, !noundef !15
  %1 = ptrtoint ptr %self1 to i64
  %2 = ptrtoint ptr %_5 to i64
  %3 = sub nuw i64 %1, %2
  %4 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %5 = load ptr, ptr %4, align 8, !noundef !15
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %5, ptr align 4 %_5, i64 %3, i1 false)
  ret void
}

; <core::hint::select_unpredictable::DropOnPanic<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN96_$LT$core..hint..select_unpredictable..DropOnPanic$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1d9cdee0af1b3040E"(ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %self) unnamed_addr #7 {
start:
  ret void
}

; <core::slice::sort::shared::smallsort::CopyOnDrop<T> as core::ops::drop::Drop>::drop
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define void @"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbcee5ce3afbb703aE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %self) unnamed_addr #10 {
start:
  %src = load ptr, ptr %self, align 8, !noundef !15
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %dst = load ptr, ptr %0, align 8, !noundef !15
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %count = load i64, ptr %1, align 8, !noundef !15
  %2 = shl i64 %count, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %dst, ptr align 4 %src, i64 %2, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define noundef range(i8 -1, 2) i8 @cmpfunc(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %a, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %b) unnamed_addr #12 {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1701)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1704)
  %_3.i = load i32, ptr %a, align 4, !alias.scope !1701, !noalias !1704, !noundef !15
  %_4.i = load i32, ptr %b, align 4, !alias.scope !1704, !noalias !1701, !noundef !15
  %_0.i = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32 %_3.i, i32 %_4.i)
  ret i8 %_0.i
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %X, ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %Y) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %_42 = alloca [16 x i8], align 8
  %_35 = alloca [16 x i8], align 8
  %_8 = alloca [24 x i8], align 8
  %L = alloca [24 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %X, i64 16
  %_0.i = load i64, ptr %0, align 8, !alias.scope !1706, !noundef !15
  %_2.i = icmp sgt i64 %_0.i, -1
  tail call void @llvm.assume(i1 %_2.i)
  %1 = getelementptr inbounds nuw i8, ptr %Y, i64 16
  %_0.i15 = load i64, ptr %1, align 8, !alias.scope !1709, !noundef !15
  %_2.i16 = icmp sgt i64 %_0.i15, -1
  tail call void @llvm.assume(i1 %_2.i16)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %L)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_8)
  %_9 = add nuw i64 %_0.i15, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1712)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1715)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1718
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %_9, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %cleanup

bb51:                                             ; preds = %cleanup2, %cleanup
  %.pn = phi { ptr, i32 } [ %18, %cleanup2 ], [ %2, %cleanup ]
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcbe033eebee81fb1E"(ptr noalias noundef align 8 dereferenceable(24) %Y) #32
          to label %bb52 unwind label %terminate

cleanup:                                          ; preds = %_ZN5alloc3vec9from_elem17had7d64d6a4a48132E.exit, %bb14.i.i, %start, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE.exit"
  %2 = landingpad { ptr, i32 }
          cleanup
  br label %bb51

.noexc:                                           ; preds = %start
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1065, !noalias !1718, !noundef !15
  %3 = trunc nuw i64 %_17.i.i to i1
  %4 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %4, align 8, !range !1066, !noalias !1718, !noundef !15
  %5 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %3, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17had7d64d6a4a48132E.exit, !prof !1067

bb14.i.i:                                         ; preds = %.noexc
  %err.1.i.i = load i64, ptr %5, align 8, !noalias !1718
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #30
          to label %.noexc17 unwind label %cleanup

.noexc17:                                         ; preds = %bb14.i.i
  unreachable

_ZN5alloc3vec9from_elem17had7d64d6a4a48132E.exit: ; preds = %.noexc
  %res.1.i.i = load ptr, ptr %5, align 8, !noalias !1718, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1718
  store i64 %err.0.i.i, ptr %_8, align 8, !alias.scope !1718
  %6 = getelementptr inbounds nuw i8, ptr %_8, i64 8
  store ptr %res.1.i.i, ptr %6, align 8, !alias.scope !1718
  %7 = getelementptr inbounds nuw i8, ptr %_8, i64 16
  store i64 %_9, ptr %7, align 8, !alias.scope !1718
; invoke <T as alloc::vec::spec_from_elem::SpecFromElem>::from_elem
  invoke void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hde15162a6a161f62E"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %L, ptr noalias noundef align 8 captures(address) dereferenceable(24) %_8, i64 noundef 2)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %_ZN5alloc3vec9from_elem17had7d64d6a4a48132E.exit
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_8)
  %8 = getelementptr inbounds nuw i8, ptr %X, i64 8
  %9 = getelementptr inbounds nuw i8, ptr %_35, i64 8
  %10 = getelementptr inbounds nuw i8, ptr %Y, i64 8
  %11 = getelementptr inbounds nuw i8, ptr %_42, i64 8
  %12 = getelementptr inbounds nuw i8, ptr %L, i64 16
  %13 = getelementptr inbounds nuw i8, ptr %L, i64 8
  %14 = getelementptr inbounds nuw i8, ptr %L, i64 16
  %15 = getelementptr inbounds nuw i8, ptr %L, i64 8
  %16 = getelementptr inbounds nuw i8, ptr %L, i64 16
  %17 = getelementptr inbounds nuw i8, ptr %L, i64 8
  %_0.i3.i.i353 = icmp ne i64 %_0.i, 0
  %spec.select354 = zext i1 %_0.i3.i.i353 to i64
  %not._0.i3.i.i353 = xor i1 %_0.i3.i.i353, true
  %iter.sroa.7.1355 = zext i1 %not._0.i3.i.i353 to i8
  %_0.i3.i.i39347 = icmp ne i64 %_0.i15, 0
  %spec.select133348 = zext i1 %_0.i3.i.i39347 to i64
  %not._0.i3.i.i39347 = xor i1 %_0.i3.i.i39347, true
  %iter1.sroa.7.1349 = zext i1 %not._0.i3.i.i39347 to i8
  br label %bb10

cleanup2:                                         ; preds = %panic.i.i127.invoke
  %18 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h44214dba56b9c7e4E"(ptr noalias noundef align 8 dereferenceable(24) %L) #32
          to label %bb51 unwind label %terminate

bb7.loopexit:                                     ; preds = %bb44
  %_10.i.i = trunc nuw i8 %iter.sroa.7.1358 to i1
  %_0.i.not.i.i = icmp ugt i64 %iter.sroa.0.1357, %_0.i
  %or.cond135 = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp ult i64 %iter.sroa.0.1357, %_0.i
  %not.or.cond135 = xor i1 %or.cond135, true
  %narrow = select i1 %not.or.cond135, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i64
  %iter.sroa.0.1 = add nuw i64 %iter.sroa.0.1357, %spec.select
  %19 = select i1 %or.cond135, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %19, i8 %iter.sroa.7.1358, i8 1
  br i1 %or.cond135, label %bb11, label %bb10

bb10:                                             ; preds = %bb4, %bb7.loopexit
  %iter.sroa.7.1358 = phi i8 [ %iter.sroa.7.1355, %bb4 ], [ %iter.sroa.7.1, %bb7.loopexit ]
  %iter.sroa.0.1357 = phi i64 [ %spec.select354, %bb4 ], [ %iter.sroa.0.1, %bb7.loopexit ]
  %iter.sroa.0.0356 = phi i64 [ 0, %bb4 ], [ %iter.sroa.0.1357, %bb7.loopexit ]
  %20 = and i64 %iter.sroa.0.0356, 1
  %_25 = icmp eq i64 %iter.sroa.0.0356, 0
  %_38 = add i64 %iter.sroa.0.0356, -1
  %_61 = xor i64 %20, 1
  %_50 = xor i64 %20, 1
  br label %bb16

bb11:                                             ; preds = %bb7.loopexit
  %21 = getelementptr inbounds nuw i8, ptr %L, i64 16
  %len.i = load i64, ptr %21, align 8, !alias.scope !1719, !noalias !1722, !noundef !15
  %_4.i.i = icmp samesign ult i64 %20, %len.i
  br i1 %_4.i.i, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit", label %panic.i.i127.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit": ; preds = %bb11
  %22 = getelementptr inbounds nuw i8, ptr %L, i64 8
  %_6.i = load ptr, ptr %22, align 8, !alias.scope !1719, !noalias !1722, !nonnull !15, !noundef !15
  %_0.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i, i64 %20
  %23 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 16
  %len.i20 = load i64, ptr %23, align 8, !alias.scope !1724, !noalias !1727, !noundef !15
  %_4.i.i21 = icmp ult i64 %_0.i15, %len.i20
  br i1 %_4.i.i21, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE.exit", label %panic.i.i127.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit"
  %24 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 8
  %_6.i23 = load ptr, ptr %24, align 8, !alias.scope !1724, !noalias !1727, !nonnull !15, !noundef !15
  %_0.i.i24 = getelementptr inbounds nuw i32, ptr %_6.i23, i64 %_0.i15
  %_0 = load i32, ptr %_0.i.i24, align 4, !noundef !15
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h44214dba56b9c7e4E"(ptr noalias noundef align 8 dereferenceable(24) %L)
          to label %bb47 unwind label %cleanup

bb47:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE.exit"
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %L)
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %Y)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h16fb91a53d81c8f8E.exit.i" unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %bb47
  %25 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %Y)
          to label %bb52 unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %26 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #28
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h16fb91a53d81c8f8E.exit.i": ; preds = %bb47
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %Y)
          to label %bb48 unwind label %cleanup3

bb52:                                             ; preds = %cleanup3, %cleanup.i.i, %bb51
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb51 ], [ %27, %cleanup3 ], [ %25, %cleanup.i.i ]
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcbe033eebee81fb1E"(ptr noalias noundef align 8 dereferenceable(24) %X) #32
          to label %common.resume unwind label %terminate

cleanup3:                                         ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h16fb91a53d81c8f8E.exit.i"
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %bb52

bb48:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h16fb91a53d81c8f8E.exit.i"
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %X)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcbe033eebee81fb1E.exit31" unwind label %cleanup.i.i27

cleanup.i.i27:                                    ; preds = %bb48
  %28 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %X)
          to label %common.resume unwind label %terminate.i.i28

terminate.i.i28:                                  ; preds = %cleanup.i.i27
  %29 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #28
  unreachable

common.resume:                                    ; preds = %bb52, %cleanup.i.i27
  %common.resume.op = phi { ptr, i32 } [ %28, %cleanup.i.i27 ], [ %.pn.pn, %bb52 ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcbe033eebee81fb1E.exit31": ; preds = %bb48
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %X)
  ret i32 %_0

bb16:                                             ; preds = %bb10, %bb44
  %_0.sroa.3.0.i.i41352 = phi i64 [ 0, %bb10 ], [ %_0.sroa.3.0.i.i41, %bb44 ]
  %iter1.sroa.7.1351 = phi i8 [ %iter1.sroa.7.1349, %bb10 ], [ %iter1.sroa.7.1, %bb44 ]
  %iter1.sroa.0.1350 = phi i64 [ %spec.select133348, %bb10 ], [ %iter1.sroa.0.1, %bb44 ]
  %_26 = icmp eq i64 %_0.sroa.3.0.i.i41352, 0
  %or.cond = or i1 %_25, %_26
  br i1 %or.cond, label %bb19, label %bb22

bb19:                                             ; preds = %bb16
  %len.i46 = load i64, ptr %16, align 8, !alias.scope !1729, !noalias !1732, !noundef !15
  %_4.i.i47 = icmp samesign ult i64 %20, %len.i46
  br i1 %_4.i.i47, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7a0ce9ec0489349aE.exit", label %panic.i.i127.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7a0ce9ec0489349aE.exit": ; preds = %bb19
  %_6.i49 = load ptr, ptr %17, align 8, !alias.scope !1729, !noalias !1732, !nonnull !15, !noundef !15
  %_0.i.i50 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i49, i64 %20
  %30 = getelementptr inbounds nuw i8, ptr %_0.i.i50, i64 16
  %len.i125 = load i64, ptr %30, align 8, !alias.scope !1734, !noalias !1737, !noundef !15
  %_4.i.i126 = icmp ult i64 %_0.sroa.3.0.i.i41352, %len.i125
  br i1 %_4.i.i126, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48659c87ff6e3cb4E.exit131", label %panic.i.i127.invoke

bb22:                                             ; preds = %bb16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_35)
  %_6.i.i = load ptr, ptr %8, align 8, !alias.scope !1739, !nonnull !15, !noundef !15
  %len.i.i = load i64, ptr %0, align 8, !alias.scope !1739, !noundef !15
  %_7.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %len.i.i
  store ptr %_6.i.i, ptr %_35, align 8
  store ptr %_7.i, ptr %9, align 8
; call core::iter::traits::iterator::Iterator::nth
  %31 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hd6310bf1b462ad66E(ptr noalias noundef align 8 dereferenceable(16) %_35, i64 noundef %_38)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_42)
  %_6.i.i52 = load ptr, ptr %10, align 8, !alias.scope !1744, !nonnull !15, !noundef !15
  %len.i.i53 = load i64, ptr %1, align 8, !alias.scope !1744, !noundef !15
  %_7.i54 = getelementptr inbounds nuw i8, ptr %_6.i.i52, i64 %len.i.i53
  store ptr %_6.i.i52, ptr %_42, align 8
  store ptr %_7.i54, ptr %11, align 8
  %_45 = add i64 %_0.sroa.3.0.i.i41352, -1
; call core::iter::traits::iterator::Iterator::nth
  %32 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hd6310bf1b462ad66E(ptr noalias noundef align 8 dereferenceable(16) %_42, i64 noundef %_45)
  %_0.sroa.0.0.shrunk.i = icmp eq i32 %32, %31
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_42)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_35)
  br i1 %_0.sroa.0.0.shrunk.i, label %bb30, label %bb35

bb35:                                             ; preds = %bb22
  %len.i55 = load i64, ptr %12, align 8, !alias.scope !1749, !noalias !1752, !noundef !15
  %_4.i.i56 = icmp samesign ult i64 %_61, %len.i55
  br i1 %_4.i.i56, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit61", label %panic.i.i127.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit61": ; preds = %bb35
  %_6.i58 = load ptr, ptr %13, align 8, !alias.scope !1749, !noalias !1752, !nonnull !15, !noundef !15
  %_0.i.i59 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i58, i64 %_61
  %33 = getelementptr inbounds nuw i8, ptr %_0.i.i59, i64 16
  %len.i69 = load i64, ptr %33, align 8, !alias.scope !1754, !noalias !1757, !noundef !15
  %_4.i.i70 = icmp ult i64 %_0.sroa.3.0.i.i41352, %len.i69
  br i1 %_4.i.i70, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE.exit75", label %panic.i.i127.invoke

bb30:                                             ; preds = %bb22
  %len.i62 = load i64, ptr %14, align 8, !alias.scope !1759, !noalias !1762, !noundef !15
  %_4.i.i63 = icmp samesign ult i64 %_50, %len.i62
  br i1 %_4.i.i63, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit68", label %panic.i.i127.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit68": ; preds = %bb30
  %_6.i65 = load ptr, ptr %15, align 8, !alias.scope !1759, !noalias !1762, !nonnull !15, !noundef !15
  %_0.i.i66 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i65, i64 %_50
  %34 = getelementptr inbounds nuw i8, ptr %_0.i.i66, i64 16
  %len.i104 = load i64, ptr %34, align 8, !alias.scope !1764, !noalias !1767, !noundef !15
  %_4.i.i105 = icmp ult i64 %_45, %len.i104
  br i1 %_4.i.i105, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE.exit110", label %panic.i.i127.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE.exit75": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit61"
  %35 = getelementptr inbounds nuw i8, ptr %_0.i.i59, i64 8
  %_6.i72 = load ptr, ptr %35, align 8, !alias.scope !1754, !noalias !1757, !nonnull !15, !noundef !15
  %_0.i.i73 = getelementptr inbounds nuw i32, ptr %_6.i72, i64 %_0.sroa.3.0.i.i41352
  %_57 = load i32, ptr %_0.i.i73, align 4, !noundef !15
  %_4.i.i77 = icmp samesign ult i64 %20, %len.i55
  br i1 %_4.i.i77, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit82", label %panic.i.i127.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit82": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE.exit75"
  %_0.i.i80 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i58, i64 %20
  %36 = getelementptr inbounds nuw i8, ptr %_0.i.i80, i64 16
  %len.i83 = load i64, ptr %36, align 8, !alias.scope !1769, !noalias !1772, !noundef !15
  %_4.i.i84 = icmp ult i64 %_45, %len.i83
  br i1 %_4.i.i84, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE.exit89", label %panic.i.i127.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE.exit89": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit82"
  %_4.i.i99 = icmp ult i64 %_0.sroa.3.0.i.i41352, %len.i83
  br i1 %_4.i.i99, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48659c87ff6e3cb4E.exit", label %panic.i.i127.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48659c87ff6e3cb4E.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE.exit89"
  %37 = getelementptr inbounds nuw i8, ptr %_0.i.i80, i64 8
  %_6.i86 = load ptr, ptr %37, align 8, !alias.scope !1769, !noalias !1772, !nonnull !15, !noundef !15
  %_0.i.i87 = getelementptr inbounds nuw i32, ptr %_6.i86, i64 %_45
  %_63 = load i32, ptr %_0.i.i87, align 4, !noundef !15
  %_0.sroa.0.0.i.i90 = call noundef i32 @llvm.smax.i32(i32 %_63, i32 %_57)
  %_0.i.i102 = getelementptr inbounds nuw i32, ptr %_6.i86, i64 %_0.sroa.3.0.i.i41352
  store i32 %_0.sroa.0.0.i.i90, ptr %_0.i.i102, align 4
  br label %bb44

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE.exit110": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit68"
  %38 = getelementptr inbounds nuw i8, ptr %_0.i.i66, i64 8
  %_6.i107 = load ptr, ptr %38, align 8, !alias.scope !1764, !noalias !1767, !nonnull !15, !noundef !15
  %_0.i.i108 = getelementptr inbounds nuw i32, ptr %_6.i107, i64 %_45
  %_46 = load i32, ptr %_0.i.i108, align 4, !noundef !15
  %_4.i.i112 = icmp samesign ult i64 %20, %len.i62
  br i1 %_4.i.i112, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7a0ce9ec0489349aE.exit117", label %panic.i.i127.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7a0ce9ec0489349aE.exit117": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE.exit110"
  %_0.i.i115 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i65, i64 %20
  %39 = getelementptr inbounds nuw i8, ptr %_0.i.i115, i64 16
  %len.i118 = load i64, ptr %39, align 8, !alias.scope !1774, !noalias !1777, !noundef !15
  %_4.i.i119 = icmp ult i64 %_0.sroa.3.0.i.i41352, %len.i118
  br i1 %_4.i.i119, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48659c87ff6e3cb4E.exit124", label %panic.i.i127.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48659c87ff6e3cb4E.exit124": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7a0ce9ec0489349aE.exit117"
  %40 = getelementptr inbounds nuw i8, ptr %_0.i.i115, i64 8
  %_6.i121 = load ptr, ptr %40, align 8, !alias.scope !1774, !noalias !1777, !nonnull !15, !noundef !15
  %_0.i.i122 = getelementptr inbounds nuw i32, ptr %_6.i121, i64 %_0.sroa.3.0.i.i41352
  %41 = add i32 %_46, 1
  store i32 %41, ptr %_0.i.i122, align 4
  br label %bb44

bb44:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48659c87ff6e3cb4E.exit", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48659c87ff6e3cb4E.exit124", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48659c87ff6e3cb4E.exit131"
  %_10.i.i32 = trunc nuw i8 %iter1.sroa.7.1351 to i1
  %_0.i.not.i.i37 = icmp ugt i64 %iter1.sroa.0.1350, %_0.i15
  %or.cond136 = select i1 %_10.i.i32, i1 true, i1 %_0.i.not.i.i37
  %_0.i3.i.i39 = icmp ult i64 %iter1.sroa.0.1350, %_0.i15
  %not.or.cond136 = xor i1 %or.cond136, true
  %narrow272 = select i1 %not.or.cond136, i1 %_0.i3.i.i39, i1 false
  %spec.select133 = zext i1 %narrow272 to i64
  %iter1.sroa.0.1 = add nuw i64 %iter1.sroa.0.1350, %spec.select133
  %42 = select i1 %or.cond136, i1 true, i1 %_0.i3.i.i39
  %iter1.sroa.7.1 = select i1 %42, i8 %iter1.sroa.7.1351, i8 1
  %_0.sroa.3.0.i.i41 = select i1 %_10.i.i32, i64 undef, i64 %iter1.sroa.0.1350
  br i1 %or.cond136, label %bb7.loopexit, label %bb16

panic.i.i127.invoke:                              ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7a0ce9ec0489349aE.exit", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7a0ce9ec0489349aE.exit117", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE.exit110", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit68", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE.exit89", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit82", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE.exit75", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit61", %bb30, %bb35, %bb19, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit", %bb11
  %43 = phi i64 [ %20, %bb11 ], [ %_0.i15, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit" ], [ %_0.sroa.3.0.i.i41352, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7a0ce9ec0489349aE.exit" ], [ %_0.sroa.3.0.i.i41352, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7a0ce9ec0489349aE.exit117" ], [ %20, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE.exit110" ], [ %_45, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit68" ], [ %_0.sroa.3.0.i.i41352, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE.exit89" ], [ %_45, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit82" ], [ %20, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE.exit75" ], [ %_0.sroa.3.0.i.i41352, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit61" ], [ %_50, %bb30 ], [ %_61, %bb35 ], [ %20, %bb19 ]
  %44 = phi i64 [ %len.i, %bb11 ], [ %len.i20, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit" ], [ %len.i125, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7a0ce9ec0489349aE.exit" ], [ %len.i118, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7a0ce9ec0489349aE.exit117" ], [ %len.i62, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE.exit110" ], [ %len.i104, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit68" ], [ %len.i83, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE.exit89" ], [ %len.i83, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit82" ], [ %len.i55, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE.exit75" ], [ %len.i69, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit61" ], [ %len.i62, %bb30 ], [ %len.i55, %bb35 ], [ %len.i46, %bb19 ]
  %45 = phi ptr [ @alloc_e5cea990743572c516560e03329fb198, %bb11 ], [ @alloc_8cb7c192ee1ec0060ed9f767f36f2c9e, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit" ], [ @alloc_f5e2ee6bccd6b724dfb61b6dd55a2ee7, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7a0ce9ec0489349aE.exit" ], [ @alloc_4a22b1a21adf3638edf77849667ba91c, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7a0ce9ec0489349aE.exit117" ], [ @alloc_cf20fb0e18c4ea37932feaeda39df7cf, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE.exit110" ], [ @alloc_f1e41b190b84bd02d38089fab6d74940, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit68" ], [ @alloc_a9c490451cd9c7d3a440aacf8c0d7183, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE.exit89" ], [ @alloc_037f547cb5df5bedfad12176aeb72b79, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit82" ], [ @alloc_d0e34cd241e8189c6593b7385f5f379c, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE.exit75" ], [ @alloc_7ecdd2b7719c07fbecfa7e040c70555b, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E.exit61" ], [ @alloc_d5ba85c33213dac699e5ee0a47dd0a37, %bb30 ], [ @alloc_455f6da57be4aa27106e364f8d7b8599, %bb35 ], [ @alloc_a99a63d008f34bc6907e6f9478a494d7, %bb19 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %43, i64 noundef range(i64 0, 2305843009213693952) %44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %45) #29
          to label %panic.i.i127.cont unwind label %cleanup2

panic.i.i127.cont:                                ; preds = %panic.i.i127.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48659c87ff6e3cb4E.exit131": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7a0ce9ec0489349aE.exit"
  %46 = getelementptr inbounds nuw i8, ptr %_0.i.i50, i64 8
  %_6.i128 = load ptr, ptr %46, align 8, !alias.scope !1734, !noalias !1737, !nonnull !15, !noundef !15
  %_0.i.i129 = getelementptr inbounds nuw i32, ptr %_6.i128, i64 %_0.sroa.3.0.i.i41352
  store i32 0, ptr %_0.i.i129, align 4
  br label %bb44

terminate:                                        ; preds = %bb52, %bb51, %cleanup2
  %47 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #28
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i64 0, 2305843009213693952) i64 @len(ptr noalias noundef nonnull readonly align 4 captures(none) %arr.0, i64 noundef returned range(i64 0, 2305843009213693952) %arr.1) unnamed_addr #7 {
start:
  ret i64 %arr.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i32 @max(i32 noundef %x, i32 noundef %y) unnamed_addr #7 {
start:
  %x.y = tail call i32 @llvm.smax.i32(i32 %x, i32 %y)
  ret i32 %x.y
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i32 @min(i32 noundef %x, i32 noundef %y) unnamed_addr #7 {
start:
  %x.y = tail call i32 @llvm.smin.i32(i32 %x, i32 %y)
  ret i32 %x.y
}

; Function Attrs: nonlazybind uwtable
define void @sort(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %compare.i = alloca [0 x i8], align 1
  %is_less.i.i = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1779
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !1782
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h46759f9e634aababE.exit", label %bb7.i.i, !prof !1786

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !1786

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17hdfd7fa55f1643b16E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h46759f9e634aababE.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h24e57d9a9cc53bfaE(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i64 noundef 1, ptr noalias align 8 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h46759f9e634aababE.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h46759f9e634aababE.exit": ; preds = %start, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1779
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #13

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32, i32) #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #17

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
declare void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; core::panicking::panic_in_cleanup
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() unnamed_addr #18

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
declare void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; core::panicking::panic_fmt
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17ha4414e4328fe24a0E(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #19

; core::panicking::panic_bounds_check
; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #20

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #21

; core::slice::sort::shared::smallsort::panic_on_ord_violation
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hc77a22a2d50782cdE() unnamed_addr #19

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #22

; core::slice::index::slice_index_fail
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #19

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #15

; core::slice::sort::stable::drift::sqrt_approx
; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h72a4dc1ae46294f4E(i64 noundef) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #15

; alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
; Function Attrs: cold nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h3fb8db3e79fd71d4E"(ptr noalias noundef align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #23

; alloc::raw_vec::RawVecInner<A>::try_allocate_in
; Function Attrs: nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; alloc::raw_vec::handle_error
; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #24

; alloc::raw_vec::RawVecInner<A>::deallocate
; Function Attrs: nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef align 8 dereferenceable(16), i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #26

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #27

attributes #0 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nofree norecurse nosync nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #18 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #22 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #23 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #28 = { cold noreturn nounwind }
attributes #29 = { noinline noreturn }
attributes #30 = { noreturn }
attributes #31 = { noinline }
attributes #32 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.93.1 (01f6ddf75 2026-02-11)"}
!3 = !{!4}
!4 = distinct !{!4, !5, !"_ZN4core3ptr10swap_chunk17h3a2521edac2849adE: %x"}
!5 = distinct !{!5, !"_ZN4core3ptr10swap_chunk17h3a2521edac2849adE"}
!6 = !{!7}
!7 = distinct !{!7, !5, !"_ZN4core3ptr10swap_chunk17h3a2521edac2849adE: %y"}
!8 = !{!9}
!9 = distinct !{!9, !5, !"_ZN4core3ptr10swap_chunk17h3a2521edac2849adE: %x:It1"}
!10 = !{!11}
!11 = distinct !{!11, !5, !"_ZN4core3ptr10swap_chunk17h3a2521edac2849adE: %y:It1"}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h42886b35e0f5b228E: %self"}
!14 = distinct !{!14, !"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h42886b35e0f5b228E"}
!15 = !{}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E: %self"}
!18 = distinct !{!18, !"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"}
!19 = !{!20, !17}
!20 = distinct !{!20, !21, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h8eeb9acba87c6f96E: %self"}
!21 = distinct !{!21, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h8eeb9acba87c6f96E"}
!22 = !{!23, !17}
!23 = distinct !{!23, !24, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h8eeb9acba87c6f96E: %self"}
!24 = distinct !{!24, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h8eeb9acba87c6f96E"}
!25 = !{!26, !17}
!26 = distinct !{!26, !27, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h8eeb9acba87c6f96E: %self"}
!27 = distinct !{!27, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h8eeb9acba87c6f96E"}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E: %self"}
!30 = distinct !{!30, !"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E"}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_ZN4core3str11validations15next_code_point17hfed442e9a3bc48e6E: %bytes"}
!33 = distinct !{!33, !"_ZN4core3str11validations15next_code_point17hfed442e9a3bc48e6E"}
!34 = !{!35, !32, !29}
!35 = distinct !{!35, !36, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4d692be219c9982E: %self"}
!36 = distinct !{!36, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4d692be219c9982E"}
!37 = !{!32, !29}
!38 = !{!39, !32, !29}
!39 = distinct !{!39, !40, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4d692be219c9982E: %self"}
!40 = distinct !{!40, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4d692be219c9982E"}
!41 = !{!42, !32, !29}
!42 = distinct !{!42, !43, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4d692be219c9982E: %self"}
!43 = distinct !{!43, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4d692be219c9982E"}
!44 = !{!45, !32, !29}
!45 = distinct !{!45, !46, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4d692be219c9982E: %self"}
!46 = distinct !{!46, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc4d692be219c9982E"}
!47 = !{!48}
!48 = distinct !{!48, !49, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!49 = distinct !{!49, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!50 = !{!51}
!51 = distinct !{!51, !49, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!54 = distinct !{!54, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZN4core5slice4sort6shared5pivot7median317h204a7c44ebc71d33E: %c"}
!57 = distinct !{!57, !"_ZN4core5slice4sort6shared5pivot7median317h204a7c44ebc71d33E"}
!58 = !{!59}
!59 = distinct !{!59, !54, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!60 = !{!61}
!61 = distinct !{!61, !62, !"cmpfunc: %a"}
!62 = distinct !{!62, !"cmpfunc"}
!63 = !{!64}
!64 = distinct !{!64, !62, !"cmpfunc: %b"}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!67 = distinct !{!67, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!68 = !{!69}
!69 = distinct !{!69, !67, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!70 = !{!66, !61, !53, !48}
!71 = !{!69, !64, !59, !51, !56}
!72 = !{!69, !64, !59, !51}
!73 = !{!66, !61, !53, !48, !56}
!74 = !{!75, !77, !79, !81}
!75 = distinct !{!75, !76, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!76 = distinct !{!76, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!77 = distinct !{!77, !78, !"cmpfunc: %b"}
!78 = distinct !{!78, !"cmpfunc"}
!79 = distinct !{!79, !80, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!80 = distinct !{!80, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!81 = distinct !{!81, !82, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!82 = distinct !{!82, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!83 = !{!84, !85, !86, !87}
!84 = distinct !{!84, !76, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!85 = distinct !{!85, !78, !"cmpfunc: %a"}
!86 = distinct !{!86, !80, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!87 = distinct !{!87, !82, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!90 = distinct !{!90, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!91 = !{!92}
!92 = distinct !{!92, !90, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!93 = !{!94}
!94 = distinct !{!94, !95, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!95 = distinct !{!95, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!96 = !{!97}
!97 = distinct !{!97, !95, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!98 = !{!99}
!99 = distinct !{!99, !100, !"cmpfunc: %a"}
!100 = distinct !{!100, !"cmpfunc"}
!101 = !{!102}
!102 = distinct !{!102, !100, !"cmpfunc: %b"}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!105 = distinct !{!105, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!106 = !{!107}
!107 = distinct !{!107, !105, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!108 = !{!104, !99, !94, !89}
!109 = !{!107, !102, !97, !92}
!110 = !{!111, !113, !115, !117}
!111 = distinct !{!111, !112, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!112 = distinct !{!112, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!113 = distinct !{!113, !114, !"cmpfunc: %b"}
!114 = distinct !{!114, !"cmpfunc"}
!115 = distinct !{!115, !116, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!116 = distinct !{!116, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!117 = distinct !{!117, !118, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!118 = distinct !{!118, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!119 = !{!120, !121, !122, !123}
!120 = distinct !{!120, !112, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!121 = distinct !{!121, !114, !"cmpfunc: %a"}
!122 = distinct !{!122, !116, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!123 = distinct !{!123, !118, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!124 = !{!125, !127}
!125 = distinct !{!125, !126, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbcee5ce3afbb703aE: %self"}
!126 = distinct !{!126, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbcee5ce3afbb703aE"}
!127 = distinct !{!127, !128, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h201bae68fa4ed4d0E: %_1"}
!128 = distinct !{!128, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h201bae68fa4ed4d0E"}
!129 = !{!130}
!130 = distinct !{!130, !131, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!131 = distinct !{!131, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!132 = !{!133}
!133 = distinct !{!133, !131, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!134 = !{!135}
!135 = distinct !{!135, !136, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!136 = distinct !{!136, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!137 = !{!138}
!138 = distinct !{!138, !136, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!139 = !{!140}
!140 = distinct !{!140, !141, !"cmpfunc: %a"}
!141 = distinct !{!141, !"cmpfunc"}
!142 = !{!143}
!143 = distinct !{!143, !141, !"cmpfunc: %b"}
!144 = !{!145}
!145 = distinct !{!145, !146, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!146 = distinct !{!146, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!147 = !{!148}
!148 = distinct !{!148, !146, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!149 = !{!145, !140, !135, !130}
!150 = !{!148, !143, !138, !133}
!151 = !{!152}
!152 = distinct !{!152, !153, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!153 = distinct !{!153, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!154 = !{!155}
!155 = distinct !{!155, !153, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!156 = !{!157}
!157 = distinct !{!157, !158, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!158 = distinct !{!158, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!159 = !{!160}
!160 = distinct !{!160, !158, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!161 = !{!162}
!162 = distinct !{!162, !163, !"cmpfunc: %a"}
!163 = distinct !{!163, !"cmpfunc"}
!164 = !{!165}
!165 = distinct !{!165, !163, !"cmpfunc: %b"}
!166 = !{!167}
!167 = distinct !{!167, !168, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!168 = distinct !{!168, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!169 = !{!170}
!170 = distinct !{!170, !168, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!171 = !{!167, !162, !157, !152}
!172 = !{!170, !165, !160, !155}
!173 = !{!174}
!174 = distinct !{!174, !175, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!175 = distinct !{!175, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!176 = !{!177}
!177 = distinct !{!177, !175, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!178 = !{!179}
!179 = distinct !{!179, !180, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!180 = distinct !{!180, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!181 = !{!182}
!182 = distinct !{!182, !180, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!183 = !{!184}
!184 = distinct !{!184, !185, !"cmpfunc: %a"}
!185 = distinct !{!185, !"cmpfunc"}
!186 = !{!187}
!187 = distinct !{!187, !185, !"cmpfunc: %b"}
!188 = !{!189}
!189 = distinct !{!189, !190, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!190 = distinct !{!190, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!191 = !{!192}
!192 = distinct !{!192, !190, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!193 = !{!189, !184, !179, !174}
!194 = !{!192, !187, !182, !177}
!195 = !{!196}
!196 = distinct !{!196, !197, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!197 = distinct !{!197, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!198 = !{!199}
!199 = distinct !{!199, !197, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!200 = !{!201}
!201 = distinct !{!201, !202, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!202 = distinct !{!202, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!203 = !{!204}
!204 = distinct !{!204, !202, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!205 = !{!206}
!206 = distinct !{!206, !207, !"cmpfunc: %a"}
!207 = distinct !{!207, !"cmpfunc"}
!208 = !{!209}
!209 = distinct !{!209, !207, !"cmpfunc: %b"}
!210 = !{!211}
!211 = distinct !{!211, !212, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!212 = distinct !{!212, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!213 = !{!214}
!214 = distinct !{!214, !212, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!215 = !{!211, !206, !201, !196}
!216 = !{!214, !209, !204, !199}
!217 = !{!218}
!218 = distinct !{!218, !219, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!219 = distinct !{!219, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!220 = !{!221}
!221 = distinct !{!221, !219, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!222 = !{!223}
!223 = distinct !{!223, !224, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!224 = distinct !{!224, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!225 = !{!226}
!226 = distinct !{!226, !224, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!227 = !{!228}
!228 = distinct !{!228, !229, !"cmpfunc: %a"}
!229 = distinct !{!229, !"cmpfunc"}
!230 = !{!231}
!231 = distinct !{!231, !229, !"cmpfunc: %b"}
!232 = !{!233}
!233 = distinct !{!233, !234, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!234 = distinct !{!234, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!235 = !{!236}
!236 = distinct !{!236, !234, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!237 = !{!233, !228, !223, !218}
!238 = !{!236, !231, !226, !221}
!239 = !{!240}
!240 = distinct !{!240, !241, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!241 = distinct !{!241, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!242 = !{!243}
!243 = distinct !{!243, !241, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!244 = !{!245}
!245 = distinct !{!245, !246, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!246 = distinct !{!246, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!247 = !{!248}
!248 = distinct !{!248, !246, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!249 = !{!250}
!250 = distinct !{!250, !251, !"cmpfunc: %a"}
!251 = distinct !{!251, !"cmpfunc"}
!252 = !{!253}
!253 = distinct !{!253, !251, !"cmpfunc: %b"}
!254 = !{!255}
!255 = distinct !{!255, !256, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!256 = distinct !{!256, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!257 = !{!258}
!258 = distinct !{!258, !256, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!259 = !{!255, !250, !245, !240}
!260 = !{!258, !253, !248, !243}
!261 = !{!262}
!262 = distinct !{!262, !263, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!263 = distinct !{!263, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!264 = !{!265}
!265 = distinct !{!265, !263, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!266 = !{!267}
!267 = distinct !{!267, !268, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!268 = distinct !{!268, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!269 = !{!270}
!270 = distinct !{!270, !268, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!271 = !{!272}
!272 = distinct !{!272, !273, !"cmpfunc: %a"}
!273 = distinct !{!273, !"cmpfunc"}
!274 = !{!275}
!275 = distinct !{!275, !273, !"cmpfunc: %b"}
!276 = !{!277}
!277 = distinct !{!277, !278, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!278 = distinct !{!278, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!279 = !{!280}
!280 = distinct !{!280, !278, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!281 = !{!277, !272, !267, !262}
!282 = !{!280, !275, !270, !265}
!283 = !{!284}
!284 = distinct !{!284, !285, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!285 = distinct !{!285, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!286 = !{!287}
!287 = distinct !{!287, !285, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!288 = !{!289}
!289 = distinct !{!289, !290, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!290 = distinct !{!290, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!291 = !{!292}
!292 = distinct !{!292, !290, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!293 = !{!294}
!294 = distinct !{!294, !295, !"cmpfunc: %a"}
!295 = distinct !{!295, !"cmpfunc"}
!296 = !{!297}
!297 = distinct !{!297, !295, !"cmpfunc: %b"}
!298 = !{!299}
!299 = distinct !{!299, !300, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!300 = distinct !{!300, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!301 = !{!302}
!302 = distinct !{!302, !300, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!303 = !{!299, !294, !289, !284}
!304 = !{!302, !297, !292, !287}
!305 = !{!306}
!306 = distinct !{!306, !307, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!307 = distinct !{!307, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!308 = !{!309}
!309 = distinct !{!309, !307, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!310 = !{!311}
!311 = distinct !{!311, !312, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!312 = distinct !{!312, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!313 = !{!314}
!314 = distinct !{!314, !312, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!315 = !{!316}
!316 = distinct !{!316, !317, !"cmpfunc: %a"}
!317 = distinct !{!317, !"cmpfunc"}
!318 = !{!319}
!319 = distinct !{!319, !317, !"cmpfunc: %b"}
!320 = !{!321}
!321 = distinct !{!321, !322, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!322 = distinct !{!322, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!323 = !{!324}
!324 = distinct !{!324, !322, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!325 = !{!321, !316, !311, !306}
!326 = !{!324, !319, !314, !309}
!327 = !{!328}
!328 = distinct !{!328, !329, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!329 = distinct !{!329, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!330 = !{!331}
!331 = distinct !{!331, !329, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!332 = !{!333}
!333 = distinct !{!333, !334, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!334 = distinct !{!334, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!335 = !{!336}
!336 = distinct !{!336, !334, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!337 = !{!338}
!338 = distinct !{!338, !339, !"cmpfunc: %a"}
!339 = distinct !{!339, !"cmpfunc"}
!340 = !{!341}
!341 = distinct !{!341, !339, !"cmpfunc: %b"}
!342 = !{!343}
!343 = distinct !{!343, !344, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!344 = distinct !{!344, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!345 = !{!346}
!346 = distinct !{!346, !344, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!347 = !{!343, !338, !333, !328}
!348 = !{!346, !341, !336, !331}
!349 = !{!350}
!350 = distinct !{!350, !351, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!351 = distinct !{!351, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!352 = !{!353}
!353 = distinct !{!353, !351, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!354 = !{!355}
!355 = distinct !{!355, !356, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!356 = distinct !{!356, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!357 = !{!358}
!358 = distinct !{!358, !356, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!359 = !{!360}
!360 = distinct !{!360, !361, !"cmpfunc: %a"}
!361 = distinct !{!361, !"cmpfunc"}
!362 = !{!363}
!363 = distinct !{!363, !361, !"cmpfunc: %b"}
!364 = !{!365}
!365 = distinct !{!365, !366, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!366 = distinct !{!366, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!367 = !{!368}
!368 = distinct !{!368, !366, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!369 = !{!365, !360, !355, !350}
!370 = !{!368, !363, !358, !353}
!371 = !{!372}
!372 = distinct !{!372, !373, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!373 = distinct !{!373, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!374 = !{!375}
!375 = distinct !{!375, !373, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!376 = !{!377}
!377 = distinct !{!377, !378, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!378 = distinct !{!378, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!379 = !{!380}
!380 = distinct !{!380, !378, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!381 = !{!382}
!382 = distinct !{!382, !383, !"cmpfunc: %a"}
!383 = distinct !{!383, !"cmpfunc"}
!384 = !{!385}
!385 = distinct !{!385, !383, !"cmpfunc: %b"}
!386 = !{!387}
!387 = distinct !{!387, !388, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!388 = distinct !{!388, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!389 = !{!390}
!390 = distinct !{!390, !388, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!391 = !{!387, !382, !377, !372}
!392 = !{!390, !385, !380, !375}
!393 = !{!394}
!394 = distinct !{!394, !395, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!395 = distinct !{!395, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!396 = !{!397}
!397 = distinct !{!397, !395, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!398 = !{!399}
!399 = distinct !{!399, !400, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!400 = distinct !{!400, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!401 = !{!402}
!402 = distinct !{!402, !400, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!403 = !{!404}
!404 = distinct !{!404, !405, !"cmpfunc: %a"}
!405 = distinct !{!405, !"cmpfunc"}
!406 = !{!407}
!407 = distinct !{!407, !405, !"cmpfunc: %b"}
!408 = !{!409}
!409 = distinct !{!409, !410, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!410 = distinct !{!410, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!411 = !{!412}
!412 = distinct !{!412, !410, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!413 = !{!409, !404, !399, !394}
!414 = !{!412, !407, !402, !397}
!415 = !{!416}
!416 = distinct !{!416, !417, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!417 = distinct !{!417, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!418 = !{!419}
!419 = distinct !{!419, !417, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!420 = !{!421}
!421 = distinct !{!421, !422, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!422 = distinct !{!422, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!423 = !{!424}
!424 = distinct !{!424, !422, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!425 = !{!426}
!426 = distinct !{!426, !427, !"cmpfunc: %a"}
!427 = distinct !{!427, !"cmpfunc"}
!428 = !{!429}
!429 = distinct !{!429, !427, !"cmpfunc: %b"}
!430 = !{!431}
!431 = distinct !{!431, !432, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!432 = distinct !{!432, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!433 = !{!434}
!434 = distinct !{!434, !432, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!435 = !{!431, !426, !421, !416}
!436 = !{!434, !429, !424, !419}
!437 = !{!438}
!438 = distinct !{!438, !439, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!439 = distinct !{!439, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!440 = !{!441}
!441 = distinct !{!441, !439, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!442 = !{!443}
!443 = distinct !{!443, !444, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!444 = distinct !{!444, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!445 = !{!446}
!446 = distinct !{!446, !444, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!447 = !{!448}
!448 = distinct !{!448, !449, !"cmpfunc: %a"}
!449 = distinct !{!449, !"cmpfunc"}
!450 = !{!451}
!451 = distinct !{!451, !449, !"cmpfunc: %b"}
!452 = !{!453}
!453 = distinct !{!453, !454, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!454 = distinct !{!454, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!455 = !{!456}
!456 = distinct !{!456, !454, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!457 = !{!453, !448, !443, !438}
!458 = !{!456, !451, !446, !441}
!459 = !{!460}
!460 = distinct !{!460, !461, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h928b61429abd813bE: %v.0"}
!461 = distinct !{!461, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h928b61429abd813bE"}
!462 = !{!463}
!463 = distinct !{!463, !464, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!464 = distinct !{!464, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!465 = !{!466}
!466 = distinct !{!466, !464, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!467 = !{!468}
!468 = distinct !{!468, !469, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!469 = distinct !{!469, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!470 = !{!471}
!471 = distinct !{!471, !472, !"_ZN4core5slice4sort6shared9smallsort8merge_up17he3c0b1c09b884af0E: %_0"}
!472 = distinct !{!472, !"_ZN4core5slice4sort6shared9smallsort8merge_up17he3c0b1c09b884af0E"}
!473 = !{!474}
!474 = distinct !{!474, !469, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!475 = !{!476}
!476 = distinct !{!476, !477, !"cmpfunc: %a"}
!477 = distinct !{!477, !"cmpfunc"}
!478 = !{!479}
!479 = distinct !{!479, !477, !"cmpfunc: %b"}
!480 = !{!481}
!481 = distinct !{!481, !482, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!482 = distinct !{!482, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!483 = !{!484}
!484 = distinct !{!484, !482, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!485 = !{!481, !476, !468, !463, !460}
!486 = !{!484, !479, !474, !466, !471}
!487 = !{!484, !479, !474, !466, !460}
!488 = !{!481, !476, !468, !463, !471}
!489 = !{!471, !490, !460}
!490 = distinct !{!490, !472, !"_ZN4core5slice4sort6shared9smallsort8merge_up17he3c0b1c09b884af0E: %is_less"}
!491 = !{!492}
!492 = distinct !{!492, !493, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!493 = distinct !{!493, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!494 = !{!495}
!495 = distinct !{!495, !493, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!496 = !{!497}
!497 = distinct !{!497, !498, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!498 = distinct !{!498, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!499 = !{!500}
!500 = distinct !{!500, !501, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h235e25f2e1e89d41E: %_0"}
!501 = distinct !{!501, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h235e25f2e1e89d41E"}
!502 = !{!503}
!503 = distinct !{!503, !498, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!504 = !{!505}
!505 = distinct !{!505, !506, !"cmpfunc: %a"}
!506 = distinct !{!506, !"cmpfunc"}
!507 = !{!508}
!508 = distinct !{!508, !506, !"cmpfunc: %b"}
!509 = !{!510}
!510 = distinct !{!510, !511, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!511 = distinct !{!511, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!512 = !{!513}
!513 = distinct !{!513, !511, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!514 = !{!510, !505, !497, !492, !460}
!515 = !{!513, !508, !503, !495, !500}
!516 = !{!513, !508, !503, !495, !460}
!517 = !{!510, !505, !497, !492, !500}
!518 = !{!500, !519, !460}
!519 = distinct !{!519, !501, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h235e25f2e1e89d41E: %is_less"}
!520 = !{!521}
!521 = distinct !{!521, !464, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a:It1"}
!522 = !{!523}
!523 = distinct !{!523, !464, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b:It1"}
!524 = !{!525}
!525 = distinct !{!525, !469, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0:It1"}
!526 = !{!527}
!527 = distinct !{!527, !469, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1:It1"}
!528 = !{!529}
!529 = distinct !{!529, !477, !"cmpfunc: %a:It1"}
!530 = !{!531}
!531 = distinct !{!531, !477, !"cmpfunc: %b:It1"}
!532 = !{!533}
!533 = distinct !{!533, !482, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It1"}
!534 = !{!535}
!535 = distinct !{!535, !482, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It1"}
!536 = !{!533, !529, !525, !521, !460}
!537 = !{!535, !531, !527, !523, !471}
!538 = !{!535, !531, !527, !523, !460}
!539 = !{!533, !529, !525, !521, !471}
!540 = !{!541}
!541 = distinct !{!541, !493, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a:It1"}
!542 = !{!543}
!543 = distinct !{!543, !493, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b:It1"}
!544 = !{!545}
!545 = distinct !{!545, !498, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0:It1"}
!546 = !{!547}
!547 = distinct !{!547, !498, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1:It1"}
!548 = !{!549}
!549 = distinct !{!549, !506, !"cmpfunc: %a:It1"}
!550 = !{!551}
!551 = distinct !{!551, !506, !"cmpfunc: %b:It1"}
!552 = !{!553}
!553 = distinct !{!553, !511, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It1"}
!554 = !{!555}
!555 = distinct !{!555, !511, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It1"}
!556 = !{!553, !549, !545, !541, !460}
!557 = !{!555, !551, !547, !543, !500}
!558 = !{!555, !551, !547, !543, !460}
!559 = !{!553, !549, !545, !541, !500}
!560 = !{!561}
!561 = distinct !{!561, !464, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a:It2"}
!562 = !{!563}
!563 = distinct !{!563, !464, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b:It2"}
!564 = !{!565}
!565 = distinct !{!565, !469, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0:It2"}
!566 = !{!567}
!567 = distinct !{!567, !469, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1:It2"}
!568 = !{!569}
!569 = distinct !{!569, !477, !"cmpfunc: %a:It2"}
!570 = !{!571}
!571 = distinct !{!571, !477, !"cmpfunc: %b:It2"}
!572 = !{!573}
!573 = distinct !{!573, !482, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It2"}
!574 = !{!575}
!575 = distinct !{!575, !482, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It2"}
!576 = !{!573, !569, !565, !561, !460}
!577 = !{!575, !571, !567, !563, !471}
!578 = !{!575, !571, !567, !563, !460}
!579 = !{!573, !569, !565, !561, !471}
!580 = !{!581}
!581 = distinct !{!581, !493, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a:It2"}
!582 = !{!583}
!583 = distinct !{!583, !493, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b:It2"}
!584 = !{!585}
!585 = distinct !{!585, !498, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0:It2"}
!586 = !{!587}
!587 = distinct !{!587, !498, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1:It2"}
!588 = !{!589}
!589 = distinct !{!589, !506, !"cmpfunc: %a:It2"}
!590 = !{!591}
!591 = distinct !{!591, !506, !"cmpfunc: %b:It2"}
!592 = !{!593}
!593 = distinct !{!593, !511, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It2"}
!594 = !{!595}
!595 = distinct !{!595, !511, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It2"}
!596 = !{!593, !589, !585, !581, !460}
!597 = !{!595, !591, !587, !583, !500}
!598 = !{!595, !591, !587, !583, !460}
!599 = !{!593, !589, !585, !581, !500}
!600 = !{!601}
!601 = distinct !{!601, !464, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a:It3"}
!602 = !{!603}
!603 = distinct !{!603, !464, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b:It3"}
!604 = !{!605}
!605 = distinct !{!605, !469, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0:It3"}
!606 = !{!607}
!607 = distinct !{!607, !469, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1:It3"}
!608 = !{!609}
!609 = distinct !{!609, !477, !"cmpfunc: %a:It3"}
!610 = !{!611}
!611 = distinct !{!611, !477, !"cmpfunc: %b:It3"}
!612 = !{!613}
!613 = distinct !{!613, !482, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It3"}
!614 = !{!615}
!615 = distinct !{!615, !482, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It3"}
!616 = !{!613, !609, !605, !601, !460}
!617 = !{!615, !611, !607, !603, !471}
!618 = !{!615, !611, !607, !603, !460}
!619 = !{!613, !609, !605, !601, !471}
!620 = !{!621}
!621 = distinct !{!621, !493, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a:It3"}
!622 = !{!623}
!623 = distinct !{!623, !493, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b:It3"}
!624 = !{!625}
!625 = distinct !{!625, !498, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0:It3"}
!626 = !{!627}
!627 = distinct !{!627, !498, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1:It3"}
!628 = !{!629}
!629 = distinct !{!629, !506, !"cmpfunc: %a:It3"}
!630 = !{!631}
!631 = distinct !{!631, !506, !"cmpfunc: %b:It3"}
!632 = !{!633}
!633 = distinct !{!633, !511, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self:It3"}
!634 = !{!635}
!635 = distinct !{!635, !511, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other:It3"}
!636 = !{!633, !629, !625, !621, !460}
!637 = !{!635, !631, !627, !623, !500}
!638 = !{!635, !631, !627, !623, !460}
!639 = !{!633, !629, !625, !621, !500}
!640 = !{!"branch_weights", i32 4001, i32 4000000}
!641 = !{!642}
!642 = distinct !{!642, !643, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!643 = distinct !{!643, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!644 = !{!645}
!645 = distinct !{!645, !643, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!646 = !{!647}
!647 = distinct !{!647, !648, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!648 = distinct !{!648, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!649 = !{!650}
!650 = distinct !{!650, !651, !"_ZN4core5slice4sort6shared9smallsort8merge_up17he3c0b1c09b884af0E: %_0"}
!651 = distinct !{!651, !"_ZN4core5slice4sort6shared9smallsort8merge_up17he3c0b1c09b884af0E"}
!652 = !{!653}
!653 = distinct !{!653, !648, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!654 = !{!655}
!655 = distinct !{!655, !656, !"cmpfunc: %a"}
!656 = distinct !{!656, !"cmpfunc"}
!657 = !{!658}
!658 = distinct !{!658, !656, !"cmpfunc: %b"}
!659 = !{!660}
!660 = distinct !{!660, !661, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!661 = distinct !{!661, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!662 = !{!663}
!663 = distinct !{!663, !661, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!664 = !{!660, !655, !647, !642}
!665 = !{!663, !658, !653, !645, !650}
!666 = !{!663, !658, !653, !645}
!667 = !{!660, !655, !647, !642, !650}
!668 = !{!650, !669}
!669 = distinct !{!669, !651, !"_ZN4core5slice4sort6shared9smallsort8merge_up17he3c0b1c09b884af0E: %is_less"}
!670 = !{!671}
!671 = distinct !{!671, !672, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!672 = distinct !{!672, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!673 = !{!674}
!674 = distinct !{!674, !672, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!675 = !{!676}
!676 = distinct !{!676, !677, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!677 = distinct !{!677, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!678 = !{!679}
!679 = distinct !{!679, !680, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h235e25f2e1e89d41E: %_0"}
!680 = distinct !{!680, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h235e25f2e1e89d41E"}
!681 = !{!682}
!682 = distinct !{!682, !677, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!683 = !{!684}
!684 = distinct !{!684, !685, !"cmpfunc: %a"}
!685 = distinct !{!685, !"cmpfunc"}
!686 = !{!687}
!687 = distinct !{!687, !685, !"cmpfunc: %b"}
!688 = !{!689}
!689 = distinct !{!689, !690, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!690 = distinct !{!690, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!691 = !{!692}
!692 = distinct !{!692, !690, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!693 = !{!689, !684, !676, !671}
!694 = !{!692, !687, !682, !674, !679}
!695 = !{!692, !687, !682, !674}
!696 = !{!689, !684, !676, !671, !679}
!697 = !{!679, !698}
!698 = distinct !{!698, !680, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h235e25f2e1e89d41E: %is_less"}
!699 = !{!700}
!700 = distinct !{!700, !701, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!701 = distinct !{!701, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!702 = !{!703}
!703 = distinct !{!703, !701, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!704 = !{!705}
!705 = distinct !{!705, !706, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!706 = distinct !{!706, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!707 = !{!708}
!708 = distinct !{!708, !706, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!709 = !{!710}
!710 = distinct !{!710, !711, !"cmpfunc: %a"}
!711 = distinct !{!711, !"cmpfunc"}
!712 = !{!713}
!713 = distinct !{!713, !711, !"cmpfunc: %b"}
!714 = !{!715}
!715 = distinct !{!715, !716, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!716 = distinct !{!716, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!717 = !{!718}
!718 = distinct !{!718, !716, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!719 = !{!715, !710, !705, !700}
!720 = !{!718, !713, !708, !703}
!721 = !{!722, !724, !726, !728}
!722 = distinct !{!722, !723, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!723 = distinct !{!723, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!724 = distinct !{!724, !725, !"cmpfunc: %b"}
!725 = distinct !{!725, !"cmpfunc"}
!726 = distinct !{!726, !727, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!727 = distinct !{!727, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!728 = distinct !{!728, !729, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!729 = distinct !{!729, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!730 = !{!731, !732, !733, !734}
!731 = distinct !{!731, !723, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!732 = distinct !{!732, !725, !"cmpfunc: %a"}
!733 = distinct !{!733, !727, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!734 = distinct !{!734, !729, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!735 = !{!736, !738}
!736 = distinct !{!736, !737, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbcee5ce3afbb703aE: %self"}
!737 = distinct !{!737, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbcee5ce3afbb703aE"}
!738 = distinct !{!738, !739, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h201bae68fa4ed4d0E: %_1"}
!739 = distinct !{!739, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h201bae68fa4ed4d0E"}
!740 = !{!741}
!741 = distinct !{!741, !742, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!742 = distinct !{!742, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!743 = !{!744}
!744 = distinct !{!744, !742, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!745 = !{!746}
!746 = distinct !{!746, !747, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!747 = distinct !{!747, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!748 = !{!749}
!749 = distinct !{!749, !747, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!750 = !{!751}
!751 = distinct !{!751, !752, !"cmpfunc: %a"}
!752 = distinct !{!752, !"cmpfunc"}
!753 = !{!754}
!754 = distinct !{!754, !752, !"cmpfunc: %b"}
!755 = !{!756}
!756 = distinct !{!756, !757, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!757 = distinct !{!757, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!758 = !{!759}
!759 = distinct !{!759, !757, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!760 = !{!756, !751, !746, !741}
!761 = !{!759, !754, !749, !744}
!762 = !{!763}
!763 = distinct !{!763, !764, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!764 = distinct !{!764, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!765 = !{!766}
!766 = distinct !{!766, !764, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!767 = !{!768}
!768 = distinct !{!768, !769, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!769 = distinct !{!769, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!770 = !{!771}
!771 = distinct !{!771, !769, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!772 = !{!773}
!773 = distinct !{!773, !774, !"cmpfunc: %a"}
!774 = distinct !{!774, !"cmpfunc"}
!775 = !{!776}
!776 = distinct !{!776, !774, !"cmpfunc: %b"}
!777 = !{!778}
!778 = distinct !{!778, !779, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!779 = distinct !{!779, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!780 = !{!781}
!781 = distinct !{!781, !779, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!782 = !{!778, !773, !768, !763}
!783 = !{!781, !776, !771, !766}
!784 = !{!785}
!785 = distinct !{!785, !786, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!786 = distinct !{!786, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!787 = !{!788}
!788 = distinct !{!788, !786, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!789 = !{!790}
!790 = distinct !{!790, !791, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!791 = distinct !{!791, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!792 = !{!793}
!793 = distinct !{!793, !791, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!794 = !{!795}
!795 = distinct !{!795, !796, !"cmpfunc: %a"}
!796 = distinct !{!796, !"cmpfunc"}
!797 = !{!798}
!798 = distinct !{!798, !796, !"cmpfunc: %b"}
!799 = !{!800}
!800 = distinct !{!800, !801, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!801 = distinct !{!801, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!802 = !{!803}
!803 = distinct !{!803, !801, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!804 = !{!800, !795, !790, !785}
!805 = !{!803, !798, !793, !788}
!806 = !{!807}
!807 = distinct !{!807, !808, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!808 = distinct !{!808, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!809 = !{!810}
!810 = distinct !{!810, !808, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!811 = !{!812}
!812 = distinct !{!812, !813, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!813 = distinct !{!813, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!814 = !{!815}
!815 = distinct !{!815, !813, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!816 = !{!817}
!817 = distinct !{!817, !818, !"cmpfunc: %a"}
!818 = distinct !{!818, !"cmpfunc"}
!819 = !{!820}
!820 = distinct !{!820, !818, !"cmpfunc: %b"}
!821 = !{!822}
!822 = distinct !{!822, !823, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!823 = distinct !{!823, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!824 = !{!825}
!825 = distinct !{!825, !823, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!826 = !{!822, !817, !812, !807}
!827 = !{!825, !820, !815, !810}
!828 = !{!829}
!829 = distinct !{!829, !830, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!830 = distinct !{!830, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!831 = !{!832}
!832 = distinct !{!832, !830, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!833 = !{!834}
!834 = distinct !{!834, !835, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!835 = distinct !{!835, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!836 = !{!837}
!837 = distinct !{!837, !835, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!838 = !{!839}
!839 = distinct !{!839, !840, !"cmpfunc: %a"}
!840 = distinct !{!840, !"cmpfunc"}
!841 = !{!842}
!842 = distinct !{!842, !840, !"cmpfunc: %b"}
!843 = !{!844}
!844 = distinct !{!844, !845, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!845 = distinct !{!845, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!846 = !{!847}
!847 = distinct !{!847, !845, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!848 = !{!844, !839, !834, !829}
!849 = !{!847, !842, !837, !832}
!850 = !{!851}
!851 = distinct !{!851, !852, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!852 = distinct !{!852, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!853 = !{!854}
!854 = distinct !{!854, !852, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!855 = !{!856}
!856 = distinct !{!856, !857, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!857 = distinct !{!857, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!858 = !{!859}
!859 = distinct !{!859, !857, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!860 = !{!861}
!861 = distinct !{!861, !862, !"cmpfunc: %a"}
!862 = distinct !{!862, !"cmpfunc"}
!863 = !{!864}
!864 = distinct !{!864, !862, !"cmpfunc: %b"}
!865 = !{!866}
!866 = distinct !{!866, !867, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!867 = distinct !{!867, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!868 = !{!869}
!869 = distinct !{!869, !867, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!870 = !{!866, !861, !856, !851}
!871 = !{!869, !864, !859, !854}
!872 = !{!873}
!873 = distinct !{!873, !874, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!874 = distinct !{!874, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!875 = !{!876}
!876 = distinct !{!876, !874, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!877 = !{!878}
!878 = distinct !{!878, !879, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!879 = distinct !{!879, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!880 = !{!881}
!881 = distinct !{!881, !879, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!882 = !{!883}
!883 = distinct !{!883, !884, !"cmpfunc: %a"}
!884 = distinct !{!884, !"cmpfunc"}
!885 = !{!886}
!886 = distinct !{!886, !884, !"cmpfunc: %b"}
!887 = !{!888}
!888 = distinct !{!888, !889, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!889 = distinct !{!889, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!890 = !{!891}
!891 = distinct !{!891, !889, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!892 = !{!888, !883, !878, !873}
!893 = !{!891, !886, !881, !876}
!894 = !{!895}
!895 = distinct !{!895, !896, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!896 = distinct !{!896, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!897 = !{!898}
!898 = distinct !{!898, !896, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!899 = !{!900}
!900 = distinct !{!900, !901, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!901 = distinct !{!901, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!902 = !{!903}
!903 = distinct !{!903, !901, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!904 = !{!905}
!905 = distinct !{!905, !906, !"cmpfunc: %a"}
!906 = distinct !{!906, !"cmpfunc"}
!907 = !{!908}
!908 = distinct !{!908, !906, !"cmpfunc: %b"}
!909 = !{!910}
!910 = distinct !{!910, !911, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!911 = distinct !{!911, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!912 = !{!913}
!913 = distinct !{!913, !911, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!914 = !{!910, !905, !900, !895}
!915 = !{!913, !908, !903, !898}
!916 = !{!917}
!917 = distinct !{!917, !918, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!918 = distinct !{!918, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!919 = !{!920}
!920 = distinct !{!920, !918, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!921 = !{!922}
!922 = distinct !{!922, !923, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!923 = distinct !{!923, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!924 = !{!925}
!925 = distinct !{!925, !923, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!926 = !{!927}
!927 = distinct !{!927, !928, !"cmpfunc: %a"}
!928 = distinct !{!928, !"cmpfunc"}
!929 = !{!930}
!930 = distinct !{!930, !928, !"cmpfunc: %b"}
!931 = !{!932}
!932 = distinct !{!932, !933, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!933 = distinct !{!933, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!934 = !{!935}
!935 = distinct !{!935, !933, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!936 = !{!932, !927, !922, !917}
!937 = !{!935, !930, !925, !920}
!938 = !{!939}
!939 = distinct !{!939, !940, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!940 = distinct !{!940, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!941 = !{!942}
!942 = distinct !{!942, !940, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!943 = !{!944}
!944 = distinct !{!944, !945, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!945 = distinct !{!945, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!946 = !{!947}
!947 = distinct !{!947, !945, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!948 = !{!949}
!949 = distinct !{!949, !950, !"cmpfunc: %a"}
!950 = distinct !{!950, !"cmpfunc"}
!951 = !{!952}
!952 = distinct !{!952, !950, !"cmpfunc: %b"}
!953 = !{!954}
!954 = distinct !{!954, !955, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!955 = distinct !{!955, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!956 = !{!957}
!957 = distinct !{!957, !955, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!958 = !{!954, !949, !944, !939}
!959 = !{!957, !952, !947, !942}
!960 = !{!961}
!961 = distinct !{!961, !962, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h1f1750cbfa45ce3aE: %self.0"}
!962 = distinct !{!962, !"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h1f1750cbfa45ce3aE"}
!963 = !{!964}
!964 = distinct !{!964, !965, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h928b61429abd813bE: %v.0"}
!965 = distinct !{!965, !"_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h928b61429abd813bE"}
!966 = !{!967}
!967 = distinct !{!967, !968, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!968 = distinct !{!968, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!969 = !{!970}
!970 = distinct !{!970, !968, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!971 = !{!972}
!972 = distinct !{!972, !973, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!973 = distinct !{!973, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!974 = !{!975}
!975 = distinct !{!975, !976, !"_ZN4core5slice4sort6shared9smallsort8merge_up17he3c0b1c09b884af0E: %_0"}
!976 = distinct !{!976, !"_ZN4core5slice4sort6shared9smallsort8merge_up17he3c0b1c09b884af0E"}
!977 = !{!978}
!978 = distinct !{!978, !973, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!979 = !{!980}
!980 = distinct !{!980, !981, !"cmpfunc: %a"}
!981 = distinct !{!981, !"cmpfunc"}
!982 = !{!983}
!983 = distinct !{!983, !981, !"cmpfunc: %b"}
!984 = !{!985}
!985 = distinct !{!985, !986, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!986 = distinct !{!986, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!987 = !{!988}
!988 = distinct !{!988, !986, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!989 = !{!985, !980, !972, !967, !964}
!990 = !{!988, !983, !978, !970, !975}
!991 = !{!988, !983, !978, !970, !964}
!992 = !{!985, !980, !972, !967, !975}
!993 = !{!975, !994, !964}
!994 = distinct !{!994, !976, !"_ZN4core5slice4sort6shared9smallsort8merge_up17he3c0b1c09b884af0E: %is_less"}
!995 = !{!996}
!996 = distinct !{!996, !997, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!997 = distinct !{!997, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!998 = !{!999}
!999 = distinct !{!999, !997, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!1000 = !{!1001}
!1001 = distinct !{!1001, !1002, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!1002 = distinct !{!1002, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!1003 = !{!1004}
!1004 = distinct !{!1004, !1005, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h235e25f2e1e89d41E: %_0"}
!1005 = distinct !{!1005, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h235e25f2e1e89d41E"}
!1006 = !{!1007}
!1007 = distinct !{!1007, !1002, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!1008 = !{!1009}
!1009 = distinct !{!1009, !1010, !"cmpfunc: %a"}
!1010 = distinct !{!1010, !"cmpfunc"}
!1011 = !{!1012}
!1012 = distinct !{!1012, !1010, !"cmpfunc: %b"}
!1013 = !{!1014}
!1014 = distinct !{!1014, !1015, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1015 = distinct !{!1015, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1016 = !{!1017}
!1017 = distinct !{!1017, !1015, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1018 = !{!1014, !1009, !1001, !996, !964}
!1019 = !{!1017, !1012, !1007, !999, !1004}
!1020 = !{!1017, !1012, !1007, !999, !964}
!1021 = !{!1014, !1009, !1001, !996, !1004}
!1022 = !{!1004, !1023, !964}
!1023 = distinct !{!1023, !1005, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h235e25f2e1e89d41E: %is_less"}
!1024 = !{!1025, !1027}
!1025 = distinct !{!1025, !1026, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbcee5ce3afbb703aE: %self"}
!1026 = distinct !{!1026, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbcee5ce3afbb703aE"}
!1027 = distinct !{!1027, !1028, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h201bae68fa4ed4d0E: %_1"}
!1028 = distinct !{!1028, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h201bae68fa4ed4d0E"}
!1029 = !{!1030, !1032, !1034, !1036}
!1030 = distinct !{!1030, !1031, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1031 = distinct !{!1031, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1032 = distinct !{!1032, !1033, !"cmpfunc: %b"}
!1033 = distinct !{!1033, !"cmpfunc"}
!1034 = distinct !{!1034, !1035, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!1035 = distinct !{!1035, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!1036 = distinct !{!1036, !1037, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!1037 = distinct !{!1037, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!1038 = !{!1039, !1040, !1041, !1042}
!1039 = distinct !{!1039, !1031, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1040 = distinct !{!1040, !1033, !"cmpfunc: %a"}
!1041 = distinct !{!1041, !1035, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!1042 = distinct !{!1042, !1037, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!1043 = !{!1044, !1046, !1048, !1050}
!1044 = distinct !{!1044, !1045, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1045 = distinct !{!1045, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1046 = distinct !{!1046, !1047, !"cmpfunc: %b"}
!1047 = distinct !{!1047, !"cmpfunc"}
!1048 = distinct !{!1048, !1049, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!1049 = distinct !{!1049, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!1050 = distinct !{!1050, !1051, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!1051 = distinct !{!1051, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!1052 = !{!1053, !1054, !1055, !1056}
!1053 = distinct !{!1053, !1045, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1054 = distinct !{!1054, !1047, !"cmpfunc: %a"}
!1055 = distinct !{!1055, !1049, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!1056 = distinct !{!1056, !1051, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!1057 = !{!1058, !1060}
!1058 = distinct !{!1058, !1059, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbcee5ce3afbb703aE: %self"}
!1059 = distinct !{!1059, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbcee5ce3afbb703aE"}
!1060 = distinct !{!1060, !1061, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h201bae68fa4ed4d0E: %_1"}
!1061 = distinct !{!1061, !"_ZN4core3ptr80drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$i32$GT$$GT$17h201bae68fa4ed4d0E"}
!1062 = !{!1063}
!1063 = distinct !{!1063, !1064, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hf4e0df9c8f1398f2E: %_0"}
!1064 = distinct !{!1064, !"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hf4e0df9c8f1398f2E"}
!1065 = !{i64 0, i64 2}
!1066 = !{i64 0, i64 -9223372036854775807}
!1067 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!1068 = !{!1069}
!1069 = distinct !{!1069, !1070, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!1070 = distinct !{!1070, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!1071 = !{!1072}
!1072 = distinct !{!1072, !1070, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!1073 = !{!1074}
!1074 = distinct !{!1074, !1075, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!1075 = distinct !{!1075, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!1076 = !{!1077}
!1077 = distinct !{!1077, !1075, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!1078 = !{!1079}
!1079 = distinct !{!1079, !1080, !"cmpfunc: %a"}
!1080 = distinct !{!1080, !"cmpfunc"}
!1081 = !{!1082}
!1082 = distinct !{!1082, !1080, !"cmpfunc: %b"}
!1083 = !{!1084}
!1084 = distinct !{!1084, !1085, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1085 = distinct !{!1085, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1086 = !{!1087}
!1087 = distinct !{!1087, !1085, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1088 = !{!1084, !1079, !1074, !1069}
!1089 = !{!1087, !1082, !1077, !1072}
!1090 = !{!1091}
!1091 = distinct !{!1091, !1092, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!1092 = distinct !{!1092, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!1093 = !{!1094}
!1094 = distinct !{!1094, !1092, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!1095 = !{!1096}
!1096 = distinct !{!1096, !1097, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!1097 = distinct !{!1097, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!1098 = !{!1099}
!1099 = distinct !{!1099, !1097, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!1100 = !{!1101}
!1101 = distinct !{!1101, !1102, !"cmpfunc: %a"}
!1102 = distinct !{!1102, !"cmpfunc"}
!1103 = !{!1104}
!1104 = distinct !{!1104, !1102, !"cmpfunc: %b"}
!1105 = !{!1106}
!1106 = distinct !{!1106, !1107, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1107 = distinct !{!1107, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1108 = !{!1109}
!1109 = distinct !{!1109, !1107, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1110 = !{!1106, !1101, !1096, !1091}
!1111 = !{!1109, !1104, !1099, !1094}
!1112 = !{!1113}
!1113 = distinct !{!1113, !1114, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!1114 = distinct !{!1114, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!1115 = !{!1116}
!1116 = distinct !{!1116, !1114, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!1117 = !{!1118}
!1118 = distinct !{!1118, !1119, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!1119 = distinct !{!1119, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!1120 = !{!1121}
!1121 = distinct !{!1121, !1119, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!1122 = !{!1123}
!1123 = distinct !{!1123, !1124, !"cmpfunc: %a"}
!1124 = distinct !{!1124, !"cmpfunc"}
!1125 = !{!1126}
!1126 = distinct !{!1126, !1124, !"cmpfunc: %b"}
!1127 = !{!1128}
!1128 = distinct !{!1128, !1129, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1129 = distinct !{!1129, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1130 = !{!1131}
!1131 = distinct !{!1131, !1129, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1132 = !{!1128, !1123, !1118, !1113}
!1133 = !{!1131, !1126, !1121, !1116}
!1134 = !{!1135, !1137}
!1135 = distinct !{!1135, !1136, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hef5170934eb5aa56E: %a.0"}
!1136 = distinct !{!1136, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hef5170934eb5aa56E"}
!1137 = distinct !{!1137, !1138, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h7c25e376b154f987E: %self.0"}
!1138 = distinct !{!1138, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h7c25e376b154f987E"}
!1139 = !{!1140}
!1140 = distinct !{!1140, !1136, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17hef5170934eb5aa56E: %b.0"}
!1141 = !{!1140, !1137}
!1142 = !{!1135}
!1143 = !{!1144}
!1144 = distinct !{!1144, !1145, !"_ZN4core5slice4sort6stable5merge5merge17hf1471d068efe340fE: %v.0"}
!1145 = distinct !{!1145, !"_ZN4core5slice4sort6stable5merge5merge17hf1471d068efe340fE"}
!1146 = !{!1147}
!1147 = distinct !{!1147, !1145, !"_ZN4core5slice4sort6stable5merge5merge17hf1471d068efe340fE: %scratch.0"}
!1148 = !{!1144, !1147}
!1149 = !{!1150}
!1150 = distinct !{!1150, !1151, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!1151 = distinct !{!1151, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!1152 = !{!1153}
!1153 = distinct !{!1153, !1151, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!1154 = !{!1155}
!1155 = distinct !{!1155, !1156, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!1156 = distinct !{!1156, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!1157 = !{!1158}
!1158 = distinct !{!1158, !1156, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!1159 = !{!1160}
!1160 = distinct !{!1160, !1161, !"cmpfunc: %a"}
!1161 = distinct !{!1161, !"cmpfunc"}
!1162 = !{!1163}
!1163 = distinct !{!1163, !1161, !"cmpfunc: %b"}
!1164 = !{!1165}
!1165 = distinct !{!1165, !1166, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1166 = distinct !{!1166, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1167 = !{!1168}
!1168 = distinct !{!1168, !1166, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1169 = !{!1165, !1160, !1155, !1150, !1147}
!1170 = !{!1168, !1163, !1158, !1153, !1171, !1144}
!1171 = distinct !{!1171, !1172, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h2efe162886d2dcd0E: %self"}
!1172 = distinct !{!1172, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h2efe162886d2dcd0E"}
!1173 = !{!1168, !1163, !1158, !1153, !1144}
!1174 = !{!1165, !1160, !1155, !1150, !1171, !1147}
!1175 = !{!1171, !1147}
!1176 = !{!1177}
!1177 = distinct !{!1177, !1178, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!1178 = distinct !{!1178, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!1179 = !{!1180}
!1180 = distinct !{!1180, !1178, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!1181 = !{!1182}
!1182 = distinct !{!1182, !1183, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!1183 = distinct !{!1183, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!1184 = !{!1185}
!1185 = distinct !{!1185, !1183, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!1186 = !{!1187}
!1187 = distinct !{!1187, !1188, !"cmpfunc: %a"}
!1188 = distinct !{!1188, !"cmpfunc"}
!1189 = !{!1190}
!1190 = distinct !{!1190, !1188, !"cmpfunc: %b"}
!1191 = !{!1192}
!1192 = distinct !{!1192, !1193, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1193 = distinct !{!1193, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1194 = !{!1195}
!1195 = distinct !{!1195, !1193, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1196 = !{!1192, !1187, !1182, !1177, !1144}
!1197 = !{!1195, !1190, !1185, !1180, !1198, !1147}
!1198 = distinct !{!1198, !1199, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17hcc561469da747713E: %self"}
!1199 = distinct !{!1199, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17hcc561469da747713E"}
!1200 = !{!1195, !1190, !1185, !1180, !1147}
!1201 = !{!1192, !1187, !1182, !1177, !1198, !1144}
!1202 = !{!1198, !1147}
!1203 = !{!1204, !1206}
!1204 = distinct !{!1204, !1205, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8b474e45e515e585E: %self"}
!1205 = distinct !{!1205, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8b474e45e515e585E"}
!1206 = distinct !{!1206, !1207, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17haeba4fef0fcab303E: %_1"}
!1207 = distinct !{!1207, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17haeba4fef0fcab303E"}
!1208 = !{!1209}
!1209 = distinct !{!1209, !1210, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!1210 = distinct !{!1210, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!1211 = !{!1212}
!1212 = distinct !{!1212, !1210, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!1213 = !{!1214}
!1214 = distinct !{!1214, !1215, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!1215 = distinct !{!1215, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!1216 = !{!1217}
!1217 = distinct !{!1217, !1215, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!1218 = !{!1219}
!1219 = distinct !{!1219, !1220, !"cmpfunc: %a"}
!1220 = distinct !{!1220, !"cmpfunc"}
!1221 = !{!1222}
!1222 = distinct !{!1222, !1220, !"cmpfunc: %b"}
!1223 = !{!1224}
!1224 = distinct !{!1224, !1225, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1225 = distinct !{!1225, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1226 = !{!1227}
!1227 = distinct !{!1227, !1225, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1228 = !{!1224, !1219, !1214, !1209}
!1229 = !{!1227, !1222, !1217, !1212}
!1230 = !{!1231}
!1231 = distinct !{!1231, !1232, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!1232 = distinct !{!1232, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!1233 = !{!1234}
!1234 = distinct !{!1234, !1232, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!1235 = !{!1236}
!1236 = distinct !{!1236, !1237, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!1237 = distinct !{!1237, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!1238 = !{!1239}
!1239 = distinct !{!1239, !1237, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!1240 = !{!1241}
!1241 = distinct !{!1241, !1242, !"cmpfunc: %a"}
!1242 = distinct !{!1242, !"cmpfunc"}
!1243 = !{!1244}
!1244 = distinct !{!1244, !1242, !"cmpfunc: %b"}
!1245 = !{!1246}
!1246 = distinct !{!1246, !1247, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1247 = distinct !{!1247, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1248 = !{!1249}
!1249 = distinct !{!1249, !1247, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1250 = !{!1246, !1241, !1236, !1231}
!1251 = !{!1249, !1244, !1239, !1234}
!1252 = !{!1253}
!1253 = distinct !{!1253, !1254, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!1254 = distinct !{!1254, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!1255 = !{!1256}
!1256 = distinct !{!1256, !1254, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!1257 = !{!1258}
!1258 = distinct !{!1258, !1259, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!1259 = distinct !{!1259, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!1260 = !{!1261}
!1261 = distinct !{!1261, !1259, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!1262 = !{!1263}
!1263 = distinct !{!1263, !1264, !"cmpfunc: %a"}
!1264 = distinct !{!1264, !"cmpfunc"}
!1265 = !{!1266}
!1266 = distinct !{!1266, !1264, !"cmpfunc: %b"}
!1267 = !{!1268}
!1268 = distinct !{!1268, !1269, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1269 = distinct !{!1269, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1270 = !{!1271}
!1271 = distinct !{!1271, !1269, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1272 = !{!1268, !1263, !1258, !1253}
!1273 = !{!1271, !1266, !1261, !1256, !1274}
!1274 = distinct !{!1274, !1275, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h2efe162886d2dcd0E: %self"}
!1275 = distinct !{!1275, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h2efe162886d2dcd0E"}
!1276 = !{!1271, !1266, !1261, !1256}
!1277 = !{!1268, !1263, !1258, !1253, !1274}
!1278 = !{!1274}
!1279 = !{!1280}
!1280 = distinct !{!1280, !1281, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!1281 = distinct !{!1281, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!1282 = !{!1283}
!1283 = distinct !{!1283, !1281, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!1284 = !{!1285}
!1285 = distinct !{!1285, !1286, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!1286 = distinct !{!1286, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!1287 = !{!1288}
!1288 = distinct !{!1288, !1286, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!1289 = !{!1290}
!1290 = distinct !{!1290, !1291, !"cmpfunc: %a"}
!1291 = distinct !{!1291, !"cmpfunc"}
!1292 = !{!1293}
!1293 = distinct !{!1293, !1291, !"cmpfunc: %b"}
!1294 = !{!1295}
!1295 = distinct !{!1295, !1296, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1296 = distinct !{!1296, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1297 = !{!1298}
!1298 = distinct !{!1298, !1296, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1299 = !{!1295, !1290, !1285, !1280}
!1300 = !{!1298, !1293, !1288, !1283, !1301}
!1301 = distinct !{!1301, !1302, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17hcc561469da747713E: %self"}
!1302 = distinct !{!1302, !"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$8merge_up17hcc561469da747713E"}
!1303 = !{!1298, !1293, !1288, !1283}
!1304 = !{!1295, !1290, !1285, !1280, !1301}
!1305 = !{!1301}
!1306 = !{!1307, !1309}
!1307 = distinct !{!1307, !1308, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8b474e45e515e585E: %self"}
!1308 = distinct !{!1308, !"_ZN95_$LT$core..slice..sort..stable..merge..MergeState$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8b474e45e515e585E"}
!1309 = distinct !{!1309, !1310, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17haeba4fef0fcab303E: %_1"}
!1310 = distinct !{!1310, !"_ZN4core3ptr76drop_in_place$LT$core..slice..sort..stable..merge..MergeState$LT$i32$GT$$GT$17haeba4fef0fcab303E"}
!1311 = !{!"branch_weights", i32 4000000, i32 4001}
!1312 = !{!1313}
!1313 = distinct !{!1313, !1314, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0c7de65d365c60f5E: %a"}
!1314 = distinct !{!1314, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0c7de65d365c60f5E"}
!1315 = !{!1316}
!1316 = distinct !{!1316, !1314, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0c7de65d365c60f5E: %b"}
!1317 = !{!1318}
!1318 = distinct !{!1318, !1319, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!1319 = distinct !{!1319, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!1320 = !{!1321}
!1321 = distinct !{!1321, !1319, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!1322 = !{!1323}
!1323 = distinct !{!1323, !1324, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!1324 = distinct !{!1324, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!1325 = !{!1326}
!1326 = distinct !{!1326, !1324, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!1327 = !{!1328}
!1328 = distinct !{!1328, !1329, !"cmpfunc: %a"}
!1329 = distinct !{!1329, !"cmpfunc"}
!1330 = !{!1331}
!1331 = distinct !{!1331, !1329, !"cmpfunc: %b"}
!1332 = !{!1333}
!1333 = distinct !{!1333, !1334, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1334 = distinct !{!1334, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1335 = !{!1336}
!1336 = distinct !{!1336, !1334, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1337 = !{!1333, !1328, !1323, !1318, !1316}
!1338 = !{!1336, !1331, !1326, !1321, !1313}
!1339 = !{!1340}
!1340 = distinct !{!1340, !1341, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hdd78d4b9647768dbE: %self"}
!1341 = distinct !{!1341, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hdd78d4b9647768dbE"}
!1342 = !{!1343}
!1343 = distinct !{!1343, !1344, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0c7de65d365c60f5E: %a"}
!1344 = distinct !{!1344, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0c7de65d365c60f5E"}
!1345 = !{!1346}
!1346 = distinct !{!1346, !1344, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0c7de65d365c60f5E: %b"}
!1347 = !{!1348}
!1348 = distinct !{!1348, !1349, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!1349 = distinct !{!1349, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!1350 = !{!1351}
!1351 = distinct !{!1351, !1349, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!1352 = !{!1353}
!1353 = distinct !{!1353, !1354, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!1354 = distinct !{!1354, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!1355 = !{!1356}
!1356 = distinct !{!1356, !1354, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!1357 = !{!1358}
!1358 = distinct !{!1358, !1359, !"cmpfunc: %a"}
!1359 = distinct !{!1359, !"cmpfunc"}
!1360 = !{!1361}
!1361 = distinct !{!1361, !1359, !"cmpfunc: %b"}
!1362 = !{!1363}
!1363 = distinct !{!1363, !1364, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1364 = distinct !{!1364, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1365 = !{!1366}
!1366 = distinct !{!1366, !1364, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1367 = !{!1363, !1358, !1353, !1348, !1346}
!1368 = !{!1366, !1361, !1356, !1351, !1343}
!1369 = !{!1370}
!1370 = distinct !{!1370, !1371, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hdd78d4b9647768dbE: %self"}
!1371 = distinct !{!1371, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hdd78d4b9647768dbE"}
!1372 = !{!1373}
!1373 = distinct !{!1373, !1374, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0c7de65d365c60f5E: %a"}
!1374 = distinct !{!1374, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0c7de65d365c60f5E"}
!1375 = !{!1376}
!1376 = distinct !{!1376, !1374, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0c7de65d365c60f5E: %b"}
!1377 = !{!1378}
!1378 = distinct !{!1378, !1379, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!1379 = distinct !{!1379, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!1380 = !{!1381}
!1381 = distinct !{!1381, !1379, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!1382 = !{!1383}
!1383 = distinct !{!1383, !1384, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!1384 = distinct !{!1384, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!1385 = !{!1386}
!1386 = distinct !{!1386, !1384, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!1387 = !{!1388}
!1388 = distinct !{!1388, !1389, !"cmpfunc: %a"}
!1389 = distinct !{!1389, !"cmpfunc"}
!1390 = !{!1391}
!1391 = distinct !{!1391, !1389, !"cmpfunc: %b"}
!1392 = !{!1393}
!1393 = distinct !{!1393, !1394, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1394 = distinct !{!1394, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1395 = !{!1396}
!1396 = distinct !{!1396, !1394, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1397 = !{!1393, !1388, !1383, !1378, !1376}
!1398 = !{!1396, !1391, !1386, !1381, !1373}
!1399 = !{!1400}
!1400 = distinct !{!1400, !1401, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hdd78d4b9647768dbE: %self"}
!1401 = distinct !{!1401, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hdd78d4b9647768dbE"}
!1402 = !{!1403}
!1403 = distinct !{!1403, !1404, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0c7de65d365c60f5E: %a"}
!1404 = distinct !{!1404, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0c7de65d365c60f5E"}
!1405 = !{!1406}
!1406 = distinct !{!1406, !1404, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0c7de65d365c60f5E: %b"}
!1407 = !{!1408}
!1408 = distinct !{!1408, !1409, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!1409 = distinct !{!1409, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!1410 = !{!1411}
!1411 = distinct !{!1411, !1409, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!1412 = !{!1413}
!1413 = distinct !{!1413, !1414, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!1414 = distinct !{!1414, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!1415 = !{!1416}
!1416 = distinct !{!1416, !1414, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!1417 = !{!1418}
!1418 = distinct !{!1418, !1419, !"cmpfunc: %a"}
!1419 = distinct !{!1419, !"cmpfunc"}
!1420 = !{!1421}
!1421 = distinct !{!1421, !1419, !"cmpfunc: %b"}
!1422 = !{!1423}
!1423 = distinct !{!1423, !1424, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1424 = distinct !{!1424, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1425 = !{!1426}
!1426 = distinct !{!1426, !1424, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1427 = !{!1423, !1418, !1413, !1408, !1406}
!1428 = !{!1426, !1421, !1416, !1411, !1403}
!1429 = !{!1430}
!1430 = distinct !{!1430, !1431, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hdd78d4b9647768dbE: %self"}
!1431 = distinct !{!1431, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hdd78d4b9647768dbE"}
!1432 = !{!1433}
!1433 = distinct !{!1433, !1434, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0c7de65d365c60f5E: %a"}
!1434 = distinct !{!1434, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0c7de65d365c60f5E"}
!1435 = !{!1436}
!1436 = distinct !{!1436, !1434, !"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h0c7de65d365c60f5E: %b"}
!1437 = !{!1438}
!1438 = distinct !{!1438, !1439, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!1439 = distinct !{!1439, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!1440 = !{!1441}
!1441 = distinct !{!1441, !1439, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!1442 = !{!1443}
!1443 = distinct !{!1443, !1444, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!1444 = distinct !{!1444, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!1445 = !{!1446}
!1446 = distinct !{!1446, !1444, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!1447 = !{!1448}
!1448 = distinct !{!1448, !1449, !"cmpfunc: %a"}
!1449 = distinct !{!1449, !"cmpfunc"}
!1450 = !{!1451}
!1451 = distinct !{!1451, !1449, !"cmpfunc: %b"}
!1452 = !{!1453}
!1453 = distinct !{!1453, !1454, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1454 = distinct !{!1454, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1455 = !{!1456}
!1456 = distinct !{!1456, !1454, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1457 = !{!1453, !1448, !1443, !1438, !1436}
!1458 = !{!1456, !1451, !1446, !1441, !1433}
!1459 = !{!1460}
!1460 = distinct !{!1460, !1461, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hdd78d4b9647768dbE: %self"}
!1461 = distinct !{!1461, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hdd78d4b9647768dbE"}
!1462 = !{!1463}
!1463 = distinct !{!1463, !1464, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hdd78d4b9647768dbE: %self"}
!1464 = distinct !{!1464, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hdd78d4b9647768dbE"}
!1465 = distinct !{!1465, !1466}
!1466 = !{!"llvm.loop.unroll.disable"}
!1467 = !{!1468}
!1468 = distinct !{!1468, !1469, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!1469 = distinct !{!1469, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!1470 = !{!1471}
!1471 = distinct !{!1471, !1469, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!1472 = !{!1473}
!1473 = distinct !{!1473, !1474, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!1474 = distinct !{!1474, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!1475 = !{!1476}
!1476 = distinct !{!1476, !1474, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!1477 = !{!1478}
!1478 = distinct !{!1478, !1479, !"cmpfunc: %a"}
!1479 = distinct !{!1479, !"cmpfunc"}
!1480 = !{!1481}
!1481 = distinct !{!1481, !1479, !"cmpfunc: %b"}
!1482 = !{!1483}
!1483 = distinct !{!1483, !1484, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1484 = distinct !{!1484, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1485 = !{!1486}
!1486 = distinct !{!1486, !1484, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1487 = !{!1483, !1478, !1473, !1468}
!1488 = !{!1486, !1481, !1476, !1471}
!1489 = !{!1490}
!1490 = distinct !{!1490, !1491, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hdd78d4b9647768dbE: %self"}
!1491 = distinct !{!1491, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hdd78d4b9647768dbE"}
!1492 = !{!1493}
!1493 = distinct !{!1493, !1494, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!1494 = distinct !{!1494, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!1495 = !{!1496}
!1496 = distinct !{!1496, !1494, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!1497 = !{!1498}
!1498 = distinct !{!1498, !1499, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!1499 = distinct !{!1499, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!1500 = !{!1501}
!1501 = distinct !{!1501, !1499, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!1502 = !{!1503}
!1503 = distinct !{!1503, !1504, !"cmpfunc: %a"}
!1504 = distinct !{!1504, !"cmpfunc"}
!1505 = !{!1506}
!1506 = distinct !{!1506, !1504, !"cmpfunc: %b"}
!1507 = !{!1508}
!1508 = distinct !{!1508, !1509, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1509 = distinct !{!1509, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1510 = !{!1511}
!1511 = distinct !{!1511, !1509, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1512 = !{!1508, !1503, !1498, !1493}
!1513 = !{!1511, !1506, !1501, !1496}
!1514 = !{!1515}
!1515 = distinct !{!1515, !1516, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hdd78d4b9647768dbE: %self"}
!1516 = distinct !{!1516, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hdd78d4b9647768dbE"}
!1517 = !{!1518}
!1518 = distinct !{!1518, !1519, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!1519 = distinct !{!1519, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!1520 = !{!1521}
!1521 = distinct !{!1521, !1519, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!1522 = !{!1523}
!1523 = distinct !{!1523, !1524, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!1524 = distinct !{!1524, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!1525 = !{!1526}
!1526 = distinct !{!1526, !1524, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!1527 = !{!1528}
!1528 = distinct !{!1528, !1529, !"cmpfunc: %a"}
!1529 = distinct !{!1529, !"cmpfunc"}
!1530 = !{!1531}
!1531 = distinct !{!1531, !1529, !"cmpfunc: %b"}
!1532 = !{!1533}
!1533 = distinct !{!1533, !1534, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1534 = distinct !{!1534, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1535 = !{!1536}
!1536 = distinct !{!1536, !1534, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1537 = !{!1533, !1528, !1523, !1518}
!1538 = !{!1536, !1531, !1526, !1521}
!1539 = !{!1540}
!1540 = distinct !{!1540, !1541, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hdd78d4b9647768dbE: %self"}
!1541 = distinct !{!1541, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hdd78d4b9647768dbE"}
!1542 = !{!1543}
!1543 = distinct !{!1543, !1544, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!1544 = distinct !{!1544, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!1545 = !{!1546}
!1546 = distinct !{!1546, !1544, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!1547 = !{!1548}
!1548 = distinct !{!1548, !1549, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!1549 = distinct !{!1549, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!1550 = !{!1551}
!1551 = distinct !{!1551, !1549, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
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
!1565 = distinct !{!1565, !1566, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hdd78d4b9647768dbE: %self"}
!1566 = distinct !{!1566, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hdd78d4b9647768dbE"}
!1567 = !{!1568}
!1568 = distinct !{!1568, !1569, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!1569 = distinct !{!1569, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!1570 = !{!1571}
!1571 = distinct !{!1571, !1569, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!1572 = !{!1573}
!1573 = distinct !{!1573, !1574, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!1574 = distinct !{!1574, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!1575 = !{!1576}
!1576 = distinct !{!1576, !1574, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
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
!1590 = distinct !{!1590, !1591, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hdd78d4b9647768dbE: %self"}
!1591 = distinct !{!1591, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hdd78d4b9647768dbE"}
!1592 = !{!1593}
!1593 = distinct !{!1593, !1594, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hdd78d4b9647768dbE: %self"}
!1594 = distinct !{!1594, !"_ZN4core5slice4sort6stable9quicksort23PartitionState$LT$T$GT$13partition_one17hdd78d4b9647768dbE"}
!1595 = distinct !{!1595, !1466}
!1596 = !{!1597}
!1597 = distinct !{!1597, !1598, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!1598 = distinct !{!1598, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!1599 = !{!1600}
!1600 = distinct !{!1600, !1598, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!1601 = !{!1602}
!1602 = distinct !{!1602, !1603, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!1603 = distinct !{!1603, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!1604 = !{!1605}
!1605 = distinct !{!1605, !1606, !"_ZN4core5slice4sort6shared5pivot7median317h204a7c44ebc71d33E: %c"}
!1606 = distinct !{!1606, !"_ZN4core5slice4sort6shared5pivot7median317h204a7c44ebc71d33E"}
!1607 = !{!1608}
!1608 = distinct !{!1608, !1603, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!1609 = !{!1610}
!1610 = distinct !{!1610, !1611, !"cmpfunc: %a"}
!1611 = distinct !{!1611, !"cmpfunc"}
!1612 = !{!1613}
!1613 = distinct !{!1613, !1611, !"cmpfunc: %b"}
!1614 = !{!1615}
!1615 = distinct !{!1615, !1616, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1616 = distinct !{!1616, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1617 = !{!1618}
!1618 = distinct !{!1618, !1616, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1619 = !{!1615, !1610, !1602, !1597, !1620}
!1620 = distinct !{!1620, !1621, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17ha56bcbeffaf4e1a4E: %v.0"}
!1621 = distinct !{!1621, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17ha56bcbeffaf4e1a4E"}
!1622 = !{!1618, !1613, !1608, !1600, !1605, !1623}
!1623 = distinct !{!1623, !1621, !"_ZN4core5slice4sort6shared5pivot12choose_pivot17ha56bcbeffaf4e1a4E: %is_less"}
!1624 = !{!1618, !1613, !1608, !1600, !1620}
!1625 = !{!1615, !1610, !1602, !1597, !1605, !1623}
!1626 = !{!1627, !1629, !1631, !1633, !1620}
!1627 = distinct !{!1627, !1628, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1628 = distinct !{!1628, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1629 = distinct !{!1629, !1630, !"cmpfunc: %b"}
!1630 = distinct !{!1630, !"cmpfunc"}
!1631 = distinct !{!1631, !1632, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!1632 = distinct !{!1632, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!1633 = distinct !{!1633, !1634, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!1634 = distinct !{!1634, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!1635 = !{!1636, !1637, !1638, !1639, !1623}
!1636 = distinct !{!1636, !1628, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1637 = distinct !{!1637, !1630, !"cmpfunc: %a"}
!1638 = distinct !{!1638, !1632, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!1639 = distinct !{!1639, !1634, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!1640 = !{!1641, !1643, !1645, !1647}
!1641 = distinct !{!1641, !1642, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1642 = distinct !{!1642, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1643 = distinct !{!1643, !1644, !"cmpfunc: %a"}
!1644 = distinct !{!1644, !"cmpfunc"}
!1645 = distinct !{!1645, !1646, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 0"}
!1646 = distinct !{!1646, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E"}
!1647 = distinct !{!1647, !1648, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %a"}
!1648 = distinct !{!1648, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E"}
!1649 = !{!1650, !1651, !1652, !1653}
!1650 = distinct !{!1650, !1642, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1651 = distinct !{!1651, !1644, !"cmpfunc: %b"}
!1652 = distinct !{!1652, !1646, !"_ZN4core3ops8function5FnMut8call_mut17h36be561c96019338E: argument 1"}
!1653 = distinct !{!1653, !1648, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h07211a7ccbfa9978E: %b"}
!1654 = !{!1655, !1657}
!1655 = distinct !{!1655, !1656, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h4c537d97a3de3be2E: %pair"}
!1656 = distinct !{!1656, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h4c537d97a3de3be2E"}
!1657 = distinct !{!1657, !1656, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17h4c537d97a3de3be2E: %self.0"}
!1658 = !{!1659}
!1659 = distinct !{!1659, !1660, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h65c4050f1d45e954E: %self"}
!1660 = distinct !{!1660, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h65c4050f1d45e954E"}
!1661 = !{i64 0, i64 -9223372036854775808}
!1662 = distinct !{!1662, !1466}
!1663 = !{!1664}
!1664 = distinct !{!1664, !1665, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h005d0b634ecef0e2E: %self"}
!1665 = distinct !{!1665, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h005d0b634ecef0e2E"}
!1666 = !{!1667}
!1667 = distinct !{!1667, !1668, !"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hc4b1201a97f36e73E: %self"}
!1668 = distinct !{!1668, !"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hc4b1201a97f36e73E"}
!1669 = !{!1670}
!1670 = distinct !{!1670, !1668, !"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hc4b1201a97f36e73E: %_0"}
!1671 = !{!1672, !1674, !1670, !1667}
!1672 = distinct !{!1672, !1673, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17heab6df6ef8037225E: %v"}
!1673 = distinct !{!1673, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17heab6df6ef8037225E"}
!1674 = distinct !{!1674, !1673, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17heab6df6ef8037225E: %s.0"}
!1675 = !{!1672, !1670, !1667}
!1676 = !{!1677, !1679}
!1677 = distinct !{!1677, !1678, !"_ZN83_$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc595cb6c8b2aa3efE: %self"}
!1678 = distinct !{!1678, !"_ZN83_$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc595cb6c8b2aa3efE"}
!1679 = distinct !{!1679, !1680, !"_ZN4core3ptr62drop_in_place$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$GT$17hbd24eab093b1da1aE: %_1"}
!1680 = distinct !{!1680, !"_ZN4core3ptr62drop_in_place$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$GT$17hbd24eab093b1da1aE"}
!1681 = !{!1682, !1684}
!1682 = distinct !{!1682, !1683, !"_ZN83_$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc595cb6c8b2aa3efE: %self"}
!1683 = distinct !{!1683, !"_ZN83_$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc595cb6c8b2aa3efE"}
!1684 = distinct !{!1684, !1685, !"_ZN4core3ptr62drop_in_place$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$GT$17hbd24eab093b1da1aE: %_1"}
!1685 = distinct !{!1685, !"_ZN4core3ptr62drop_in_place$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$GT$17hbd24eab093b1da1aE"}
!1686 = !{!1687, !1689}
!1687 = distinct !{!1687, !1688, !"_ZN83_$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc595cb6c8b2aa3efE: %self"}
!1688 = distinct !{!1688, !"_ZN83_$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc595cb6c8b2aa3efE"}
!1689 = distinct !{!1689, !1690, !"_ZN4core3ptr62drop_in_place$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$GT$17hbd24eab093b1da1aE: %_1"}
!1690 = distinct !{!1690, !"_ZN4core3ptr62drop_in_place$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$GT$17hbd24eab093b1da1aE"}
!1691 = !{!1692}
!1692 = distinct !{!1692, !1693, !"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3201b135c6bc89d5E: %_0"}
!1693 = distinct !{!1693, !"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3201b135c6bc89d5E"}
!1694 = distinct !{!1694, !1466}
!1695 = !{!1696}
!1696 = distinct !{!1696, !1697, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17heab6df6ef8037225E: %v"}
!1697 = distinct !{!1697, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17heab6df6ef8037225E"}
!1698 = !{!1696, !1699}
!1699 = distinct !{!1699, !1697, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17heab6df6ef8037225E: %s.0"}
!1700 = !{!1699}
!1701 = !{!1702}
!1702 = distinct !{!1702, !1703, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %self"}
!1703 = distinct !{!1703, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE"}
!1704 = !{!1705}
!1705 = distinct !{!1705, !1703, !"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17h347faf19d1fd461dE: %other"}
!1706 = !{!1707}
!1707 = distinct !{!1707, !1708, !"_ZN5alloc6string6String3len17hc147619d2ad1db0cE: %self"}
!1708 = distinct !{!1708, !"_ZN5alloc6string6String3len17hc147619d2ad1db0cE"}
!1709 = !{!1710}
!1710 = distinct !{!1710, !1711, !"_ZN5alloc6string6String3len17hc147619d2ad1db0cE: %self"}
!1711 = distinct !{!1711, !"_ZN5alloc6string6String3len17hc147619d2ad1db0cE"}
!1712 = !{!1713}
!1713 = distinct !{!1713, !1714, !"_ZN5alloc3vec9from_elem17had7d64d6a4a48132E: %_0"}
!1714 = distinct !{!1714, !"_ZN5alloc3vec9from_elem17had7d64d6a4a48132E"}
!1715 = !{!1716}
!1716 = distinct !{!1716, !1717, !"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3201b135c6bc89d5E: %_0"}
!1717 = distinct !{!1717, !"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3201b135c6bc89d5E"}
!1718 = !{!1716, !1713}
!1719 = !{!1720}
!1720 = distinct !{!1720, !1721, !"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E: %self"}
!1721 = distinct !{!1721, !"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E"}
!1722 = !{!1723}
!1723 = distinct !{!1723, !1721, !"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E: argument 1"}
!1724 = !{!1725}
!1725 = distinct !{!1725, !1726, !"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE: %self"}
!1726 = distinct !{!1726, !"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE"}
!1727 = !{!1728}
!1728 = distinct !{!1728, !1726, !"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE: argument 1"}
!1729 = !{!1730}
!1730 = distinct !{!1730, !1731, !"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7a0ce9ec0489349aE: %self"}
!1731 = distinct !{!1731, !"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7a0ce9ec0489349aE"}
!1732 = !{!1733}
!1733 = distinct !{!1733, !1731, !"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h7a0ce9ec0489349aE: argument 1"}
!1734 = !{!1735}
!1735 = distinct !{!1735, !1736, !"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48659c87ff6e3cb4E: %self"}
!1736 = distinct !{!1736, !"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48659c87ff6e3cb4E"}
!1737 = !{!1738}
!1738 = distinct !{!1738, !1736, !"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48659c87ff6e3cb4E: argument 1"}
!1739 = !{!1740, !1742}
!1740 = distinct !{!1740, !1741, !"_ZN5alloc6string6String6as_str17h5d0f4124dd88b637E: %self"}
!1741 = distinct !{!1741, !"_ZN5alloc6string6String6as_str17h5d0f4124dd88b637E"}
!1742 = distinct !{!1742, !1743, !"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hf2dd8c0f474e3d11E: %self"}
!1743 = distinct !{!1743, !"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hf2dd8c0f474e3d11E"}
!1744 = !{!1745, !1747}
!1745 = distinct !{!1745, !1746, !"_ZN5alloc6string6String6as_str17h5d0f4124dd88b637E: %self"}
!1746 = distinct !{!1746, !"_ZN5alloc6string6String6as_str17h5d0f4124dd88b637E"}
!1747 = distinct !{!1747, !1748, !"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hf2dd8c0f474e3d11E: %self"}
!1748 = distinct !{!1748, !"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hf2dd8c0f474e3d11E"}
!1749 = !{!1750}
!1750 = distinct !{!1750, !1751, !"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E: %self"}
!1751 = distinct !{!1751, !"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E"}
!1752 = !{!1753}
!1753 = distinct !{!1753, !1751, !"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E: argument 1"}
!1754 = !{!1755}
!1755 = distinct !{!1755, !1756, !"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE: %self"}
!1756 = distinct !{!1756, !"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE"}
!1757 = !{!1758}
!1758 = distinct !{!1758, !1756, !"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE: argument 1"}
!1759 = !{!1760}
!1760 = distinct !{!1760, !1761, !"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E: %self"}
!1761 = distinct !{!1761, !"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E"}
!1762 = !{!1763}
!1763 = distinct !{!1763, !1761, !"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h82c39717c1eb3998E: argument 1"}
!1764 = !{!1765}
!1765 = distinct !{!1765, !1766, !"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE: %self"}
!1766 = distinct !{!1766, !"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE"}
!1767 = !{!1768}
!1768 = distinct !{!1768, !1766, !"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE: argument 1"}
!1769 = !{!1770}
!1770 = distinct !{!1770, !1771, !"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE: %self"}
!1771 = distinct !{!1771, !"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE"}
!1772 = !{!1773}
!1773 = distinct !{!1773, !1771, !"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb45ac865c4a4340fE: argument 1"}
!1774 = !{!1775}
!1775 = distinct !{!1775, !1776, !"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48659c87ff6e3cb4E: %self"}
!1776 = distinct !{!1776, !"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48659c87ff6e3cb4E"}
!1777 = !{!1778}
!1778 = distinct !{!1778, !1776, !"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h48659c87ff6e3cb4E: argument 1"}
!1779 = !{!1780}
!1780 = distinct !{!1780, !1781, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h46759f9e634aababE: %self.0"}
!1781 = distinct !{!1781, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h46759f9e634aababE"}
!1782 = !{!1783, !1785, !1780}
!1783 = distinct !{!1783, !1784, !"_ZN5alloc5slice11stable_sort17hd7d0fa04ceab519fE: %v.0"}
!1784 = distinct !{!1784, !"_ZN5alloc5slice11stable_sort17hd7d0fa04ceab519fE"}
!1785 = distinct !{!1785, !1784, !"_ZN5alloc5slice11stable_sort17hd7d0fa04ceab519fE: argument 1"}
!1786 = !{!"branch_weights", !"expected", i32 2000, i32 1}
