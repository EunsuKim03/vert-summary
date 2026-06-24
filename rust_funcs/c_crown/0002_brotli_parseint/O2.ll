; ModuleID = '0002_brotli_parseint_emit.876c36ed713ef124-cgu.0'
source_filename = "0002_brotli_parseint_emit.876c36ed713ef124-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@alloc_db51a71a1b6b25b4224d4dc5277f93e7 = private unnamed_addr constant [256 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04\00\00\00\00\00\00\00\00\00\00\00", align 1
@alloc_5244b70efa2e772df26449ce542b226d = private unnamed_addr constant [88 x i8] c"/root/es/vert/vert/rust_funcs/c_crown/0002_brotli_parseint/0002_brotli_parseint_emit.rs\00", align 1
@alloc_096a28ff3cf664e7d4ad50bfd2e316d7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_5244b70efa2e772df26449ce542b226d, [16 x i8] c"W\00\00\00\00\00\00\00\16\00\00\00\09\00\00\00" }>, align 8
@alloc_aacf12f21f38075c2fd7cfd1da20a746 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_5244b70efa2e772df26449ce542b226d, [16 x i8] c"W\00\00\00\00\00\00\00\0E\00\00\00\22\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @parse_int(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %s.0, i64 noundef %s.1, i32 noundef %low, i32 noundef %high, ptr noalias noundef readnone align 4 captures(none) dereferenceable(4) %result) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_37 = getelementptr inbounds nuw i8, ptr %s.0, i64 %s.1
  %_7.i.i = icmp samesign eq i64 %s.1, 0
  br i1 %_7.i.i, label %bb38, label %bb14.i

bb9:                                              ; preds = %bb29.4, %bb29.3, %bb29.2, %bb29.1, %bb29
  %value.sroa.0.079.lcssa113 = phi i32 [ 0, %bb29 ], [ %4, %bb29.1 ], [ %11, %bb29.2 ], [ %19, %bb29.3 ], [ %29, %bb29.4 ]
  %i.sroa.0.078.lcssa109 = phi i64 [ 0, %bb29 ], [ 1, %bb29.1 ], [ 2, %bb29.2 ], [ 3, %bb29.3 ], [ 4, %bb29.4 ]
  switch i64 %i.sroa.0.078.lcssa109, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h40c3fd7056ab645eE.exit" [
    i64 0, label %bb22
    i64 1, label %bb15
  ]

bb14.i:                                           ; preds = %start
  %x.i = load i8, ptr %s.0, align 1, !noalias !3, !noundef !6
  %_6.i = icmp sgt i8 %x.i, -1
  br i1 %_6.i, label %bb3.i, label %bb4.i

bb4.i:                                            ; preds = %bb14.i
  %_18.i.i = getelementptr inbounds nuw i8, ptr %s.0, i64 1
  %_30.i = and i8 %x.i, 31
  %init.i = zext nneg i8 %_30.i to i32
  %_7.i10.i = icmp samesign ne i64 %s.1, 1
  tail call void @llvm.assume(i1 %_7.i10.i)
  %y.i = load i8, ptr %_18.i.i, align 1, !noalias !3, !noundef !6
  %_34.i = shl nuw nsw i32 %init.i, 6
  %_36.i = and i8 %y.i, 63
  %_35.i = zext nneg i8 %_36.i to i32
  %0 = or disjoint i32 %_34.i, %_35.i
  %_13.i = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i, label %bb6.i, label %bb29

bb3.i:                                            ; preds = %bb14.i
  %_7.i = zext nneg i8 %x.i to i32
  br label %bb29

bb6.i:                                            ; preds = %bb4.i
  %_18.i12.i = getelementptr inbounds nuw i8, ptr %s.0, i64 2
  %_7.i17.i = icmp samesign ne i64 %s.1, 2
  tail call void @llvm.assume(i1 %_7.i17.i)
  %z.i = load i8, ptr %_18.i12.i, align 1, !noalias !3, !noundef !6
  %_40.i = shl nuw nsw i32 %_35.i, 6
  %_42.i = and i8 %z.i, 63
  %_41.i = zext nneg i8 %_42.i to i32
  %y_z.i = or disjoint i32 %_40.i, %_41.i
  %_20.i = shl nuw nsw i32 %init.i, 12
  %1 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb8.i, label %bb29

bb8.i:                                            ; preds = %bb6.i
  %_18.i19.i = getelementptr inbounds nuw i8, ptr %s.0, i64 3
  %_7.i24.i = icmp samesign ne i64 %s.1, 3
  tail call void @llvm.assume(i1 %_7.i24.i)
  %w.i = load i8, ptr %_18.i19.i, align 1, !noalias !3, !noundef !6
  %_26.i = shl nuw nsw i32 %init.i, 18
  %_25.i = and i32 %_26.i, 1835008
  %_46.i = shl nuw nsw i32 %y_z.i, 6
  %_48.i = and i8 %w.i, 63
  %_47.i = zext nneg i8 %_48.i to i32
  %_27.i = or disjoint i32 %_46.i, %_47.i
  %2 = or disjoint i32 %_27.i, %_25.i
  br label %bb29

bb29:                                             ; preds = %bb3.i, %bb8.i, %bb6.i, %bb4.i
  %_0.sroa.4.0.i.ph = phi i32 [ %0, %bb4.i ], [ %1, %bb6.i ], [ %2, %bb8.i ], [ %_7.i, %bb3.i ]
  %3 = icmp samesign ult i32 %_0.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %3)
  %_14 = icmp eq i32 %_0.sroa.4.0.i.ph, 0
  br i1 %_14, label %bb9, label %bb4

bb38:                                             ; preds = %start, %bb62.i.1125, %bb62.i.1.2, %bb62.i.2.3, %bb62.i.3.4, %bb6.1, %bb6.2, %bb62.i.1.3, %bb6.3, %bb62.i.1.4, %bb62.i.2.4
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_aacf12f21f38075c2fd7cfd1da20a746) #4
  unreachable

bb4:                                              ; preds = %bb29
  %4 = add nsw i32 %_0.sroa.4.0.i.ph, -48
  %or.cond = icmp ult i32 %4, 10
  br i1 %or.cond, label %bb62.i.1125, label %bb22

bb62.i.1125:                                      ; preds = %bb4
  %b15.i.1118 = load i8, ptr %s.0, align 1, !noalias !7, !noundef !6
  %_130.i.1119 = zext i8 %b15.i.1118 to i64
  %5 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i.1119
  %_128.i.1120 = load i8, ptr %5, align 1, !noalias !7, !noundef !6
  %slurp.i.1121 = zext i8 %_128.i.1120 to i64
  %_19.i.i.1122 = getelementptr inbounds nuw i8, ptr %s.0, i64 %slurp.i.1121
  %.not.i.1123 = icmp uge i64 %s.1, %slurp.i.1121
  tail call void @llvm.assume(i1 %.not.i.1123)
  %_7.i.i.1 = icmp eq ptr %_19.i.i.1122, %_37
  br i1 %_7.i.i.1, label %bb38, label %bb14.i.1

bb14.i.1:                                         ; preds = %bb62.i.1125
  %x.i.1 = load i8, ptr %_19.i.i.1122, align 1, !noalias !3, !noundef !6
  %_6.i.1 = icmp sgt i8 %x.i.1, -1
  br i1 %_6.i.1, label %bb3.i.1, label %bb4.i.1

bb4.i.1:                                          ; preds = %bb14.i.1
  %_18.i.i.1 = getelementptr inbounds nuw i8, ptr %_19.i.i.1122, i64 1
  %_30.i.1 = and i8 %x.i.1, 31
  %init.i.1 = zext nneg i8 %_30.i.1 to i32
  %_7.i10.i.1 = icmp ne ptr %_18.i.i.1, %_37
  tail call void @llvm.assume(i1 %_7.i10.i.1)
  %y.i.1 = load i8, ptr %_18.i.i.1, align 1, !noalias !3, !noundef !6
  %_34.i.1 = shl nuw nsw i32 %init.i.1, 6
  %_36.i.1 = and i8 %y.i.1, 63
  %_35.i.1 = zext nneg i8 %_36.i.1 to i32
  %6 = or disjoint i32 %_34.i.1, %_35.i.1
  %_13.i.1 = icmp samesign ugt i8 %x.i.1, -33
  br i1 %_13.i.1, label %bb6.i.1, label %bb29.1

bb6.i.1:                                          ; preds = %bb4.i.1
  %_18.i12.i.1 = getelementptr inbounds nuw i8, ptr %_19.i.i.1122, i64 2
  %_7.i17.i.1 = icmp ne ptr %_18.i12.i.1, %_37
  tail call void @llvm.assume(i1 %_7.i17.i.1)
  %z.i.1 = load i8, ptr %_18.i12.i.1, align 1, !noalias !3, !noundef !6
  %_40.i.1 = shl nuw nsw i32 %_35.i.1, 6
  %_42.i.1 = and i8 %z.i.1, 63
  %_41.i.1 = zext nneg i8 %_42.i.1 to i32
  %y_z.i.1 = or disjoint i32 %_40.i.1, %_41.i.1
  %_20.i.1 = shl nuw nsw i32 %init.i.1, 12
  %7 = or disjoint i32 %y_z.i.1, %_20.i.1
  %_21.i.1 = icmp samesign ugt i8 %x.i.1, -17
  br i1 %_21.i.1, label %bb8.i.1, label %bb29.1

bb8.i.1:                                          ; preds = %bb6.i.1
  %_18.i19.i.1 = getelementptr inbounds nuw i8, ptr %_19.i.i.1122, i64 3
  %_7.i24.i.1 = icmp ne ptr %_18.i19.i.1, %_37
  tail call void @llvm.assume(i1 %_7.i24.i.1)
  %w.i.1 = load i8, ptr %_18.i19.i.1, align 1, !noalias !3, !noundef !6
  %_26.i.1 = shl nuw nsw i32 %init.i.1, 18
  %_25.i.1 = and i32 %_26.i.1, 1835008
  %_46.i.1 = shl nuw nsw i32 %y_z.i.1, 6
  %_48.i.1 = and i8 %w.i.1, 63
  %_47.i.1 = zext nneg i8 %_48.i.1 to i32
  %_27.i.1 = or disjoint i32 %_46.i.1, %_47.i.1
  %8 = or disjoint i32 %_27.i.1, %_25.i.1
  br label %bb29.1

bb3.i.1:                                          ; preds = %bb14.i.1
  %_7.i.1 = zext nneg i8 %x.i.1 to i32
  br label %bb29.1

bb29.1:                                           ; preds = %bb3.i.1, %bb8.i.1, %bb6.i.1, %bb4.i.1
  %_0.sroa.4.0.i.ph.1 = phi i32 [ %6, %bb4.i.1 ], [ %7, %bb6.i.1 ], [ %8, %bb8.i.1 ], [ %_7.i.1, %bb3.i.1 ]
  %9 = icmp samesign ult i32 %_0.sroa.4.0.i.ph.1, 1114112
  tail call void @llvm.assume(i1 %9)
  %_14.1 = icmp eq i32 %_0.sroa.4.0.i.ph.1, 0
  br i1 %_14.1, label %bb9, label %bb4.1

bb4.1:                                            ; preds = %bb29.1
  %10 = add nsw i32 %_0.sroa.4.0.i.ph.1, -48
  %or.cond.1 = icmp ult i32 %10, 10
  br i1 %or.cond.1, label %bb6.1, label %bb22

bb6.1:                                            ; preds = %bb4.1
  %_17.1 = mul nuw nsw i32 %4, 10
  %11 = add nuw nsw i32 %10, %_17.1
  %b15.i.2128 = load i8, ptr %s.0, align 1, !noalias !7, !noundef !6
  %_130.i.2129 = zext i8 %b15.i.2128 to i64
  %12 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i.2129
  %_128.i.2130 = load i8, ptr %12, align 1, !noalias !7, !noundef !6
  %slurp.i.2131 = zext i8 %_128.i.2130 to i64
  %_19.i.i.2132 = getelementptr inbounds nuw i8, ptr %s.0, i64 %slurp.i.2131
  %.not.i.2133 = icmp uge i64 %s.1, %slurp.i.2131
  tail call void @llvm.assume(i1 %.not.i.2133)
  %_41.not.i.1.2 = icmp samesign eq i64 %s.1, %slurp.i.2131
  br i1 %_41.not.i.1.2, label %bb38, label %bb62.i.1.2

bb62.i.1.2:                                       ; preds = %bb6.1
  %gepdiff = sub nuw nsw i64 %s.1, %slurp.i.2131
  %b15.i.1.2 = load i8, ptr %_19.i.i.2132, align 1, !noalias !7, !noundef !6
  %_130.i.1.2 = zext i8 %b15.i.1.2 to i64
  %13 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i.1.2
  %_128.i.1.2 = load i8, ptr %13, align 1, !noalias !7, !noundef !6
  %slurp.i.1.2 = zext i8 %_128.i.1.2 to i64
  %_19.i.i.1.2 = getelementptr inbounds nuw i8, ptr %_19.i.i.2132, i64 %slurp.i.1.2
  %.not.i.1.2 = icmp uge i64 %gepdiff, %slurp.i.1.2
  tail call void @llvm.assume(i1 %.not.i.1.2)
  %_7.i.i.2 = icmp eq ptr %_19.i.i.1.2, %_37
  br i1 %_7.i.i.2, label %bb38, label %bb14.i.2

bb14.i.2:                                         ; preds = %bb62.i.1.2
  %x.i.2 = load i8, ptr %_19.i.i.1.2, align 1, !noalias !3, !noundef !6
  %_6.i.2 = icmp sgt i8 %x.i.2, -1
  br i1 %_6.i.2, label %bb3.i.2, label %bb4.i.2

bb4.i.2:                                          ; preds = %bb14.i.2
  %_18.i.i.2 = getelementptr inbounds nuw i8, ptr %_19.i.i.1.2, i64 1
  %_30.i.2 = and i8 %x.i.2, 31
  %init.i.2 = zext nneg i8 %_30.i.2 to i32
  %_7.i10.i.2 = icmp ne ptr %_18.i.i.2, %_37
  tail call void @llvm.assume(i1 %_7.i10.i.2)
  %y.i.2 = load i8, ptr %_18.i.i.2, align 1, !noalias !3, !noundef !6
  %_34.i.2 = shl nuw nsw i32 %init.i.2, 6
  %_36.i.2 = and i8 %y.i.2, 63
  %_35.i.2 = zext nneg i8 %_36.i.2 to i32
  %14 = or disjoint i32 %_34.i.2, %_35.i.2
  %_13.i.2 = icmp samesign ugt i8 %x.i.2, -33
  br i1 %_13.i.2, label %bb6.i.2, label %bb29.2

bb6.i.2:                                          ; preds = %bb4.i.2
  %_18.i12.i.2 = getelementptr inbounds nuw i8, ptr %_19.i.i.1.2, i64 2
  %_7.i17.i.2 = icmp ne ptr %_18.i12.i.2, %_37
  tail call void @llvm.assume(i1 %_7.i17.i.2)
  %z.i.2 = load i8, ptr %_18.i12.i.2, align 1, !noalias !3, !noundef !6
  %_40.i.2 = shl nuw nsw i32 %_35.i.2, 6
  %_42.i.2 = and i8 %z.i.2, 63
  %_41.i.2 = zext nneg i8 %_42.i.2 to i32
  %y_z.i.2 = or disjoint i32 %_40.i.2, %_41.i.2
  %_20.i.2 = shl nuw nsw i32 %init.i.2, 12
  %15 = or disjoint i32 %y_z.i.2, %_20.i.2
  %_21.i.2 = icmp samesign ugt i8 %x.i.2, -17
  br i1 %_21.i.2, label %bb8.i.2, label %bb29.2

bb8.i.2:                                          ; preds = %bb6.i.2
  %_18.i19.i.2 = getelementptr inbounds nuw i8, ptr %_19.i.i.1.2, i64 3
  %_7.i24.i.2 = icmp ne ptr %_18.i19.i.2, %_37
  tail call void @llvm.assume(i1 %_7.i24.i.2)
  %w.i.2 = load i8, ptr %_18.i19.i.2, align 1, !noalias !3, !noundef !6
  %_26.i.2 = shl nuw nsw i32 %init.i.2, 18
  %_25.i.2 = and i32 %_26.i.2, 1835008
  %_46.i.2 = shl nuw nsw i32 %y_z.i.2, 6
  %_48.i.2 = and i8 %w.i.2, 63
  %_47.i.2 = zext nneg i8 %_48.i.2 to i32
  %_27.i.2 = or disjoint i32 %_46.i.2, %_47.i.2
  %16 = or disjoint i32 %_27.i.2, %_25.i.2
  br label %bb29.2

bb3.i.2:                                          ; preds = %bb14.i.2
  %_7.i.2 = zext nneg i8 %x.i.2 to i32
  br label %bb29.2

bb29.2:                                           ; preds = %bb3.i.2, %bb8.i.2, %bb6.i.2, %bb4.i.2
  %_0.sroa.4.0.i.ph.2 = phi i32 [ %14, %bb4.i.2 ], [ %15, %bb6.i.2 ], [ %16, %bb8.i.2 ], [ %_7.i.2, %bb3.i.2 ]
  %17 = icmp samesign ult i32 %_0.sroa.4.0.i.ph.2, 1114112
  tail call void @llvm.assume(i1 %17)
  %_14.2 = icmp eq i32 %_0.sroa.4.0.i.ph.2, 0
  br i1 %_14.2, label %bb9, label %bb4.2

bb4.2:                                            ; preds = %bb29.2
  %18 = add nsw i32 %_0.sroa.4.0.i.ph.2, -48
  %or.cond.2 = icmp ult i32 %18, 10
  br i1 %or.cond.2, label %bb6.2, label %bb22

bb6.2:                                            ; preds = %bb4.2
  %_17.2 = mul nuw nsw i32 %11, 10
  %19 = add nuw nsw i32 %18, %_17.2
  %b15.i.3138 = load i8, ptr %s.0, align 1, !noalias !7, !noundef !6
  %_130.i.3139 = zext i8 %b15.i.3138 to i64
  %20 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i.3139
  %_128.i.3140 = load i8, ptr %20, align 1, !noalias !7, !noundef !6
  %slurp.i.3141 = zext i8 %_128.i.3140 to i64
  %_19.i.i.3142 = getelementptr inbounds nuw i8, ptr %s.0, i64 %slurp.i.3141
  %.not.i.3143 = icmp uge i64 %s.1, %slurp.i.3141
  tail call void @llvm.assume(i1 %.not.i.3143)
  %_41.not.i.1.3 = icmp samesign eq i64 %s.1, %slurp.i.3141
  br i1 %_41.not.i.1.3, label %bb38, label %bb62.i.1.3

bb62.i.1.3:                                       ; preds = %bb6.2
  %gepdiff145 = sub nuw nsw i64 %s.1, %slurp.i.3141
  %b15.i.1.3 = load i8, ptr %_19.i.i.3142, align 1, !noalias !7, !noundef !6
  %_130.i.1.3 = zext i8 %b15.i.1.3 to i64
  %21 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i.1.3
  %_128.i.1.3 = load i8, ptr %21, align 1, !noalias !7, !noundef !6
  %slurp.i.1.3 = zext i8 %_128.i.1.3 to i64
  %_19.i.i.1.3 = getelementptr inbounds nuw i8, ptr %_19.i.i.3142, i64 %slurp.i.1.3
  %.not.i.1.3 = icmp uge i64 %gepdiff145, %slurp.i.1.3
  tail call void @llvm.assume(i1 %.not.i.1.3)
  %_41.not.i.2.3 = icmp eq ptr %_37, %_19.i.i.1.3
  br i1 %_41.not.i.2.3, label %bb38, label %bb62.i.2.3

bb62.i.2.3:                                       ; preds = %bb62.i.1.3
  %22 = add nuw nsw i64 %slurp.i.3141, %slurp.i.1.3
  %gepdiff146 = sub nuw nsw i64 %s.1, %22
  %b15.i.2.3 = load i8, ptr %_19.i.i.1.3, align 1, !noalias !7, !noundef !6
  %_130.i.2.3 = zext i8 %b15.i.2.3 to i64
  %23 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i.2.3
  %_128.i.2.3 = load i8, ptr %23, align 1, !noalias !7, !noundef !6
  %slurp.i.2.3 = zext i8 %_128.i.2.3 to i64
  %_19.i.i.2.3 = getelementptr inbounds nuw i8, ptr %_19.i.i.1.3, i64 %slurp.i.2.3
  %.not.i.2.3 = icmp uge i64 %gepdiff146, %slurp.i.2.3
  tail call void @llvm.assume(i1 %.not.i.2.3)
  %_7.i.i.3 = icmp eq ptr %_19.i.i.2.3, %_37
  br i1 %_7.i.i.3, label %bb38, label %bb14.i.3

bb14.i.3:                                         ; preds = %bb62.i.2.3
  %x.i.3 = load i8, ptr %_19.i.i.2.3, align 1, !noalias !3, !noundef !6
  %_6.i.3 = icmp sgt i8 %x.i.3, -1
  br i1 %_6.i.3, label %bb3.i.3, label %bb4.i.3

bb4.i.3:                                          ; preds = %bb14.i.3
  %_18.i.i.3 = getelementptr inbounds nuw i8, ptr %_19.i.i.2.3, i64 1
  %_30.i.3 = and i8 %x.i.3, 31
  %init.i.3 = zext nneg i8 %_30.i.3 to i32
  %_7.i10.i.3 = icmp ne ptr %_18.i.i.3, %_37
  tail call void @llvm.assume(i1 %_7.i10.i.3)
  %y.i.3 = load i8, ptr %_18.i.i.3, align 1, !noalias !3, !noundef !6
  %_34.i.3 = shl nuw nsw i32 %init.i.3, 6
  %_36.i.3 = and i8 %y.i.3, 63
  %_35.i.3 = zext nneg i8 %_36.i.3 to i32
  %24 = or disjoint i32 %_34.i.3, %_35.i.3
  %_13.i.3 = icmp samesign ugt i8 %x.i.3, -33
  br i1 %_13.i.3, label %bb6.i.3, label %bb29.3

bb6.i.3:                                          ; preds = %bb4.i.3
  %_18.i12.i.3 = getelementptr inbounds nuw i8, ptr %_19.i.i.2.3, i64 2
  %_7.i17.i.3 = icmp ne ptr %_18.i12.i.3, %_37
  tail call void @llvm.assume(i1 %_7.i17.i.3)
  %z.i.3 = load i8, ptr %_18.i12.i.3, align 1, !noalias !3, !noundef !6
  %_40.i.3 = shl nuw nsw i32 %_35.i.3, 6
  %_42.i.3 = and i8 %z.i.3, 63
  %_41.i.3 = zext nneg i8 %_42.i.3 to i32
  %y_z.i.3 = or disjoint i32 %_40.i.3, %_41.i.3
  %_20.i.3 = shl nuw nsw i32 %init.i.3, 12
  %25 = or disjoint i32 %y_z.i.3, %_20.i.3
  %_21.i.3 = icmp samesign ugt i8 %x.i.3, -17
  br i1 %_21.i.3, label %bb8.i.3, label %bb29.3

bb8.i.3:                                          ; preds = %bb6.i.3
  %_18.i19.i.3 = getelementptr inbounds nuw i8, ptr %_19.i.i.2.3, i64 3
  %_7.i24.i.3 = icmp ne ptr %_18.i19.i.3, %_37
  tail call void @llvm.assume(i1 %_7.i24.i.3)
  %w.i.3 = load i8, ptr %_18.i19.i.3, align 1, !noalias !3, !noundef !6
  %_26.i.3 = shl nuw nsw i32 %init.i.3, 18
  %_25.i.3 = and i32 %_26.i.3, 1835008
  %_46.i.3 = shl nuw nsw i32 %y_z.i.3, 6
  %_48.i.3 = and i8 %w.i.3, 63
  %_47.i.3 = zext nneg i8 %_48.i.3 to i32
  %_27.i.3 = or disjoint i32 %_46.i.3, %_47.i.3
  %26 = or disjoint i32 %_27.i.3, %_25.i.3
  br label %bb29.3

bb3.i.3:                                          ; preds = %bb14.i.3
  %_7.i.3 = zext nneg i8 %x.i.3 to i32
  br label %bb29.3

bb29.3:                                           ; preds = %bb3.i.3, %bb8.i.3, %bb6.i.3, %bb4.i.3
  %_0.sroa.4.0.i.ph.3 = phi i32 [ %24, %bb4.i.3 ], [ %25, %bb6.i.3 ], [ %26, %bb8.i.3 ], [ %_7.i.3, %bb3.i.3 ]
  %27 = icmp samesign ult i32 %_0.sroa.4.0.i.ph.3, 1114112
  tail call void @llvm.assume(i1 %27)
  %_14.3 = icmp eq i32 %_0.sroa.4.0.i.ph.3, 0
  br i1 %_14.3, label %bb9, label %bb4.3

bb4.3:                                            ; preds = %bb29.3
  %28 = add nsw i32 %_0.sroa.4.0.i.ph.3, -48
  %or.cond.3 = icmp ult i32 %28, 10
  br i1 %or.cond.3, label %bb6.3, label %bb22

bb6.3:                                            ; preds = %bb4.3
  %_17.3 = mul nuw nsw i32 %19, 10
  %29 = add nuw nsw i32 %28, %_17.3
  %b15.i.4 = load i8, ptr %s.0, align 1, !noalias !7, !noundef !6
  %_130.i.4 = zext i8 %b15.i.4 to i64
  %30 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i.4
  %_128.i.4 = load i8, ptr %30, align 1, !noalias !7, !noundef !6
  %slurp.i.4 = zext i8 %_128.i.4 to i64
  %_19.i.i.4 = getelementptr inbounds nuw i8, ptr %s.0, i64 %slurp.i.4
  %.not.i.4 = icmp uge i64 %s.1, %slurp.i.4
  tail call void @llvm.assume(i1 %.not.i.4)
  %_41.not.i.1.4 = icmp samesign eq i64 %s.1, %slurp.i.4
  br i1 %_41.not.i.1.4, label %bb38, label %bb62.i.1.4

bb62.i.1.4:                                       ; preds = %bb6.3
  %gepdiff147 = sub nuw nsw i64 %s.1, %slurp.i.4
  %b15.i.1.4 = load i8, ptr %_19.i.i.4, align 1, !noalias !7, !noundef !6
  %_130.i.1.4 = zext i8 %b15.i.1.4 to i64
  %31 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i.1.4
  %_128.i.1.4 = load i8, ptr %31, align 1, !noalias !7, !noundef !6
  %slurp.i.1.4 = zext i8 %_128.i.1.4 to i64
  %_19.i.i.1.4 = getelementptr inbounds nuw i8, ptr %_19.i.i.4, i64 %slurp.i.1.4
  %.not.i.1.4 = icmp uge i64 %gepdiff147, %slurp.i.1.4
  tail call void @llvm.assume(i1 %.not.i.1.4)
  %_41.not.i.2.4 = icmp eq ptr %_37, %_19.i.i.1.4
  br i1 %_41.not.i.2.4, label %bb38, label %bb62.i.2.4

bb62.i.2.4:                                       ; preds = %bb62.i.1.4
  %32 = add nuw nsw i64 %slurp.i.4, %slurp.i.1.4
  %gepdiff148 = sub nuw nsw i64 %s.1, %32
  %b15.i.2.4 = load i8, ptr %_19.i.i.1.4, align 1, !noalias !7, !noundef !6
  %_130.i.2.4 = zext i8 %b15.i.2.4 to i64
  %33 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i.2.4
  %_128.i.2.4 = load i8, ptr %33, align 1, !noalias !7, !noundef !6
  %slurp.i.2.4 = zext i8 %_128.i.2.4 to i64
  %_19.i.i.2.4 = getelementptr inbounds nuw i8, ptr %_19.i.i.1.4, i64 %slurp.i.2.4
  %.not.i.2.4 = icmp uge i64 %gepdiff148, %slurp.i.2.4
  tail call void @llvm.assume(i1 %.not.i.2.4)
  %_41.not.i.3.4 = icmp eq ptr %_37, %_19.i.i.2.4
  br i1 %_41.not.i.3.4, label %bb38, label %bb62.i.3.4

bb62.i.3.4:                                       ; preds = %bb62.i.2.4
  %34 = add nuw nsw i64 %slurp.i.4, %slurp.i.1.4
  %35 = add nuw nsw i64 %34, %slurp.i.2.4
  %gepdiff149 = sub nuw nsw i64 %s.1, %35
  %b15.i.3.4 = load i8, ptr %_19.i.i.2.4, align 1, !noalias !7, !noundef !6
  %_130.i.3.4 = zext i8 %b15.i.3.4 to i64
  %36 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i.3.4
  %_128.i.3.4 = load i8, ptr %36, align 1, !noalias !7, !noundef !6
  %slurp.i.3.4 = zext i8 %_128.i.3.4 to i64
  %_19.i.i.3.4 = getelementptr inbounds nuw i8, ptr %_19.i.i.2.4, i64 %slurp.i.3.4
  %.not.i.3.4 = icmp uge i64 %gepdiff149, %slurp.i.3.4
  tail call void @llvm.assume(i1 %.not.i.3.4)
  %_7.i.i.4 = icmp eq ptr %_19.i.i.3.4, %_37
  br i1 %_7.i.i.4, label %bb38, label %bb14.i.4

bb14.i.4:                                         ; preds = %bb62.i.3.4
  %x.i.4 = load i8, ptr %_19.i.i.3.4, align 1, !noalias !3, !noundef !6
  %_6.i.4 = icmp sgt i8 %x.i.4, -1
  br i1 %_6.i.4, label %bb3.i.4, label %bb4.i.4

bb4.i.4:                                          ; preds = %bb14.i.4
  %_18.i.i.4 = getelementptr inbounds nuw i8, ptr %_19.i.i.3.4, i64 1
  %_30.i.4 = and i8 %x.i.4, 31
  %init.i.4 = zext nneg i8 %_30.i.4 to i32
  %_7.i10.i.4 = icmp ne ptr %_18.i.i.4, %_37
  tail call void @llvm.assume(i1 %_7.i10.i.4)
  %y.i.4 = load i8, ptr %_18.i.i.4, align 1, !noalias !3, !noundef !6
  %_34.i.4 = shl nuw nsw i32 %init.i.4, 6
  %_36.i.4 = and i8 %y.i.4, 63
  %_35.i.4 = zext nneg i8 %_36.i.4 to i32
  %37 = or disjoint i32 %_34.i.4, %_35.i.4
  %_13.i.4 = icmp samesign ugt i8 %x.i.4, -33
  br i1 %_13.i.4, label %bb6.i.4, label %bb29.4

bb6.i.4:                                          ; preds = %bb4.i.4
  %_18.i12.i.4 = getelementptr inbounds nuw i8, ptr %_19.i.i.3.4, i64 2
  %_7.i17.i.4 = icmp ne ptr %_18.i12.i.4, %_37
  tail call void @llvm.assume(i1 %_7.i17.i.4)
  %z.i.4 = load i8, ptr %_18.i12.i.4, align 1, !noalias !3, !noundef !6
  %_40.i.4 = shl nuw nsw i32 %_35.i.4, 6
  %_42.i.4 = and i8 %z.i.4, 63
  %_41.i.4 = zext nneg i8 %_42.i.4 to i32
  %y_z.i.4 = or disjoint i32 %_40.i.4, %_41.i.4
  %_20.i.4 = shl nuw nsw i32 %init.i.4, 12
  %38 = or disjoint i32 %y_z.i.4, %_20.i.4
  %_21.i.4 = icmp samesign ugt i8 %x.i.4, -17
  br i1 %_21.i.4, label %bb8.i.4, label %bb29.4

bb8.i.4:                                          ; preds = %bb6.i.4
  %_18.i19.i.4 = getelementptr inbounds nuw i8, ptr %_19.i.i.3.4, i64 3
  %_7.i24.i.4 = icmp ne ptr %_18.i19.i.4, %_37
  tail call void @llvm.assume(i1 %_7.i24.i.4)
  %w.i.4 = load i8, ptr %_18.i19.i.4, align 1, !noalias !3, !noundef !6
  %_26.i.4 = shl nuw nsw i32 %init.i.4, 18
  %_25.i.4 = and i32 %_26.i.4, 1835008
  %_46.i.4 = shl nuw nsw i32 %y_z.i.4, 6
  %_48.i.4 = and i8 %w.i.4, 63
  %_47.i.4 = zext nneg i8 %_48.i.4 to i32
  %_27.i.4 = or disjoint i32 %_46.i.4, %_47.i.4
  %39 = or disjoint i32 %_27.i.4, %_25.i.4
  br label %bb29.4

bb3.i.4:                                          ; preds = %bb14.i.4
  %_7.i.4 = zext nneg i8 %x.i.4 to i32
  br label %bb29.4

bb29.4:                                           ; preds = %bb3.i.4, %bb8.i.4, %bb6.i.4, %bb4.i.4
  %_0.sroa.4.0.i.ph.4 = phi i32 [ %37, %bb4.i.4 ], [ %38, %bb6.i.4 ], [ %39, %bb8.i.4 ], [ %_7.i.4, %bb3.i.4 ]
  %40 = icmp samesign ult i32 %_0.sroa.4.0.i.ph.4, 1114112
  tail call void @llvm.assume(i1 %40)
  %_14.4 = icmp eq i32 %_0.sroa.4.0.i.ph.4, 0
  br i1 %_14.4, label %bb9, label %bb4.4

bb4.4:                                            ; preds = %bb29.4
  %41 = add nsw i32 %_0.sroa.4.0.i.ph.4, -48
  %or.cond.4 = icmp ult i32 %41, 10
  br i1 %or.cond.4, label %bb6.4, label %bb22

bb6.4:                                            ; preds = %bb4.4
  %_17.4 = mul i32 %29, 10
  %42 = add i32 %41, %_17.4
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h40c3fd7056ab645eE.exit"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h40c3fd7056ab645eE.exit": ; preds = %bb9, %bb6.4
  %value.sroa.0.0.lcssa86 = phi i32 [ %value.sroa.0.079.lcssa113, %bb9 ], [ %42, %bb6.4 ]
  %i.sroa.0.0.lcssa84 = phi i64 [ %i.sroa.0.078.lcssa109, %bb9 ], [ 5, %bb6.4 ]
  %rhsc.i = load i8, ptr %s.0, align 1, !alias.scope !10, !noalias !13
  %43 = icmp eq i8 %rhsc.i, 48
  br i1 %43, label %bb22, label %bb15

bb15:                                             ; preds = %bb9, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h40c3fd7056ab645eE.exit"
  %value.sroa.0.0.lcssa85 = phi i32 [ %value.sroa.0.079.lcssa113, %bb9 ], [ %value.sroa.0.0.lcssa86, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h40c3fd7056ab645eE.exit" ]
  %i.sroa.0.0.lcssa83 = phi i64 [ %i.sroa.0.078.lcssa109, %bb9 ], [ %i.sroa.0.0.lcssa84, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h40c3fd7056ab645eE.exit" ]
  %_9.not.i = icmp ult i64 %i.sroa.0.0.lcssa83, %s.1
  br i1 %_9.not.i, label %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17h1fdd9f14a8016a5dE.exit", label %bb6.i16

bb6.i16:                                          ; preds = %bb15
  %44 = icmp eq i64 %i.sroa.0.0.lcssa83, %s.1
  br i1 %44, label %bb34, label %bb33, !prof !15

"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17h1fdd9f14a8016a5dE.exit": ; preds = %bb15
  %45 = getelementptr inbounds nuw i8, ptr %s.0, i64 %i.sroa.0.0.lcssa83
  %self1.i = load i8, ptr %45, align 1, !alias.scope !16, !noundef !6
  %46 = icmp sgt i8 %self1.i, -65
  br i1 %46, label %bb34, label %bb33, !prof !15

bb34:                                             ; preds = %bb6.i16, %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17h1fdd9f14a8016a5dE.exit"
  %new_len.i = sub nuw i64 %s.1, %i.sroa.0.0.lcssa83
  %_7.i.i21 = icmp eq i64 %s.1, %i.sroa.0.0.lcssa83
  br i1 %_7.i.i21, label %bb36, label %bb14.i22

bb14.i22:                                         ; preds = %bb34
  %data.i88 = getelementptr inbounds nuw i8, ptr %s.0, i64 %i.sroa.0.0.lcssa83
  %x.i24 = load i8, ptr %data.i88, align 1, !noalias !19, !noundef !6
  %_6.i25 = icmp sgt i8 %x.i24, -1
  br i1 %_6.i25, label %bb22, label %bb4.i26

bb4.i26:                                          ; preds = %bb14.i22
  %_7.i10.i29 = icmp samesign ne i64 %new_len.i, 1
  tail call void @llvm.assume(i1 %_7.i10.i29)
  %_13.i35 = icmp samesign ugt i8 %x.i24, -33
  br i1 %_13.i35, label %bb6.i38, label %bb22

bb6.i38:                                          ; preds = %bb4.i26
  %_7.i17.i39 = icmp samesign ne i64 %new_len.i, 2
  tail call void @llvm.assume(i1 %_7.i17.i39)
  %_21.i47 = icmp samesign ugt i8 %x.i24, -17
  br i1 %_21.i47, label %bb8.i48, label %bb22

bb8.i48:                                          ; preds = %bb6.i38
  %_7.i24.i49 = icmp samesign ne i64 %new_len.i, 3
  tail call void @llvm.assume(i1 %_7.i24.i49)
  br label %bb22

bb33:                                             ; preds = %bb6.i16, %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17h1fdd9f14a8016a5dE.exit"
; call core::str::slice_error_fail
  tail call void @_ZN4core3str16slice_error_fail17h4678567854dd8858E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %s.0, i64 noundef %s.1, i64 noundef %i.sroa.0.0.lcssa83, i64 noundef %s.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_096a28ff3cf664e7d4ad50bfd2e316d7) #4
  unreachable

bb36:                                             ; preds = %bb34
  %_29 = icmp sge i32 %value.sroa.0.0.lcssa85, %low
  %_31 = icmp sle i32 %value.sroa.0.0.lcssa85, %high
  %or.cond1.not = and i1 %_29, %_31
  br label %bb22

bb22:                                             ; preds = %bb4, %bb4.1, %bb4.2, %bb4.3, %bb4.4, %bb14.i22, %bb4.i26, %bb6.i38, %bb8.i48, %bb36, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h40c3fd7056ab645eE.exit", %bb9
  %_0.sroa.0.0 = phi i1 [ false, %bb9 ], [ false, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h40c3fd7056ab645eE.exit" ], [ %or.cond1.not, %bb36 ], [ false, %bb8.i48 ], [ false, %bb6.i38 ], [ false, %bb4.i26 ], [ false, %bb14.i22 ], [ false, %bb4.4 ], [ false, %bb4.3 ], [ false, %bb4.2 ], [ false, %bb4.1 ], [ false, %bb4 ]
  ret i1 %_0.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

; core::str::slice_error_fail
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core3str16slice_error_fail17h4678567854dd8858E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #3

; core::option::unwrap_failed
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #3

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #3 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { noinline noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.93.1 (01f6ddf75 2026-02-11)"}
!3 = !{!4}
!4 = distinct !{!4, !5, !"_ZN4core3str11validations15next_code_point17h527e01729c281c6fE: %bytes"}
!5 = distinct !{!5, !"_ZN4core3str11validations15next_code_point17h527e01729c281c6fE"}
!6 = !{}
!7 = !{!8}
!8 = distinct !{!8, !9, !"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E: %self"}
!9 = distinct !{!9, !"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"}
!10 = !{!11}
!11 = distinct !{!11, !12, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h40c3fd7056ab645eE: %self.0"}
!12 = distinct !{!12, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h40c3fd7056ab645eE"}
!13 = !{!14}
!14 = distinct !{!14, !12, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h40c3fd7056ab645eE: %needle.0"}
!15 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17h1fdd9f14a8016a5dE: %slice.0"}
!18 = distinct !{!18, !"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17h1fdd9f14a8016a5dE"}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_ZN4core3str11validations15next_code_point17h527e01729c281c6fE: %bytes"}
!21 = distinct !{!21, !"_ZN4core3str11validations15next_code_point17h527e01729c281c6fE"}
