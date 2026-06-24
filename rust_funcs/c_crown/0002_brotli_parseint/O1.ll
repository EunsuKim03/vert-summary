; ModuleID = '0002_brotli_parseint_emit.876c36ed713ef124-cgu.0'
source_filename = "0002_brotli_parseint_emit.876c36ed713ef124-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@alloc_db51a71a1b6b25b4224d4dc5277f93e7 = private unnamed_addr constant [256 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04\00\00\00\00\00\00\00\00\00\00\00", align 1
@alloc_5244b70efa2e772df26449ce542b226d = private unnamed_addr constant [88 x i8] c"/root/es/vert/vert/rust_funcs/c_crown/0002_brotli_parseint/0002_brotli_parseint_emit.rs\00", align 1
@alloc_aacf12f21f38075c2fd7cfd1da20a746 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_5244b70efa2e772df26449ce542b226d, [16 x i8] c"W\00\00\00\00\00\00\00\0E\00\00\00\22\00\00\00" }>, align 8
@alloc_096a28ff3cf664e7d4ad50bfd2e316d7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_5244b70efa2e772df26449ce542b226d, [16 x i8] c"W\00\00\00\00\00\00\00\16\00\00\00\09\00\00\00" }>, align 8

; core::str::<impl str>::starts_with
; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN4core3str21_$LT$impl$u20$str$GT$11starts_with17h4879a20597009083E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %self.0, i64 noundef %self.1, i32 noundef range(i32 0, 1114112) %pat) unnamed_addr #0 {
start:
  %_6.i = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_6.i), !noalias !3
  store i32 0, ptr %_6.i, align 4, !noalias !3
  %_11.i.i = icmp samesign ult i32 %pat, 128
  br i1 %_11.i.i, label %bb2.i.i, label %bb5.i.i

bb5.i.i:                                          ; preds = %start
  %_12.i.i = icmp samesign ult i32 %pat, 2048
  br i1 %_12.i.i, label %bb2.i.i, label %bb6.i.i

bb6.i.i:                                          ; preds = %bb5.i.i
  %_13.i.i = icmp samesign ult i32 %pat, 65536
  %..i.i = select i1 %_13.i.i, i64 3, i64 4
  br label %bb2.i.i

bb2.i.i:                                          ; preds = %bb6.i.i, %bb5.i.i, %start
  %len.sroa.0.0.i.i = phi i64 [ 1, %start ], [ %..i.i, %bb6.i.i ], [ 2, %bb5.i.i ]
  br i1 %_11.i.i, label %bb12.i.i.i, label %bb7.i.i.i

bb7.i.i.i:                                        ; preds = %bb2.i.i
  %_29.i.i.i = icmp samesign ult i32 %pat, 2048
  %0 = trunc i32 %pat to i8
  %_5.i.i.i = and i8 %0, 63
  %last1.i.i.i = or disjoint i8 %_5.i.i.i, -128
  %_10.i.i.i = lshr i32 %pat, 6
  %1 = trunc i32 %_10.i.i.i to i8
  %_8.i.i.i = and i8 %1, 63
  %last2.i.i.i = or disjoint i8 %_8.i.i.i, -128
  %_14.i.i.i = lshr i32 %pat, 12
  %2 = trunc i32 %_14.i.i.i to i8
  %_12.i.i.i = and i8 %2, 63
  %last3.i.i.i = or disjoint i8 %_12.i.i.i, -128
  %_18.i.i.i = lshr i32 %pat, 18
  %_16.i.i.i = trunc nuw nsw i32 %_18.i.i.i to i8
  %last4.i.i.i = or disjoint i8 %_16.i.i.i, -16
  br i1 %_29.i.i.i, label %bb1.i.i.i, label %bb2.i.i.i

bb12.i.i.i:                                       ; preds = %bb2.i.i
  %3 = trunc nuw nsw i32 %pat to i8
  store i8 %3, ptr %_6.i, align 4, !alias.scope !6, !noalias !3
  br label %"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$12is_prefix_of17h0ca10fe567e00243E.exit"

bb2.i.i.i:                                        ; preds = %bb7.i.i.i
  %_30.i.i.i = icmp samesign ult i32 %pat, 65536
  br i1 %_30.i.i.i, label %bb3.i.i.i, label %bb4.i.i.i

bb1.i.i.i:                                        ; preds = %bb7.i.i.i
  %4 = or disjoint i8 %1, -64
  store i8 %4, ptr %_6.i, align 4, !alias.scope !6, !noalias !3
  %_21.i.i.i = getelementptr inbounds nuw i8, ptr %_6.i, i64 1
  store i8 %last1.i.i.i, ptr %_21.i.i.i, align 1, !alias.scope !6, !noalias !3
  br label %"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$12is_prefix_of17h0ca10fe567e00243E.exit"

bb4.i.i.i:                                        ; preds = %bb2.i.i.i
  store i8 %last4.i.i.i, ptr %_6.i, align 4, !alias.scope !6, !noalias !3
  %_25.i.i.i = getelementptr inbounds nuw i8, ptr %_6.i, i64 1
  store i8 %last3.i.i.i, ptr %_25.i.i.i, align 1, !alias.scope !6, !noalias !3
  %_26.i.i.i = getelementptr inbounds nuw i8, ptr %_6.i, i64 2
  store i8 %last2.i.i.i, ptr %_26.i.i.i, align 2, !alias.scope !6, !noalias !3
  %_27.i.i.i = getelementptr inbounds nuw i8, ptr %_6.i, i64 3
  store i8 %last1.i.i.i, ptr %_27.i.i.i, align 1, !alias.scope !6, !noalias !3
  br label %"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$12is_prefix_of17h0ca10fe567e00243E.exit"

bb3.i.i.i:                                        ; preds = %bb2.i.i.i
  %5 = or disjoint i8 %2, -32
  store i8 %5, ptr %_6.i, align 4, !alias.scope !6, !noalias !3
  %_23.i.i.i = getelementptr inbounds nuw i8, ptr %_6.i, i64 1
  store i8 %last2.i.i.i, ptr %_23.i.i.i, align 1, !alias.scope !6, !noalias !3
  %_24.i.i.i = getelementptr inbounds nuw i8, ptr %_6.i, i64 2
  store i8 %last1.i.i.i, ptr %_24.i.i.i, align 2, !alias.scope !6, !noalias !3
  br label %"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$12is_prefix_of17h0ca10fe567e00243E.exit"

"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$12is_prefix_of17h0ca10fe567e00243E.exit": ; preds = %bb12.i.i.i, %bb1.i.i.i, %bb4.i.i.i, %bb3.i.i.i
; call core::slice::<impl [T]>::starts_with
  %_0.i = call noundef zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h64c1bc5a56da65e1E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %self.0, i64 noundef %self.1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %_6.i, i64 noundef %len.sroa.0.0.i.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_6.i), !noalias !3
  ret i1 %_0.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @parse_int(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %s.0, i64 noundef %s.1, i32 noundef %low, i32 noundef %high, ptr noalias noundef readnone align 4 captures(none) dereferenceable(4) %result) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_6.i.i = alloca [4 x i8], align 4
  %_7.i = getelementptr inbounds nuw i8, ptr %s.0, i64 %s.1
  %_7.i.i.i.i = icmp samesign ne i64 %s.1, 0
  %spec.select.idx = zext i1 %_7.i.i.i.i to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %s.0, i64 %spec.select.idx
  br i1 %_7.i.i.i.i, label %bb14.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit

bb14.i.i.i:                                       ; preds = %start
  %x.i.i.i = load i8, ptr %s.0, align 1, !noalias !9, !noundef !16
  %_6.i.i.i = icmp sgt i8 %x.i.i.i, -1
  br i1 %_6.i.i.i, label %bb3.i.i.i, label %bb4.i.i.i

bb4.i.i.i:                                        ; preds = %bb14.i.i.i
  %_30.i.i.i = and i8 %x.i.i.i, 31
  %init.i.i.i = zext nneg i8 %_30.i.i.i to i32
  %0 = icmp ne i64 %s.1, 1
  tail call void @llvm.assume(i1 %0)
  %y.i.i.i = load i8, ptr %spec.select, align 1, !noalias !9, !noundef !16
  %_34.i.i.i = shl nuw nsw i32 %init.i.i.i, 6
  %_36.i.i.i = and i8 %y.i.i.i, 63
  %_35.i.i.i = zext nneg i8 %_36.i.i.i to i32
  %1 = or disjoint i32 %_34.i.i.i, %_35.i.i.i
  %_13.i.i.i = icmp ugt i8 %x.i.i.i, -33
  br i1 %_13.i.i.i, label %bb6.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit

bb3.i.i.i:                                        ; preds = %bb14.i.i.i
  %_7.i.i.i = zext nneg i8 %x.i.i.i to i32
  br label %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit

bb6.i.i.i:                                        ; preds = %bb4.i.i.i
  %_18.i12.i.i.i = getelementptr inbounds nuw i8, ptr %spec.select, i64 1
  %_7.i17.i.i.i = icmp ne ptr %_18.i12.i.i.i, %_7.i
  tail call void @llvm.assume(i1 %_7.i17.i.i.i)
  %z.i.i.i = load i8, ptr %_18.i12.i.i.i, align 1, !noalias !9, !noundef !16
  %_40.i.i.i = shl nuw nsw i32 %_35.i.i.i, 6
  %_42.i.i.i = and i8 %z.i.i.i, 63
  %_41.i.i.i = zext nneg i8 %_42.i.i.i to i32
  %y_z.i.i.i = or disjoint i32 %_40.i.i.i, %_41.i.i.i
  %_20.i.i.i = shl nuw nsw i32 %init.i.i.i, 12
  %2 = or disjoint i32 %y_z.i.i.i, %_20.i.i.i
  %_21.i.i.i = icmp ugt i8 %x.i.i.i, -17
  br i1 %_21.i.i.i, label %bb8.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit

bb8.i.i.i:                                        ; preds = %bb6.i.i.i
  %_18.i19.i.i.i = getelementptr inbounds nuw i8, ptr %spec.select, i64 2
  %_7.i24.i.i.i = icmp ne ptr %_18.i19.i.i.i, %_7.i
  tail call void @llvm.assume(i1 %_7.i24.i.i.i)
  %w.i.i.i = load i8, ptr %_18.i19.i.i.i, align 1, !noalias !9, !noundef !16
  %_26.i.i.i = shl nuw nsw i32 %init.i.i.i, 18
  %_25.i.i.i = and i32 %_26.i.i.i, 1835008
  %_46.i.i.i = shl nuw nsw i32 %y_z.i.i.i, 6
  %_48.i.i.i = and i8 %w.i.i.i, 63
  %_47.i.i.i = zext nneg i8 %_48.i.i.i to i32
  %_27.i.i.i = or disjoint i32 %_46.i.i.i, %_47.i.i.i
  %3 = or disjoint i32 %_27.i.i.i, %_25.i.i.i
  br label %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit

_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit: ; preds = %start, %bb4.i.i.i, %bb3.i.i.i, %bb6.i.i.i, %bb8.i.i.i
  %_0.sroa.0.0.i = phi i32 [ %_7.i.i.i, %bb3.i.i.i ], [ 1114112, %start ], [ %3, %bb8.i.i.i ], [ %2, %bb6.i.i.i ], [ %1, %bb4.i.i.i ]
  switch i32 %_0.sroa.0.0.i, label %bb7 [
    i32 1114112, label %bb2.i
    i32 0, label %bb12
  ], !prof !17

bb2.i:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit.4, %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit.3, %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit.2, %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit.1, %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_aacf12f21f38075c2fd7cfd1da20a746) #5
  unreachable

bb12:                                             ; preds = %bb9.4, %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit.4, %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit.3, %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit.2, %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit.1, %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit
  %i.sroa.0.0.lcssa = phi i64 [ 0, %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit ], [ 1, %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit.1 ], [ 2, %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit.2 ], [ 3, %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit.3 ], [ 4, %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit.4 ], [ 5, %bb9.4 ]
  %value.sroa.0.0.lcssa = phi i32 [ 0, %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit ], [ %4, %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit.1 ], [ %10, %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit.2 ], [ %17, %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit.3 ], [ %26, %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit.4 ], [ %38, %bb9.4 ]
  switch i64 %i.sroa.0.0.lcssa, label %bb15 [
    i64 0, label %bb32
    i64 1, label %bb19
  ]

bb7:                                              ; preds = %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit
  %4 = add nsw i32 %_0.sroa.0.0.i, -48
  %or.cond = icmp ult i32 %4, 10
  br i1 %or.cond, label %bb27.i.i.126, label %bb32

bb27.i.i.126:                                     ; preds = %bb7
  %_41.not.i.i.125 = icmp samesign eq i64 %s.1, 0
  br i1 %_41.not.i.i.125, label %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit.1, label %bb28.i.i.134

bb28.i.i.134:                                     ; preds = %bb27.i.i.126
  %b15.i.i.127 = load i8, ptr %s.0, align 1, !noalias !18, !noundef !16
  %_130.i.i.128 = zext i8 %b15.i.i.127 to i64
  %5 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i.i.128
  %_128.i.i.129 = load i8, ptr %5, align 1, !noalias !18, !noundef !16
  %slurp.i.i.130 = zext i8 %_128.i.i.129 to i64
  %_19.i.i.i.131 = getelementptr inbounds nuw i8, ptr %s.0, i64 %slurp.i.i.130
  %.not.i.i.132 = icmp uge i64 %s.1, %slurp.i.i.130
  tail call void @llvm.assume(i1 %.not.i.i.132)
  %_7.i.i.i.i.1 = icmp ne ptr %_19.i.i.i.131, %_7.i
  %spec.select.idx.1 = zext i1 %_7.i.i.i.i.1 to i64
  %spec.select.1 = getelementptr inbounds nuw i8, ptr %_19.i.i.i.131, i64 %spec.select.idx.1
  br i1 %_7.i.i.i.i.1, label %bb14.i.i.i.1, label %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit.1

bb14.i.i.i.1:                                     ; preds = %bb28.i.i.134
  %x.i.i.i.1 = load i8, ptr %_19.i.i.i.131, align 1, !noalias !9, !noundef !16
  %_6.i.i.i.1 = icmp sgt i8 %x.i.i.i.1, -1
  br i1 %_6.i.i.i.1, label %bb3.i.i.i.1, label %bb4.i.i.i.1

bb4.i.i.i.1:                                      ; preds = %bb14.i.i.i.1
  %_30.i.i.i.1 = and i8 %x.i.i.i.1, 31
  %init.i.i.i.1 = zext nneg i8 %_30.i.i.i.1 to i32
  %_7.i10.i.i.i.1 = icmp ne ptr %spec.select.1, %_7.i
  tail call void @llvm.assume(i1 %_7.i10.i.i.i.1)
  %y.i.i.i.1 = load i8, ptr %spec.select.1, align 1, !noalias !9, !noundef !16
  %_34.i.i.i.1 = shl nuw nsw i32 %init.i.i.i.1, 6
  %_36.i.i.i.1 = and i8 %y.i.i.i.1, 63
  %_35.i.i.i.1 = zext nneg i8 %_36.i.i.i.1 to i32
  %6 = or disjoint i32 %_34.i.i.i.1, %_35.i.i.i.1
  %_13.i.i.i.1 = icmp ugt i8 %x.i.i.i.1, -33
  br i1 %_13.i.i.i.1, label %bb6.i.i.i.1, label %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit.1

bb6.i.i.i.1:                                      ; preds = %bb4.i.i.i.1
  %_18.i12.i.i.i.1 = getelementptr inbounds nuw i8, ptr %spec.select.1, i64 1
  %_7.i17.i.i.i.1 = icmp ne ptr %_18.i12.i.i.i.1, %_7.i
  tail call void @llvm.assume(i1 %_7.i17.i.i.i.1)
  %z.i.i.i.1 = load i8, ptr %_18.i12.i.i.i.1, align 1, !noalias !9, !noundef !16
  %_40.i.i.i.1 = shl nuw nsw i32 %_35.i.i.i.1, 6
  %_42.i.i.i.1 = and i8 %z.i.i.i.1, 63
  %_41.i.i.i.1 = zext nneg i8 %_42.i.i.i.1 to i32
  %y_z.i.i.i.1 = or disjoint i32 %_40.i.i.i.1, %_41.i.i.i.1
  %_20.i.i.i.1 = shl nuw nsw i32 %init.i.i.i.1, 12
  %7 = or disjoint i32 %y_z.i.i.i.1, %_20.i.i.i.1
  %_21.i.i.i.1 = icmp ugt i8 %x.i.i.i.1, -17
  br i1 %_21.i.i.i.1, label %bb8.i.i.i.1, label %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit.1

bb8.i.i.i.1:                                      ; preds = %bb6.i.i.i.1
  %_18.i19.i.i.i.1 = getelementptr inbounds nuw i8, ptr %spec.select.1, i64 2
  %_7.i24.i.i.i.1 = icmp ne ptr %_18.i19.i.i.i.1, %_7.i
  tail call void @llvm.assume(i1 %_7.i24.i.i.i.1)
  %w.i.i.i.1 = load i8, ptr %_18.i19.i.i.i.1, align 1, !noalias !9, !noundef !16
  %_26.i.i.i.1 = shl nuw nsw i32 %init.i.i.i.1, 18
  %_25.i.i.i.1 = and i32 %_26.i.i.i.1, 1835008
  %_46.i.i.i.1 = shl nuw nsw i32 %y_z.i.i.i.1, 6
  %_48.i.i.i.1 = and i8 %w.i.i.i.1, 63
  %_47.i.i.i.1 = zext nneg i8 %_48.i.i.i.1 to i32
  %_27.i.i.i.1 = or disjoint i32 %_46.i.i.i.1, %_47.i.i.i.1
  %8 = or disjoint i32 %_27.i.i.i.1, %_25.i.i.i.1
  br label %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit.1

bb3.i.i.i.1:                                      ; preds = %bb14.i.i.i.1
  %_7.i.i.i.1 = zext nneg i8 %x.i.i.i.1 to i32
  br label %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit.1

_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit.1: ; preds = %bb27.i.i.126, %bb3.i.i.i.1, %bb8.i.i.i.1, %bb6.i.i.i.1, %bb4.i.i.i.1, %bb28.i.i.134
  %_0.sroa.0.0.i.1 = phi i32 [ %_7.i.i.i.1, %bb3.i.i.i.1 ], [ 1114112, %bb28.i.i.134 ], [ %8, %bb8.i.i.i.1 ], [ %7, %bb6.i.i.i.1 ], [ %6, %bb4.i.i.i.1 ], [ 1114112, %bb27.i.i.126 ]
  switch i32 %_0.sroa.0.0.i.1, label %bb7.1 [
    i32 1114112, label %bb2.i
    i32 0, label %bb12
  ], !prof !17

bb7.1:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit.1
  %9 = add nsw i32 %_0.sroa.0.0.i.1, -48
  %or.cond.1 = icmp ult i32 %9, 10
  br i1 %or.cond.1, label %bb9.1, label %bb32

bb9.1:                                            ; preds = %bb7.1
  %_17.1 = mul nuw nsw i32 %4, 10
  %10 = add nuw nsw i32 %9, %_17.1
  %_41.not.i.i.235 = icmp samesign eq i64 %s.1, 0
  br i1 %_41.not.i.i.235, label %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit.2, label %bb28.i.i.244

bb28.i.i.244:                                     ; preds = %bb9.1
  %b15.i.i.237 = load i8, ptr %s.0, align 1, !noalias !18, !noundef !16
  %_130.i.i.238 = zext i8 %b15.i.i.237 to i64
  %11 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i.i.238
  %_128.i.i.239 = load i8, ptr %11, align 1, !noalias !18, !noundef !16
  %slurp.i.i.240 = zext i8 %_128.i.i.239 to i64
  %_19.i.i.i.241 = getelementptr inbounds nuw i8, ptr %s.0, i64 %slurp.i.i.240
  %.not.i.i.242 = icmp uge i64 %s.1, %slurp.i.i.240
  tail call void @llvm.assume(i1 %.not.i.i.242)
  %_41.not.i.i.1.2 = icmp samesign eq i64 %s.1, %slurp.i.i.240
  br i1 %_41.not.i.i.1.2, label %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit.2, label %bb28.i.i.1.2

bb28.i.i.1.2:                                     ; preds = %bb28.i.i.244
  %gepdiff = sub nuw nsw i64 %s.1, %slurp.i.i.240
  %b15.i.i.1.2 = load i8, ptr %_19.i.i.i.241, align 1, !noalias !18, !noundef !16
  %_130.i.i.1.2 = zext i8 %b15.i.i.1.2 to i64
  %12 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i.i.1.2
  %_128.i.i.1.2 = load i8, ptr %12, align 1, !noalias !18, !noundef !16
  %slurp.i.i.1.2 = zext i8 %_128.i.i.1.2 to i64
  %_19.i.i.i.1.2 = getelementptr inbounds nuw i8, ptr %_19.i.i.i.241, i64 %slurp.i.i.1.2
  %.not.i.i.1.2 = icmp uge i64 %gepdiff, %slurp.i.i.1.2
  tail call void @llvm.assume(i1 %.not.i.i.1.2)
  %_7.i.i.i.i.2 = icmp ne ptr %_19.i.i.i.1.2, %_7.i
  %spec.select.idx.2 = zext i1 %_7.i.i.i.i.2 to i64
  %spec.select.2 = getelementptr inbounds nuw i8, ptr %_19.i.i.i.1.2, i64 %spec.select.idx.2
  br i1 %_7.i.i.i.i.2, label %bb14.i.i.i.2, label %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit.2

bb14.i.i.i.2:                                     ; preds = %bb28.i.i.1.2
  %x.i.i.i.2 = load i8, ptr %_19.i.i.i.1.2, align 1, !noalias !9, !noundef !16
  %_6.i.i.i.2 = icmp sgt i8 %x.i.i.i.2, -1
  br i1 %_6.i.i.i.2, label %bb3.i.i.i.2, label %bb4.i.i.i.2

bb4.i.i.i.2:                                      ; preds = %bb14.i.i.i.2
  %_30.i.i.i.2 = and i8 %x.i.i.i.2, 31
  %init.i.i.i.2 = zext nneg i8 %_30.i.i.i.2 to i32
  %_7.i10.i.i.i.2 = icmp ne ptr %spec.select.2, %_7.i
  tail call void @llvm.assume(i1 %_7.i10.i.i.i.2)
  %y.i.i.i.2 = load i8, ptr %spec.select.2, align 1, !noalias !9, !noundef !16
  %_34.i.i.i.2 = shl nuw nsw i32 %init.i.i.i.2, 6
  %_36.i.i.i.2 = and i8 %y.i.i.i.2, 63
  %_35.i.i.i.2 = zext nneg i8 %_36.i.i.i.2 to i32
  %13 = or disjoint i32 %_34.i.i.i.2, %_35.i.i.i.2
  %_13.i.i.i.2 = icmp ugt i8 %x.i.i.i.2, -33
  br i1 %_13.i.i.i.2, label %bb6.i.i.i.2, label %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit.2

bb6.i.i.i.2:                                      ; preds = %bb4.i.i.i.2
  %_18.i12.i.i.i.2 = getelementptr inbounds nuw i8, ptr %spec.select.2, i64 1
  %_7.i17.i.i.i.2 = icmp ne ptr %_18.i12.i.i.i.2, %_7.i
  tail call void @llvm.assume(i1 %_7.i17.i.i.i.2)
  %z.i.i.i.2 = load i8, ptr %_18.i12.i.i.i.2, align 1, !noalias !9, !noundef !16
  %_40.i.i.i.2 = shl nuw nsw i32 %_35.i.i.i.2, 6
  %_42.i.i.i.2 = and i8 %z.i.i.i.2, 63
  %_41.i.i.i.2 = zext nneg i8 %_42.i.i.i.2 to i32
  %y_z.i.i.i.2 = or disjoint i32 %_40.i.i.i.2, %_41.i.i.i.2
  %_20.i.i.i.2 = shl nuw nsw i32 %init.i.i.i.2, 12
  %14 = or disjoint i32 %y_z.i.i.i.2, %_20.i.i.i.2
  %_21.i.i.i.2 = icmp ugt i8 %x.i.i.i.2, -17
  br i1 %_21.i.i.i.2, label %bb8.i.i.i.2, label %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit.2

bb8.i.i.i.2:                                      ; preds = %bb6.i.i.i.2
  %_18.i19.i.i.i.2 = getelementptr inbounds nuw i8, ptr %spec.select.2, i64 2
  %_7.i24.i.i.i.2 = icmp ne ptr %_18.i19.i.i.i.2, %_7.i
  tail call void @llvm.assume(i1 %_7.i24.i.i.i.2)
  %w.i.i.i.2 = load i8, ptr %_18.i19.i.i.i.2, align 1, !noalias !9, !noundef !16
  %_26.i.i.i.2 = shl nuw nsw i32 %init.i.i.i.2, 18
  %_25.i.i.i.2 = and i32 %_26.i.i.i.2, 1835008
  %_46.i.i.i.2 = shl nuw nsw i32 %y_z.i.i.i.2, 6
  %_48.i.i.i.2 = and i8 %w.i.i.i.2, 63
  %_47.i.i.i.2 = zext nneg i8 %_48.i.i.i.2 to i32
  %_27.i.i.i.2 = or disjoint i32 %_46.i.i.i.2, %_47.i.i.i.2
  %15 = or disjoint i32 %_27.i.i.i.2, %_25.i.i.i.2
  br label %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit.2

bb3.i.i.i.2:                                      ; preds = %bb14.i.i.i.2
  %_7.i.i.i.2 = zext nneg i8 %x.i.i.i.2 to i32
  br label %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit.2

_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit.2: ; preds = %bb9.1, %bb28.i.i.244, %bb3.i.i.i.2, %bb8.i.i.i.2, %bb6.i.i.i.2, %bb4.i.i.i.2, %bb28.i.i.1.2
  %_0.sroa.0.0.i.2 = phi i32 [ %_7.i.i.i.2, %bb3.i.i.i.2 ], [ 1114112, %bb28.i.i.1.2 ], [ %15, %bb8.i.i.i.2 ], [ %14, %bb6.i.i.i.2 ], [ %13, %bb4.i.i.i.2 ], [ 1114112, %bb28.i.i.244 ], [ 1114112, %bb9.1 ]
  switch i32 %_0.sroa.0.0.i.2, label %bb7.2 [
    i32 1114112, label %bb2.i
    i32 0, label %bb12
  ], !prof !17

bb7.2:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit.2
  %16 = add nsw i32 %_0.sroa.0.0.i.2, -48
  %or.cond.2 = icmp ult i32 %16, 10
  br i1 %or.cond.2, label %bb9.2, label %bb32

bb9.2:                                            ; preds = %bb7.2
  %_17.2 = mul nuw nsw i32 %10, 10
  %17 = add nuw nsw i32 %16, %_17.2
  %_41.not.i.i.345 = icmp samesign eq i64 %s.1, 0
  br i1 %_41.not.i.i.345, label %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit.3, label %bb28.i.i.353

bb28.i.i.353:                                     ; preds = %bb9.2
  %b15.i.i.347 = load i8, ptr %s.0, align 1, !noalias !18, !noundef !16
  %_130.i.i.348 = zext i8 %b15.i.i.347 to i64
  %18 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i.i.348
  %_128.i.i.349 = load i8, ptr %18, align 1, !noalias !18, !noundef !16
  %slurp.i.i.350 = zext i8 %_128.i.i.349 to i64
  %_19.i.i.i.351 = getelementptr inbounds nuw i8, ptr %s.0, i64 %slurp.i.i.350
  %.not.i.i.352 = icmp uge i64 %s.1, %slurp.i.i.350
  tail call void @llvm.assume(i1 %.not.i.i.352)
  %_41.not.i.i.1.3 = icmp samesign eq i64 %s.1, %slurp.i.i.350
  br i1 %_41.not.i.i.1.3, label %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit.3, label %bb28.i.i.1.3

bb28.i.i.1.3:                                     ; preds = %bb28.i.i.353
  %gepdiff54 = sub nuw nsw i64 %s.1, %slurp.i.i.350
  %b15.i.i.1.3 = load i8, ptr %_19.i.i.i.351, align 1, !noalias !18, !noundef !16
  %_130.i.i.1.3 = zext i8 %b15.i.i.1.3 to i64
  %19 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i.i.1.3
  %_128.i.i.1.3 = load i8, ptr %19, align 1, !noalias !18, !noundef !16
  %slurp.i.i.1.3 = zext i8 %_128.i.i.1.3 to i64
  %_19.i.i.i.1.3 = getelementptr inbounds nuw i8, ptr %_19.i.i.i.351, i64 %slurp.i.i.1.3
  %.not.i.i.1.3 = icmp uge i64 %gepdiff54, %slurp.i.i.1.3
  tail call void @llvm.assume(i1 %.not.i.i.1.3)
  %_41.not.i.i.2.3 = icmp eq ptr %_7.i, %_19.i.i.i.1.3
  br i1 %_41.not.i.i.2.3, label %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit.3, label %bb28.i.i.2.3

bb28.i.i.2.3:                                     ; preds = %bb28.i.i.1.3
  %20 = add nuw nsw i64 %slurp.i.i.350, %slurp.i.i.1.3
  %gepdiff55 = sub nuw nsw i64 %s.1, %20
  %b15.i.i.2.3 = load i8, ptr %_19.i.i.i.1.3, align 1, !noalias !18, !noundef !16
  %_130.i.i.2.3 = zext i8 %b15.i.i.2.3 to i64
  %21 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i.i.2.3
  %_128.i.i.2.3 = load i8, ptr %21, align 1, !noalias !18, !noundef !16
  %slurp.i.i.2.3 = zext i8 %_128.i.i.2.3 to i64
  %_19.i.i.i.2.3 = getelementptr inbounds nuw i8, ptr %_19.i.i.i.1.3, i64 %slurp.i.i.2.3
  %.not.i.i.2.3 = icmp uge i64 %gepdiff55, %slurp.i.i.2.3
  tail call void @llvm.assume(i1 %.not.i.i.2.3)
  %_7.i.i.i.i.3 = icmp ne ptr %_19.i.i.i.2.3, %_7.i
  %spec.select.idx.3 = zext i1 %_7.i.i.i.i.3 to i64
  %spec.select.3 = getelementptr inbounds nuw i8, ptr %_19.i.i.i.2.3, i64 %spec.select.idx.3
  br i1 %_7.i.i.i.i.3, label %bb14.i.i.i.3, label %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit.3

bb14.i.i.i.3:                                     ; preds = %bb28.i.i.2.3
  %x.i.i.i.3 = load i8, ptr %_19.i.i.i.2.3, align 1, !noalias !9, !noundef !16
  %_6.i.i.i.3 = icmp sgt i8 %x.i.i.i.3, -1
  br i1 %_6.i.i.i.3, label %bb3.i.i.i.3, label %bb4.i.i.i.3

bb4.i.i.i.3:                                      ; preds = %bb14.i.i.i.3
  %_30.i.i.i.3 = and i8 %x.i.i.i.3, 31
  %init.i.i.i.3 = zext nneg i8 %_30.i.i.i.3 to i32
  %_7.i10.i.i.i.3 = icmp ne ptr %spec.select.3, %_7.i
  tail call void @llvm.assume(i1 %_7.i10.i.i.i.3)
  %y.i.i.i.3 = load i8, ptr %spec.select.3, align 1, !noalias !9, !noundef !16
  %_34.i.i.i.3 = shl nuw nsw i32 %init.i.i.i.3, 6
  %_36.i.i.i.3 = and i8 %y.i.i.i.3, 63
  %_35.i.i.i.3 = zext nneg i8 %_36.i.i.i.3 to i32
  %22 = or disjoint i32 %_34.i.i.i.3, %_35.i.i.i.3
  %_13.i.i.i.3 = icmp ugt i8 %x.i.i.i.3, -33
  br i1 %_13.i.i.i.3, label %bb6.i.i.i.3, label %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit.3

bb6.i.i.i.3:                                      ; preds = %bb4.i.i.i.3
  %_18.i12.i.i.i.3 = getelementptr inbounds nuw i8, ptr %spec.select.3, i64 1
  %_7.i17.i.i.i.3 = icmp ne ptr %_18.i12.i.i.i.3, %_7.i
  tail call void @llvm.assume(i1 %_7.i17.i.i.i.3)
  %z.i.i.i.3 = load i8, ptr %_18.i12.i.i.i.3, align 1, !noalias !9, !noundef !16
  %_40.i.i.i.3 = shl nuw nsw i32 %_35.i.i.i.3, 6
  %_42.i.i.i.3 = and i8 %z.i.i.i.3, 63
  %_41.i.i.i.3 = zext nneg i8 %_42.i.i.i.3 to i32
  %y_z.i.i.i.3 = or disjoint i32 %_40.i.i.i.3, %_41.i.i.i.3
  %_20.i.i.i.3 = shl nuw nsw i32 %init.i.i.i.3, 12
  %23 = or disjoint i32 %y_z.i.i.i.3, %_20.i.i.i.3
  %_21.i.i.i.3 = icmp ugt i8 %x.i.i.i.3, -17
  br i1 %_21.i.i.i.3, label %bb8.i.i.i.3, label %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit.3

bb8.i.i.i.3:                                      ; preds = %bb6.i.i.i.3
  %_18.i19.i.i.i.3 = getelementptr inbounds nuw i8, ptr %spec.select.3, i64 2
  %_7.i24.i.i.i.3 = icmp ne ptr %_18.i19.i.i.i.3, %_7.i
  tail call void @llvm.assume(i1 %_7.i24.i.i.i.3)
  %w.i.i.i.3 = load i8, ptr %_18.i19.i.i.i.3, align 1, !noalias !9, !noundef !16
  %_26.i.i.i.3 = shl nuw nsw i32 %init.i.i.i.3, 18
  %_25.i.i.i.3 = and i32 %_26.i.i.i.3, 1835008
  %_46.i.i.i.3 = shl nuw nsw i32 %y_z.i.i.i.3, 6
  %_48.i.i.i.3 = and i8 %w.i.i.i.3, 63
  %_47.i.i.i.3 = zext nneg i8 %_48.i.i.i.3 to i32
  %_27.i.i.i.3 = or disjoint i32 %_46.i.i.i.3, %_47.i.i.i.3
  %24 = or disjoint i32 %_27.i.i.i.3, %_25.i.i.i.3
  br label %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit.3

bb3.i.i.i.3:                                      ; preds = %bb14.i.i.i.3
  %_7.i.i.i.3 = zext nneg i8 %x.i.i.i.3 to i32
  br label %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit.3

_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit.3: ; preds = %bb9.2, %bb28.i.i.353, %bb28.i.i.1.3, %bb3.i.i.i.3, %bb8.i.i.i.3, %bb6.i.i.i.3, %bb4.i.i.i.3, %bb28.i.i.2.3
  %_0.sroa.0.0.i.3 = phi i32 [ %_7.i.i.i.3, %bb3.i.i.i.3 ], [ 1114112, %bb28.i.i.2.3 ], [ %24, %bb8.i.i.i.3 ], [ %23, %bb6.i.i.i.3 ], [ %22, %bb4.i.i.i.3 ], [ 1114112, %bb28.i.i.1.3 ], [ 1114112, %bb28.i.i.353 ], [ 1114112, %bb9.2 ]
  switch i32 %_0.sroa.0.0.i.3, label %bb7.3 [
    i32 1114112, label %bb2.i
    i32 0, label %bb12
  ], !prof !17

bb7.3:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit.3
  %25 = add nsw i32 %_0.sroa.0.0.i.3, -48
  %or.cond.3 = icmp ult i32 %25, 10
  br i1 %or.cond.3, label %bb9.3, label %bb32

bb9.3:                                            ; preds = %bb7.3
  %_17.3 = mul nuw nsw i32 %17, 10
  %26 = add nuw nsw i32 %25, %_17.3
  %_41.not.i.i.4 = icmp samesign eq i64 %s.1, 0
  br i1 %_41.not.i.i.4, label %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit.4, label %bb28.i.i.4

bb28.i.i.4:                                       ; preds = %bb9.3
  %b15.i.i.4 = load i8, ptr %s.0, align 1, !noalias !18, !noundef !16
  %_130.i.i.4 = zext i8 %b15.i.i.4 to i64
  %27 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i.i.4
  %_128.i.i.4 = load i8, ptr %27, align 1, !noalias !18, !noundef !16
  %slurp.i.i.4 = zext i8 %_128.i.i.4 to i64
  %_19.i.i.i.4 = getelementptr inbounds nuw i8, ptr %s.0, i64 %slurp.i.i.4
  %.not.i.i.4 = icmp uge i64 %s.1, %slurp.i.i.4
  tail call void @llvm.assume(i1 %.not.i.i.4)
  %_41.not.i.i.1.4 = icmp samesign eq i64 %s.1, %slurp.i.i.4
  br i1 %_41.not.i.i.1.4, label %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit.4, label %bb28.i.i.1.4

bb28.i.i.1.4:                                     ; preds = %bb28.i.i.4
  %gepdiff56 = sub nuw nsw i64 %s.1, %slurp.i.i.4
  %b15.i.i.1.4 = load i8, ptr %_19.i.i.i.4, align 1, !noalias !18, !noundef !16
  %_130.i.i.1.4 = zext i8 %b15.i.i.1.4 to i64
  %28 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i.i.1.4
  %_128.i.i.1.4 = load i8, ptr %28, align 1, !noalias !18, !noundef !16
  %slurp.i.i.1.4 = zext i8 %_128.i.i.1.4 to i64
  %_19.i.i.i.1.4 = getelementptr inbounds nuw i8, ptr %_19.i.i.i.4, i64 %slurp.i.i.1.4
  %.not.i.i.1.4 = icmp uge i64 %gepdiff56, %slurp.i.i.1.4
  tail call void @llvm.assume(i1 %.not.i.i.1.4)
  %_41.not.i.i.2.4 = icmp eq ptr %_7.i, %_19.i.i.i.1.4
  br i1 %_41.not.i.i.2.4, label %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit.4, label %bb28.i.i.2.4

bb28.i.i.2.4:                                     ; preds = %bb28.i.i.1.4
  %29 = add nuw nsw i64 %slurp.i.i.4, %slurp.i.i.1.4
  %gepdiff57 = sub nuw nsw i64 %s.1, %29
  %b15.i.i.2.4 = load i8, ptr %_19.i.i.i.1.4, align 1, !noalias !18, !noundef !16
  %_130.i.i.2.4 = zext i8 %b15.i.i.2.4 to i64
  %30 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i.i.2.4
  %_128.i.i.2.4 = load i8, ptr %30, align 1, !noalias !18, !noundef !16
  %slurp.i.i.2.4 = zext i8 %_128.i.i.2.4 to i64
  %_19.i.i.i.2.4 = getelementptr inbounds nuw i8, ptr %_19.i.i.i.1.4, i64 %slurp.i.i.2.4
  %.not.i.i.2.4 = icmp uge i64 %gepdiff57, %slurp.i.i.2.4
  tail call void @llvm.assume(i1 %.not.i.i.2.4)
  %_41.not.i.i.3.4 = icmp eq ptr %_7.i, %_19.i.i.i.2.4
  br i1 %_41.not.i.i.3.4, label %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit.4, label %bb28.i.i.3.4

bb28.i.i.3.4:                                     ; preds = %bb28.i.i.2.4
  %31 = add nuw nsw i64 %slurp.i.i.4, %slurp.i.i.1.4
  %32 = add nuw nsw i64 %31, %slurp.i.i.2.4
  %gepdiff58 = sub nuw nsw i64 %s.1, %32
  %b15.i.i.3.4 = load i8, ptr %_19.i.i.i.2.4, align 1, !noalias !18, !noundef !16
  %_130.i.i.3.4 = zext i8 %b15.i.i.3.4 to i64
  %33 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i.i.3.4
  %_128.i.i.3.4 = load i8, ptr %33, align 1, !noalias !18, !noundef !16
  %slurp.i.i.3.4 = zext i8 %_128.i.i.3.4 to i64
  %_19.i.i.i.3.4 = getelementptr inbounds nuw i8, ptr %_19.i.i.i.2.4, i64 %slurp.i.i.3.4
  %.not.i.i.3.4 = icmp uge i64 %gepdiff58, %slurp.i.i.3.4
  tail call void @llvm.assume(i1 %.not.i.i.3.4)
  %_7.i.i.i.i.4 = icmp ne ptr %_19.i.i.i.3.4, %_7.i
  %spec.select.idx.4 = zext i1 %_7.i.i.i.i.4 to i64
  %spec.select.4 = getelementptr inbounds nuw i8, ptr %_19.i.i.i.3.4, i64 %spec.select.idx.4
  br i1 %_7.i.i.i.i.4, label %bb14.i.i.i.4, label %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit.4

bb14.i.i.i.4:                                     ; preds = %bb28.i.i.3.4
  %x.i.i.i.4 = load i8, ptr %_19.i.i.i.3.4, align 1, !noalias !9, !noundef !16
  %_6.i.i.i.4 = icmp sgt i8 %x.i.i.i.4, -1
  br i1 %_6.i.i.i.4, label %bb3.i.i.i.4, label %bb4.i.i.i.4

bb4.i.i.i.4:                                      ; preds = %bb14.i.i.i.4
  %_30.i.i.i.4 = and i8 %x.i.i.i.4, 31
  %init.i.i.i.4 = zext nneg i8 %_30.i.i.i.4 to i32
  %_7.i10.i.i.i.4 = icmp ne ptr %spec.select.4, %_7.i
  tail call void @llvm.assume(i1 %_7.i10.i.i.i.4)
  %y.i.i.i.4 = load i8, ptr %spec.select.4, align 1, !noalias !9, !noundef !16
  %_34.i.i.i.4 = shl nuw nsw i32 %init.i.i.i.4, 6
  %_36.i.i.i.4 = and i8 %y.i.i.i.4, 63
  %_35.i.i.i.4 = zext nneg i8 %_36.i.i.i.4 to i32
  %34 = or disjoint i32 %_34.i.i.i.4, %_35.i.i.i.4
  %_13.i.i.i.4 = icmp ugt i8 %x.i.i.i.4, -33
  br i1 %_13.i.i.i.4, label %bb6.i.i.i.4, label %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit.4

bb6.i.i.i.4:                                      ; preds = %bb4.i.i.i.4
  %_18.i12.i.i.i.4 = getelementptr inbounds nuw i8, ptr %spec.select.4, i64 1
  %_7.i17.i.i.i.4 = icmp ne ptr %_18.i12.i.i.i.4, %_7.i
  tail call void @llvm.assume(i1 %_7.i17.i.i.i.4)
  %z.i.i.i.4 = load i8, ptr %_18.i12.i.i.i.4, align 1, !noalias !9, !noundef !16
  %_40.i.i.i.4 = shl nuw nsw i32 %_35.i.i.i.4, 6
  %_42.i.i.i.4 = and i8 %z.i.i.i.4, 63
  %_41.i.i.i.4 = zext nneg i8 %_42.i.i.i.4 to i32
  %y_z.i.i.i.4 = or disjoint i32 %_40.i.i.i.4, %_41.i.i.i.4
  %_20.i.i.i.4 = shl nuw nsw i32 %init.i.i.i.4, 12
  %35 = or disjoint i32 %y_z.i.i.i.4, %_20.i.i.i.4
  %_21.i.i.i.4 = icmp ugt i8 %x.i.i.i.4, -17
  br i1 %_21.i.i.i.4, label %bb8.i.i.i.4, label %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit.4

bb8.i.i.i.4:                                      ; preds = %bb6.i.i.i.4
  %_18.i19.i.i.i.4 = getelementptr inbounds nuw i8, ptr %spec.select.4, i64 2
  %_7.i24.i.i.i.4 = icmp ne ptr %_18.i19.i.i.i.4, %_7.i
  tail call void @llvm.assume(i1 %_7.i24.i.i.i.4)
  %w.i.i.i.4 = load i8, ptr %_18.i19.i.i.i.4, align 1, !noalias !9, !noundef !16
  %_26.i.i.i.4 = shl nuw nsw i32 %init.i.i.i.4, 18
  %_25.i.i.i.4 = and i32 %_26.i.i.i.4, 1835008
  %_46.i.i.i.4 = shl nuw nsw i32 %y_z.i.i.i.4, 6
  %_48.i.i.i.4 = and i8 %w.i.i.i.4, 63
  %_47.i.i.i.4 = zext nneg i8 %_48.i.i.i.4 to i32
  %_27.i.i.i.4 = or disjoint i32 %_46.i.i.i.4, %_47.i.i.i.4
  %36 = or disjoint i32 %_27.i.i.i.4, %_25.i.i.i.4
  br label %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit.4

bb3.i.i.i.4:                                      ; preds = %bb14.i.i.i.4
  %_7.i.i.i.4 = zext nneg i8 %x.i.i.i.4 to i32
  br label %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit.4

_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit.4: ; preds = %bb9.3, %bb28.i.i.4, %bb28.i.i.1.4, %bb28.i.i.2.4, %bb3.i.i.i.4, %bb8.i.i.i.4, %bb6.i.i.i.4, %bb4.i.i.i.4, %bb28.i.i.3.4
  %_0.sroa.0.0.i.4 = phi i32 [ %_7.i.i.i.4, %bb3.i.i.i.4 ], [ 1114112, %bb28.i.i.3.4 ], [ %36, %bb8.i.i.i.4 ], [ %35, %bb6.i.i.i.4 ], [ %34, %bb4.i.i.i.4 ], [ 1114112, %bb28.i.i.2.4 ], [ 1114112, %bb28.i.i.1.4 ], [ 1114112, %bb28.i.i.4 ], [ 1114112, %bb9.3 ]
  switch i32 %_0.sroa.0.0.i.4, label %bb7.4 [
    i32 1114112, label %bb2.i
    i32 0, label %bb12
  ], !prof !17

bb7.4:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE.exit.4
  %37 = add nsw i32 %_0.sroa.0.0.i.4, -48
  %or.cond.4 = icmp ult i32 %37, 10
  br i1 %or.cond.4, label %bb9.4, label %bb32

bb9.4:                                            ; preds = %bb7.4
  %_17.4 = mul i32 %26, 10
  %38 = add i32 %37, %_17.4
  br label %bb12

bb15:                                             ; preds = %bb12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_6.i.i), !noalias !21
  store i32 0, ptr %_6.i.i, align 4, !noalias !21
  store i8 48, ptr %_6.i.i, align 4, !alias.scope !26, !noalias !21
; call core::slice::<impl [T]>::starts_with
  %_0.i.i = call noundef zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h64c1bc5a56da65e1E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %s.0, i64 noundef %s.1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %_6.i.i, i64 noundef 1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_6.i.i), !noalias !21
  br i1 %_0.i.i, label %bb32, label %bb19

bb19:                                             ; preds = %bb12, %bb15
  %_9.not.i.i.i = icmp ult i64 %i.sroa.0.0.lcssa, %s.1
  br i1 %_9.not.i.i.i, label %bb8.i.i.i10, label %bb6.i.i.i9

bb6.i.i.i9:                                       ; preds = %bb19
  %39 = icmp eq i64 %i.sroa.0.0.lcssa, %s.1
  br label %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17h1fdd9f14a8016a5dE.exit.i.i"

bb8.i.i.i10:                                      ; preds = %bb19
  %40 = getelementptr inbounds nuw i8, ptr %s.0, i64 %i.sroa.0.0.lcssa
  %self1.i.i.i = load i8, ptr %40, align 1, !alias.scope !29, !noundef !16
  %41 = icmp sgt i8 %self1.i.i.i, -65
  br label %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17h1fdd9f14a8016a5dE.exit.i.i"

"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17h1fdd9f14a8016a5dE.exit.i.i": ; preds = %bb8.i.i.i10, %bb6.i.i.i9
  %_3.sroa.0.0.in.i.i.i = phi i1 [ %39, %bb6.i.i.i9 ], [ %41, %bb8.i.i.i10 ]
  br i1 %_3.sroa.0.0.in.i.i.i, label %"_ZN4core3str6traits66_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$str$GT$5index17hcdff39d555a11c95E.exit", label %bb3.i.i, !prof !36

bb3.i.i:                                          ; preds = %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17h1fdd9f14a8016a5dE.exit.i.i"
; call core::str::slice_error_fail
  call void @_ZN4core3str16slice_error_fail17h4678567854dd8858E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %s.0, i64 noundef %s.1, i64 noundef range(i64 1, 0) %i.sroa.0.0.lcssa, i64 noundef %s.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_096a28ff3cf664e7d4ad50bfd2e316d7) #5
  unreachable

"_ZN4core3str6traits66_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$str$GT$5index17hcdff39d555a11c95E.exit": ; preds = %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17h1fdd9f14a8016a5dE.exit.i.i"
  %data.i.i.i = getelementptr inbounds nuw i8, ptr %s.0, i64 %i.sroa.0.0.lcssa
  %_7.i11 = getelementptr inbounds nuw i8, ptr %s.0, i64 %s.1
  %_7.i.i.i12 = icmp samesign ne i64 %i.sroa.0.0.lcssa, %s.1
  %spec.select17.idx = zext i1 %_7.i.i.i12 to i64
  %spec.select17 = getelementptr inbounds nuw i8, ptr %data.i.i.i, i64 %spec.select17.idx
  br i1 %_7.i.i.i12, label %bb14.i.i, label %bb25

bb14.i.i:                                         ; preds = %"_ZN4core3str6traits66_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$str$GT$5index17hcdff39d555a11c95E.exit"
  %x.i.i = load i8, ptr %data.i.i.i, align 1, !noalias !37, !noundef !16
  %_6.i.i14 = icmp sgt i8 %x.i.i, -1
  br i1 %_6.i.i14, label %bb32, label %bb4.i.i

bb4.i.i:                                          ; preds = %bb14.i.i
  %init.i.i = zext i8 %x.i.i to i32
  %_7.i10.i.i = icmp ne ptr %spec.select17, %_7.i11
  call void @llvm.assume(i1 %_7.i10.i.i)
  %y.i.i = load i8, ptr %spec.select17, align 1, !noalias !37, !noundef !16
  %_36.i.i = and i8 %y.i.i, 63
  %_35.i.i = zext nneg i8 %_36.i.i to i32
  %_13.i.i = icmp ugt i8 %x.i.i, -33
  br i1 %_13.i.i, label %bb6.i.i, label %bb32

bb6.i.i:                                          ; preds = %bb4.i.i
  %_18.i12.i.i = getelementptr inbounds nuw i8, ptr %spec.select17, i64 1
  %_7.i17.i.i = icmp ne ptr %_18.i12.i.i, %_7.i11
  call void @llvm.assume(i1 %_7.i17.i.i)
  %_21.i.i = icmp ugt i8 %x.i.i, -17
  br i1 %_21.i.i, label %bb8.i.i, label %bb32

bb8.i.i:                                          ; preds = %bb6.i.i
  %z.i.i = load i8, ptr %_18.i12.i.i, align 1, !noalias !37, !noundef !16
  %_42.i.i = and i8 %z.i.i, 63
  %_41.i.i = zext nneg i8 %_42.i.i to i32
  %_18.i19.i.i = getelementptr inbounds nuw i8, ptr %spec.select17, i64 2
  %_7.i24.i.i = icmp ne ptr %_18.i19.i.i, %_7.i11
  call void @llvm.assume(i1 %_7.i24.i.i)
  %w.i.i = load i8, ptr %_18.i19.i.i, align 1, !noalias !37, !noundef !16
  %_26.i.i = shl nuw nsw i32 %init.i.i, 18
  %_25.i.i = and i32 %_26.i.i, 1835008
  %42 = shl nuw nsw i32 %_35.i.i, 12
  %43 = shl nuw nsw i32 %_41.i.i, 6
  %_46.i.i = or disjoint i32 %43, %42
  %_48.i.i = and i8 %w.i.i, 63
  %_47.i.i = zext nneg i8 %_48.i.i to i32
  %_27.i.i = or disjoint i32 %_46.i.i, %_47.i.i
  %44 = or disjoint i32 %_27.i.i, %_25.i.i
  %45 = icmp eq i32 %44, 1114112
  br i1 %45, label %bb25, label %bb32

bb25:                                             ; preds = %"_ZN4core3str6traits66_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$str$GT$5index17hcdff39d555a11c95E.exit", %bb8.i.i
  %_33 = icmp sge i32 %value.sroa.0.0.lcssa, %low
  %_35 = icmp sle i32 %value.sroa.0.0.lcssa, %high
  %or.cond1.not = and i1 %_33, %_35
  br label %bb32

bb32:                                             ; preds = %bb7, %bb7.1, %bb7.2, %bb7.3, %bb7.4, %bb6.i.i, %bb4.i.i, %bb14.i.i, %bb8.i.i, %bb25, %bb15, %bb12
  %_0.sroa.0.0 = phi i1 [ false, %bb12 ], [ false, %bb15 ], [ %or.cond1.not, %bb25 ], [ false, %bb8.i.i ], [ false, %bb14.i.i ], [ false, %bb4.i.i ], [ false, %bb6.i.i ], [ false, %bb7.4 ], [ false, %bb7.3 ], [ false, %bb7.2 ], [ false, %bb7.1 ], [ false, %bb7 ]
  ret i1 %_0.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

; core::str::slice_error_fail
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core3str16slice_error_fail17h4678567854dd8858E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #4

; core::option::unwrap_failed
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #4

; core::slice::<impl [T]>::starts_with
; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h64c1bc5a56da65e1E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { noinline noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.93.1 (01f6ddf75 2026-02-11)"}
!3 = !{!4}
!4 = distinct !{!4, !5, !"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$12is_prefix_of17h0ca10fe567e00243E: %haystack.0"}
!5 = distinct !{!5, !"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$12is_prefix_of17h0ca10fe567e00243E"}
!6 = !{!7}
!7 = distinct !{!7, !8, !"_ZN4core4char7methods15encode_utf8_raw17hc175ebbaeebc4df9E: %dst.0"}
!8 = distinct !{!8, !"_ZN4core4char7methods15encode_utf8_raw17hc175ebbaeebc4df9E"}
!9 = !{!10, !12, !14}
!10 = distinct !{!10, !11, !"_ZN4core3str11validations15next_code_point17h527e01729c281c6fE: %bytes"}
!11 = distinct !{!11, !"_ZN4core3str11validations15next_code_point17h527e01729c281c6fE"}
!12 = distinct !{!12, !13, !"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E: %self"}
!13 = distinct !{!13, !"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E"}
!14 = distinct !{!14, !15, !"_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE: %self"}
!15 = distinct !{!15, !"_ZN4core4iter6traits8iterator8Iterator3nth17hc331844375051b6bE"}
!16 = !{}
!17 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!18 = !{!19, !14}
!19 = distinct !{!19, !20, !"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E: %self"}
!20 = distinct !{!20, !"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"}
!21 = !{!22, !24}
!22 = distinct !{!22, !23, !"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$12is_prefix_of17h0ca10fe567e00243E: %haystack.0"}
!23 = distinct !{!23, !"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$12is_prefix_of17h0ca10fe567e00243E"}
!24 = distinct !{!24, !25, !"_ZN4core3str21_$LT$impl$u20$str$GT$11starts_with17h4879a20597009083E: %self.0"}
!25 = distinct !{!25, !"_ZN4core3str21_$LT$impl$u20$str$GT$11starts_with17h4879a20597009083E"}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_ZN4core4char7methods15encode_utf8_raw17hc175ebbaeebc4df9E: %dst.0"}
!28 = distinct !{!28, !"_ZN4core4char7methods15encode_utf8_raw17hc175ebbaeebc4df9E"}
!29 = !{!30, !32, !34}
!30 = distinct !{!30, !31, !"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17h1fdd9f14a8016a5dE: %slice.0"}
!31 = distinct !{!31, !"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17h1fdd9f14a8016a5dE"}
!32 = distinct !{!32, !33, !"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$5index17h24f1b97d637689f5E: %slice.0"}
!33 = distinct !{!33, !"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$5index17h24f1b97d637689f5E"}
!34 = distinct !{!34, !35, !"_ZN4core3str6traits66_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$str$GT$5index17hcdff39d555a11c95E: %self.0"}
!35 = distinct !{!35, !"_ZN4core3str6traits66_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$str$GT$5index17hcdff39d555a11c95E"}
!36 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!37 = !{!38, !40}
!38 = distinct !{!38, !39, !"_ZN4core3str11validations15next_code_point17h527e01729c281c6fE: %bytes"}
!39 = distinct !{!39, !"_ZN4core3str11validations15next_code_point17h527e01729c281c6fE"}
!40 = distinct !{!40, !41, !"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E: %self"}
!41 = distinct !{!41, !"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E"}
