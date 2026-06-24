define noundef i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %str) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %e.i23 = alloca [1 x i8], align 1
  %e.i = alloca [1 x i8], align 1
  %temp = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %temp)
  store i64 0, ptr %temp, align 8
  %_18.sroa.3.0.temp.sroa_idx = getelementptr inbounds nuw i8, ptr %temp, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %_18.sroa.3.0.temp.sroa_idx, align 8
  %_18.sroa.4.0.temp.sroa_idx = getelementptr inbounds nuw i8, ptr %temp, i64 16
  store i64 0, ptr %_18.sroa.4.0.temp.sroa_idx, align 8
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_22 = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %1 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %_21 = load i64, ptr %1, align 8, !noundef !3
  %_29 = getelementptr inbounds nuw i8, ptr %_22, i64 %_21
  %_7.i.i190 = icmp samesign eq i64 %_21, 0
  br i1 %_7.i.i190, label %bb2.i26, label %bb14.i

bb14.i:                                           ; preds = %start, %bb9
  %_20.i137223 = phi ptr [ %_20.i137224, %bb9 ], [ inttoptr (i64 1 to ptr), %start ]
  %len.i156 = phi i64 [ %storemerge, %bb9 ], [ 0, %start ]
  %sum.sroa.0.0192 = phi i32 [ %sum.sroa.0.1, %bb9 ], [ 0, %start ]
  %iter.sroa.0.0191 = phi ptr [ %iter.sroa.0.1.ph, %bb9 ], [ %_22, %start ]
  %_18.i.i = getelementptr inbounds nuw i8, ptr %iter.sroa.0.0191, i64 1
  %x.i = load i8, ptr %iter.sroa.0.0191, align 1, !noalias !1049, !noundef !3
  %_6.i = icmp sgt i8 %x.i, -1
  br i1 %_6.i, label %bb3.i, label %bb4.i

bb4.i:                                            ; preds = %bb14.i
  %_30.i = and i8 %x.i, 31
  %init.i = zext nneg i8 %_30.i to i32
  %_7.i10.i = icmp ne ptr %_18.i.i, %_29
  tail call void @llvm.assume(i1 %_7.i10.i)
  %_18.i12.i = getelementptr inbounds nuw i8, ptr %iter.sroa.0.0191, i64 2
  %y.i = load i8, ptr %_18.i.i, align 1, !noalias !1049, !noundef !3
  %_34.i = shl nuw nsw i32 %init.i, 6
  %_36.i = and i8 %y.i, 63
  %_35.i = zext nneg i8 %_36.i to i32
  %2 = or disjoint i32 %_34.i, %_35.i
  %_13.i = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i, label %bb6.i, label %bb18

bb3.i:                                            ; preds = %bb14.i
  %_7.i = zext nneg i8 %x.i to i32
  br label %bb18

bb6.i:                                            ; preds = %bb4.i
  %_7.i17.i = icmp ne ptr %_18.i12.i, %_29
  tail call void @llvm.assume(i1 %_7.i17.i)
  %_18.i19.i = getelementptr inbounds nuw i8, ptr %iter.sroa.0.0191, i64 3
  %z.i = load i8, ptr %_18.i12.i, align 1, !noalias !1049, !noundef !3
  %_40.i = shl nuw nsw i32 %_35.i, 6
  %_42.i = and i8 %z.i, 63
  %_41.i = zext nneg i8 %_42.i to i32
  %y_z.i = or disjoint i32 %_40.i, %_41.i
  %_20.i = shl nuw nsw i32 %init.i, 12
  %3 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb8.i, label %bb18

bb8.i:                                            ; preds = %bb6.i
  %_7.i24.i = icmp ne ptr %_18.i19.i, %_29
  tail call void @llvm.assume(i1 %_7.i24.i)
  %_18.i26.i = getelementptr inbounds nuw i8, ptr %iter.sroa.0.0191, i64 4
  %w.i = load i8, ptr %_18.i19.i, align 1, !noalias !1049, !noundef !3
  %_26.i = shl nuw nsw i32 %init.i, 18
  %_25.i = and i32 %_26.i, 1835008
  %_46.i = shl nuw nsw i32 %y_z.i, 6
  %_48.i = and i8 %w.i, 63
  %_47.i = zext nneg i8 %_48.i to i32
  %_27.i = or disjoint i32 %_46.i, %_47.i
  %4 = or disjoint i32 %_27.i, %_25.i
  br label %bb18

bb13.loopexit:                                    ; preds = %bb1.i.i, %bb24
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb13

bb13.loopexit.split-lp:                           ; preds = %bb2.i26.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb13

bb13:                                             ; preds = %bb13.loopexit.split-lp, %bb13.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %bb13.loopexit ], [ %lpad.loopexit.split-lp, %bb13.loopexit.split-lp ]
  %self1.i.i.i.i1.i.i.pr = load i64, ptr %temp, align 8, !alias.scope !1052, !noalias !1065
  call void @llvm.experimental.noalias.scope.decl(metadata !1067)
  call void @llvm.experimental.noalias.scope.decl(metadata !1068)
  call void @llvm.experimental.noalias.scope.decl(metadata !1069)
  call void @llvm.experimental.noalias.scope.decl(metadata !1070)
  call void @llvm.experimental.noalias.scope.decl(metadata !1071)
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.pr, 0
  br i1 %_6.i.i.i.i2.i.i, label %bb14, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb13
  %self3.i.i.i.i4.i.i = load ptr, ptr %_18.sroa.3.0.temp.sroa_idx, align 8, !alias.scope !1052, !noalias !1065, !nonnull !3, !noundef !3
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i, i64 noundef %self1.i.i.i.i1.i.i.pr, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !1072
  br label %bb14

bb18:                                             ; preds = %bb3.i, %bb8.i, %bb6.i, %bb4.i
  %iter.sroa.0.1.ph = phi ptr [ %_18.i12.i, %bb4.i ], [ %_18.i19.i, %bb6.i ], [ %_18.i26.i, %bb8.i ], [ %_18.i.i, %bb3.i ]
  %_0.sroa.4.0.i.ph = phi i32 [ %2, %bb4.i ], [ %3, %bb6.i ], [ %4, %bb8.i ], [ %_7.i, %bb3.i ]
  %5 = icmp samesign ult i32 %_0.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %5)
  %6 = add nsw i32 %_0.sroa.4.0.i.ph, -48
  %or.cond = icmp ult i32 %6, 10
  br i1 %or.cond, label %bb3.thread, label %bb19

bb3.thread:                                       ; preds = %bb18
  %_14.i157 = icmp sgt i64 %len.i156, -1
  tail call void @llvm.assume(i1 %_14.i157)
  br label %bb2.i135

bb17:                                             ; preds = %bb9
  %_46.pre = load ptr, ptr %_18.sroa.3.0.temp.sroa_idx, align 8
  switch i64 %storemerge, label %bb9thread-pre-split.i [
    i64 0, label %bb2.i26
    i64 1, label %bb7.i
  ]

bb7.i:                                            ; preds = %bb17
  %7 = load i8, ptr %_46.pre, align 1, !alias.scope !1073, !noundef !3
  switch i8 %7, label %bb9.i [
    i8 43, label %bb2.i26
    i8 45, label %bb2.i26
  ]

bb46.loopexit86.split.loop.exit.i:                ; preds = %bb25.i
  %.mux78.le.i = select i1 %_14.i81.i, i8 1, i8 2
  br label %bb2.i26

bb46.loopexit90.split.loop.exit.i:                ; preds = %bb34.i
  %.mux.le.i = select i1 %_14.i.i, i8 1, i8 3
  br label %bb2.i26

bb9thread-pre-split.i:                            ; preds = %bb17
  %.pr.i = load i8, ptr %_46.pre, align 1, !alias.scope !1073
  br label %bb9.i

bb9.i:                                            ; preds = %bb9thread-pre-split.i, %bb7.i
  %8 = phi i8 [ %.pr.i, %bb9thread-pre-split.i ], [ %7, %bb7.i ]
  switch i8 %8, label %bb64.i [
    i8 43, label %bb11.i
    i8 45, label %bb10.i
  ]

bb11.i:                                           ; preds = %bb9.i
  %rest.0.i = getelementptr inbounds nuw i8, ptr %_46.pre, i64 1
  %rest.1.i = add nsw i64 %storemerge, -1
  br label %bb64.i

bb10.i:                                           ; preds = %bb9.i
  %rest.03.i = getelementptr inbounds nuw i8, ptr %_46.pre, i64 1
  %rest.14.i = add nsw i64 %storemerge, -1
  %9 = icmp samesign ult i64 %storemerge, 9
  br i1 %9, label %bb19.preheader.i, label %bb33.i

bb19.preheader.i:                                 ; preds = %bb10.i
  %_29.not98.i = icmp eq i64 %rest.14.i, 0
  br i1 %_29.not98.i, label %bb10, label %bb20.i

bb33.i:                                           ; preds = %bb10.i, %bb39.i
  %result.sroa.0.0.i = phi i32 [ %_89.0.i, %bb39.i ], [ 0, %bb10.i ]
  %src.sroa.26.1.i = phi i64 [ %rest.16.i, %bb39.i ], [ %rest.14.i, %bb10.i ]
  %src.sroa.0.1.i = phi ptr [ %rest.05.i, %bb39.i ], [ %rest.03.i, %bb10.i ]
  %_57.not.i = icmp eq i64 %src.sroa.26.1.i, 0
  br i1 %_57.not.i, label %bb10, label %bb34.i

bb34.i:                                           ; preds = %bb33.i
  %10 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %result.sroa.0.0.i, i32 10)
  %_85.1.i = extractvalue { i32, i1 } %10, 1
  %_65.i = load i8, ptr %src.sroa.0.1.i, align 1, !alias.scope !1073, !noundef !3
  %_64.i = zext i8 %_65.i to i32
  %11 = add nsw i32 %_64.i, -48
  %_14.i.i = icmp ugt i32 %11, 9
  %brmerge.i = select i1 %_14.i.i, i1 true, i1 %_85.1.i
  br i1 %brmerge.i, label %bb46.loopexit90.split.loop.exit.i, label %bb39.i

bb39.i:                                           ; preds = %bb34.i
  %_85.0.i = extractvalue { i32, i1 } %10, 0
  %rest.16.i = add nsw i64 %src.sroa.26.1.i, -1
  %rest.05.i = getelementptr inbounds nuw i8, ptr %src.sroa.0.1.i, i64 1
  %12 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_85.0.i, i32 %11)
  %_89.1.i = extractvalue { i32, i1 } %12, 1
  %_89.0.i = extractvalue { i32, i1 } %12, 0
  br i1 %_89.1.i, label %bb2.i26, label %bb33.i

bb20.i:                                           ; preds = %bb19.preheader.i, %bb23.i
  %src.sroa.0.2101.i = phi ptr [ %rest.08.i, %bb23.i ], [ %rest.03.i, %bb19.preheader.i ]
  %src.sroa.26.2100.i = phi i64 [ %rest.19.i, %bb23.i ], [ %rest.14.i, %bb19.preheader.i ]
  %result.sroa.0.299.i = phi i32 [ %15, %bb23.i ], [ 0, %bb19.preheader.i ]
  %_36.i32 = load i8, ptr %src.sroa.0.2101.i, align 1, !alias.scope !1073, !noundef !3
  %_35.i33 = zext i8 %_36.i32 to i32
  %13 = add nsw i32 %_35.i33, -48
  %_14.i79.i = icmp ult i32 %13, 10
  br i1 %_14.i79.i, label %bb23.i, label %bb2.i26

bb23.i:                                           ; preds = %bb20.i
  %14 = mul i32 %result.sroa.0.299.i, 10
  %rest.19.i = add nsw i64 %src.sroa.26.2100.i, -1
  %rest.08.i = getelementptr inbounds nuw i8, ptr %src.sroa.0.2101.i, i64 1
  %15 = sub i32 %14, %13
  %_29.not.i = icmp eq i64 %rest.19.i, 0
  br i1 %_29.not.i, label %bb10, label %bb20.i

bb64.i:                                           ; preds = %bb11.i, %bb9.i
  %src.sroa.26.0.i = phi i64 [ %rest.1.i, %bb11.i ], [ %storemerge, %bb9.i ]
  %src.sroa.0.0.i = phi ptr [ %rest.0.i, %bb11.i ], [ %_46.pre, %bb9.i ]
  %16 = icmp samesign ult i64 %src.sroa.26.0.i, 8
  br i1 %16, label %bb13.preheader.i, label %bb24.i

bb13.preheader.i:                                 ; preds = %bb64.i
  %_16.not104.i = icmp eq i64 %src.sroa.26.0.i, 0
  br i1 %_16.not104.i, label %bb10, label %bb14.i34

bb24.i:                                           ; preds = %bb64.i, %bb30.i
  %result.sroa.0.3.i = phi i32 [ %_81.0.i, %bb30.i ], [ 0, %bb64.i ]
  %src.sroa.26.3.i = phi i64 [ %rest.112.i, %bb30.i ], [ %src.sroa.26.0.i, %bb64.i ]
  %src.sroa.0.3.i = phi ptr [ %rest.011.i, %bb30.i ], [ %src.sroa.0.0.i, %bb64.i ]
  %_42.not.i = icmp eq i64 %src.sroa.26.3.i, 0
  br i1 %_42.not.i, label %bb10, label %bb25.i

bb25.i:                                           ; preds = %bb24.i
  %17 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %result.sroa.0.3.i, i32 10)
  %_77.1.i = extractvalue { i32, i1 } %17, 1
  %_50.i = load i8, ptr %src.sroa.0.3.i, align 1, !alias.scope !1073, !noundef !3
  %_49.i = zext i8 %_50.i to i32
  %18 = add nsw i32 %_49.i, -48
  %_14.i81.i = icmp ugt i32 %18, 9
  %brmerge77.i = select i1 %_14.i81.i, i1 true, i1 %_77.1.i
  br i1 %brmerge77.i, label %bb46.loopexit86.split.loop.exit.i, label %bb30.i

bb30.i:                                           ; preds = %bb25.i
  %_77.0.i = extractvalue { i32, i1 } %17, 0
  %rest.112.i = add nsw i64 %src.sroa.26.3.i, -1
  %rest.011.i = getelementptr inbounds nuw i8, ptr %src.sroa.0.3.i, i64 1
  %19 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_77.0.i, i32 %18)
  %_81.1.i = extractvalue { i32, i1 } %19, 1
  %_81.0.i = extractvalue { i32, i1 } %19, 0
  br i1 %_81.1.i, label %bb2.i26, label %bb24.i

bb14.i34:                                         ; preds = %bb13.preheader.i
  %_23.i = load i8, ptr %src.sroa.0.0.i, align 1, !alias.scope !1073, !noundef !3
  %_22.i = zext i8 %_23.i to i32
  %20 = add nsw i32 %_22.i, -48
  %_14.i83.i = icmp ult i32 %20, 10
  br i1 %_14.i83.i, label %bb18.i, label %bb2.i26

bb18.i:                                           ; preds = %bb14.i34
  %_16.not.i = icmp eq i64 %src.sroa.26.0.i, 1
  br i1 %_16.not.i, label %bb10, label %bb14.i34.1

bb14.i34.1:                                       ; preds = %bb18.i
  %rest.015.i = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i, i64 1
  %_23.i.1 = load i8, ptr %rest.015.i, align 1, !alias.scope !1073, !noundef !3
  %_22.i.1 = zext i8 %_23.i.1 to i32
  %21 = add nsw i32 %_22.i.1, -48
  %_14.i83.i.1 = icmp ult i32 %21, 10
  br i1 %_14.i83.i.1, label %bb18.i.1, label %bb2.i26

bb18.i.1:                                         ; preds = %bb14.i34.1
  %22 = mul nuw nsw i32 %20, 10
  %23 = add nuw nsw i32 %21, %22
  %_16.not.i.1 = icmp eq i64 %src.sroa.26.0.i, 2
  br i1 %_16.not.i.1, label %bb10, label %bb14.i34.2

bb14.i34.2:                                       ; preds = %bb18.i.1
  %rest.015.i.1 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i, i64 2
  %_23.i.2 = load i8, ptr %rest.015.i.1, align 1, !alias.scope !1073, !noundef !3
  %_22.i.2 = zext i8 %_23.i.2 to i32
  %24 = add nsw i32 %_22.i.2, -48
  %_14.i83.i.2 = icmp ult i32 %24, 10
  br i1 %_14.i83.i.2, label %bb18.i.2, label %bb2.i26

bb18.i.2:                                         ; preds = %bb14.i34.2
  %25 = mul nuw nsw i32 %23, 10
  %26 = add nuw nsw i32 %24, %25
  %_16.not.i.2 = icmp eq i64 %src.sroa.26.0.i, 3
  br i1 %_16.not.i.2, label %bb10, label %bb14.i34.3

bb14.i34.3:                                       ; preds = %bb18.i.2
  %rest.015.i.2 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i, i64 3
  %_23.i.3 = load i8, ptr %rest.015.i.2, align 1, !alias.scope !1073, !noundef !3
  %_22.i.3 = zext i8 %_23.i.3 to i32
  %27 = add nsw i32 %_22.i.3, -48
  %_14.i83.i.3 = icmp ult i32 %27, 10
  br i1 %_14.i83.i.3, label %bb18.i.3, label %bb2.i26

bb18.i.3:                                         ; preds = %bb14.i34.3
  %28 = mul nuw nsw i32 %26, 10
  %29 = add nuw nsw i32 %27, %28
  %_16.not.i.3 = icmp eq i64 %src.sroa.26.0.i, 4
  br i1 %_16.not.i.3, label %bb10, label %bb14.i34.4

bb14.i34.4:                                       ; preds = %bb18.i.3
  %rest.015.i.3 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i, i64 4
  %_23.i.4 = load i8, ptr %rest.015.i.3, align 1, !alias.scope !1073, !noundef !3
  %_22.i.4 = zext i8 %_23.i.4 to i32
  %30 = add nsw i32 %_22.i.4, -48
  %_14.i83.i.4 = icmp ult i32 %30, 10
  br i1 %_14.i83.i.4, label %bb18.i.4, label %bb2.i26

bb18.i.4:                                         ; preds = %bb14.i34.4
  %31 = mul i32 %29, 10
  %32 = add i32 %30, %31
  %_16.not.i.4 = icmp eq i64 %src.sroa.26.0.i, 5
  br i1 %_16.not.i.4, label %bb10, label %bb14.i34.5

bb14.i34.5:                                       ; preds = %bb18.i.4
  %rest.015.i.4 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i, i64 5
  %_23.i.5 = load i8, ptr %rest.015.i.4, align 1, !alias.scope !1073, !noundef !3
  %_22.i.5 = zext i8 %_23.i.5 to i32
  %33 = add nsw i32 %_22.i.5, -48
  %_14.i83.i.5 = icmp ult i32 %33, 10
  br i1 %_14.i83.i.5, label %bb18.i.5, label %bb2.i26

bb18.i.5:                                         ; preds = %bb14.i34.5
  %34 = mul i32 %32, 10
  %35 = add i32 %33, %34
  %_16.not.i.5 = icmp eq i64 %src.sroa.26.0.i, 6
  br i1 %_16.not.i.5, label %bb10, label %bb14.i34.6

bb14.i34.6:                                       ; preds = %bb18.i.5
  %rest.015.i.5 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i, i64 6
  %_23.i.6 = load i8, ptr %rest.015.i.5, align 1, !alias.scope !1073, !noundef !3
  %_22.i.6 = zext i8 %_23.i.6 to i32
  %36 = add nsw i32 %_22.i.6, -48
  %_14.i83.i.6 = icmp ult i32 %36, 10
  br i1 %_14.i83.i.6, label %bb18.i.6, label %bb2.i26

bb18.i.6:                                         ; preds = %bb14.i34.6
  %37 = mul i32 %35, 10
  %38 = add i32 %36, %37
  br label %bb10

bb2.i26:                                          ; preds = %bb39.i, %bb20.i, %bb30.i, %bb14.i34, %bb14.i34.1, %bb14.i34.2, %bb14.i34.3, %bb14.i34.4, %bb14.i34.5, %bb14.i34.6, %start, %bb17, %bb7.i, %bb7.i, %bb46.loopexit86.split.loop.exit.i, %bb46.loopexit90.split.loop.exit.i
  %_0.sroa.12.0.insert.insert.i.ph = phi i8 [ %.mux.le.i, %bb46.loopexit90.split.loop.exit.i ], [ %.mux78.le.i, %bb46.loopexit86.split.loop.exit.i ], [ 1, %bb7.i ], [ 1, %bb7.i ], [ 0, %bb17 ], [ 0, %start ], [ 1, %bb14.i34.6 ], [ 1, %bb14.i34.5 ], [ 1, %bb14.i34.4 ], [ 1, %bb14.i34.3 ], [ 1, %bb14.i34.2 ], [ 1, %bb14.i34.1 ], [ 1, %bb14.i34 ], [ 2, %bb30.i ], [ 1, %bb20.i ], [ 3, %bb39.i ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %e.i23), !noalias !1076
  store i8 %_0.sroa.12.0.insert.insert.i.ph, ptr %e.i23, align 1, !noalias !1076
  br label %bb2.i26.invoke

bb2.i26.invoke:                                   ; preds = %bb2.i, %bb2.i26
  %39 = phi ptr [ %e.i23, %bb2.i26 ], [ %e.i, %bb2.i ]
  %40 = phi ptr [ @alloc_fcb0459a5c5429e65c8f5decd9e3b356, %bb2.i26 ], [ @alloc_ab67633e08808d3e190b02d350c52308, %bb2.i ]
; invoke core::result::unwrap_failed
  invoke void @_ZN4core6result13unwrap_failed17hac9339a6c7ad693bE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @alloc_00ae4b301f7fab8ac9617c03fcbd7274, i64 noundef 43, ptr noundef nonnull align 1 %39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @vtable.0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %40) #24
          to label %bb2.i26.cont unwind label %bb13.loopexit.split-lp

bb2.i26.cont:                                     ; preds = %bb2.i26.invoke
  unreachable

bb10:                                             ; preds = %bb33.i, %bb23.i, %bb24.i, %bb18.i, %bb18.i.1, %bb18.i.2, %bb18.i.3, %bb18.i.4, %bb18.i.5, %bb18.i.6, %bb13.preheader.i, %bb19.preheader.i
  %result.sroa.0.1.i = phi i32 [ 0, %bb13.preheader.i ], [ 0, %bb19.preheader.i ], [ %20, %bb18.i ], [ %23, %bb18.i.1 ], [ %26, %bb18.i.2 ], [ %29, %bb18.i.3 ], [ %32, %bb18.i.4 ], [ %35, %bb18.i.5 ], [ %38, %bb18.i.6 ], [ %result.sroa.0.3.i, %bb24.i ], [ %15, %bb23.i ], [ %result.sroa.0.0.i, %bb33.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1079)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1082)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1088)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1091)
  %self1.i.i.i.i1.i.i35 = load i64, ptr %temp, align 8, !range !1038, !alias.scope !1094, !noalias !1097, !noundef !3
  %_6.i.i.i.i2.i.i36 = icmp eq i64 %self1.i.i.i.i1.i.i35, 0
  br i1 %_6.i.i.i.i2.i.i36, label %bb11, label %bb2.i.i.i3.i.i37

bb2.i.i.i3.i.i37:                                 ; preds = %bb10
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_46.pre, i64 noundef %self1.i.i.i.i1.i.i35, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !1099
  br label %bb11

bb14:                                             ; preds = %bb2.i.i.i3.i.i, %bb13
  call void @llvm.experimental.noalias.scope.decl(metadata !1100)
  call void @llvm.experimental.noalias.scope.decl(metadata !1103)
  call void @llvm.experimental.noalias.scope.decl(metadata !1106)
  call void @llvm.experimental.noalias.scope.decl(metadata !1109)
  call void @llvm.experimental.noalias.scope.decl(metadata !1112)
  %self1.i.i.i.i1.i.i40 = load i64, ptr %str, align 8, !range !1038, !alias.scope !1115, !noalias !1118, !noundef !3
  %_6.i.i.i.i2.i.i41 = icmp eq i64 %self1.i.i.i.i1.i.i40, 0
  br i1 %_6.i.i.i.i2.i.i41, label %bb15, label %bb2.i.i.i3.i.i42

bb2.i.i.i3.i.i42:                                 ; preds = %bb14
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_22, i64 noundef %self1.i.i.i.i1.i.i40, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !1120
  br label %bb15

bb11:                                             ; preds = %bb2.i.i.i3.i.i37, %bb10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %temp)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1133)
  %self1.i.i.i.i1.i.i45 = load i64, ptr %str, align 8, !range !1038, !alias.scope !1136, !noalias !1139, !noundef !3
  %_6.i.i.i.i2.i.i46 = icmp eq i64 %self1.i.i.i.i1.i.i45, 0
  br i1 %_6.i.i.i.i2.i.i46, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h90aae6d11478c896E.exit49", label %bb2.i.i.i3.i.i47

bb2.i.i.i3.i.i47:                                 ; preds = %bb11
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_22, i64 noundef %self1.i.i.i.i1.i.i45, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !1141
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h90aae6d11478c896E.exit49"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h90aae6d11478c896E.exit49": ; preds = %bb11, %bb2.i.i.i3.i.i47
  %41 = add i32 %sum.sroa.0.1, %result.sroa.0.1.i
  ret i32 %41

bb19:                                             ; preds = %bb18
  %_41 = icmp samesign ugt i32 %_0.sroa.4.0.i.ph, 177
  br i1 %_41, label %bb24, label %bb5

bb24:                                             ; preds = %bb19
; invoke core::unicode::unicode_data::n::lookup_slow
  %_8 = invoke noundef zeroext i1 @_ZN4core7unicode12unicode_data1n11lookup_slow17h22daba5cd9540137E(i32 noundef %_0.sroa.4.0.i.ph)
          to label %bb26 unwind label %bb13.loopexit

bb5:                                              ; preds = %bb19, %bb26
  switch i64 %len.i156, label %bb9thread-pre-split.i130 [
    i64 0, label %bb2.i
    i64 1, label %bb7.i50
  ]

bb7.i50:                                          ; preds = %bb5
  %42 = load i8, ptr %_20.i137223, align 1, !alias.scope !1142, !noundef !3
  switch i8 %42, label %bb9.i54 [
    i8 43, label %bb2.i
    i8 45, label %bb2.i
  ]

bb46.loopexit86.split.loop.exit.i115:             ; preds = %bb25.i103
  %.mux78.le.i116 = select i1 %_14.i81.i107, i8 1, i8 2
  br label %bb2.i

bb46.loopexit90.split.loop.exit.i75:              ; preds = %bb34.i63
  %.mux.le.i76 = select i1 %_14.i.i67, i8 1, i8 3
  br label %bb2.i

bb9thread-pre-split.i130:                         ; preds = %bb5
  %.pr.i131 = load i8, ptr %_20.i137223, align 1, !alias.scope !1142
  br label %bb9.i54

bb9.i54:                                          ; preds = %bb9thread-pre-split.i130, %bb7.i50
  %43 = phi i8 [ %.pr.i131, %bb9thread-pre-split.i130 ], [ %42, %bb7.i50 ]
  switch i8 %43, label %bb64.i95 [
    i8 43, label %bb11.i92
    i8 45, label %bb10.i55
  ]

bb11.i92:                                         ; preds = %bb9.i54
  %rest.0.i93 = getelementptr inbounds nuw i8, ptr %_20.i137223, i64 1
  %rest.1.i94 = add nsw i64 %len.i156, -1
  br label %bb64.i95

bb10.i55:                                         ; preds = %bb9.i54
  %rest.03.i56 = getelementptr inbounds nuw i8, ptr %_20.i137223, i64 1
  %rest.14.i57 = add nsw i64 %len.i156, -1
  %44 = icmp samesign ult i64 %len.i156, 9
  br i1 %44, label %bb19.preheader.i79, label %bb33.i58

bb19.preheader.i79:                               ; preds = %bb10.i55
  %_29.not98.i80 = icmp eq i64 %rest.14.i57, 0
  br i1 %_29.not98.i80, label %bb6, label %bb20.i81

bb33.i58:                                         ; preds = %bb10.i55, %bb39.i69
  %result.sroa.0.0.i59 = phi i32 [ %_89.0.i74, %bb39.i69 ], [ 0, %bb10.i55 ]
  %src.sroa.26.1.i60 = phi i64 [ %rest.16.i71, %bb39.i69 ], [ %rest.14.i57, %bb10.i55 ]
  %src.sroa.0.1.i61 = phi ptr [ %rest.05.i72, %bb39.i69 ], [ %rest.03.i56, %bb10.i55 ]
  %_57.not.i62 = icmp eq i64 %src.sroa.26.1.i60, 0
  br i1 %_57.not.i62, label %bb6, label %bb34.i63

bb34.i63:                                         ; preds = %bb33.i58
  %45 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %result.sroa.0.0.i59, i32 10)
  %_85.1.i64 = extractvalue { i32, i1 } %45, 1
  %_65.i65 = load i8, ptr %src.sroa.0.1.i61, align 1, !alias.scope !1142, !noundef !3
  %_64.i66 = zext i8 %_65.i65 to i32
  %46 = add nsw i32 %_64.i66, -48
  %_14.i.i67 = icmp ugt i32 %46, 9
  %brmerge.i68 = select i1 %_14.i.i67, i1 true, i1 %_85.1.i64
  br i1 %brmerge.i68, label %bb46.loopexit90.split.loop.exit.i75, label %bb39.i69

bb39.i69:                                         ; preds = %bb34.i63
  %_85.0.i70 = extractvalue { i32, i1 } %45, 0
  %rest.16.i71 = add nsw i64 %src.sroa.26.1.i60, -1
  %rest.05.i72 = getelementptr inbounds nuw i8, ptr %src.sroa.0.1.i61, i64 1
  %47 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_85.0.i70, i32 %46)
  %_89.1.i73 = extractvalue { i32, i1 } %47, 1
  %_89.0.i74 = extractvalue { i32, i1 } %47, 0
  br i1 %_89.1.i73, label %bb2.i, label %bb33.i58

bb20.i81:                                         ; preds = %bb19.preheader.i79, %bb23.i88
  %src.sroa.0.2101.i82 = phi ptr [ %rest.08.i90, %bb23.i88 ], [ %rest.03.i56, %bb19.preheader.i79 ]
  %src.sroa.26.2100.i83 = phi i64 [ %rest.19.i89, %bb23.i88 ], [ %rest.14.i57, %bb19.preheader.i79 ]
  %result.sroa.0.299.i84 = phi i32 [ %50, %bb23.i88 ], [ 0, %bb19.preheader.i79 ]
  %_36.i85 = load i8, ptr %src.sroa.0.2101.i82, align 1, !alias.scope !1142, !noundef !3
  %_35.i86 = zext i8 %_36.i85 to i32
  %48 = add nsw i32 %_35.i86, -48
  %_14.i79.i87 = icmp ult i32 %48, 10
  br i1 %_14.i79.i87, label %bb23.i88, label %bb2.i

bb23.i88:                                         ; preds = %bb20.i81
  %49 = mul i32 %result.sroa.0.299.i84, 10
  %rest.19.i89 = add nsw i64 %src.sroa.26.2100.i83, -1
  %rest.08.i90 = getelementptr inbounds nuw i8, ptr %src.sroa.0.2101.i82, i64 1
  %50 = sub i32 %49, %48
  %_29.not.i91 = icmp eq i64 %rest.19.i89, 0
  br i1 %_29.not.i91, label %bb6, label %bb20.i81

bb64.i95:                                         ; preds = %bb11.i92, %bb9.i54
  %src.sroa.26.0.i96 = phi i64 [ %rest.1.i94, %bb11.i92 ], [ %len.i156, %bb9.i54 ]
  %src.sroa.0.0.i97 = phi ptr [ %rest.0.i93, %bb11.i92 ], [ %_20.i137223, %bb9.i54 ]
  %51 = icmp samesign ult i64 %src.sroa.26.0.i96, 8
  br i1 %51, label %bb13.preheader.i117, label %bb24.i98

bb13.preheader.i117:                              ; preds = %bb64.i95
  %_16.not104.i118 = icmp eq i64 %src.sroa.26.0.i96, 0
  br i1 %_16.not104.i118, label %bb6, label %bb14.i119

bb24.i98:                                         ; preds = %bb64.i95, %bb30.i109
  %result.sroa.0.3.i99 = phi i32 [ %_81.0.i114, %bb30.i109 ], [ 0, %bb64.i95 ]
  %src.sroa.26.3.i100 = phi i64 [ %rest.112.i111, %bb30.i109 ], [ %src.sroa.26.0.i96, %bb64.i95 ]
  %src.sroa.0.3.i101 = phi ptr [ %rest.011.i112, %bb30.i109 ], [ %src.sroa.0.0.i97, %bb64.i95 ]
  %_42.not.i102 = icmp eq i64 %src.sroa.26.3.i100, 0
  br i1 %_42.not.i102, label %bb6, label %bb25.i103

bb25.i103:                                        ; preds = %bb24.i98
  %52 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %result.sroa.0.3.i99, i32 10)
  %_77.1.i104 = extractvalue { i32, i1 } %52, 1
  %_50.i105 = load i8, ptr %src.sroa.0.3.i101, align 1, !alias.scope !1142, !noundef !3
  %_49.i106 = zext i8 %_50.i105 to i32
  %53 = add nsw i32 %_49.i106, -48
  %_14.i81.i107 = icmp ugt i32 %53, 9
  %brmerge77.i108 = select i1 %_14.i81.i107, i1 true, i1 %_77.1.i104
  br i1 %brmerge77.i108, label %bb46.loopexit86.split.loop.exit.i115, label %bb30.i109

bb30.i109:                                        ; preds = %bb25.i103
  %_77.0.i110 = extractvalue { i32, i1 } %52, 0
  %rest.112.i111 = add nsw i64 %src.sroa.26.3.i100, -1
  %rest.011.i112 = getelementptr inbounds nuw i8, ptr %src.sroa.0.3.i101, i64 1
  %54 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_77.0.i110, i32 %53)
  %_81.1.i113 = extractvalue { i32, i1 } %54, 1
  %_81.0.i114 = extractvalue { i32, i1 } %54, 0
  br i1 %_81.1.i113, label %bb2.i, label %bb24.i98

bb14.i119:                                        ; preds = %bb13.preheader.i117
  %_23.i123 = load i8, ptr %src.sroa.0.0.i97, align 1, !alias.scope !1142, !noundef !3
  %_22.i124 = zext i8 %_23.i123 to i32
  %55 = add nsw i32 %_22.i124, -48
  %_14.i83.i125 = icmp ult i32 %55, 10
  br i1 %_14.i83.i125, label %bb18.i126, label %bb2.i

bb18.i126:                                        ; preds = %bb14.i119
  %_16.not.i129 = icmp eq i64 %src.sroa.26.0.i96, 1
  br i1 %_16.not.i129, label %bb6, label %bb14.i119.1

bb14.i119.1:                                      ; preds = %bb18.i126
  %rest.015.i128 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i97, i64 1
  %_23.i123.1 = load i8, ptr %rest.015.i128, align 1, !alias.scope !1142, !noundef !3
  %_22.i124.1 = zext i8 %_23.i123.1 to i32
  %56 = add nsw i32 %_22.i124.1, -48
  %_14.i83.i125.1 = icmp ult i32 %56, 10
  br i1 %_14.i83.i125.1, label %bb18.i126.1, label %bb2.i

bb18.i126.1:                                      ; preds = %bb14.i119.1
  %57 = mul nuw nsw i32 %55, 10
  %58 = add nuw nsw i32 %56, %57
  %_16.not.i129.1 = icmp eq i64 %src.sroa.26.0.i96, 2
  br i1 %_16.not.i129.1, label %bb6, label %bb14.i119.2

bb14.i119.2:                                      ; preds = %bb18.i126.1
  %rest.015.i128.1 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i97, i64 2
  %_23.i123.2 = load i8, ptr %rest.015.i128.1, align 1, !alias.scope !1142, !noundef !3
  %_22.i124.2 = zext i8 %_23.i123.2 to i32
  %59 = add nsw i32 %_22.i124.2, -48
  %_14.i83.i125.2 = icmp ult i32 %59, 10
  br i1 %_14.i83.i125.2, label %bb18.i126.2, label %bb2.i

bb18.i126.2:                                      ; preds = %bb14.i119.2
  %60 = mul nuw nsw i32 %58, 10
  %61 = add nuw nsw i32 %59, %60
  %_16.not.i129.2 = icmp eq i64 %src.sroa.26.0.i96, 3
  br i1 %_16.not.i129.2, label %bb6, label %bb14.i119.3

bb14.i119.3:                                      ; preds = %bb18.i126.2
  %rest.015.i128.2 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i97, i64 3
  %_23.i123.3 = load i8, ptr %rest.015.i128.2, align 1, !alias.scope !1142, !noundef !3
  %_22.i124.3 = zext i8 %_23.i123.3 to i32
  %62 = add nsw i32 %_22.i124.3, -48
  %_14.i83.i125.3 = icmp ult i32 %62, 10
  br i1 %_14.i83.i125.3, label %bb18.i126.3, label %bb2.i

bb18.i126.3:                                      ; preds = %bb14.i119.3
  %63 = mul nuw nsw i32 %61, 10
  %64 = add nuw nsw i32 %62, %63
  %_16.not.i129.3 = icmp eq i64 %src.sroa.26.0.i96, 4
  br i1 %_16.not.i129.3, label %bb6, label %bb14.i119.4

bb14.i119.4:                                      ; preds = %bb18.i126.3
  %rest.015.i128.3 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i97, i64 4
  %_23.i123.4 = load i8, ptr %rest.015.i128.3, align 1, !alias.scope !1142, !noundef !3
  %_22.i124.4 = zext i8 %_23.i123.4 to i32
  %65 = add nsw i32 %_22.i124.4, -48
  %_14.i83.i125.4 = icmp ult i32 %65, 10
  br i1 %_14.i83.i125.4, label %bb18.i126.4, label %bb2.i

bb18.i126.4:                                      ; preds = %bb14.i119.4
  %66 = mul i32 %64, 10
  %67 = add i32 %65, %66
  %_16.not.i129.4 = icmp eq i64 %src.sroa.26.0.i96, 5
  br i1 %_16.not.i129.4, label %bb6, label %bb14.i119.5

bb14.i119.5:                                      ; preds = %bb18.i126.4
  %rest.015.i128.4 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i97, i64 5
  %_23.i123.5 = load i8, ptr %rest.015.i128.4, align 1, !alias.scope !1142, !noundef !3
  %_22.i124.5 = zext i8 %_23.i123.5 to i32
  %68 = add nsw i32 %_22.i124.5, -48
  %_14.i83.i125.5 = icmp ult i32 %68, 10
  br i1 %_14.i83.i125.5, label %bb18.i126.5, label %bb2.i

bb18.i126.5:                                      ; preds = %bb14.i119.5
  %69 = mul i32 %67, 10
  %70 = add i32 %68, %69
  %_16.not.i129.5 = icmp eq i64 %src.sroa.26.0.i96, 6
  br i1 %_16.not.i129.5, label %bb6, label %bb14.i119.6

bb14.i119.6:                                      ; preds = %bb18.i126.5
  %rest.015.i128.5 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i97, i64 6
  %_23.i123.6 = load i8, ptr %rest.015.i128.5, align 1, !alias.scope !1142, !noundef !3
  %_22.i124.6 = zext i8 %_23.i123.6 to i32
  %71 = add nsw i32 %_22.i124.6, -48
  %_14.i83.i125.6 = icmp ult i32 %71, 10
  br i1 %_14.i83.i125.6, label %bb18.i126.6, label %bb2.i

bb18.i126.6:                                      ; preds = %bb14.i119.6
  %72 = mul i32 %70, 10
  %73 = add i32 %71, %72
  br label %bb6

bb26:                                             ; preds = %bb24
  br i1 %_8, label %bb3.i133, label %bb5

bb3.i133:                                         ; preds = %bb26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1145)
  %_14.i = icmp sgt i64 %len.i156, -1
  tail call void @llvm.assume(i1 %_14.i)
  %_17.i = icmp samesign ult i32 %_0.sroa.4.0.i.ph, 2048
  br i1 %_17.i, label %bb2.i135, label %bb4.i134

bb4.i134:                                         ; preds = %bb3.i133
  %_18.i = icmp samesign ult i32 %_0.sroa.4.0.i.ph, 65536
  %..i = select i1 %_18.i, i64 3, i64 4
  br label %bb2.i135

bb2.i135:                                         ; preds = %bb3.thread, %bb4.i134, %bb3.i133
  %ch_len.sroa.0.0.i = phi i64 [ %..i, %bb4.i134 ], [ 2, %bb3.i133 ], [ 1, %bb3.thread ]
  %self2.i.i = load i64, ptr %temp, align 8, !range !1038, !alias.scope !1148, !noundef !3
  %_9.i.i = sub nsw i64 %self2.i.i, %len.i156
  %_7.i.i136 = icmp ugt i64 %ch_len.sroa.0.0.i, %_9.i.i
  br i1 %_7.i.i136, label %bb1.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4fb7e28266d34689E.exit.i", !prof !916

bb1.i.i:                                          ; preds = %bb2.i135
; invoke alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hdb66a2bd25f90befE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %temp, i64 noundef %len.i156, i64 noundef range(i64 1, 5) %ch_len.sroa.0.0.i)
          to label %.noexc141 unwind label %bb13.loopexit

.noexc141:                                        ; preds = %bb1.i.i
  %count.pre.i = load i64, ptr %_18.sroa.4.0.temp.sroa_idx, align 8, !alias.scope !1145
  %_20.i137.pre = load ptr, ptr %_18.sroa.3.0.temp.sroa_idx, align 8, !alias.scope !1145
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4fb7e28266d34689E.exit.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4fb7e28266d34689E.exit.i": ; preds = %.noexc141, %bb2.i135
  %_20.i137 = phi ptr [ %_20.i137223, %bb2.i135 ], [ %_20.i137.pre, %.noexc141 ]
  %count.i = phi i64 [ %len.i156, %bb2.i135 ], [ %count.pre.i, %.noexc141 ]
  %_21.i138 = icmp sgt i64 %count.i, -1
  tail call void @llvm.assume(i1 %_21.i138)
  %_8.i = getelementptr inbounds nuw i8, ptr %_20.i137, i64 %count.i
  br i1 %or.cond, label %bb12.i.i, label %bb7.i.i

bb7.i.i:                                          ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4fb7e28266d34689E.exit.i"
  %_29.i.i = icmp samesign ult i32 %_0.sroa.4.0.i.ph, 2048
  %74 = trunc i32 %_0.sroa.4.0.i.ph to i8
  %_5.i.i = and i8 %74, 63
  %last1.i.i = or disjoint i8 %_5.i.i, -128
  %_10.i.i = lshr i32 %_0.sroa.4.0.i.ph, 6
  %75 = trunc i32 %_10.i.i to i8
  %_8.i.i = and i8 %75, 63
  %last2.i.i = or disjoint i8 %_8.i.i, -128
  %_14.i.i139 = lshr i32 %_0.sroa.4.0.i.ph, 12
  %76 = trunc i32 %_14.i.i139 to i8
  %_12.i.i = and i8 %76, 63
  %last3.i.i = or disjoint i8 %_12.i.i, -128
  %_18.i.i140 = lshr i32 %_0.sroa.4.0.i.ph, 18
  %_16.i.i = trunc nuw nsw i32 %_18.i.i140 to i8
  %last4.i.i = or disjoint i8 %_16.i.i, -16
  br i1 %_29.i.i, label %bb1.i2.i, label %bb2.i.i

bb12.i.i:                                         ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4fb7e28266d34689E.exit.i"
  %77 = trunc nuw nsw i32 %_0.sroa.4.0.i.ph to i8
  store i8 %77, ptr %_8.i, align 1, !noalias !1145
  br label %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit

bb2.i.i:                                          ; preds = %bb7.i.i
  %_30.i.i = icmp samesign ult i32 %_0.sroa.4.0.i.ph, 65536
  br i1 %_30.i.i, label %bb3.i.i, label %bb4.i.i

bb1.i2.i:                                         ; preds = %bb7.i.i
  %78 = or disjoint i8 %75, -64
  store i8 %78, ptr %_8.i, align 1, !noalias !1145
  %_21.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 1
  store i8 %last1.i.i, ptr %_21.i.i, align 1, !noalias !1145
  br label %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit

bb4.i.i:                                          ; preds = %bb2.i.i
  store i8 %last4.i.i, ptr %_8.i, align 1, !noalias !1145
  %_25.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 1
  store i8 %last3.i.i, ptr %_25.i.i, align 1, !noalias !1145
  %_26.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 2
  store i8 %last2.i.i, ptr %_26.i.i, align 1, !noalias !1145
  %_27.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 3
  store i8 %last1.i.i, ptr %_27.i.i, align 1, !noalias !1145
  br label %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit

bb3.i.i:                                          ; preds = %bb2.i.i
  %79 = or disjoint i8 %76, -32
  store i8 %79, ptr %_8.i, align 1, !noalias !1145
  %_23.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 1
  store i8 %last2.i.i, ptr %_23.i.i, align 1, !noalias !1145
  %_24.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 2
  store i8 %last1.i.i, ptr %_24.i.i, align 1, !noalias !1145
  br label %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit

_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit: ; preds = %bb12.i.i, %bb1.i2.i, %bb4.i.i, %bb3.i.i
  %new_len.i = add nuw i64 %ch_len.sroa.0.0.i, %len.i156
  br label %bb9

bb2.i:                                            ; preds = %bb5, %bb7.i50, %bb7.i50, %bb39.i69, %bb20.i81, %bb30.i109, %bb14.i119, %bb14.i119.1, %bb14.i119.2, %bb14.i119.3, %bb14.i119.4, %bb14.i119.5, %bb14.i119.6, %bb46.loopexit86.split.loop.exit.i115, %bb46.loopexit90.split.loop.exit.i75
  %_0.sroa.12.0.insert.insert.i52.ph = phi i8 [ %.mux.le.i76, %bb46.loopexit90.split.loop.exit.i75 ], [ %.mux78.le.i116, %bb46.loopexit86.split.loop.exit.i115 ], [ 1, %bb14.i119.6 ], [ 1, %bb14.i119.5 ], [ 1, %bb14.i119.4 ], [ 1, %bb14.i119.3 ], [ 1, %bb14.i119.2 ], [ 1, %bb14.i119.1 ], [ 1, %bb14.i119 ], [ 2, %bb30.i109 ], [ 1, %bb20.i81 ], [ 3, %bb39.i69 ], [ 0, %bb5 ], [ 1, %bb7.i50 ], [ 1, %bb7.i50 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %e.i), !noalias !1151
  store i8 %_0.sroa.12.0.insert.insert.i52.ph, ptr %e.i, align 1, !noalias !1151
  br label %bb2.i26.invoke

bb6:                                              ; preds = %bb33.i58, %bb23.i88, %bb24.i98, %bb18.i126, %bb18.i126.1, %bb18.i126.2, %bb18.i126.3, %bb18.i126.4, %bb18.i126.5, %bb18.i126.6, %bb13.preheader.i117, %bb19.preheader.i79
  %result.sroa.0.1.i78 = phi i32 [ 0, %bb13.preheader.i117 ], [ 0, %bb19.preheader.i79 ], [ %55, %bb18.i126 ], [ %58, %bb18.i126.1 ], [ %61, %bb18.i126.2 ], [ %64, %bb18.i126.3 ], [ %67, %bb18.i126.4 ], [ %70, %bb18.i126.5 ], [ %73, %bb18.i126.6 ], [ %result.sroa.0.3.i99, %bb24.i98 ], [ %50, %bb23.i88 ], [ %result.sroa.0.0.i59, %bb33.i58 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1166)
  %self1.i.i.i.i1.i.i142 = load i64, ptr %temp, align 8, !range !1038, !alias.scope !1169, !noalias !1172, !noundef !3
  %_6.i.i.i.i2.i.i143 = icmp eq i64 %self1.i.i.i.i1.i.i142, 0
  br i1 %_6.i.i.i.i2.i.i143, label %bb7, label %bb2.i.i.i3.i.i144

bb2.i.i.i3.i.i144:                                ; preds = %bb6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_20.i137223, i64 noundef %self1.i.i.i.i1.i.i142, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !1174
  br label %bb7

bb7:                                              ; preds = %bb2.i.i.i3.i.i144, %bb6
  %80 = add i32 %sum.sroa.0.0192, %result.sroa.0.1.i78
  store i64 0, ptr %temp, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %_18.sroa.3.0.temp.sroa_idx, align 8
  br label %bb9

bb9:                                              ; preds = %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit, %bb7
  %_20.i137224 = phi ptr [ inttoptr (i64 1 to ptr), %bb7 ], [ %_20.i137, %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit ]
  %storemerge = phi i64 [ 0, %bb7 ], [ %new_len.i, %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit ]
  %sum.sroa.0.1 = phi i32 [ %80, %bb7 ], [ %sum.sroa.0.0192, %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit ]
  store i64 %storemerge, ptr %_18.sroa.4.0.temp.sroa_idx, align 8
  %_7.i.i = icmp eq ptr %iter.sroa.0.1.ph, %_29
  br i1 %_7.i.i, label %bb17, label %bb14.i

bb15:                                             ; preds = %bb2.i.i.i3.i.i42, %bb14
  resume { ptr, i32 } %lpad.phi
}
