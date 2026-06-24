; ModuleID = '0008_libtree_emit.40e1bd87a4b314ab-cgu.0'
source_filename = "0008_libtree_emit.40e1bd87a4b314ab-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vtable.0 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hfe48f06864ff7cf0E" }>, align 8
@alloc_00ae4b301f7fab8ac9617c03fcbd7274 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@alloc_99ac8a81a24cac863217ce4a5cbfabea = private unnamed_addr constant [5 x i8] c"Error", align 1
@vtable.1 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd43c7bafa56784c9E", [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$9write_str17hcc4e95ed9fd4917cE", ptr @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17he8d1b5eb989a688cE", ptr @_ZN4core3fmt5Write9write_fmt17h19bb28826bad3fc9E }>, align 8
@alloc_296ffa51fb6222b3fa05c6868be5654f = private unnamed_addr constant [72 x i8] c"/root/es/vert/vert/rust_funcs/c_crown/0008_libtree/0008_libtree_emit.rs\00", align 1
@alloc_0c812808379efded5a4fb82d2790b556 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@alloc_4b9ea91629b037351b3e7a2c6026ae06 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_296ffa51fb6222b3fa05c6868be5654f, [16 x i8] c"G\00\00\00\00\00\00\00\10\00\00\003\00\00\00" }>, align 8

; core::fmt::Write::write_fmt
; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_ZN4core3fmt5Write9write_fmt17h19bb28826bad3fc9E(ptr noalias noundef align 8 dereferenceable(24) %self, ptr noundef nonnull %args.0, ptr noundef nonnull %args.1) unnamed_addr #0 {
start:
; call core::fmt::write
  %0 = tail call noundef zeroext i1 @_ZN4core3fmt5write17h22467d3ad5dd5554E(ptr noundef nonnull align 8 dereferenceable(24) %self, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @vtable.1, ptr noundef nonnull %args.0, ptr noundef nonnull %args.1)
  ret i1 %0
}

; core::ptr::drop_in_place<alloc::string::String>
; Function Attrs: nounwind nonlazybind uwtable
define internal void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd43c7bafa56784c9E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %_1) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  %self1.i.i.i.i1.i = load i64, ptr %_1, align 8, !range !15, !alias.scope !16, !noalias !19, !noundef !21
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hffe8cc83eadb6e36E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h18d9c2417237e41cE.exit.i.i.i3.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h18d9c2417237e41cE.exit.i.i.i3.i": ; preds = %start
  %0 = getelementptr inbounds nuw i8, ptr %_1, i64 8
  %self3.i.i.i.i4.i = load ptr, ptr %0, align 8, !alias.scope !16, !noalias !19, !nonnull !21, !noundef !21
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i, i64 noundef %self1.i.i.i.i1.i, i64 noundef range(i64 1, -9223372036854775807) 1) #16, !noalias !22
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hffe8cc83eadb6e36E.exit"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hffe8cc83eadb6e36E.exit": ; preds = %start, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h18d9c2417237e41cE.exit.i.i.i3.i"
  ret void
}

; <core::fmt::Error as core::fmt::Debug>::fmt
; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hfe48f06864ff7cf0E"(ptr noalias nonnull readonly align 1 captures(none) %self, ptr noalias noundef align 8 dereferenceable(24) %f) unnamed_addr #2 {
start:
; call core::fmt::Formatter::write_str
  %_0 = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17h66c46e6e00843febE(ptr noalias noundef nonnull align 8 dereferenceable(24) %f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @alloc_99ac8a81a24cac863217ce4a5cbfabea, i64 noundef 5)
  ret i1 %_0
}

; <alloc::string::String as core::fmt::Write>::write_char
; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17he8d1b5eb989a688cE"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, i32 noundef range(i32 0, 1114112) %c) unnamed_addr #2 {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %len.i = load i64, ptr %0, align 8, !alias.scope !23, !noundef !21
  %_14.i = icmp sgt i64 %len.i, -1
  tail call void @llvm.assume(i1 %_14.i)
  %_16.i = icmp samesign ult i32 %c, 128
  br i1 %_16.i, label %bb2.i, label %bb3.i

bb3.i:                                            ; preds = %start
  %_17.i = icmp samesign ult i32 %c, 2048
  br i1 %_17.i, label %bb2.i, label %bb4.i

bb4.i:                                            ; preds = %bb3.i
  %_18.i = icmp samesign ult i32 %c, 65536
  %..i = select i1 %_18.i, i64 3, i64 4
  br label %bb2.i

bb2.i:                                            ; preds = %bb4.i, %bb3.i, %start
  %ch_len.sroa.0.0.i = phi i64 [ 1, %start ], [ %..i, %bb4.i ], [ 2, %bb3.i ]
  %self2.i.i = load i64, ptr %self, align 8, !range !15, !alias.scope !26, !noundef !21
  %_9.i.i = sub nsw i64 %self2.i.i, %len.i
  %_7.i.i = icmp ugt i64 %ch_len.sroa.0.0.i, %_9.i.i
  br i1 %_7.i.i, label %bb1.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78fd605c8f6bfef9E.exit.i", !prof !29

bb1.i.i:                                          ; preds = %bb2.i
; call alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hf20a959ae82085bdE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %self, i64 noundef %len.i, i64 noundef %ch_len.sroa.0.0.i)
  %count.pre.i = load i64, ptr %0, align 8, !alias.scope !23
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78fd605c8f6bfef9E.exit.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78fd605c8f6bfef9E.exit.i": ; preds = %bb1.i.i, %bb2.i
  %count.i = phi i64 [ %len.i, %bb2.i ], [ %count.pre.i, %bb1.i.i ]
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_20.i = load ptr, ptr %1, align 8, !alias.scope !23, !nonnull !21, !noundef !21
  %_21.i = icmp sgt i64 %count.i, -1
  tail call void @llvm.assume(i1 %_21.i)
  %_8.i = getelementptr inbounds nuw i8, ptr %_20.i, i64 %count.i
  br i1 %_16.i, label %bb12.i.i, label %bb7.i.i

bb7.i.i:                                          ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78fd605c8f6bfef9E.exit.i"
  %_29.i.i = icmp samesign ult i32 %c, 2048
  %2 = trunc i32 %c to i8
  %_5.i.i = and i8 %2, 63
  %last1.i.i = or disjoint i8 %_5.i.i, -128
  %_10.i.i = lshr i32 %c, 6
  %3 = trunc i32 %_10.i.i to i8
  %_8.i.i = and i8 %3, 63
  %last2.i.i = or disjoint i8 %_8.i.i, -128
  %_14.i.i = lshr i32 %c, 12
  %4 = trunc i32 %_14.i.i to i8
  %_12.i.i = and i8 %4, 63
  %last3.i.i = or disjoint i8 %_12.i.i, -128
  %_18.i.i = lshr i32 %c, 18
  %_16.i.i = trunc nuw nsw i32 %_18.i.i to i8
  %last4.i.i = or disjoint i8 %_16.i.i, -16
  br i1 %_29.i.i, label %bb1.i2.i, label %bb2.i.i

bb12.i.i:                                         ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78fd605c8f6bfef9E.exit.i"
  %5 = trunc nuw nsw i32 %c to i8
  store i8 %5, ptr %_8.i, align 1, !noalias !23
  br label %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit

bb2.i.i:                                          ; preds = %bb7.i.i
  %_30.i.i = icmp samesign ult i32 %c, 65536
  br i1 %_30.i.i, label %bb3.i.i, label %bb4.i.i

bb1.i2.i:                                         ; preds = %bb7.i.i
  %6 = or disjoint i8 %3, -64
  store i8 %6, ptr %_8.i, align 1, !noalias !23
  %_21.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 1
  store i8 %last1.i.i, ptr %_21.i.i, align 1, !noalias !23
  br label %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit

bb4.i.i:                                          ; preds = %bb2.i.i
  store i8 %last4.i.i, ptr %_8.i, align 1, !noalias !23
  %_25.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 1
  store i8 %last3.i.i, ptr %_25.i.i, align 1, !noalias !23
  %_26.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 2
  store i8 %last2.i.i, ptr %_26.i.i, align 1, !noalias !23
  %_27.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 3
  store i8 %last1.i.i, ptr %_27.i.i, align 1, !noalias !23
  br label %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit

bb3.i.i:                                          ; preds = %bb2.i.i
  %7 = or disjoint i8 %4, -32
  store i8 %7, ptr %_8.i, align 1, !noalias !23
  %_23.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 1
  store i8 %last2.i.i, ptr %_23.i.i, align 1, !noalias !23
  %_24.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 2
  store i8 %last1.i.i, ptr %_24.i.i, align 1, !noalias !23
  br label %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit

_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit: ; preds = %bb12.i.i, %bb1.i2.i, %bb4.i.i, %bb3.i.i
  %new_len.i = add nuw i64 %ch_len.sroa.0.0.i, %len.i
  store i64 %new_len.i, ptr %0, align 8, !alias.scope !23
  ret i1 false
}

; <alloc::string::String as core::fmt::Write>::write_str
; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$9write_str17hcc4e95ed9fd4917cE"(ptr noalias noundef align 8 captures(none) dereferenceable(24) %self, ptr noalias noundef nonnull readonly align 1 captures(none) %s.0, i64 noundef %s.1) unnamed_addr #2 {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %len.i.i.i.i = load i64, ptr %0, align 8, !alias.scope !39, !noalias !42, !noundef !21
  %self2.i.i.i.i = load i64, ptr %self, align 8, !range !15, !alias.scope !39, !noalias !42, !noundef !21
  %_9.i.i.i.i = sub i64 %self2.i.i.i.i, %len.i.i.i.i
  %_7.i.i.i.i = icmp ugt i64 %s.1, %_9.i.i.i.i
  br i1 %_7.i.i.i.i, label %bb1.i.i.i.i, label %_ZN5alloc6string6String8push_str17h47673a9a1523eea2E.exit, !prof !29

bb1.i.i.i.i:                                      ; preds = %start
; call alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hf20a959ae82085bdE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %self, i64 noundef %len.i.i.i.i, i64 noundef %s.1)
  %len.pre.i.i.i = load i64, ptr %0, align 8, !alias.scope !44, !noalias !42
  br label %_ZN5alloc6string6String8push_str17h47673a9a1523eea2E.exit

_ZN5alloc6string6String8push_str17h47673a9a1523eea2E.exit: ; preds = %start, %bb1.i.i.i.i
  %len.i.i.i = phi i64 [ %len.i.i.i.i, %start ], [ %len.pre.i.i.i, %bb1.i.i.i.i ]
  %_9.i.i.i = icmp sgt i64 %len.i.i.i, -1
  tail call void @llvm.assume(i1 %_9.i.i.i)
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_10.i.i.i = load ptr, ptr %1, align 8, !alias.scope !44, !noalias !42, !nonnull !21, !noundef !21
  %dst.i.i.i = getelementptr inbounds nuw i8, ptr %_10.i.i.i, i64 %len.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %dst.i.i.i, ptr nonnull readonly align 1 %s.0, i64 %s.1, i1 false), !noalias !44
  %2 = add i64 %len.i.i.i, %s.1
  store i64 %2, ptr %0, align 8, !alias.scope !44, !noalias !42
  ret i1 false
}

; alloc::raw_vec::RawVecInner<A>::finish_grow
; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11finish_grow17h667ff40bbcc65d48E"(ptr dead_on_unwind noalias noundef nonnull writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %_0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %self, i64 noundef %cap) unnamed_addr #3 {
start:
  %_26.i = icmp slt i64 %cap, 0
  br i1 %_26.i, label %bb8, label %bb11, !prof !45

bb11:                                             ; preds = %start
  %self1.i = load i64, ptr %self, align 8, !range !15, !alias.scope !46, !noalias !49, !noundef !21
  %_6.i = icmp eq i64 %self1.i, 0
  br i1 %_6.i, label %bb5, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17hb74934e519f30dbcE.exit"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17hb74934e519f30dbcE.exit": ; preds = %bb11
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %self3.i = load ptr, ptr %0, align 8, !alias.scope !46, !noalias !49, !nonnull !21, !noundef !21
  %cond.i.i = icmp samesign uge i64 %cap, %self1.i
  tail call void @llvm.assume(i1 %cond.i.i)
; call __rustc::__rust_realloc
  %raw_ptr.i.i = tail call noundef ptr @_RNvCsdBezzDwma51_7___rustc14___rust_realloc(ptr noundef nonnull %self3.i, i64 noundef %self1.i, i64 noundef range(i64 1, -9223372036854775807) 1, i64 noundef %cap) #16
  br label %bb7

bb5:                                              ; preds = %bb11
  %1 = icmp eq i64 %cap, 0
  br i1 %1, label %bb16, label %bb4.i.i14

bb4.i.i14:                                        ; preds = %bb5
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16
; call __rustc::__rust_alloc
  %2 = tail call noundef ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %cap, i64 noundef range(i64 1, -9223372036854775807) 1) #16
  br label %bb7

bb7:                                              ; preds = %bb4.i.i14, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17hb74934e519f30dbcE.exit"
  %raw_ptr.i.i.pn = phi ptr [ %raw_ptr.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17hb74934e519f30dbcE.exit" ], [ %2, %bb4.i.i14 ]
  %3 = icmp eq ptr %raw_ptr.i.i.pn, null
  br i1 %3, label %bb15, label %bb16

bb15:                                             ; preds = %bb7
  %4 = getelementptr inbounds nuw i8, ptr %_0, i64 8
  store i64 1, ptr %4, align 8
  br label %bb8

bb16:                                             ; preds = %bb5, %bb7
  %raw_ptr.i.i.pn24 = phi ptr [ %raw_ptr.i.i.pn, %bb7 ], [ inttoptr (i64 1 to ptr), %bb5 ]
  %5 = getelementptr inbounds nuw i8, ptr %_0, i64 8
  store ptr %raw_ptr.i.i.pn24, ptr %5, align 8
  br label %bb8

bb8:                                              ; preds = %start, %bb16, %bb15
  %.sink26 = phi i64 [ 16, %bb16 ], [ 16, %bb15 ], [ 8, %start ]
  %cap.sink = phi i64 [ %cap, %bb16 ], [ %cap, %bb15 ], [ 0, %start ]
  %.sink = phi i64 [ 0, %bb16 ], [ 1, %bb15 ], [ 1, %start ]
  %6 = getelementptr inbounds nuw i8, ptr %_0, i64 %.sink26
  store i64 %cap.sink, ptr %6, align 8
  store i64 %.sink, ptr %_0, align 8
  ret void
}

; alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hf20a959ae82085bdE"(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(16) %slf, i64 noundef %len, i64 noundef %additional) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %self3.i = alloca [24 x i8], align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %_26.0.i = add i64 %additional, %len
  %_26.1.i = icmp ult i64 %_26.0.i, %len
  br i1 %_26.1.i, label %bb2, label %bb9.i

bb9.i:                                            ; preds = %start
  %self5.i = load i64, ptr %slf, align 8, !range !15, !alias.scope !51, !noundef !21
  %v16.i = shl nuw i64 %self5.i, 1
  %_0.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %_26.0.i, i64 range(i64 0, -1) %v16.i)
  %_0.sroa.0.0.i15.i = tail call noundef i64 @llvm.umax.i64(i64 %_0.sroa.0.0.i.i, i64 8)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %self3.i), !noalias !51
; call alloc::raw_vec::RawVecInner<A>::finish_grow
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11finish_grow17h667ff40bbcc65d48E"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %self3.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %slf, i64 noundef %_0.sroa.0.0.i15.i)
  %_37.i = load i64, ptr %self3.i, align 8, !range !54, !noalias !51, !noundef !21
  %0 = trunc nuw i64 %_37.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %self3.i, i64 8
  br i1 %0, label %bb18.i, label %bb3

bb18.i:                                           ; preds = %bb9.i
  %e.0.i = load i64, ptr %1, align 8, !range !55, !noalias !51, !noundef !21
  %2 = getelementptr inbounds nuw i8, ptr %self3.i, i64 16
  %e.1.i = load i64, ptr %2, align 8, !noalias !51
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %self3.i), !noalias !51
  br label %bb2

bb2:                                              ; preds = %bb18.i, %start
  %_0.sroa.5.0.i.ph = phi i64 [ undef, %start ], [ %e.1.i, %bb18.i ]
  %_0.sroa.0.0.i.ph = phi i64 [ 0, %start ], [ %e.0.i, %bb18.i ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_0.sroa.0.0.i.ph, i64 %_0.sroa.5.0.i.ph) #17
  unreachable

bb3:                                              ; preds = %bb9.i
  %v.0.i = load ptr, ptr %1, align 8, !noalias !51, !nonnull !21, !noundef !21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %self3.i), !noalias !51
  %3 = getelementptr inbounds nuw i8, ptr %slf, i64 8
  store ptr %v.0.i, ptr %3, align 8, !alias.scope !51
  %4 = icmp sgt i64 %_0.sroa.0.0.i15.i, -1
  tail call void @llvm.assume(i1 %4)
  store i64 %_0.sroa.0.0.i15.i, ptr %slf, align 8, !alias.scope !51
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define noundef zeroext i1 @is_ascending_order(ptr noalias noundef nonnull readonly align 8 captures(none) %values.0, i64 noundef range(i64 0, 1152921504606846976) %values.1) unnamed_addr #5 {
start:
  %umax = tail call i64 @llvm.umax.i64(i64 %values.1, i64 1)
  %invariant.gep = getelementptr i8, ptr %values.0, i64 -8
  br label %bb1

bb1:                                              ; preds = %bb3, %start
  %iter.sroa.0.0 = phi i64 [ 1, %start ], [ %0, %bb3 ]
  %exitcond = icmp eq i64 %iter.sroa.0.0, %umax
  br i1 %exitcond, label %bb6, label %bb3

bb6:                                              ; preds = %bb3, %bb1
  %_11.not = icmp samesign uge i64 %iter.sroa.0.0, %values.1
  ret i1 %_11.not

bb3:                                              ; preds = %bb1
  %0 = add nuw nsw i64 %iter.sroa.0.0, 1
  %gep = getelementptr i64, ptr %invariant.gep, i64 %iter.sroa.0.0
  %_6 = load i64, ptr %gep, align 8, !noundef !21
  %1 = getelementptr inbounds nuw i64, ptr %values.0, i64 %iter.sroa.0.0
  %_9 = load i64, ptr %1, align 8, !noundef !21
  %_5.not = icmp ult i64 %_6, %_9
  br i1 %_5.not, label %bb1, label %bb6
}

; Function Attrs: nonlazybind uwtable
define void @utoa(ptr noalias noundef align 8 captures(none) dereferenceable(24) %string, i64 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %e.i = alloca [0 x i8], align 1
  %buf.i = alloca [24 x i8], align 8
  %args = alloca [16 x i8], align 8
  %_11 = alloca [8 x i8], align 8
  %tmp = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp)
  store i64 0, ptr %tmp, align 8
  %_22.sroa.4.0.tmp.sroa_idx = getelementptr inbounds nuw i8, ptr %tmp, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %_22.sroa.4.0.tmp.sroa_idx, align 8
  %_22.sroa.5.0.tmp.sroa_idx = getelementptr inbounds nuw i8, ptr %tmp, i64 16
  store i64 0, ptr %_22.sroa.5.0.tmp.sroa_idx, align 8
  %_4.not29 = icmp eq i64 %0, 0
  br i1 %_4.not29, label %bb4.thread, label %bb2.lr.ph

bb4.thread:                                       ; preds = %start
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %buf.i), !noalias !56
  br label %bb17.thread

bb2.lr.ph:                                        ; preds = %start
  %_14.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %args, i64 8
  br label %bb2

bb4:                                              ; preds = %bb3
  %_59.pre = load ptr, ptr %_22.sroa.4.0.tmp.sroa_idx, align 8
  %_58.pre = load i64, ptr %_22.sroa.5.0.tmp.sroa_idx, align 8
  %_66 = getelementptr inbounds nuw i8, ptr %_59.pre, i64 %_58.pre
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %buf.i), !noalias !56
  store i64 0, ptr %buf.i, align 8, !noalias !56
  %_5.sroa.4.0.buf.sroa_idx.i = getelementptr inbounds nuw i8, ptr %buf.i, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %_5.sroa.4.0.buf.sroa_idx.i, align 8, !noalias !56
  %_5.sroa.5.0.buf.sroa_idx.i = getelementptr inbounds nuw i8, ptr %buf.i, i64 16
  store i64 0, ptr %_5.sroa.5.0.buf.sroa_idx.i, align 8, !noalias !56
  call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %_7.i.i.not.i = icmp samesign eq i64 %_58.pre, 0
  br i1 %_7.i.i.not.i, label %bb17.thread, label %bb1.i.i.i, !prof !62

bb1.i.i.i:                                        ; preds = %bb4
  %d1.i.i.i.i = lshr i64 %_58.pre, 2
  %r.i.i.i.i = and i64 %_58.pre, 3
  %_12.not.i.i.i.i = icmp ne i64 %r.i.i.i.i, 0
  %1 = zext i1 %_12.not.i.i.i.i to i64
  %_4.sroa.0.0.i.i.i.i = add nuw nsw i64 %d1.i.i.i.i, %1
; invoke alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hf20a959ae82085bdE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %buf.i, i64 noundef 0, i64 noundef %_4.sroa.0.0.i.i.i.i)
          to label %bb17.i.i.i.i.i.i.preheader.i unwind label %cleanup.loopexit.split-lp.i

bb17.i.i.i.i.i.i.preheader.i:                     ; preds = %bb1.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !63)
  call void @llvm.experimental.noalias.scope.decl(metadata !66)
  call void @llvm.experimental.noalias.scope.decl(metadata !69)
  br label %bb17.i.i.i.i.i.i.i

bb17.i.i.i.i.i.i.i:                               ; preds = %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7289b83df72b8726E.exit.i.i.i.i.i", %bb17.i.i.i.i.i.i.preheader.i
  %self.sroa.2.021.i.i.i.i.i = phi ptr [ %self.sroa.2.3917.i.i.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7289b83df72b8726E.exit.i.i.i.i.i" ], [ %_66, %bb17.i.i.i.i.i.i.preheader.i ]
  %_24.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %self.sroa.2.021.i.i.i.i.i, i64 -1
  %w.i.i.i.i.i.i.i = load i8, ptr %_24.i.i.i.i.i.i.i.i, align 1, !noalias !72, !noundef !21
  %_6.i.i.i.i.i.i.i = icmp sgt i8 %w.i.i.i.i.i.i.i, -1
  br i1 %_6.i.i.i.i.i.i.i, label %bb3.thread.i.i.i.i.i, label %bb4.i.i.i.i.i.i.i

bb4.i.i.i.i.i.i.i:                                ; preds = %bb17.i.i.i.i.i.i.i
  %2 = icmp ne ptr %_59.pre, %_24.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %2)
  %_24.i13.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %self.sroa.2.021.i.i.i.i.i, i64 -2
  %z.i.i.i.i.i.i.i = load i8, ptr %_24.i13.i.i.i.i.i.i.i, align 1, !noalias !72, !noundef !21
  %_26.i.i.i.i.i.i.i = and i8 %z.i.i.i.i.i.i.i, 31
  %3 = zext nneg i8 %_26.i.i.i.i.i.i.i to i32
  %_12.i.i.i.i.i.i.i = icmp slt i8 %z.i.i.i.i.i.i.i, -64
  br i1 %_12.i.i.i.i.i.i.i, label %bb6.i.i.i.i.i.i.i, label %"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h4439ae3a79c52123E.exit.i.i.i.i.i"

bb3.thread.i.i.i.i.i:                             ; preds = %bb17.i.i.i.i.i.i.i
  %_8.i.i.i.i.i.i.i = zext nneg i8 %w.i.i.i.i.i.i.i to i32
  %len.i.i.i13.i.i.i.i.i = load i64, ptr %_5.sroa.5.0.buf.sroa_idx.i, align 8, !alias.scope !77, !noalias !80, !noundef !21
  %_14.i.i.i14.i.i.i.i.i = icmp sgt i64 %len.i.i.i13.i.i.i.i.i, -1
  call void @llvm.assume(i1 %_14.i.i.i14.i.i.i.i.i)
  br label %bb2.i.i.i.i.i.i.i.i

bb6.i.i.i.i.i.i.i:                                ; preds = %bb4.i.i.i.i.i.i.i
  %4 = icmp ne ptr %_59.pre, %_24.i13.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %4)
  %_24.i19.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %self.sroa.2.021.i.i.i.i.i, i64 -3
  %y.i.i.i.i.i.i.i = load i8, ptr %_24.i19.i.i.i.i.i.i.i, align 1, !noalias !72, !noundef !21
  %_31.i.i.i.i.i.i.i = and i8 %y.i.i.i.i.i.i.i, 15
  %5 = zext nneg i8 %_31.i.i.i.i.i.i.i to i32
  %_16.i.i.i.i.i.i.i = icmp slt i8 %y.i.i.i.i.i.i.i, -64
  br i1 %_16.i.i.i.i.i.i.i, label %bb8.i.i.i.i.i.i.i, label %bb11.i.i.i.i.i.i.i

bb8.i.i.i.i.i.i.i:                                ; preds = %bb6.i.i.i.i.i.i.i
  %6 = icmp ne ptr %_59.pre, %_24.i19.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %6)
  %_24.i25.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %self.sroa.2.021.i.i.i.i.i, i64 -4
  %x.i.i.i.i.i.i.i = load i8, ptr %_24.i25.i.i.i.i.i.i.i, align 1, !noalias !72, !noundef !21
  %_36.i.i.i.i.i.i.i = and i8 %x.i.i.i.i.i.i.i, 7
  %7 = zext nneg i8 %_36.i.i.i.i.i.i.i to i32
  %_37.i.i.i.i.i.i.i = shl nuw nsw i32 %7, 6
  %_39.i.i.i.i.i.i.i = and i8 %y.i.i.i.i.i.i.i, 63
  %_38.i.i.i.i.i.i.i = zext nneg i8 %_39.i.i.i.i.i.i.i to i32
  %8 = or disjoint i32 %_37.i.i.i.i.i.i.i, %_38.i.i.i.i.i.i.i
  br label %bb11.i.i.i.i.i.i.i

bb11.i.i.i.i.i.i.i:                               ; preds = %bb8.i.i.i.i.i.i.i, %bb6.i.i.i.i.i.i.i
  %self.sroa.2.2.i.i.i.i.i = phi ptr [ %_24.i25.i.i.i.i.i.i.i, %bb8.i.i.i.i.i.i.i ], [ %_24.i19.i.i.i.i.i.i.i, %bb6.i.i.i.i.i.i.i ]
  %ch.sroa.0.1.i.i.i.i.i.i.i = phi i32 [ %8, %bb8.i.i.i.i.i.i.i ], [ %5, %bb6.i.i.i.i.i.i.i ]
  %_40.i.i.i.i.i.i.i = shl nuw nsw i32 %ch.sroa.0.1.i.i.i.i.i.i.i, 6
  %_42.i.i.i.i.i.i.i = and i8 %z.i.i.i.i.i.i.i, 63
  %_41.i.i.i.i.i.i.i = zext nneg i8 %_42.i.i.i.i.i.i.i to i32
  %9 = or disjoint i32 %_40.i.i.i.i.i.i.i, %_41.i.i.i.i.i.i.i
  br label %"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h4439ae3a79c52123E.exit.i.i.i.i.i"

"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h4439ae3a79c52123E.exit.i.i.i.i.i": ; preds = %bb11.i.i.i.i.i.i.i, %bb4.i.i.i.i.i.i.i
  %self.sroa.2.1.i.i.i.i.i = phi ptr [ %self.sroa.2.2.i.i.i.i.i, %bb11.i.i.i.i.i.i.i ], [ %_24.i13.i.i.i.i.i.i.i, %bb4.i.i.i.i.i.i.i ]
  %ch.sroa.0.0.i.i.i.i.i.i.i = phi i32 [ %9, %bb11.i.i.i.i.i.i.i ], [ %3, %bb4.i.i.i.i.i.i.i ]
  %_43.i.i.i.i.i.i.i = shl nuw nsw i32 %ch.sroa.0.0.i.i.i.i.i.i.i, 6
  %_45.i.i.i.i.i.i.i = and i8 %w.i.i.i.i.i.i.i, 63
  %_44.i.i.i.i.i.i.i = zext nneg i8 %_45.i.i.i.i.i.i.i to i32
  %10 = or disjoint i32 %_43.i.i.i.i.i.i.i, %_44.i.i.i.i.i.i.i
  %.not.i.i.i.i.i = icmp eq i32 %10, 1114112
  br i1 %.not.i.i.i.i.i, label %"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h4439ae3a79c52123E.exit.i.i.i.i.i.bb17.loopexit_crit_edge", label %bb3.i.i.i.i.i

"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h4439ae3a79c52123E.exit.i.i.i.i.i.bb17.loopexit_crit_edge": ; preds = %"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h4439ae3a79c52123E.exit.i.i.i.i.i"
  %_18.sroa.5.0.copyload.pre.pre = load ptr, ptr %_5.sroa.4.0.buf.sroa_idx.i, align 8
  %_18.sroa.8.0.copyload.pre.pre = load i64, ptr %_5.sroa.5.0.buf.sroa_idx.i, align 8
  br label %bb17

bb3.i.i.i.i.i:                                    ; preds = %"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h4439ae3a79c52123E.exit.i.i.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !85)
  %len.i.i.i.i.i.i.i.i = load i64, ptr %_5.sroa.5.0.buf.sroa_idx.i, align 8, !alias.scope !87, !noalias !88, !noundef !21
  %_14.i.i.i.i.i.i.i.i = icmp sgt i64 %len.i.i.i.i.i.i.i.i, -1
  call void @llvm.assume(i1 %_14.i.i.i.i.i.i.i.i)
  %_16.i.i.i.i.i.i.i.i = icmp samesign ult i32 %ch.sroa.0.0.i.i.i.i.i.i.i, 2
  br i1 %_16.i.i.i.i.i.i.i.i, label %bb2.i.i.i.i.i.i.i.i, label %bb3.i.i.i.i.i.i.i.i

bb3.i.i.i.i.i.i.i.i:                              ; preds = %bb3.i.i.i.i.i
  %_17.i.i.i.i.i.i.i.i = icmp samesign ult i32 %ch.sroa.0.0.i.i.i.i.i.i.i, 32
  br i1 %_17.i.i.i.i.i.i.i.i, label %bb2.i.i.i.i.i.i.i.i, label %bb4.i.i.i.i.i.i.i.i

bb4.i.i.i.i.i.i.i.i:                              ; preds = %bb3.i.i.i.i.i.i.i.i
  %_18.i.i.i.i.i.i.i.i = icmp samesign ult i32 %ch.sroa.0.0.i.i.i.i.i.i.i, 1024
  %..i.i.i.i.i.i.i.i = select i1 %_18.i.i.i.i.i.i.i.i, i64 3, i64 4
  br label %bb2.i.i.i.i.i.i.i.i

bb2.i.i.i.i.i.i.i.i:                              ; preds = %bb4.i.i.i.i.i.i.i.i, %bb3.i.i.i.i.i.i.i.i, %bb3.i.i.i.i.i, %bb3.thread.i.i.i.i.i
  %_16.i.i.i19.i.i.i.i.i = phi i1 [ true, %bb3.i.i.i.i.i ], [ false, %bb4.i.i.i.i.i.i.i.i ], [ false, %bb3.i.i.i.i.i.i.i.i ], [ true, %bb3.thread.i.i.i.i.i ]
  %len.i.i.i18.i.i.i.i.i = phi i64 [ %len.i.i.i.i.i.i.i.i, %bb3.i.i.i.i.i ], [ %len.i.i.i.i.i.i.i.i, %bb4.i.i.i.i.i.i.i.i ], [ %len.i.i.i.i.i.i.i.i, %bb3.i.i.i.i.i.i.i.i ], [ %len.i.i.i13.i.i.i.i.i, %bb3.thread.i.i.i.i.i ]
  %self.sroa.2.3917.i.i.i.i.i = phi ptr [ %self.sroa.2.1.i.i.i.i.i, %bb3.i.i.i.i.i ], [ %self.sroa.2.1.i.i.i.i.i, %bb4.i.i.i.i.i.i.i.i ], [ %self.sroa.2.1.i.i.i.i.i, %bb3.i.i.i.i.i.i.i.i ], [ %_24.i.i.i.i.i.i.i.i, %bb3.thread.i.i.i.i.i ]
  %spec.select.i1016.i.i.i.i.i = phi i32 [ %10, %bb3.i.i.i.i.i ], [ %10, %bb4.i.i.i.i.i.i.i.i ], [ %10, %bb3.i.i.i.i.i.i.i.i ], [ %_8.i.i.i.i.i.i.i, %bb3.thread.i.i.i.i.i ]
  %ch_len.sroa.0.0.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb3.i.i.i.i.i ], [ %..i.i.i.i.i.i.i.i, %bb4.i.i.i.i.i.i.i.i ], [ 2, %bb3.i.i.i.i.i.i.i.i ], [ 1, %bb3.thread.i.i.i.i.i ]
  %self2.i.i.i.i.i.i.i.i.i = load i64, ptr %buf.i, align 8, !range !15, !alias.scope !91, !noalias !88, !noundef !21
  %_9.i.i.i.i.i.i.i.i.i = sub nsw i64 %self2.i.i.i.i.i.i.i.i.i, %len.i.i.i18.i.i.i.i.i
  %_7.i.i.i.i.i.i.i.i.i = icmp ugt i64 %ch_len.sroa.0.0.i.i.i.i.i.i.i.i, %_9.i.i.i.i.i.i.i.i.i
  br i1 %_7.i.i.i.i.i.i.i.i.i, label %bb1.i.i.i.i.i.i.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78fd605c8f6bfef9E.exit.i.i.i.i.i.i.i.i", !prof !29

bb1.i.i.i.i.i.i.i.i.i:                            ; preds = %bb2.i.i.i.i.i.i.i.i
; invoke alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hf20a959ae82085bdE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %buf.i, i64 noundef %len.i.i.i18.i.i.i.i.i, i64 noundef %ch_len.sroa.0.0.i.i.i.i.i.i.i.i)
          to label %.noexc1.i unwind label %cleanup.loopexit.i

.noexc1.i:                                        ; preds = %bb1.i.i.i.i.i.i.i.i.i
  %count.pre.i.i.i.i.i.i.i.i = load i64, ptr %_5.sroa.5.0.buf.sroa_idx.i, align 8, !alias.scope !87, !noalias !88
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78fd605c8f6bfef9E.exit.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78fd605c8f6bfef9E.exit.i.i.i.i.i.i.i.i": ; preds = %.noexc1.i, %bb2.i.i.i.i.i.i.i.i
  %count.i.i.i.i.i.i.i.i = phi i64 [ %len.i.i.i18.i.i.i.i.i, %bb2.i.i.i.i.i.i.i.i ], [ %count.pre.i.i.i.i.i.i.i.i, %.noexc1.i ]
  %_20.i.i.i.i.i.i.i.i = load ptr, ptr %_5.sroa.4.0.buf.sroa_idx.i, align 8, !alias.scope !87, !noalias !88, !nonnull !21, !noundef !21
  %_21.i.i.i.i.i.i.i.i = icmp sgt i64 %count.i.i.i.i.i.i.i.i, -1
  call void @llvm.assume(i1 %_21.i.i.i.i.i.i.i.i)
  %_8.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %_20.i.i.i.i.i.i.i.i, i64 %count.i.i.i.i.i.i.i.i
  br i1 %_16.i.i.i19.i.i.i.i.i, label %bb12.i.i.i.i.i.i.i.i.i, label %bb7.i.i.i.i.i.i.i.i.i

bb7.i.i.i.i.i.i.i.i.i:                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78fd605c8f6bfef9E.exit.i.i.i.i.i.i.i.i"
  %_29.i.i.i.i.i.i.i.i.i = icmp samesign ult i32 %spec.select.i1016.i.i.i.i.i, 2048
  %11 = trunc i32 %spec.select.i1016.i.i.i.i.i to i8
  %_5.i.i.i.i.i.i.i.i.i = and i8 %11, 63
  %last1.i.i.i.i.i.i.i.i.i = or disjoint i8 %_5.i.i.i.i.i.i.i.i.i, -128
  %_10.i.i.i.i.i.i.i.i.i = lshr i32 %spec.select.i1016.i.i.i.i.i, 6
  %12 = trunc i32 %_10.i.i.i.i.i.i.i.i.i to i8
  %_8.i.i.i.i.i.i.i.i.i = and i8 %12, 63
  %last2.i.i.i.i.i.i.i.i.i = or disjoint i8 %_8.i.i.i.i.i.i.i.i.i, -128
  %_14.i.i.i.i.i.i.i.i.i = lshr i32 %spec.select.i1016.i.i.i.i.i, 12
  %13 = trunc i32 %_14.i.i.i.i.i.i.i.i.i to i8
  %_12.i.i.i.i.i.i.i.i.i = and i8 %13, 63
  %last3.i.i.i.i.i.i.i.i.i = or disjoint i8 %_12.i.i.i.i.i.i.i.i.i, -128
  %_18.i.i.i.i.i.i.i.i.i = lshr i32 %spec.select.i1016.i.i.i.i.i, 18
  %_16.i.i.i.i.i.i.i.i.i = trunc nuw nsw i32 %_18.i.i.i.i.i.i.i.i.i to i8
  %last4.i.i.i.i.i.i.i.i.i = or disjoint i8 %_16.i.i.i.i.i.i.i.i.i, -16
  br i1 %_29.i.i.i.i.i.i.i.i.i, label %bb1.i2.i.i.i.i.i.i.i.i, label %bb2.i.i.i.i.i.i.i.i.i

bb12.i.i.i.i.i.i.i.i.i:                           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78fd605c8f6bfef9E.exit.i.i.i.i.i.i.i.i"
  %14 = trunc nuw nsw i32 %spec.select.i1016.i.i.i.i.i to i8
  store i8 %14, ptr %_8.i.i.i.i.i.i.i.i, align 1, !noalias !94
  br label %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7289b83df72b8726E.exit.i.i.i.i.i"

bb2.i.i.i.i.i.i.i.i.i:                            ; preds = %bb7.i.i.i.i.i.i.i.i.i
  %_30.i.i.i.i.i.i.i.i.i = icmp samesign ult i32 %spec.select.i1016.i.i.i.i.i, 65536
  br i1 %_30.i.i.i.i.i.i.i.i.i, label %bb3.i.i.i.i.i.i.i.i.i, label %bb4.i.i.i.i.i.i.i.i.i

bb1.i2.i.i.i.i.i.i.i.i:                           ; preds = %bb7.i.i.i.i.i.i.i.i.i
  %15 = or disjoint i8 %12, -64
  store i8 %15, ptr %_8.i.i.i.i.i.i.i.i, align 1, !noalias !94
  %_21.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %_8.i.i.i.i.i.i.i.i, i64 1
  store i8 %last1.i.i.i.i.i.i.i.i.i, ptr %_21.i.i.i.i.i.i.i.i.i, align 1, !noalias !94
  br label %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7289b83df72b8726E.exit.i.i.i.i.i"

bb4.i.i.i.i.i.i.i.i.i:                            ; preds = %bb2.i.i.i.i.i.i.i.i.i
  store i8 %last4.i.i.i.i.i.i.i.i.i, ptr %_8.i.i.i.i.i.i.i.i, align 1, !noalias !94
  %_25.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %_8.i.i.i.i.i.i.i.i, i64 1
  store i8 %last3.i.i.i.i.i.i.i.i.i, ptr %_25.i.i.i.i.i.i.i.i.i, align 1, !noalias !94
  %_26.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %_8.i.i.i.i.i.i.i.i, i64 2
  store i8 %last2.i.i.i.i.i.i.i.i.i, ptr %_26.i.i.i.i.i.i.i.i.i, align 1, !noalias !94
  %_27.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %_8.i.i.i.i.i.i.i.i, i64 3
  store i8 %last1.i.i.i.i.i.i.i.i.i, ptr %_27.i.i.i.i.i.i.i.i.i, align 1, !noalias !94
  br label %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7289b83df72b8726E.exit.i.i.i.i.i"

bb3.i.i.i.i.i.i.i.i.i:                            ; preds = %bb2.i.i.i.i.i.i.i.i.i
  %16 = or disjoint i8 %13, -32
  store i8 %16, ptr %_8.i.i.i.i.i.i.i.i, align 1, !noalias !94
  %_23.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %_8.i.i.i.i.i.i.i.i, i64 1
  store i8 %last2.i.i.i.i.i.i.i.i.i, ptr %_23.i.i.i.i.i.i.i.i.i, align 1, !noalias !94
  %_24.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %_8.i.i.i.i.i.i.i.i, i64 2
  store i8 %last1.i.i.i.i.i.i.i.i.i, ptr %_24.i.i.i.i.i.i.i.i.i, align 1, !noalias !94
  br label %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7289b83df72b8726E.exit.i.i.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7289b83df72b8726E.exit.i.i.i.i.i": ; preds = %bb3.i.i.i.i.i.i.i.i.i, %bb4.i.i.i.i.i.i.i.i.i, %bb1.i2.i.i.i.i.i.i.i.i, %bb12.i.i.i.i.i.i.i.i.i
  %new_len.i.i.i.i.i.i.i.i = add nuw i64 %ch_len.sroa.0.0.i.i.i.i.i.i.i.i, %len.i.i.i18.i.i.i.i.i
  store i64 %new_len.i.i.i.i.i.i.i.i, ptr %_5.sroa.5.0.buf.sroa_idx.i, align 8, !alias.scope !87, !noalias !88
  %.not.i.i.i.i.i.i = icmp eq ptr %_59.pre, %self.sroa.2.3917.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %bb17, label %bb17.i.i.i.i.i.i.i

cleanup.loopexit.i:                               ; preds = %bb1.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %cleanup.i

cleanup.loopexit.split-lp.i:                      ; preds = %bb1.i.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %cleanup.i

cleanup.i:                                        ; preds = %cleanup.loopexit.split-lp.i, %cleanup.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %cleanup.loopexit.i ], [ %lpad.loopexit.split-lp.i, %cleanup.loopexit.split-lp.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !95)
  call void @llvm.experimental.noalias.scope.decl(metadata !98)
  call void @llvm.experimental.noalias.scope.decl(metadata !101)
  call void @llvm.experimental.noalias.scope.decl(metadata !104)
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %self1.i.i.i.i1.i.i.i = load i64, ptr %buf.i, align 8, !range !15, !alias.scope !110, !noalias !113, !noundef !21
  %_6.i.i.i.i2.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i, label %bb9, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h18d9c2417237e41cE.exit.i.i.i3.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h18d9c2417237e41cE.exit.i.i.i3.i.i.i": ; preds = %cleanup.i
  %self3.i.i.i.i4.i.i.i = load ptr, ptr %_5.sroa.4.0.buf.sroa_idx.i, align 8, !alias.scope !110, !noalias !113, !nonnull !21, !noundef !21
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i, i64 noundef %self1.i.i.i.i1.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #16, !noalias !115
  br label %bb9

bb2:                                              ; preds = %bb2.lr.ph, %bb3
  %value.sroa.0.030 = phi i64 [ %0, %bb2.lr.ph ], [ %18, %bb3 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_11)
  %17 = urem i64 %value.sroa.0.030, 10
  %18 = udiv i64 %value.sroa.0.030, 10
  store i64 %17, ptr %_11, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args)
  store ptr %_11, ptr %args, align 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h4fc94a72f199f709E", ptr %_14.sroa.4.0..sroa_idx, align 8
; invoke core::fmt::write
  %19 = invoke noundef zeroext i1 @_ZN4core3fmt5write17h22467d3ad5dd5554E(ptr noundef nonnull align 1 %tmp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @vtable.1, ptr noundef nonnull @alloc_0c812808379efded5a4fb82d2790b556, ptr noundef nonnull %args)
          to label %bb11 unwind label %cleanup.loopexit

bb9:                                              ; preds = %cleanup.loopexit, %cleanup.loopexit.split-lp, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h18d9c2417237e41cE.exit.i.i.i3.i.i16", %cleanup1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h18d9c2417237e41cE.exit.i.i.i3.i.i.i", %cleanup.i
  %.pn = phi { ptr, i32 } [ %lpad.phi.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h18d9c2417237e41cE.exit.i.i.i3.i.i.i" ], [ %lpad.phi.i, %cleanup.i ], [ %22, %cleanup1 ], [ %22, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h18d9c2417237e41cE.exit.i.i.i3.i.i16" ], [ %lpad.loopexit, %cleanup.loopexit ], [ %lpad.loopexit.split-lp, %cleanup.loopexit.split-lp ]
  call void @llvm.experimental.noalias.scope.decl(metadata !116)
  call void @llvm.experimental.noalias.scope.decl(metadata !119)
  call void @llvm.experimental.noalias.scope.decl(metadata !122)
  call void @llvm.experimental.noalias.scope.decl(metadata !125)
  call void @llvm.experimental.noalias.scope.decl(metadata !128)
  %self1.i.i.i.i1.i.i = load i64, ptr %tmp, align 8, !range !15, !alias.scope !131, !noalias !134, !noundef !21
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %bb10, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h18d9c2417237e41cE.exit.i.i.i3.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h18d9c2417237e41cE.exit.i.i.i3.i.i": ; preds = %bb9
  %self3.i.i.i.i4.i.i = load ptr, ptr %_22.sroa.4.0.tmp.sroa_idx, align 8, !alias.scope !131, !noalias !134, !nonnull !21, !noundef !21
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #16, !noalias !136
  br label %bb10

cleanup.loopexit:                                 ; preds = %bb2
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb9

cleanup.loopexit.split-lp:                        ; preds = %bb2.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb9

bb17.thread:                                      ; preds = %bb4, %bb4.thread
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %buf.i), !noalias !56
  %20 = getelementptr inbounds nuw i8, ptr %string, i64 16
  %len.i.i.i47 = load i64, ptr %20, align 8, !alias.scope !137, !noundef !21
  br label %bb5

bb17:                                             ; preds = %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7289b83df72b8726E.exit.i.i.i.i.i", %"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h4439ae3a79c52123E.exit.i.i.i.i.i.bb17.loopexit_crit_edge"
  %_18.sroa.8.0.copyload.pre = phi i64 [ %_18.sroa.8.0.copyload.pre.pre, %"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h4439ae3a79c52123E.exit.i.i.i.i.i.bb17.loopexit_crit_edge" ], [ %new_len.i.i.i.i.i.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7289b83df72b8726E.exit.i.i.i.i.i" ]
  %_18.sroa.5.0.copyload.pre = phi ptr [ %_18.sroa.5.0.copyload.pre.pre, %"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h4439ae3a79c52123E.exit.i.i.i.i.i.bb17.loopexit_crit_edge" ], [ %_20.i.i.i.i.i.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7289b83df72b8726E.exit.i.i.i.i.i" ]
  %_18.sroa.0.0.copyload.pre = load i64, ptr %buf.i, align 8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %buf.i), !noalias !56
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  %21 = getelementptr inbounds nuw i8, ptr %string, i64 16
  %len.i.i.i = load i64, ptr %21, align 8, !alias.scope !148, !noundef !21
  %self2.i.i.i = load i64, ptr %string, align 8, !range !15, !alias.scope !148, !noundef !21
  %_9.i.i.i = sub i64 %self2.i.i.i, %len.i.i.i
  %_7.i.i.i = icmp ugt i64 %_18.sroa.8.0.copyload.pre, %_9.i.i.i
  br i1 %_7.i.i.i, label %bb1.i.i.i12, label %bb5, !prof !149

bb1.i.i.i12:                                      ; preds = %bb17
; invoke alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hf20a959ae82085bdE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %string, i64 noundef %len.i.i.i, i64 noundef %_18.sroa.8.0.copyload.pre)
          to label %.noexc13 unwind label %cleanup1

.noexc13:                                         ; preds = %bb1.i.i.i12
  %len.pre.i.i = load i64, ptr %21, align 8, !alias.scope !150
  br label %bb5

cleanup1:                                         ; preds = %bb1.i.i.i12
  %22 = landingpad { ptr, i32 }
          cleanup
  %_6.i.i.i.i2.i.i15 = icmp eq i64 %_18.sroa.0.0.copyload.pre, 0
  br i1 %_6.i.i.i.i2.i.i15, label %bb9, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h18d9c2417237e41cE.exit.i.i.i3.i.i16"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h18d9c2417237e41cE.exit.i.i.i3.i.i16": ; preds = %cleanup1
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_18.sroa.5.0.copyload.pre, i64 noundef %_18.sroa.0.0.copyload.pre, i64 noundef range(i64 1, -9223372036854775807) 1) #16, !noalias !151
  br label %bb9

bb5:                                              ; preds = %bb17.thread, %bb17, %.noexc13
  %23 = phi ptr [ %21, %bb17 ], [ %21, %.noexc13 ], [ %20, %bb17.thread ]
  %_18.sroa.0.0.copyload53 = phi i64 [ %_18.sroa.0.0.copyload.pre, %bb17 ], [ %_18.sroa.0.0.copyload.pre, %.noexc13 ], [ 0, %bb17.thread ]
  %_18.sroa.5.0.copyload52 = phi ptr [ %_18.sroa.5.0.copyload.pre, %bb17 ], [ %_18.sroa.5.0.copyload.pre, %.noexc13 ], [ inttoptr (i64 1 to ptr), %bb17.thread ]
  %_18.sroa.8.0.copyload51 = phi i64 [ %_18.sroa.8.0.copyload.pre, %bb17 ], [ %_18.sroa.8.0.copyload.pre, %.noexc13 ], [ 0, %bb17.thread ]
  %len.i.i = phi i64 [ %len.i.i.i, %bb17 ], [ %len.pre.i.i, %.noexc13 ], [ %len.i.i.i47, %bb17.thread ]
  %_9.i.i = icmp sgt i64 %len.i.i, -1
  call void @llvm.assume(i1 %_9.i.i)
  %24 = getelementptr inbounds nuw i8, ptr %string, i64 8
  %_10.i.i = load ptr, ptr %24, align 8, !alias.scope !150, !nonnull !21, !noundef !21
  %dst.i.i = getelementptr inbounds nuw i8, ptr %_10.i.i, i64 %len.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %dst.i.i, ptr nonnull readonly align 1 %_18.sroa.5.0.copyload52, i64 %_18.sroa.8.0.copyload51, i1 false), !noalias !150
  %25 = add i64 %len.i.i, %_18.sroa.8.0.copyload51
  store i64 %25, ptr %23, align 8, !alias.scope !150
  %_6.i.i.i.i2.i.i20 = icmp eq i64 %_18.sroa.0.0.copyload53, 0
  br i1 %_6.i.i.i.i2.i.i20, label %bb6, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h18d9c2417237e41cE.exit.i.i.i3.i.i21"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h18d9c2417237e41cE.exit.i.i.i3.i.i21": ; preds = %bb5
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_18.sroa.5.0.copyload52, i64 noundef %_18.sroa.0.0.copyload53, i64 noundef range(i64 1, -9223372036854775807) 1) #16, !noalias !162
  br label %bb6

bb6:                                              ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h18d9c2417237e41cE.exit.i.i.i3.i.i21", %bb5
  call void @llvm.experimental.noalias.scope.decl(metadata !173)
  call void @llvm.experimental.noalias.scope.decl(metadata !176)
  call void @llvm.experimental.noalias.scope.decl(metadata !179)
  call void @llvm.experimental.noalias.scope.decl(metadata !182)
  call void @llvm.experimental.noalias.scope.decl(metadata !185)
  %self1.i.i.i.i1.i.i24 = load i64, ptr %tmp, align 8, !range !15, !alias.scope !188, !noalias !191, !noundef !21
  %_6.i.i.i.i2.i.i25 = icmp eq i64 %self1.i.i.i.i1.i.i24, 0
  br i1 %_6.i.i.i.i2.i.i25, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd43c7bafa56784c9E.exit28", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h18d9c2417237e41cE.exit.i.i.i3.i.i26"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h18d9c2417237e41cE.exit.i.i.i3.i.i26": ; preds = %bb6
  %self3.i.i.i.i4.i.i27 = load ptr, ptr %_22.sroa.4.0.tmp.sroa_idx, align 8, !alias.scope !188, !noalias !191, !nonnull !21, !noundef !21
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i27, i64 noundef %self1.i.i.i.i1.i.i24, i64 noundef range(i64 1, -9223372036854775807) 1) #16, !noalias !193
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd43c7bafa56784c9E.exit28"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd43c7bafa56784c9E.exit28": ; preds = %bb6, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h18d9c2417237e41cE.exit.i.i.i3.i.i26"
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp)
  ret void

bb11:                                             ; preds = %bb2
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %e.i)
  br i1 %19, label %bb2.i, label %bb3, !prof !29

bb2.i:                                            ; preds = %bb11
; invoke core::result::unwrap_failed
  invoke void @_ZN4core6result13unwrap_failed17hac9339a6c7ad693bE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @alloc_00ae4b301f7fab8ac9617c03fcbd7274, i64 noundef 43, ptr noundef nonnull align 1 %e.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @vtable.0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4b9ea91629b037351b3e7a2c6026ae06) #17
          to label %.noexc unwind label %cleanup.loopexit.split-lp

.noexc:                                           ; preds = %bb2.i
  unreachable

bb3:                                              ; preds = %bb11
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %e.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_11)
  %_4.not = icmp ult i64 %value.sroa.0.030, 10
  br i1 %_4.not, label %bb4, label %bb2

bb10:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h18d9c2417237e41cE.exit.i.i.i3.i.i", %bb9
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #6

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; core::result::unwrap_failed
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6result13unwrap_failed17hac9339a6c7ad693bE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; core::fmt::Formatter::write_str
; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17h66c46e6e00843febE(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; __rustc::__rust_no_alloc_shim_is_unstable_v2
; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #1

; __rustc::__rust_alloc
; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef) unnamed_addr #10

; __rustc::__rust_dealloc
; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr allocptr noundef, i64 noundef, i64 noundef) unnamed_addr #11

; __rustc::__rust_realloc
; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsdBezzDwma51_7___rustc14___rust_realloc(ptr allocptr noundef, i64 noundef, i64 allocalign noundef, i64 noundef) unnamed_addr #12

; alloc::raw_vec::handle_error
; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #13

; core::fmt::write
; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt5write17h22467d3ad5dd5554E(ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt
; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h4fc94a72f199f709E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.93.1 (01f6ddf75 2026-02-11)"}
!3 = !{!4}
!4 = distinct !{!4, !5, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hffe8cc83eadb6e36E: %_1"}
!5 = distinct !{!5, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hffe8cc83eadb6e36E"}
!6 = !{!7}
!7 = distinct !{!7, !8, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17he02537615976b13dE: %_1"}
!8 = distinct !{!8, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17he02537615976b13dE"}
!9 = !{!10}
!10 = distinct !{!10, !11, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4bb0b259bbb64d5bE: %self"}
!11 = distinct !{!11, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4bb0b259bbb64d5bE"}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h7c38ad5814606ddcE: %self"}
!14 = distinct !{!14, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h7c38ad5814606ddcE"}
!15 = !{i64 0, i64 -9223372036854775808}
!16 = !{!17, !13, !10, !7, !4}
!17 = distinct !{!17, !18, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17hb439dd8ba3b6f1a8E: %self"}
!18 = distinct !{!18, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17hb439dd8ba3b6f1a8E"}
!19 = !{!20}
!20 = distinct !{!20, !18, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17hb439dd8ba3b6f1a8E: %_0"}
!21 = !{}
!22 = !{!13, !10, !7, !4}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_ZN5alloc6string6String4push17h1a40906a941ba4dfE: %self"}
!25 = distinct !{!25, !"_ZN5alloc6string6String4push17h1a40906a941ba4dfE"}
!26 = !{!27, !24}
!27 = distinct !{!27, !28, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78fd605c8f6bfef9E: %self"}
!28 = distinct !{!28, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78fd605c8f6bfef9E"}
!29 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!30 = !{!31}
!31 = distinct !{!31, !32, !"_ZN5alloc6string6String8push_str17h47673a9a1523eea2E: %self"}
!32 = distinct !{!32, !"_ZN5alloc6string6String8push_str17h47673a9a1523eea2E"}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h9f5c358d2d34304aE: %self"}
!35 = distinct !{!35, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h9f5c358d2d34304aE"}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h6ca815009a4e8412E: %self"}
!38 = distinct !{!38, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h6ca815009a4e8412E"}
!39 = !{!40, !37, !34, !31}
!40 = distinct !{!40, !41, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78fd605c8f6bfef9E: %self"}
!41 = distinct !{!41, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78fd605c8f6bfef9E"}
!42 = !{!43}
!43 = distinct !{!43, !32, !"_ZN5alloc6string6String8push_str17h47673a9a1523eea2E: %string.0"}
!44 = !{!37, !34, !31}
!45 = !{!"branch_weights", i32 2002, i32 2000}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17hb439dd8ba3b6f1a8E: %self"}
!48 = distinct !{!48, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17hb439dd8ba3b6f1a8E"}
!49 = !{!50}
!50 = distinct !{!50, !48, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17hb439dd8ba3b6f1a8E: %_0"}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14grow_amortized17hae5c9a4a000a3407E: %self"}
!53 = distinct !{!53, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14grow_amortized17hae5c9a4a000a3407E"}
!54 = !{i64 0, i64 2}
!55 = !{i64 0, i64 -9223372036854775807}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_ZN95_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..FromIterator$LT$char$GT$$GT$9from_iter17h2d4e9d7cfce3c6edE: %_0"}
!58 = distinct !{!58, !"_ZN95_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..FromIterator$LT$char$GT$$GT$9from_iter17h2d4e9d7cfce3c6edE"}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_ZN89_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..Extend$LT$char$GT$$GT$6extend17heffda91cf20847ccE: %self"}
!61 = distinct !{!61, !"_ZN89_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..Extend$LT$char$GT$$GT$6extend17heffda91cf20847ccE"}
!62 = !{!"branch_weights", !"expected", i32 2145756198, i32 1727450}
!63 = !{!64}
!64 = distinct !{!64, !65, !"_ZN4core4iter6traits8iterator8Iterator8for_each17hc7b63b92a2d3e8b8E: %f"}
!65 = distinct !{!65, !"_ZN4core4iter6traits8iterator8Iterator8for_each17hc7b63b92a2d3e8b8E"}
!66 = !{!67}
!67 = distinct !{!67, !68, !"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf0183717a9e07028E: %f"}
!68 = distinct !{!68, !"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf0183717a9e07028E"}
!69 = !{!70}
!70 = distinct !{!70, !71, !"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfold17ha4c392efcbcaabfdE: argument 0"}
!71 = distinct !{!71, !"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfold17ha4c392efcbcaabfdE"}
!72 = !{!73, !75, !70, !67, !64, !60, !57}
!73 = distinct !{!73, !74, !"_ZN4core3str11validations23next_code_point_reverse17heac760c989839ef0E: %bytes"}
!74 = distinct !{!74, !"_ZN4core3str11validations23next_code_point_reverse17heac760c989839ef0E"}
!75 = distinct !{!75, !76, !"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h4439ae3a79c52123E: %self"}
!76 = distinct !{!76, !"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h4439ae3a79c52123E"}
!77 = !{!78, !70, !67, !64, !60}
!78 = distinct !{!78, !79, !"_ZN5alloc6string6String4push17h1a40906a941ba4dfE: %self:thread"}
!79 = distinct !{!79, !"_ZN5alloc6string6String4push17h1a40906a941ba4dfE"}
!80 = !{!81, !83, !57}
!81 = distinct !{!81, !82, !"_ZN89_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..Extend$LT$char$GT$$GT$6extend28_$u7b$$u7b$closure$u7d$$u7d$17h53bdb6b02e5a20bcE: %_1:thread"}
!82 = distinct !{!82, !"_ZN89_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..Extend$LT$char$GT$$GT$6extend28_$u7b$$u7b$closure$u7d$$u7d$17h53bdb6b02e5a20bcE"}
!83 = distinct !{!83, !84, !"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7289b83df72b8726E: %_1:thread"}
!84 = distinct !{!84, !"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7289b83df72b8726E"}
!85 = !{!86}
!86 = distinct !{!86, !79, !"_ZN5alloc6string6String4push17h1a40906a941ba4dfE: %self"}
!87 = !{!86, !70, !67, !64, !60}
!88 = !{!89, !90, !57}
!89 = distinct !{!89, !82, !"_ZN89_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..Extend$LT$char$GT$$GT$6extend28_$u7b$$u7b$closure$u7d$$u7d$17h53bdb6b02e5a20bcE: %_1"}
!90 = distinct !{!90, !84, !"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7289b83df72b8726E: %_1"}
!91 = !{!92, !86, !70, !67, !64, !60}
!92 = distinct !{!92, !93, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78fd605c8f6bfef9E: %self"}
!93 = distinct !{!93, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78fd605c8f6bfef9E"}
!94 = !{!86, !89, !90, !70, !67, !64, !60, !57}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd43c7bafa56784c9E: %_1"}
!97 = distinct !{!97, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd43c7bafa56784c9E"}
!98 = !{!99}
!99 = distinct !{!99, !100, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hffe8cc83eadb6e36E: %_1"}
!100 = distinct !{!100, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hffe8cc83eadb6e36E"}
!101 = !{!102}
!102 = distinct !{!102, !103, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17he02537615976b13dE: %_1"}
!103 = distinct !{!103, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17he02537615976b13dE"}
!104 = !{!105}
!105 = distinct !{!105, !106, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4bb0b259bbb64d5bE: %self"}
!106 = distinct !{!106, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4bb0b259bbb64d5bE"}
!107 = !{!108}
!108 = distinct !{!108, !109, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h7c38ad5814606ddcE: %self"}
!109 = distinct !{!109, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h7c38ad5814606ddcE"}
!110 = !{!111, !108, !105, !102, !99, !96}
!111 = distinct !{!111, !112, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17hb439dd8ba3b6f1a8E: %self"}
!112 = distinct !{!112, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17hb439dd8ba3b6f1a8E"}
!113 = !{!114, !57}
!114 = distinct !{!114, !112, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17hb439dd8ba3b6f1a8E: %_0"}
!115 = !{!108, !105, !102, !99, !96, !57}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd43c7bafa56784c9E: %_1"}
!118 = distinct !{!118, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd43c7bafa56784c9E"}
!119 = !{!120}
!120 = distinct !{!120, !121, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hffe8cc83eadb6e36E: %_1"}
!121 = distinct !{!121, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hffe8cc83eadb6e36E"}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17he02537615976b13dE: %_1"}
!124 = distinct !{!124, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17he02537615976b13dE"}
!125 = !{!126}
!126 = distinct !{!126, !127, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4bb0b259bbb64d5bE: %self"}
!127 = distinct !{!127, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4bb0b259bbb64d5bE"}
!128 = !{!129}
!129 = distinct !{!129, !130, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h7c38ad5814606ddcE: %self"}
!130 = distinct !{!130, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h7c38ad5814606ddcE"}
!131 = !{!132, !129, !126, !123, !120, !117}
!132 = distinct !{!132, !133, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17hb439dd8ba3b6f1a8E: %self"}
!133 = distinct !{!133, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17hb439dd8ba3b6f1a8E"}
!134 = !{!135}
!135 = distinct !{!135, !133, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17hb439dd8ba3b6f1a8E: %_0"}
!136 = !{!129, !126, !123, !120, !117}
!137 = !{!138, !140, !142}
!138 = distinct !{!138, !139, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78fd605c8f6bfef9E: %self"}
!139 = distinct !{!139, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78fd605c8f6bfef9E"}
!140 = distinct !{!140, !141, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h6ca815009a4e8412E: %self:thread"}
!141 = distinct !{!141, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h6ca815009a4e8412E"}
!142 = distinct !{!142, !143, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h9f5c358d2d34304aE: %self:thread"}
!143 = distinct !{!143, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h9f5c358d2d34304aE"}
!144 = !{!145}
!145 = distinct !{!145, !143, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h9f5c358d2d34304aE: %self"}
!146 = !{!147}
!147 = distinct !{!147, !141, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h6ca815009a4e8412E: %self"}
!148 = !{!138, !147, !145}
!149 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!150 = !{!147, !145}
!151 = !{!152, !154, !156, !158, !160}
!152 = distinct !{!152, !153, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h7c38ad5814606ddcE: %self"}
!153 = distinct !{!153, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h7c38ad5814606ddcE"}
!154 = distinct !{!154, !155, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4bb0b259bbb64d5bE: %self"}
!155 = distinct !{!155, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4bb0b259bbb64d5bE"}
!156 = distinct !{!156, !157, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17he02537615976b13dE: %_1"}
!157 = distinct !{!157, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17he02537615976b13dE"}
!158 = distinct !{!158, !159, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hffe8cc83eadb6e36E: %_1"}
!159 = distinct !{!159, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hffe8cc83eadb6e36E"}
!160 = distinct !{!160, !161, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd43c7bafa56784c9E: %_1"}
!161 = distinct !{!161, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd43c7bafa56784c9E"}
!162 = !{!163, !165, !167, !169, !171}
!163 = distinct !{!163, !164, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h7c38ad5814606ddcE: %self"}
!164 = distinct !{!164, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h7c38ad5814606ddcE"}
!165 = distinct !{!165, !166, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4bb0b259bbb64d5bE: %self"}
!166 = distinct !{!166, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4bb0b259bbb64d5bE"}
!167 = distinct !{!167, !168, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17he02537615976b13dE: %_1"}
!168 = distinct !{!168, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17he02537615976b13dE"}
!169 = distinct !{!169, !170, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hffe8cc83eadb6e36E: %_1"}
!170 = distinct !{!170, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hffe8cc83eadb6e36E"}
!171 = distinct !{!171, !172, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd43c7bafa56784c9E: %_1"}
!172 = distinct !{!172, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd43c7bafa56784c9E"}
!173 = !{!174}
!174 = distinct !{!174, !175, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd43c7bafa56784c9E: %_1"}
!175 = distinct !{!175, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd43c7bafa56784c9E"}
!176 = !{!177}
!177 = distinct !{!177, !178, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hffe8cc83eadb6e36E: %_1"}
!178 = distinct !{!178, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hffe8cc83eadb6e36E"}
!179 = !{!180}
!180 = distinct !{!180, !181, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17he02537615976b13dE: %_1"}
!181 = distinct !{!181, !"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17he02537615976b13dE"}
!182 = !{!183}
!183 = distinct !{!183, !184, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4bb0b259bbb64d5bE: %self"}
!184 = distinct !{!184, !"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4bb0b259bbb64d5bE"}
!185 = !{!186}
!186 = distinct !{!186, !187, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h7c38ad5814606ddcE: %self"}
!187 = distinct !{!187, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h7c38ad5814606ddcE"}
!188 = !{!189, !186, !183, !180, !177, !174}
!189 = distinct !{!189, !190, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17hb439dd8ba3b6f1a8E: %self"}
!190 = distinct !{!190, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17hb439dd8ba3b6f1a8E"}
!191 = !{!192}
!192 = distinct !{!192, !190, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17hb439dd8ba3b6f1a8E: %_0"}
!193 = !{!186, !183, !180, !177, !174}
