define void @f_gold(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %number, i32 noundef %divisor) unnamed_addr #1 personality ptr @rust_eh_personality {
bb22:
  %out.i = alloca [24 x i8], align 8
  %buf.i = alloca [10 x i8], align 1
  %ans = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ans)
  store i64 0, ptr %ans, align 8
  %_44.sroa.4.0.ans.sroa_idx = getelementptr inbounds nuw i8, ptr %ans, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %_44.sroa.4.0.ans.sroa_idx, align 8
  %_44.sroa.5.0.ans.sroa_idx = getelementptr inbounds nuw i8, ptr %ans, i64 16
  store i64 0, ptr %_44.sroa.5.0.ans.sroa_idx, align 8
  %0 = getelementptr inbounds nuw i8, ptr %number, i64 8
  %_49 = load ptr, ptr %0, align 8, !nonnull !23, !noundef !23
  %1 = getelementptr inbounds nuw i8, ptr %number, i64 16
  %_48 = load i64, ptr %1, align 8, !noundef !23
  switch i64 %_48, label %bb9thread-pre-split.i [
    i64 0, label %bb23
    i64 1, label %bb7.i
  ]

bb16:                                             ; preds = %bb2.i.i.i3.i.i66, %cleanup2, %bb7.i43, %bb2.i.i.i3.i.i.i, %cleanup
  %.pn = phi { ptr, i32 } [ %2, %cleanup ], [ %lpad.thr_comm.i, %bb2.i.i.i3.i.i.i ], [ %lpad.thr_comm.i, %bb7.i43 ], [ %48, %cleanup2 ], [ %48, %bb2.i.i.i3.i.i66 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1042)
  call void @llvm.experimental.noalias.scope.decl(metadata !1045)
  call void @llvm.experimental.noalias.scope.decl(metadata !1048)
  call void @llvm.experimental.noalias.scope.decl(metadata !1051)
  call void @llvm.experimental.noalias.scope.decl(metadata !1054)
  %self1.i.i.i.i1.i.i = load i64, ptr %ans, align 8, !range !1031, !alias.scope !1057, !noalias !1060, !noundef !23
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %bb17, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb16
  %self3.i.i.i.i4.i.i = load ptr, ptr %_44.sroa.4.0.ans.sroa_idx, align 8, !alias.scope !1057, !noalias !1060, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1062
  br label %bb17

cleanup:                                          ; preds = %bb1.i.i.i, %bb28.invoke, %bb3.i2.i.invoke, %panic1, %panic
  %2 = landingpad { ptr, i32 }
          cleanup
  br label %bb16

bb7.i:                                            ; preds = %bb22
  %3 = load i8, ptr %_49, align 1, !alias.scope !1063, !noundef !23
  switch i8 %3, label %bb9.i [
    i8 43, label %bb23
    i8 45, label %bb23
  ]

bb9thread-pre-split.i:                            ; preds = %bb22
  %.pr.i = load i8, ptr %_49, align 1, !alias.scope !1063
  br label %bb9.i

bb9.i:                                            ; preds = %bb9thread-pre-split.i, %bb7.i
  %4 = phi i8 [ %.pr.i, %bb9thread-pre-split.i ], [ %3, %bb7.i ]
  switch i8 %4, label %bb64.i [
    i8 43, label %bb11.i
    i8 45, label %bb10.i
  ]

bb11.i:                                           ; preds = %bb9.i
  %rest.0.i = getelementptr inbounds nuw i8, ptr %_49, i64 1
  %rest.1.i = add nsw i64 %_48, -1
  br label %bb64.i

bb10.i:                                           ; preds = %bb9.i
  %rest.03.i = getelementptr inbounds nuw i8, ptr %_49, i64 1
  %rest.14.i = add nsw i64 %_48, -1
  %5 = icmp samesign ult i64 %_48, 9
  br i1 %5, label %bb19.preheader.i, label %bb33.i

bb19.preheader.i:                                 ; preds = %bb10.i
  %_29.not98.i = icmp eq i64 %rest.14.i, 0
  br i1 %_29.not98.i, label %bb23, label %bb20.i

bb33.i:                                           ; preds = %bb10.i, %bb39.i
  %result.sroa.0.0.i = phi i32 [ %_89.0.i, %bb39.i ], [ 0, %bb10.i ]
  %src.sroa.26.1.i = phi i64 [ %rest.16.i, %bb39.i ], [ %rest.14.i, %bb10.i ]
  %src.sroa.0.1.i = phi ptr [ %rest.05.i, %bb39.i ], [ %rest.03.i, %bb10.i ]
  %_57.not.i = icmp eq i64 %src.sroa.26.1.i, 0
  br i1 %_57.not.i, label %bb23, label %bb34.i

bb34.i:                                           ; preds = %bb33.i
  %6 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %result.sroa.0.0.i, i32 10)
  %_85.1.i = extractvalue { i32, i1 } %6, 1
  %_65.i = load i8, ptr %src.sroa.0.1.i, align 1, !alias.scope !1063, !noundef !23
  %_64.i = zext i8 %_65.i to i32
  %7 = add nsw i32 %_64.i, -48
  %_14.i.i = icmp ugt i32 %7, 9
  %brmerge.i = select i1 %_14.i.i, i1 true, i1 %_85.1.i
  br i1 %brmerge.i, label %bb23, label %bb39.i

bb39.i:                                           ; preds = %bb34.i
  %_85.0.i = extractvalue { i32, i1 } %6, 0
  %rest.16.i = add nsw i64 %src.sroa.26.1.i, -1
  %rest.05.i = getelementptr inbounds nuw i8, ptr %src.sroa.0.1.i, i64 1
  %8 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_85.0.i, i32 %7)
  %_89.1.i = extractvalue { i32, i1 } %8, 1
  %_89.0.i = extractvalue { i32, i1 } %8, 0
  br i1 %_89.1.i, label %bb23, label %bb33.i

bb20.i:                                           ; preds = %bb19.preheader.i, %bb23.i
  %src.sroa.0.2101.i = phi ptr [ %rest.08.i, %bb23.i ], [ %rest.03.i, %bb19.preheader.i ]
  %src.sroa.26.2100.i = phi i64 [ %rest.19.i, %bb23.i ], [ %rest.14.i, %bb19.preheader.i ]
  %result.sroa.0.299.i = phi i32 [ %11, %bb23.i ], [ 0, %bb19.preheader.i ]
  %_36.i = load i8, ptr %src.sroa.0.2101.i, align 1, !alias.scope !1063, !noundef !23
  %_35.i = zext i8 %_36.i to i32
  %9 = add nsw i32 %_35.i, -48
  %_14.i79.i = icmp ult i32 %9, 10
  br i1 %_14.i79.i, label %bb23.i, label %bb23

bb23.i:                                           ; preds = %bb20.i
  %10 = mul i32 %result.sroa.0.299.i, 10
  %rest.19.i = add nsw i64 %src.sroa.26.2100.i, -1
  %rest.08.i = getelementptr inbounds nuw i8, ptr %src.sroa.0.2101.i, i64 1
  %11 = sub i32 %10, %9
  %_29.not.i = icmp eq i64 %rest.19.i, 0
  br i1 %_29.not.i, label %bb23, label %bb20.i

bb64.i:                                           ; preds = %bb11.i, %bb9.i
  %src.sroa.26.0.i = phi i64 [ %rest.1.i, %bb11.i ], [ %_48, %bb9.i ]
  %src.sroa.0.0.i = phi ptr [ %rest.0.i, %bb11.i ], [ %_49, %bb9.i ]
  %12 = icmp samesign ult i64 %src.sroa.26.0.i, 8
  br i1 %12, label %bb13.preheader.i, label %bb24.i

bb13.preheader.i:                                 ; preds = %bb64.i
  %_16.not104.i = icmp eq i64 %src.sroa.26.0.i, 0
  br i1 %_16.not104.i, label %bb23, label %bb14.i

bb24.i:                                           ; preds = %bb64.i, %bb30.i
  %result.sroa.0.3.i = phi i32 [ %_81.0.i, %bb30.i ], [ 0, %bb64.i ]
  %src.sroa.26.3.i = phi i64 [ %rest.112.i, %bb30.i ], [ %src.sroa.26.0.i, %bb64.i ]
  %src.sroa.0.3.i = phi ptr [ %rest.011.i, %bb30.i ], [ %src.sroa.0.0.i, %bb64.i ]
  %_42.not.i = icmp eq i64 %src.sroa.26.3.i, 0
  br i1 %_42.not.i, label %bb23, label %bb25.i

bb25.i:                                           ; preds = %bb24.i
  %13 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %result.sroa.0.3.i, i32 10)
  %_77.1.i = extractvalue { i32, i1 } %13, 1
  %_50.i = load i8, ptr %src.sroa.0.3.i, align 1, !alias.scope !1063, !noundef !23
  %_49.i = zext i8 %_50.i to i32
  %14 = add nsw i32 %_49.i, -48
  %_14.i81.i = icmp ugt i32 %14, 9
  %brmerge77.i = select i1 %_14.i81.i, i1 true, i1 %_77.1.i
  br i1 %brmerge77.i, label %bb23, label %bb30.i

bb30.i:                                           ; preds = %bb25.i
  %_77.0.i = extractvalue { i32, i1 } %13, 0
  %rest.112.i = add nsw i64 %src.sroa.26.3.i, -1
  %rest.011.i = getelementptr inbounds nuw i8, ptr %src.sroa.0.3.i, i64 1
  %15 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_77.0.i, i32 %14)
  %_81.1.i = extractvalue { i32, i1 } %15, 1
  %_81.0.i = extractvalue { i32, i1 } %15, 0
  br i1 %_81.1.i, label %bb23, label %bb24.i

bb14.i:                                           ; preds = %bb13.preheader.i
  %_23.i = load i8, ptr %src.sroa.0.0.i, align 1, !alias.scope !1063, !noundef !23
  %_22.i = zext i8 %_23.i to i32
  %16 = add nsw i32 %_22.i, -48
  %_14.i83.i = icmp ult i32 %16, 10
  br i1 %_14.i83.i, label %bb18.i, label %bb23

bb18.i:                                           ; preds = %bb14.i
  %_16.not.i = icmp eq i64 %src.sroa.26.0.i, 1
  br i1 %_16.not.i, label %bb23, label %bb14.i.1

bb14.i.1:                                         ; preds = %bb18.i
  %rest.015.i = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i, i64 1
  %_23.i.1 = load i8, ptr %rest.015.i, align 1, !alias.scope !1063, !noundef !23
  %_22.i.1 = zext i8 %_23.i.1 to i32
  %17 = add nsw i32 %_22.i.1, -48
  %_14.i83.i.1 = icmp ult i32 %17, 10
  br i1 %_14.i83.i.1, label %bb18.i.1, label %bb23

bb18.i.1:                                         ; preds = %bb14.i.1
  %18 = mul nuw nsw i32 %16, 10
  %19 = add nuw nsw i32 %17, %18
  %_16.not.i.1 = icmp eq i64 %src.sroa.26.0.i, 2
  br i1 %_16.not.i.1, label %bb23, label %bb14.i.2

bb14.i.2:                                         ; preds = %bb18.i.1
  %rest.015.i.1 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i, i64 2
  %_23.i.2 = load i8, ptr %rest.015.i.1, align 1, !alias.scope !1063, !noundef !23
  %_22.i.2 = zext i8 %_23.i.2 to i32
  %20 = add nsw i32 %_22.i.2, -48
  %_14.i83.i.2 = icmp ult i32 %20, 10
  br i1 %_14.i83.i.2, label %bb18.i.2, label %bb23

bb18.i.2:                                         ; preds = %bb14.i.2
  %21 = mul nuw nsw i32 %19, 10
  %22 = add nuw nsw i32 %20, %21
  %_16.not.i.2 = icmp eq i64 %src.sroa.26.0.i, 3
  br i1 %_16.not.i.2, label %bb23, label %bb14.i.3

bb14.i.3:                                         ; preds = %bb18.i.2
  %rest.015.i.2 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i, i64 3
  %_23.i.3 = load i8, ptr %rest.015.i.2, align 1, !alias.scope !1063, !noundef !23
  %_22.i.3 = zext i8 %_23.i.3 to i32
  %23 = add nsw i32 %_22.i.3, -48
  %_14.i83.i.3 = icmp ult i32 %23, 10
  br i1 %_14.i83.i.3, label %bb18.i.3, label %bb23

bb18.i.3:                                         ; preds = %bb14.i.3
  %24 = mul nuw nsw i32 %22, 10
  %25 = add nuw nsw i32 %23, %24
  %_16.not.i.3 = icmp eq i64 %src.sroa.26.0.i, 4
  br i1 %_16.not.i.3, label %bb23, label %bb14.i.4

bb14.i.4:                                         ; preds = %bb18.i.3
  %rest.015.i.3 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i, i64 4
  %_23.i.4 = load i8, ptr %rest.015.i.3, align 1, !alias.scope !1063, !noundef !23
  %_22.i.4 = zext i8 %_23.i.4 to i32
  %26 = add nsw i32 %_22.i.4, -48
  %_14.i83.i.4 = icmp ult i32 %26, 10
  br i1 %_14.i83.i.4, label %bb18.i.4, label %bb23

bb18.i.4:                                         ; preds = %bb14.i.4
  %27 = mul i32 %25, 10
  %28 = add i32 %26, %27
  %_16.not.i.4 = icmp eq i64 %src.sroa.26.0.i, 5
  br i1 %_16.not.i.4, label %bb23, label %bb14.i.5

bb14.i.5:                                         ; preds = %bb18.i.4
  %rest.015.i.4 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i, i64 5
  %_23.i.5 = load i8, ptr %rest.015.i.4, align 1, !alias.scope !1063, !noundef !23
  %_22.i.5 = zext i8 %_23.i.5 to i32
  %29 = add nsw i32 %_22.i.5, -48
  %_14.i83.i.5 = icmp ult i32 %29, 10
  br i1 %_14.i83.i.5, label %bb18.i.5, label %bb23

bb18.i.5:                                         ; preds = %bb14.i.5
  %30 = mul i32 %28, 10
  %31 = add i32 %29, %30
  %_16.not.i.5 = icmp eq i64 %src.sroa.26.0.i, 6
  br i1 %_16.not.i.5, label %bb23, label %bb14.i.6

bb14.i.6:                                         ; preds = %bb18.i.5
  %rest.015.i.5 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i, i64 6
  %_23.i.6 = load i8, ptr %rest.015.i.5, align 1, !alias.scope !1063, !noundef !23
  %_22.i.6 = zext i8 %_23.i.6 to i32
  %32 = add nsw i32 %_22.i.6, -48
  %_14.i83.i.6 = icmp ult i32 %32, 10
  br i1 %_14.i83.i.6, label %bb18.i.6, label %bb23

bb18.i.6:                                         ; preds = %bb14.i.6
  %33 = mul i32 %31, 10
  %34 = add i32 %32, %33
  br label %bb23

unreachable:                                      ; preds = %panic1, %panic
  unreachable

bb23:                                             ; preds = %bb33.i, %bb34.i, %bb39.i, %bb23.i, %bb20.i, %bb24.i, %bb25.i, %bb30.i, %bb18.i, %bb14.i, %bb14.i.1, %bb18.i.1, %bb14.i.2, %bb18.i.2, %bb14.i.3, %bb18.i.3, %bb14.i.4, %bb18.i.4, %bb14.i.5, %bb18.i.5, %bb14.i.6, %bb18.i.6, %bb19.preheader.i, %bb13.preheader.i, %bb7.i, %bb7.i, %bb22
  %_0.sroa.0.0.i = phi i32 [ 0, %bb22 ], [ 0, %bb7.i ], [ 0, %bb7.i ], [ 0, %bb13.preheader.i ], [ 0, %bb19.preheader.i ], [ %16, %bb18.i ], [ 0, %bb14.i ], [ 0, %bb14.i.1 ], [ %19, %bb18.i.1 ], [ 0, %bb14.i.2 ], [ %22, %bb18.i.2 ], [ 0, %bb14.i.3 ], [ %25, %bb18.i.3 ], [ 0, %bb14.i.4 ], [ %28, %bb18.i.4 ], [ 0, %bb14.i.5 ], [ %31, %bb18.i.5 ], [ 0, %bb14.i.6 ], [ %34, %bb18.i.6 ], [ %result.sroa.0.3.i, %bb24.i ], [ 0, %bb25.i ], [ 0, %bb30.i ], [ %11, %bb23.i ], [ 0, %bb20.i ], [ %result.sroa.0.0.i, %bb33.i ], [ 0, %bb34.i ], [ 0, %bb39.i ]
  %_10286 = icmp slt i32 %_0.sroa.0.0.i, %divisor
  br i1 %_10286, label %bb2, label %bb4.preheader

bb4.preheader:                                    ; preds = %bb30, %bb23
  %temp.sroa.0.1.lcssa = phi i32 [ %_0.sroa.0.0.i, %bb23 ], [ %119, %bb30 ]
  %idx.sroa.0.0.lcssa = phi i64 [ 0, %bb23 ], [ %_17, %bb30 ]
  %_71 = icmp sgt i64 %_48, -1
  tail call void @llvm.assume(i1 %_71)
  %_19290 = icmp ugt i64 %_48, %idx.sroa.0.0.lcssa
  br i1 %_19290, label %bb5.lr.ph, label %bb12

bb5.lr.ph:                                        ; preds = %bb4.preheader
  %_28 = icmp eq i32 %divisor, 0
  %_29 = icmp eq i32 %divisor, -1
  %_9.sroa.4.0.out.sroa_idx.i = getelementptr inbounds nuw i8, ptr %out.i, i64 8
  %_9.sroa.5.0.out.sroa_idx.i = getelementptr inbounds nuw i8, ptr %out.i, i64 16
  br i1 %_28, label %panic, label %bb5

bb2:                                              ; preds = %bb23, %bb30
  %idx.sroa.0.0288 = phi i64 [ %_17, %bb30 ], [ 0, %bb23 ]
  %temp.sroa.0.1287 = phi i32 [ %119, %bb30 ], [ %_0.sroa.0.0.i, %bb23 ]
  %_12 = mul i32 %temp.sroa.0.1287, 10
  %_17 = add i64 %idx.sroa.0.0288, 1
  %_8.i = icmp eq i64 %_17, 0
  br i1 %_8.i, label %bb29, label %bb5.i

bb5.i:                                            ; preds = %bb2
  %_9.not.i = icmp ult i64 %_17, %_48
  br i1 %_9.not.i, label %bb9.i36, label %bb6.i

bb6.i:                                            ; preds = %bb5.i
  %35 = icmp eq i64 %_17, %_48
  br i1 %35, label %bb29, label %bb28.invoke

bb9.i36:                                          ; preds = %bb5.i
  %36 = getelementptr inbounds nuw i8, ptr %_49, i64 %_17
  %self1.i = load i8, ptr %36, align 1, !alias.scope !1066, !noundef !23
  %37 = icmp sgt i8 %self1.i, -65
  br i1 %37, label %bb29, label %bb28.invoke

bb11:                                             ; preds = %bb39
  %_101 = icmp sgt i64 %49, -1
  call void @llvm.assume(i1 %_101)
  %_43 = icmp eq i64 %49, 0
  br i1 %_43, label %bb12, label %bb13

bb5:                                              ; preds = %bb5.lr.ph, %bb39
  %idx.sroa.0.1292 = phi i64 [ %_40, %bb39 ], [ %idx.sroa.0.0.lcssa, %bb5.lr.ph ]
  %temp.sroa.0.2291 = phi i32 [ %84, %bb39 ], [ %temp.sroa.0.1.lcssa, %bb5.lr.ph ]
  %_30 = icmp eq i32 %temp.sroa.0.2291, -2147483648
  %_31 = and i1 %_29, %_30
  br i1 %_31, label %panic1, label %bb7

bb13:                                             ; preds = %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h4e4eae1f97a2aaafE.exit", %bb11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_0, ptr noundef nonnull align 8 dereferenceable(24) %ans, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ans)
  call void @llvm.experimental.noalias.scope.decl(metadata !1069)
  call void @llvm.experimental.noalias.scope.decl(metadata !1072)
  call void @llvm.experimental.noalias.scope.decl(metadata !1075)
  call void @llvm.experimental.noalias.scope.decl(metadata !1078)
  call void @llvm.experimental.noalias.scope.decl(metadata !1081)
  %self1.i.i.i.i1.i.i37 = load i64, ptr %number, align 8, !range !1031, !alias.scope !1084, !noalias !1087, !noundef !23
  %_6.i.i.i.i2.i.i38 = icmp eq i64 %self1.i.i.i.i1.i.i37, 0
  br i1 %_6.i.i.i.i2.i.i38, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb6e5c75831de1101E.exit41", label %bb2.i.i.i3.i.i39

bb2.i.i.i3.i.i39:                                 ; preds = %bb13
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_49, i64 noundef %self1.i.i.i.i1.i.i37, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1089
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb6e5c75831de1101E.exit41"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb6e5c75831de1101E.exit41": ; preds = %bb13, %bb2.i.i.i3.i.i39
  ret void

bb12:                                             ; preds = %bb4.preheader, %bb11
  %_10.i.i319324 = phi ptr [ %_10.i.i58, %bb11 ], [ inttoptr (i64 1 to ptr), %bb4.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1090)
  call void @llvm.experimental.noalias.scope.decl(metadata !1093)
  %self2.i.i.i = load i64, ptr %ans, align 8, !range !1031, !alias.scope !1096, !noundef !23
  %_7.i.i.i = icmp eq i64 %self2.i.i.i, 0
  br i1 %_7.i.i.i, label %bb1.i.i.i, label %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h4e4eae1f97a2aaafE.exit", !prof !909

bb1.i.i.i:                                        ; preds = %bb12
; invoke alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h4597ca65599c7681E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %ans, i64 noundef 0, i64 noundef 1)
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb1.i.i.i
  %len.pre.i.i = load i64, ptr %_44.sroa.5.0.ans.sroa_idx, align 8, !alias.scope !1099
  %_10.i.i.pre = load ptr, ptr %_44.sroa.4.0.ans.sroa_idx, align 8, !alias.scope !1099
  br label %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h4e4eae1f97a2aaafE.exit"

"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h4e4eae1f97a2aaafE.exit": ; preds = %bb12, %.noexc
  %_10.i.i = phi ptr [ %_10.i.i319324, %bb12 ], [ %_10.i.i.pre, %.noexc ]
  %len.i.i = phi i64 [ 0, %bb12 ], [ %len.pre.i.i, %.noexc ]
  %_9.i.i = icmp sgt i64 %len.i.i, -1
  call void @llvm.assume(i1 %_9.i.i)
  %dst.i.i = getelementptr inbounds nuw i8, ptr %_10.i.i, i64 %len.i.i
  store i8 48, ptr %dst.i.i, align 1, !noalias !1099
  %38 = add nuw i64 %len.i.i, 1
  store i64 %38, ptr %_44.sroa.5.0.ans.sroa_idx, align 8, !alias.scope !1099
  br label %bb13

panic:                                            ; preds = %bb5.lr.ph
; invoke core::panicking::panic_const::panic_const_div_by_zero
  invoke void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_8bae67a9e2a83c445d61cea535f7257c) #22
          to label %unreachable unwind label %cleanup

bb7:                                              ; preds = %bb5
  %39 = sdiv i32 %temp.sroa.0.2291, %divisor
  %_33 = srem i32 %temp.sroa.0.2291, %divisor
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %buf.i), !noalias !1100
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %out.i), !noalias !1100
  %_4.i = icmp slt i32 %39, 0
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !1100
  br i1 %_4.i, label %bb1.i, label %bb3.i

bb3.i:                                            ; preds = %bb7
; call __rustc::__rust_alloc
  %40 = call noundef dereferenceable_or_null(10) ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef 10, i64 noundef range(i64 1, 5) 1) #21, !noalias !1104
  %41 = icmp eq ptr %40, null
  br i1 %41, label %bb3.i2.i.invoke, label %bb10.i42

bb1.i:                                            ; preds = %bb7
; call __rustc::__rust_alloc
  %42 = call noundef dereferenceable_or_null(11) ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef 11, i64 noundef range(i64 1, 5) 1) #21, !noalias !1107
  %43 = icmp eq ptr %42, null
  br i1 %43, label %bb3.i2.i.invoke, label %bb9.i49

bb3.i2.i.invoke:                                  ; preds = %bb1.i, %bb3.i
  %44 = phi i64 [ 10, %bb3.i ], [ 11, %bb1.i ]
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 1, i64 %44) #22
          to label %bb3.i2.i.cont unwind label %cleanup

bb3.i2.i.cont:                                    ; preds = %bb3.i2.i.invoke
  unreachable

bb10.i42:                                         ; preds = %bb3.i
  store i64 10, ptr %out.i, align 8, !noalias !1100
  store ptr %40, ptr %_9.sroa.4.0.out.sroa_idx.i, align 8, !noalias !1100
  br label %bb4.i

bb4.i:                                            ; preds = %bb9.i49, %bb10.i42
  %storemerge = phi i64 [ 0, %bb10.i42 ], [ 1, %bb9.i49 ]
  %_10.i.i14.i = phi ptr [ %40, %bb10.i42 ], [ %42, %bb9.i49 ]
  %self2.i.i.i.i = phi i64 [ 10, %bb10.i42 ], [ 11, %bb9.i49 ]
  store i64 %storemerge, ptr %_9.sroa.5.0.out.sroa_idx.i, align 8, !noalias !1100
  %_24.sroa.0.0.i = call i32 @llvm.abs.i32(i32 %39, i1 false)
; invoke core::fmt::num::imp::<impl u32>::_fmt
  %45 = invoke { ptr, i64 } @"_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h1610a2f939cfe08fE"(i32 noundef %_24.sroa.0.0.i, ptr noalias noundef nonnull align 1 %buf.i, i64 noundef 10)
          to label %bb5.i45 unwind label %bb7.i43, !noalias !1100

bb9.i49:                                          ; preds = %bb1.i
  store i64 11, ptr %out.i, align 8, !noalias !1100
  store ptr %42, ptr %_9.sroa.4.0.out.sroa_idx.i, align 8, !noalias !1100
  store i8 45, ptr %42, align 1, !noalias !1110
  br label %bb4.i

bb5.i45:                                          ; preds = %bb4.i
  %string.0.i = extractvalue { ptr, i64 } %45, 0
  %string.1.i = extractvalue { ptr, i64 } %45, 1
  %46 = icmp ne ptr %string.0.i, null
  call void @llvm.assume(i1 %46)
  call void @llvm.experimental.noalias.scope.decl(metadata !1113)
  call void @llvm.experimental.noalias.scope.decl(metadata !1116)
  %_9.i.i.i.i = sub nuw nsw i64 %self2.i.i.i.i, %storemerge
  %_7.i.i.i.i = icmp ugt i64 %string.1.i, %_9.i.i.i.i
  br i1 %_7.i.i.i.i, label %bb1.i.i.i.i, label %bb34, !prof !909

bb1.i.i.i.i:                                      ; preds = %bb5.i45
; invoke alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h4597ca65599c7681E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %out.i, i64 noundef %storemerge, i64 noundef %string.1.i)
          to label %.noexc6.i unwind label %bb7.i43

.noexc6.i:                                        ; preds = %bb1.i.i.i.i
  %len.pre.i.i.i = load i64, ptr %_9.sroa.5.0.out.sroa_idx.i, align 8, !alias.scope !1119, !noalias !1100
  %_10.i.i.pre.i = load ptr, ptr %_9.sroa.4.0.out.sroa_idx.i, align 8, !alias.scope !1119, !noalias !1100
  br label %bb34

bb7.i43:                                          ; preds = %bb1.i.i.i.i, %bb4.i
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !1120)
  call void @llvm.experimental.noalias.scope.decl(metadata !1123)
  call void @llvm.experimental.noalias.scope.decl(metadata !1126)
  call void @llvm.experimental.noalias.scope.decl(metadata !1129)
  call void @llvm.experimental.noalias.scope.decl(metadata !1132)
  %self1.i.i.i.i1.i.i.i = load i64, ptr %out.i, align 8, !range !1031, !alias.scope !1135, !noalias !1138, !noundef !23
  %_6.i.i.i.i2.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i, label %bb16, label %bb2.i.i.i3.i.i.i

bb2.i.i.i3.i.i.i:                                 ; preds = %bb7.i43
  %self3.i.i.i.i4.i.i.i = load ptr, ptr %_9.sroa.4.0.out.sroa_idx.i, align 8, !alias.scope !1135, !noalias !1138, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i, i64 noundef %self1.i.i.i.i1.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1140
  br label %bb16

panic1:                                           ; preds = %bb5
; invoke core::panicking::panic_const::panic_const_div_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_8bae67a9e2a83c445d61cea535f7257c) #22
          to label %unreachable unwind label %cleanup

bb34:                                             ; preds = %.noexc6.i, %bb5.i45
  %_10.i.i.i = phi ptr [ %_10.i.i14.i, %bb5.i45 ], [ %_10.i.i.pre.i, %.noexc6.i ]
  %len.i.i.i47 = phi i64 [ %storemerge, %bb5.i45 ], [ %len.pre.i.i.i, %.noexc6.i ]
  %_9.i.i.i48 = icmp sgt i64 %len.i.i.i47, -1
  call void @llvm.assume(i1 %_9.i.i.i48)
  %dst.i.i.i = getelementptr inbounds nuw i8, ptr %_10.i.i.i, i64 %len.i.i.i47
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %dst.i.i.i, ptr nonnull readonly align 1 %string.0.i, i64 %string.1.i, i1 false), !noalias !1141
  %47 = add i64 %len.i.i.i47, %string.1.i
  %_24.sroa.0.0.copyload = load i64, ptr %out.i, align 8, !noalias !1142
  %_24.sroa.5.0.copyload = load ptr, ptr %_9.sroa.4.0.out.sroa_idx.i, align 8, !noalias !1142, !nonnull !23, !noundef !23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %out.i), !noalias !1100
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %buf.i), !noalias !1100
  call void @llvm.experimental.noalias.scope.decl(metadata !1143)
  call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  %len.i.i.i52 = load i64, ptr %_44.sroa.5.0.ans.sroa_idx, align 8, !alias.scope !1149, !noundef !23
  %self2.i.i.i53 = load i64, ptr %ans, align 8, !range !1031, !alias.scope !1149, !noundef !23
  %_9.i.i.i54 = sub i64 %self2.i.i.i53, %len.i.i.i52
  %_7.i.i.i55 = icmp ugt i64 %47, %_9.i.i.i54
  br i1 %_7.i.i.i55, label %bb1.i.i.i60, label %bb35, !prof !909

bb1.i.i.i60:                                      ; preds = %bb34
; invoke alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h4597ca65599c7681E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %ans, i64 noundef %len.i.i.i52, i64 noundef %47)
          to label %.noexc62 unwind label %cleanup2

.noexc62:                                         ; preds = %bb1.i.i.i60
  %len.pre.i.i61 = load i64, ptr %_44.sroa.5.0.ans.sroa_idx, align 8, !alias.scope !1152
  br label %bb35

cleanup2:                                         ; preds = %bb1.i.i.i60
  %48 = landingpad { ptr, i32 }
          cleanup
  %_6.i.i.i.i2.i.i65 = icmp eq i64 %_24.sroa.0.0.copyload, 0
  br i1 %_6.i.i.i.i2.i.i65, label %bb16, label %bb2.i.i.i3.i.i66

bb2.i.i.i3.i.i66:                                 ; preds = %cleanup2
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_24.sroa.5.0.copyload, i64 noundef %_24.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1153
  br label %bb16

bb35:                                             ; preds = %.noexc62, %bb34
  %len.i.i56 = phi i64 [ %len.i.i.i52, %bb34 ], [ %len.pre.i.i61, %.noexc62 ]
  %_9.i.i57 = icmp sgt i64 %len.i.i56, -1
  call void @llvm.assume(i1 %_9.i.i57)
  %_10.i.i58 = load ptr, ptr %_44.sroa.4.0.ans.sroa_idx, align 8, !alias.scope !1152, !nonnull !23, !noundef !23
  %dst.i.i59 = getelementptr inbounds nuw i8, ptr %_10.i.i58, i64 %len.i.i56
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %dst.i.i59, ptr nonnull readonly align 1 %_24.sroa.5.0.copyload, i64 %47, i1 false), !noalias !1152
  %49 = add i64 %len.i.i56, %47
  store i64 %49, ptr %_44.sroa.5.0.ans.sroa_idx, align 8, !alias.scope !1152
  %_6.i.i.i.i2.i.i70 = icmp eq i64 %_24.sroa.0.0.copyload, 0
  br i1 %_6.i.i.i.i2.i.i70, label %bb8, label %bb2.i.i.i3.i.i71

bb2.i.i.i3.i.i71:                                 ; preds = %bb35
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_24.sroa.5.0.copyload, i64 noundef %_24.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1164
  br label %bb8

bb8:                                              ; preds = %bb2.i.i.i3.i.i71, %bb35
  %_32 = mul i32 %_33, 10
  %_40 = add i64 %idx.sroa.0.1292, 1
  %_9.not.i76 = icmp samesign ult i64 %_40, %_48
  br i1 %_9.not.i76, label %bb9.i84, label %bb38

bb9.i84:                                          ; preds = %bb8
  %50 = getelementptr inbounds nuw i8, ptr %_49, i64 %_40
  %self1.i85 = load i8, ptr %50, align 1, !alias.scope !1175, !noundef !23
  %51 = icmp sgt i8 %self1.i85, -65
  br i1 %51, label %bb38, label %bb28.invoke

bb38:                                             ; preds = %bb8, %bb9.i84
  %new_len.i82 = sub nuw nsw i64 %_48, %_40
  %data.i83 = getelementptr inbounds nuw i8, ptr %_49, i64 %_40
  switch i64 %new_len.i82, label %bb9thread-pre-split.i167 [
    i64 0, label %bb39
    i64 1, label %bb7.i87
  ]

bb7.i87:                                          ; preds = %bb38
  %52 = load i8, ptr %data.i83, align 1, !alias.scope !1178, !noundef !23
  switch i8 %52, label %bb9.i91 [
    i8 43, label %bb39
    i8 45, label %bb39
  ]

bb9thread-pre-split.i167:                         ; preds = %bb38
  %.pr.i168 = load i8, ptr %data.i83, align 1, !alias.scope !1178
  br label %bb9.i91

bb9.i91:                                          ; preds = %bb9thread-pre-split.i167, %bb7.i87
  %53 = phi i8 [ %.pr.i168, %bb9thread-pre-split.i167 ], [ %52, %bb7.i87 ]
  switch i8 %53, label %bb64.i132 [
    i8 43, label %bb11.i129
    i8 45, label %bb10.i92
  ]

bb11.i129:                                        ; preds = %bb9.i91
  %rest.0.i130 = getelementptr inbounds nuw i8, ptr %data.i83, i64 1
  %rest.1.i131 = add nsw i64 %new_len.i82, -1
  br label %bb64.i132

bb10.i92:                                         ; preds = %bb9.i91
  %rest.03.i93 = getelementptr inbounds nuw i8, ptr %data.i83, i64 1
  %rest.14.i94 = add nsw i64 %new_len.i82, -1
  %54 = icmp samesign ult i64 %new_len.i82, 9
  br i1 %54, label %bb19.preheader.i116, label %bb33.i95

bb19.preheader.i116:                              ; preds = %bb10.i92
  %_29.not98.i117 = icmp eq i64 %rest.14.i94, 0
  br i1 %_29.not98.i117, label %bb39, label %bb20.i118

bb33.i95:                                         ; preds = %bb10.i92, %bb39.i106
  %result.sroa.0.0.i96 = phi i32 [ %_89.0.i111, %bb39.i106 ], [ 0, %bb10.i92 ]
  %src.sroa.26.1.i97 = phi i64 [ %rest.16.i108, %bb39.i106 ], [ %rest.14.i94, %bb10.i92 ]
  %src.sroa.0.1.i98 = phi ptr [ %rest.05.i109, %bb39.i106 ], [ %rest.03.i93, %bb10.i92 ]
  %_57.not.i99 = icmp eq i64 %src.sroa.26.1.i97, 0
  br i1 %_57.not.i99, label %bb39, label %bb34.i100

bb34.i100:                                        ; preds = %bb33.i95
  %55 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %result.sroa.0.0.i96, i32 10)
  %_85.1.i101 = extractvalue { i32, i1 } %55, 1
  %_65.i102 = load i8, ptr %src.sroa.0.1.i98, align 1, !alias.scope !1178, !noundef !23
  %_64.i103 = zext i8 %_65.i102 to i32
  %56 = add nsw i32 %_64.i103, -48
  %_14.i.i104 = icmp ugt i32 %56, 9
  %brmerge.i105 = select i1 %_14.i.i104, i1 true, i1 %_85.1.i101
  br i1 %brmerge.i105, label %bb39, label %bb39.i106

bb39.i106:                                        ; preds = %bb34.i100
  %_85.0.i107 = extractvalue { i32, i1 } %55, 0
  %rest.16.i108 = add nsw i64 %src.sroa.26.1.i97, -1
  %rest.05.i109 = getelementptr inbounds nuw i8, ptr %src.sroa.0.1.i98, i64 1
  %57 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_85.0.i107, i32 %56)
  %_89.1.i110 = extractvalue { i32, i1 } %57, 1
  %_89.0.i111 = extractvalue { i32, i1 } %57, 0
  br i1 %_89.1.i110, label %bb39, label %bb33.i95

bb20.i118:                                        ; preds = %bb19.preheader.i116, %bb23.i125
  %src.sroa.0.2101.i119 = phi ptr [ %rest.08.i127, %bb23.i125 ], [ %rest.03.i93, %bb19.preheader.i116 ]
  %src.sroa.26.2100.i120 = phi i64 [ %rest.19.i126, %bb23.i125 ], [ %rest.14.i94, %bb19.preheader.i116 ]
  %result.sroa.0.299.i121 = phi i32 [ %60, %bb23.i125 ], [ 0, %bb19.preheader.i116 ]
  %_36.i122 = load i8, ptr %src.sroa.0.2101.i119, align 1, !alias.scope !1178, !noundef !23
  %_35.i123 = zext i8 %_36.i122 to i32
  %58 = add nsw i32 %_35.i123, -48
  %_14.i79.i124 = icmp ult i32 %58, 10
  br i1 %_14.i79.i124, label %bb23.i125, label %bb39

bb23.i125:                                        ; preds = %bb20.i118
  %59 = mul i32 %result.sroa.0.299.i121, 10
  %rest.19.i126 = add nsw i64 %src.sroa.26.2100.i120, -1
  %rest.08.i127 = getelementptr inbounds nuw i8, ptr %src.sroa.0.2101.i119, i64 1
  %60 = sub i32 %59, %58
  %_29.not.i128 = icmp eq i64 %rest.19.i126, 0
  br i1 %_29.not.i128, label %bb39, label %bb20.i118

bb64.i132:                                        ; preds = %bb11.i129, %bb9.i91
  %src.sroa.26.0.i133 = phi i64 [ %rest.1.i131, %bb11.i129 ], [ %new_len.i82, %bb9.i91 ]
  %src.sroa.0.0.i134 = phi ptr [ %rest.0.i130, %bb11.i129 ], [ %data.i83, %bb9.i91 ]
  %61 = icmp samesign ult i64 %src.sroa.26.0.i133, 8
  br i1 %61, label %bb13.preheader.i154, label %bb24.i135

bb13.preheader.i154:                              ; preds = %bb64.i132
  %_16.not104.i155 = icmp eq i64 %src.sroa.26.0.i133, 0
  br i1 %_16.not104.i155, label %bb39, label %bb14.i156

bb24.i135:                                        ; preds = %bb64.i132, %bb30.i146
  %result.sroa.0.3.i136 = phi i32 [ %_81.0.i151, %bb30.i146 ], [ 0, %bb64.i132 ]
  %src.sroa.26.3.i137 = phi i64 [ %rest.112.i148, %bb30.i146 ], [ %src.sroa.26.0.i133, %bb64.i132 ]
  %src.sroa.0.3.i138 = phi ptr [ %rest.011.i149, %bb30.i146 ], [ %src.sroa.0.0.i134, %bb64.i132 ]
  %_42.not.i139 = icmp eq i64 %src.sroa.26.3.i137, 0
  br i1 %_42.not.i139, label %bb39, label %bb25.i140

bb25.i140:                                        ; preds = %bb24.i135
  %62 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %result.sroa.0.3.i136, i32 10)
  %_77.1.i141 = extractvalue { i32, i1 } %62, 1
  %_50.i142 = load i8, ptr %src.sroa.0.3.i138, align 1, !alias.scope !1178, !noundef !23
  %_49.i143 = zext i8 %_50.i142 to i32
  %63 = add nsw i32 %_49.i143, -48
  %_14.i81.i144 = icmp ugt i32 %63, 9
  %brmerge77.i145 = select i1 %_14.i81.i144, i1 true, i1 %_77.1.i141
  br i1 %brmerge77.i145, label %bb39, label %bb30.i146

bb30.i146:                                        ; preds = %bb25.i140
  %_77.0.i147 = extractvalue { i32, i1 } %62, 0
  %rest.112.i148 = add nsw i64 %src.sroa.26.3.i137, -1
  %rest.011.i149 = getelementptr inbounds nuw i8, ptr %src.sroa.0.3.i138, i64 1
  %64 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_77.0.i147, i32 %63)
  %_81.1.i150 = extractvalue { i32, i1 } %64, 1
  %_81.0.i151 = extractvalue { i32, i1 } %64, 0
  br i1 %_81.1.i150, label %bb39, label %bb24.i135

bb14.i156:                                        ; preds = %bb13.preheader.i154
  %_23.i160 = load i8, ptr %src.sroa.0.0.i134, align 1, !alias.scope !1178, !noundef !23
  %_22.i161 = zext i8 %_23.i160 to i32
  %65 = add nsw i32 %_22.i161, -48
  %_14.i83.i162 = icmp ult i32 %65, 10
  br i1 %_14.i83.i162, label %bb18.i163, label %bb39

bb18.i163:                                        ; preds = %bb14.i156
  %_16.not.i166 = icmp eq i64 %src.sroa.26.0.i133, 1
  br i1 %_16.not.i166, label %bb39, label %bb14.i156.1

bb14.i156.1:                                      ; preds = %bb18.i163
  %rest.015.i165 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i134, i64 1
  %_23.i160.1 = load i8, ptr %rest.015.i165, align 1, !alias.scope !1178, !noundef !23
  %_22.i161.1 = zext i8 %_23.i160.1 to i32
  %66 = add nsw i32 %_22.i161.1, -48
  %_14.i83.i162.1 = icmp ult i32 %66, 10
  br i1 %_14.i83.i162.1, label %bb18.i163.1, label %bb39

bb18.i163.1:                                      ; preds = %bb14.i156.1
  %67 = mul nuw nsw i32 %65, 10
  %68 = add nuw nsw i32 %66, %67
  %_16.not.i166.1 = icmp eq i64 %src.sroa.26.0.i133, 2
  br i1 %_16.not.i166.1, label %bb39, label %bb14.i156.2

bb14.i156.2:                                      ; preds = %bb18.i163.1
  %rest.015.i165.1 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i134, i64 2
  %_23.i160.2 = load i8, ptr %rest.015.i165.1, align 1, !alias.scope !1178, !noundef !23
  %_22.i161.2 = zext i8 %_23.i160.2 to i32
  %69 = add nsw i32 %_22.i161.2, -48
  %_14.i83.i162.2 = icmp ult i32 %69, 10
  br i1 %_14.i83.i162.2, label %bb18.i163.2, label %bb39

bb18.i163.2:                                      ; preds = %bb14.i156.2
  %70 = mul nuw nsw i32 %68, 10
  %71 = add nuw nsw i32 %69, %70
  %_16.not.i166.2 = icmp eq i64 %src.sroa.26.0.i133, 3
  br i1 %_16.not.i166.2, label %bb39, label %bb14.i156.3

bb14.i156.3:                                      ; preds = %bb18.i163.2
  %rest.015.i165.2 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i134, i64 3
  %_23.i160.3 = load i8, ptr %rest.015.i165.2, align 1, !alias.scope !1178, !noundef !23
  %_22.i161.3 = zext i8 %_23.i160.3 to i32
  %72 = add nsw i32 %_22.i161.3, -48
  %_14.i83.i162.3 = icmp ult i32 %72, 10
  br i1 %_14.i83.i162.3, label %bb18.i163.3, label %bb39

bb18.i163.3:                                      ; preds = %bb14.i156.3
  %73 = mul nuw nsw i32 %71, 10
  %74 = add nuw nsw i32 %72, %73
  %_16.not.i166.3 = icmp eq i64 %src.sroa.26.0.i133, 4
  br i1 %_16.not.i166.3, label %bb39, label %bb14.i156.4

bb14.i156.4:                                      ; preds = %bb18.i163.3
  %rest.015.i165.3 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i134, i64 4
  %_23.i160.4 = load i8, ptr %rest.015.i165.3, align 1, !alias.scope !1178, !noundef !23
  %_22.i161.4 = zext i8 %_23.i160.4 to i32
  %75 = add nsw i32 %_22.i161.4, -48
  %_14.i83.i162.4 = icmp ult i32 %75, 10
  br i1 %_14.i83.i162.4, label %bb18.i163.4, label %bb39

bb18.i163.4:                                      ; preds = %bb14.i156.4
  %76 = mul i32 %74, 10
  %77 = add i32 %75, %76
  %_16.not.i166.4 = icmp eq i64 %src.sroa.26.0.i133, 5
  br i1 %_16.not.i166.4, label %bb39, label %bb14.i156.5

bb14.i156.5:                                      ; preds = %bb18.i163.4
  %rest.015.i165.4 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i134, i64 5
  %_23.i160.5 = load i8, ptr %rest.015.i165.4, align 1, !alias.scope !1178, !noundef !23
  %_22.i161.5 = zext i8 %_23.i160.5 to i32
  %78 = add nsw i32 %_22.i161.5, -48
  %_14.i83.i162.5 = icmp ult i32 %78, 10
  br i1 %_14.i83.i162.5, label %bb18.i163.5, label %bb39

bb18.i163.5:                                      ; preds = %bb14.i156.5
  %79 = mul i32 %77, 10
  %80 = add i32 %78, %79
  %_16.not.i166.5 = icmp eq i64 %src.sroa.26.0.i133, 6
  br i1 %_16.not.i166.5, label %bb39, label %bb14.i156.6

bb14.i156.6:                                      ; preds = %bb18.i163.5
  %rest.015.i165.5 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i134, i64 6
  %_23.i160.6 = load i8, ptr %rest.015.i165.5, align 1, !alias.scope !1178, !noundef !23
  %_22.i161.6 = zext i8 %_23.i160.6 to i32
  %81 = add nsw i32 %_22.i161.6, -48
  %_14.i83.i162.6 = icmp ult i32 %81, 10
  br i1 %_14.i83.i162.6, label %bb18.i163.6, label %bb39

bb18.i163.6:                                      ; preds = %bb14.i156.6
  %82 = mul i32 %80, 10
  %83 = add i32 %81, %82
  br label %bb39

bb39:                                             ; preds = %bb33.i95, %bb34.i100, %bb39.i106, %bb23.i125, %bb20.i118, %bb24.i135, %bb25.i140, %bb30.i146, %bb18.i163, %bb14.i156, %bb14.i156.1, %bb18.i163.1, %bb14.i156.2, %bb18.i163.2, %bb14.i156.3, %bb18.i163.3, %bb14.i156.4, %bb18.i163.4, %bb14.i156.5, %bb18.i163.5, %bb14.i156.6, %bb18.i163.6, %bb19.preheader.i116, %bb13.preheader.i154, %bb7.i87, %bb7.i87, %bb38
  %_0.sroa.0.0.i88 = phi i32 [ 0, %bb38 ], [ 0, %bb7.i87 ], [ 0, %bb7.i87 ], [ 0, %bb13.preheader.i154 ], [ 0, %bb19.preheader.i116 ], [ %65, %bb18.i163 ], [ 0, %bb14.i156 ], [ 0, %bb14.i156.1 ], [ %68, %bb18.i163.1 ], [ 0, %bb14.i156.2 ], [ %71, %bb18.i163.2 ], [ 0, %bb14.i156.3 ], [ %74, %bb18.i163.3 ], [ 0, %bb14.i156.4 ], [ %77, %bb18.i163.4 ], [ 0, %bb14.i156.5 ], [ %80, %bb18.i163.5 ], [ 0, %bb14.i156.6 ], [ %83, %bb18.i163.6 ], [ %result.sroa.0.3.i136, %bb24.i135 ], [ 0, %bb25.i140 ], [ 0, %bb30.i146 ], [ %60, %bb23.i125 ], [ 0, %bb20.i118 ], [ %result.sroa.0.0.i96, %bb33.i95 ], [ 0, %bb34.i100 ], [ 0, %bb39.i106 ]
  %84 = add i32 %_0.sroa.0.0.i88, %_32
  %exitcond.not = icmp eq i64 %_40, %_48
  br i1 %exitcond.not, label %bb11, label %bb5

bb29:                                             ; preds = %bb9.i36, %bb6.i, %bb2
  %new_len.i = sub nuw i64 %_48, %_17
  %data.i = getelementptr inbounds nuw i8, ptr %_49, i64 %_17
  switch i64 %new_len.i, label %bb9thread-pre-split.i250 [
    i64 0, label %bb30
    i64 1, label %bb7.i170
  ]

bb7.i170:                                         ; preds = %bb29
  %85 = load i8, ptr %data.i, align 1, !alias.scope !1181, !noundef !23
  switch i8 %85, label %bb9.i174 [
    i8 43, label %bb30
    i8 45, label %bb30
  ]

bb9thread-pre-split.i250:                         ; preds = %bb29
  %.pr.i251 = load i8, ptr %data.i, align 1, !alias.scope !1181
  br label %bb9.i174

bb9.i174:                                         ; preds = %bb9thread-pre-split.i250, %bb7.i170
  %86 = phi i8 [ %.pr.i251, %bb9thread-pre-split.i250 ], [ %85, %bb7.i170 ]
  switch i8 %86, label %bb64.i215 [
    i8 43, label %bb11.i212
    i8 45, label %bb10.i175
  ]

bb11.i212:                                        ; preds = %bb9.i174
  %rest.0.i213 = getelementptr inbounds nuw i8, ptr %data.i, i64 1
  %rest.1.i214 = add nsw i64 %new_len.i, -1
  br label %bb64.i215

bb10.i175:                                        ; preds = %bb9.i174
  %rest.03.i176 = getelementptr inbounds nuw i8, ptr %data.i, i64 1
  %rest.14.i177 = add nsw i64 %new_len.i, -1
  %87 = icmp samesign ult i64 %new_len.i, 9
  br i1 %87, label %bb19.preheader.i199, label %bb33.i178

bb19.preheader.i199:                              ; preds = %bb10.i175
  %_29.not98.i200 = icmp eq i64 %rest.14.i177, 0
  br i1 %_29.not98.i200, label %bb30, label %bb20.i201

bb33.i178:                                        ; preds = %bb10.i175, %bb39.i189
  %result.sroa.0.0.i179 = phi i32 [ %_89.0.i194, %bb39.i189 ], [ 0, %bb10.i175 ]
  %src.sroa.26.1.i180 = phi i64 [ %rest.16.i191, %bb39.i189 ], [ %rest.14.i177, %bb10.i175 ]
  %src.sroa.0.1.i181 = phi ptr [ %rest.05.i192, %bb39.i189 ], [ %rest.03.i176, %bb10.i175 ]
  %_57.not.i182 = icmp eq i64 %src.sroa.26.1.i180, 0
  br i1 %_57.not.i182, label %bb30, label %bb34.i183

bb34.i183:                                        ; preds = %bb33.i178
  %88 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %result.sroa.0.0.i179, i32 10)
  %_85.1.i184 = extractvalue { i32, i1 } %88, 1
  %_65.i185 = load i8, ptr %src.sroa.0.1.i181, align 1, !alias.scope !1181, !noundef !23
  %_64.i186 = zext i8 %_65.i185 to i32
  %89 = add nsw i32 %_64.i186, -48
  %_14.i.i187 = icmp ugt i32 %89, 9
  %brmerge.i188 = select i1 %_14.i.i187, i1 true, i1 %_85.1.i184
  br i1 %brmerge.i188, label %bb30, label %bb39.i189

bb39.i189:                                        ; preds = %bb34.i183
  %_85.0.i190 = extractvalue { i32, i1 } %88, 0
  %rest.16.i191 = add nsw i64 %src.sroa.26.1.i180, -1
  %rest.05.i192 = getelementptr inbounds nuw i8, ptr %src.sroa.0.1.i181, i64 1
  %90 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_85.0.i190, i32 %89)
  %_89.1.i193 = extractvalue { i32, i1 } %90, 1
  %_89.0.i194 = extractvalue { i32, i1 } %90, 0
  br i1 %_89.1.i193, label %bb30, label %bb33.i178

bb20.i201:                                        ; preds = %bb19.preheader.i199, %bb23.i208
  %src.sroa.0.2101.i202 = phi ptr [ %rest.08.i210, %bb23.i208 ], [ %rest.03.i176, %bb19.preheader.i199 ]
  %src.sroa.26.2100.i203 = phi i64 [ %rest.19.i209, %bb23.i208 ], [ %rest.14.i177, %bb19.preheader.i199 ]
  %result.sroa.0.299.i204 = phi i32 [ %93, %bb23.i208 ], [ 0, %bb19.preheader.i199 ]
  %_36.i205 = load i8, ptr %src.sroa.0.2101.i202, align 1, !alias.scope !1181, !noundef !23
  %_35.i206 = zext i8 %_36.i205 to i32
  %91 = add nsw i32 %_35.i206, -48
  %_14.i79.i207 = icmp ult i32 %91, 10
  br i1 %_14.i79.i207, label %bb23.i208, label %bb30

bb23.i208:                                        ; preds = %bb20.i201
  %92 = mul i32 %result.sroa.0.299.i204, 10
  %rest.19.i209 = add nsw i64 %src.sroa.26.2100.i203, -1
  %rest.08.i210 = getelementptr inbounds nuw i8, ptr %src.sroa.0.2101.i202, i64 1
  %93 = sub i32 %92, %91
  %_29.not.i211 = icmp eq i64 %rest.19.i209, 0
  br i1 %_29.not.i211, label %bb30, label %bb20.i201

bb64.i215:                                        ; preds = %bb11.i212, %bb9.i174
  %src.sroa.26.0.i216 = phi i64 [ %rest.1.i214, %bb11.i212 ], [ %new_len.i, %bb9.i174 ]
  %src.sroa.0.0.i217 = phi ptr [ %rest.0.i213, %bb11.i212 ], [ %data.i, %bb9.i174 ]
  %94 = icmp samesign ult i64 %src.sroa.26.0.i216, 8
  br i1 %94, label %bb13.preheader.i237, label %bb24.i218

bb13.preheader.i237:                              ; preds = %bb64.i215
  %_16.not104.i238 = icmp eq i64 %src.sroa.26.0.i216, 0
  br i1 %_16.not104.i238, label %bb30, label %bb14.i239

bb24.i218:                                        ; preds = %bb64.i215, %bb30.i229
  %result.sroa.0.3.i219 = phi i32 [ %_81.0.i234, %bb30.i229 ], [ 0, %bb64.i215 ]
  %src.sroa.26.3.i220 = phi i64 [ %rest.112.i231, %bb30.i229 ], [ %src.sroa.26.0.i216, %bb64.i215 ]
  %src.sroa.0.3.i221 = phi ptr [ %rest.011.i232, %bb30.i229 ], [ %src.sroa.0.0.i217, %bb64.i215 ]
  %_42.not.i222 = icmp eq i64 %src.sroa.26.3.i220, 0
  br i1 %_42.not.i222, label %bb30, label %bb25.i223

bb25.i223:                                        ; preds = %bb24.i218
  %95 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %result.sroa.0.3.i219, i32 10)
  %_77.1.i224 = extractvalue { i32, i1 } %95, 1
  %_50.i225 = load i8, ptr %src.sroa.0.3.i221, align 1, !alias.scope !1181, !noundef !23
  %_49.i226 = zext i8 %_50.i225 to i32
  %96 = add nsw i32 %_49.i226, -48
  %_14.i81.i227 = icmp ugt i32 %96, 9
  %brmerge77.i228 = select i1 %_14.i81.i227, i1 true, i1 %_77.1.i224
  br i1 %brmerge77.i228, label %bb30, label %bb30.i229

bb30.i229:                                        ; preds = %bb25.i223
  %_77.0.i230 = extractvalue { i32, i1 } %95, 0
  %rest.112.i231 = add nsw i64 %src.sroa.26.3.i220, -1
  %rest.011.i232 = getelementptr inbounds nuw i8, ptr %src.sroa.0.3.i221, i64 1
  %97 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_77.0.i230, i32 %96)
  %_81.1.i233 = extractvalue { i32, i1 } %97, 1
  %_81.0.i234 = extractvalue { i32, i1 } %97, 0
  br i1 %_81.1.i233, label %bb30, label %bb24.i218

bb14.i239:                                        ; preds = %bb13.preheader.i237
  %_23.i243 = load i8, ptr %src.sroa.0.0.i217, align 1, !alias.scope !1181, !noundef !23
  %_22.i244 = zext i8 %_23.i243 to i32
  %98 = add nsw i32 %_22.i244, -48
  %_14.i83.i245 = icmp ult i32 %98, 10
  br i1 %_14.i83.i245, label %bb18.i246, label %bb30

bb18.i246:                                        ; preds = %bb14.i239
  %_16.not.i249 = icmp eq i64 %src.sroa.26.0.i216, 1
  br i1 %_16.not.i249, label %bb30, label %bb14.i239.1

bb14.i239.1:                                      ; preds = %bb18.i246
  %rest.015.i248 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i217, i64 1
  %_23.i243.1 = load i8, ptr %rest.015.i248, align 1, !alias.scope !1181, !noundef !23
  %_22.i244.1 = zext i8 %_23.i243.1 to i32
  %99 = add nsw i32 %_22.i244.1, -48
  %_14.i83.i245.1 = icmp ult i32 %99, 10
  br i1 %_14.i83.i245.1, label %bb18.i246.1, label %bb30

bb18.i246.1:                                      ; preds = %bb14.i239.1
  %100 = mul nuw nsw i32 %98, 10
  %101 = add nuw nsw i32 %99, %100
  %_16.not.i249.1 = icmp eq i64 %src.sroa.26.0.i216, 2
  br i1 %_16.not.i249.1, label %bb30, label %bb14.i239.2

bb14.i239.2:                                      ; preds = %bb18.i246.1
  %rest.015.i248.1 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i217, i64 2
  %_23.i243.2 = load i8, ptr %rest.015.i248.1, align 1, !alias.scope !1181, !noundef !23
  %_22.i244.2 = zext i8 %_23.i243.2 to i32
  %102 = add nsw i32 %_22.i244.2, -48
  %_14.i83.i245.2 = icmp ult i32 %102, 10
  br i1 %_14.i83.i245.2, label %bb18.i246.2, label %bb30

bb18.i246.2:                                      ; preds = %bb14.i239.2
  %103 = mul nuw nsw i32 %101, 10
  %104 = add nuw nsw i32 %102, %103
  %_16.not.i249.2 = icmp eq i64 %src.sroa.26.0.i216, 3
  br i1 %_16.not.i249.2, label %bb30, label %bb14.i239.3

bb14.i239.3:                                      ; preds = %bb18.i246.2
  %rest.015.i248.2 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i217, i64 3
  %_23.i243.3 = load i8, ptr %rest.015.i248.2, align 1, !alias.scope !1181, !noundef !23
  %_22.i244.3 = zext i8 %_23.i243.3 to i32
  %105 = add nsw i32 %_22.i244.3, -48
  %_14.i83.i245.3 = icmp ult i32 %105, 10
  br i1 %_14.i83.i245.3, label %bb18.i246.3, label %bb30

bb18.i246.3:                                      ; preds = %bb14.i239.3
  %106 = mul nuw nsw i32 %104, 10
  %107 = add nuw nsw i32 %105, %106
  %_16.not.i249.3 = icmp eq i64 %src.sroa.26.0.i216, 4
  br i1 %_16.not.i249.3, label %bb30, label %bb14.i239.4

bb14.i239.4:                                      ; preds = %bb18.i246.3
  %rest.015.i248.3 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i217, i64 4
  %_23.i243.4 = load i8, ptr %rest.015.i248.3, align 1, !alias.scope !1181, !noundef !23
  %_22.i244.4 = zext i8 %_23.i243.4 to i32
  %108 = add nsw i32 %_22.i244.4, -48
  %_14.i83.i245.4 = icmp ult i32 %108, 10
  br i1 %_14.i83.i245.4, label %bb18.i246.4, label %bb30

bb18.i246.4:                                      ; preds = %bb14.i239.4
  %109 = mul i32 %107, 10
  %110 = add i32 %108, %109
  %_16.not.i249.4 = icmp eq i64 %src.sroa.26.0.i216, 5
  br i1 %_16.not.i249.4, label %bb30, label %bb14.i239.5

bb14.i239.5:                                      ; preds = %bb18.i246.4
  %rest.015.i248.4 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i217, i64 5
  %_23.i243.5 = load i8, ptr %rest.015.i248.4, align 1, !alias.scope !1181, !noundef !23
  %_22.i244.5 = zext i8 %_23.i243.5 to i32
  %111 = add nsw i32 %_22.i244.5, -48
  %_14.i83.i245.5 = icmp ult i32 %111, 10
  br i1 %_14.i83.i245.5, label %bb18.i246.5, label %bb30

bb18.i246.5:                                      ; preds = %bb14.i239.5
  %112 = mul i32 %110, 10
  %113 = add i32 %111, %112
  %_16.not.i249.5 = icmp eq i64 %src.sroa.26.0.i216, 6
  br i1 %_16.not.i249.5, label %bb30, label %bb14.i239.6

bb14.i239.6:                                      ; preds = %bb18.i246.5
  %rest.015.i248.5 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i217, i64 6
  %_23.i243.6 = load i8, ptr %rest.015.i248.5, align 1, !alias.scope !1181, !noundef !23
  %_22.i244.6 = zext i8 %_23.i243.6 to i32
  %114 = add nsw i32 %_22.i244.6, -48
  %_14.i83.i245.6 = icmp ult i32 %114, 10
  br i1 %_14.i83.i245.6, label %bb18.i246.6, label %bb30

bb18.i246.6:                                      ; preds = %bb14.i239.6
  %115 = mul i32 %113, 10
  %116 = add i32 %114, %115
  br label %bb30

bb28.invoke:                                      ; preds = %bb6.i, %bb9.i36, %bb9.i84
  %117 = phi i64 [ %_40, %bb9.i84 ], [ %_17, %bb9.i36 ], [ %_17, %bb6.i ]
  %118 = phi ptr [ @alloc_266815b979d0a4a0916b4592093b14e0, %bb9.i84 ], [ @alloc_e5d9209da51091951dab14997004893c, %bb9.i36 ], [ @alloc_e5d9209da51091951dab14997004893c, %bb6.i ]
; invoke core::str::slice_error_fail
  invoke void @_ZN4core3str16slice_error_fail17h4678567854dd8858E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %_49, i64 noundef %_48, i64 noundef %117, i64 noundef %_48, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %118) #22
          to label %bb28.cont unwind label %cleanup

bb28.cont:                                        ; preds = %bb28.invoke
  unreachable

bb30:                                             ; preds = %bb33.i178, %bb34.i183, %bb39.i189, %bb23.i208, %bb20.i201, %bb24.i218, %bb25.i223, %bb30.i229, %bb18.i246, %bb14.i239, %bb14.i239.1, %bb18.i246.1, %bb14.i239.2, %bb18.i246.2, %bb14.i239.3, %bb18.i246.3, %bb14.i239.4, %bb18.i246.4, %bb14.i239.5, %bb18.i246.5, %bb14.i239.6, %bb18.i246.6, %bb19.preheader.i199, %bb13.preheader.i237, %bb7.i170, %bb7.i170, %bb29
  %_0.sroa.0.0.i171 = phi i32 [ 0, %bb29 ], [ 0, %bb7.i170 ], [ 0, %bb7.i170 ], [ 0, %bb13.preheader.i237 ], [ 0, %bb19.preheader.i199 ], [ %98, %bb18.i246 ], [ 0, %bb14.i239 ], [ 0, %bb14.i239.1 ], [ %101, %bb18.i246.1 ], [ 0, %bb14.i239.2 ], [ %104, %bb18.i246.2 ], [ 0, %bb14.i239.3 ], [ %107, %bb18.i246.3 ], [ 0, %bb14.i239.4 ], [ %110, %bb18.i246.4 ], [ 0, %bb14.i239.5 ], [ %113, %bb18.i246.5 ], [ 0, %bb14.i239.6 ], [ %116, %bb18.i246.6 ], [ %result.sroa.0.3.i219, %bb24.i218 ], [ 0, %bb25.i223 ], [ 0, %bb30.i229 ], [ %93, %bb23.i208 ], [ 0, %bb20.i201 ], [ %result.sroa.0.0.i179, %bb33.i178 ], [ 0, %bb34.i183 ], [ 0, %bb39.i189 ]
  %119 = add i32 %_0.sroa.0.0.i171, %_12
  %_10 = icmp slt i32 %119, %divisor
  br i1 %_10, label %bb2, label %bb4.preheader

bb17:                                             ; preds = %bb2.i.i.i3.i.i, %bb16
  call void @llvm.experimental.noalias.scope.decl(metadata !1184)
  call void @llvm.experimental.noalias.scope.decl(metadata !1187)
  call void @llvm.experimental.noalias.scope.decl(metadata !1190)
  call void @llvm.experimental.noalias.scope.decl(metadata !1193)
  call void @llvm.experimental.noalias.scope.decl(metadata !1196)
  %self1.i.i.i.i1.i.i253 = load i64, ptr %number, align 8, !range !1031, !alias.scope !1199, !noalias !1202, !noundef !23
  %_6.i.i.i.i2.i.i254 = icmp eq i64 %self1.i.i.i.i1.i.i253, 0
  br i1 %_6.i.i.i.i2.i.i254, label %bb18, label %bb2.i.i.i3.i.i255

bb2.i.i.i3.i.i255:                                ; preds = %bb17
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_49, i64 noundef %self1.i.i.i.i1.i.i253, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1204
  br label %bb18

bb18:                                             ; preds = %bb2.i.i.i3.i.i255, %bb17
  resume { ptr, i32 } %.pn
}
