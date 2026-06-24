define void @f_gold(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %number, i32 noundef %divisor) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_4.i3.i.i = alloca [24 x i8], align 8
  %_4.i.i.i = alloca [24 x i8], align 8
  %out.i.i = alloca [24 x i8], align 8
  %buf.i.i = alloca [10 x i8], align 1
  %_29 = alloca [24 x i8], align 8
  %ans = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ans)
  store i64 0, ptr %ans, align 8, !alias.scope !1630
  %_1.sroa.4.0._0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ans, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %_1.sroa.4.0._0.sroa_idx.i, align 8, !alias.scope !1630
  %_1.sroa.5.0._0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ans, i64 16
  store i64 0, ptr %_1.sroa.5.0._0.sroa_idx.i, align 8, !alias.scope !1630
  %0 = getelementptr inbounds nuw i8, ptr %number, i64 8
  %_8.i = load ptr, ptr %0, align 8, !alias.scope !1633, !noalias !1636, !nonnull !37, !noundef !37
  %1 = getelementptr inbounds nuw i8, ptr %number, i64 16
  %len.i = load i64, ptr %1, align 8, !alias.scope !1633, !noalias !1636, !noundef !37
  %_4.i3.i.i.sink317.sroa.gep = getelementptr inbounds nuw i8, ptr %_4.i3.i.i, i64 8
  %_4.i3.i.i.sink317.sroa.gep341 = getelementptr inbounds nuw i8, ptr %_4.i.i.i, i64 8
  %_4.i3.i.i.sink317.sroa.gep343 = getelementptr inbounds nuw i8, ptr %_4.i3.i.i, i64 16
  %_4.i3.i.i.sink317.sroa.gep344 = getelementptr inbounds nuw i8, ptr %_4.i.i.i, i64 16
  switch i64 %len.i, label %bb9.i.i.i [
    i64 0, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit"
    i64 1, label %bb7.i.i.i
  ]

bb34:                                             ; preds = %bb33
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb6e5c75831de1101E"(ptr noalias noundef align 8 dereferenceable(24) %number) #27
          to label %common.resume unwind label %terminate

bb33:                                             ; preds = %cleanup1.loopexit, %cleanup1.loopexit.split-lp, %cleanup.i.i42, %cleanup.i.i36, %bb7.i.i, %cleanup3
  %.pn = phi { ptr, i32 } [ %55, %cleanup3 ], [ %lpad.phi, %bb7.i.i ], [ %lpad.phi, %cleanup.i.i36 ], [ %56, %cleanup.i.i42 ], [ %lpad.loopexit247, %cleanup1.loopexit ], [ %lpad.loopexit.split-lp248, %cleanup1.loopexit.split-lp ]
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb6e5c75831de1101E"(ptr noalias noundef align 8 dereferenceable(24) %ans) #27
          to label %bb34 unwind label %terminate

cleanup1.loopexit:                                ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hb264b7763056fae8E.exit.i"
  %lpad.loopexit247 = landingpad { ptr, i32 }
          cleanup
  br label %bb33

cleanup1.loopexit.split-lp:                       ; preds = %bb3.i.i.invoke, %panic, %panic2, %bb27
  %lpad.loopexit.split-lp248 = landingpad { ptr, i32 }
          cleanup
  br label %bb33

bb6.i.i.i:                                        ; preds = %bb7.i.i.i
  %_8.not.i.i.i = icmp eq i64 %len.i, 0
  br i1 %_8.not.i.i.i, label %bb64.i.i.i, label %bb9.i.i.i

bb7.i.i.i:                                        ; preds = %start
  %2 = load i8, ptr %_8.i, align 1, !alias.scope !1638, !noundef !37
  switch i8 %2, label %bb6.i.i.i [
    i8 43, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit"
    i8 45, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit"
  ]

bb9.i.i.i:                                        ; preds = %bb6.i.i.i, %start
  %3 = load i8, ptr %_8.i, align 1, !alias.scope !1638, !noundef !37
  switch i8 %3, label %bb64.i.i.i [
    i8 43, label %bb11.i.i.i
    i8 45, label %bb10.i.i.i
  ]

bb11.i.i.i:                                       ; preds = %bb9.i.i.i
  %rest.0.i.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 1
  %rest.1.i.i.i = add nsw i64 %len.i, -1
  br label %bb64.i.i.i

bb10.i.i.i:                                       ; preds = %bb9.i.i.i
  %rest.03.i.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 1
  %rest.14.i.i.i = add nsw i64 %len.i, -1
  %4 = icmp samesign ult i64 %len.i, 9
  br i1 %4, label %bb19.preheader.i.i.i, label %bb33.i.i.i

bb19.preheader.i.i.i:                             ; preds = %bb10.i.i.i
  %_29.not98.i.i.i = icmp eq i64 %rest.14.i.i.i, 0
  br i1 %_29.not98.i.i.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit", label %bb20.i.i.i

bb33.i.i.i:                                       ; preds = %bb10.i.i.i, %bb39.i.i.i
  %result.sroa.0.0.i.i.i = phi i32 [ %_89.0.i.i.i, %bb39.i.i.i ], [ 0, %bb10.i.i.i ]
  %src.sroa.26.1.i.i.i = phi i64 [ %rest.16.i.i.i, %bb39.i.i.i ], [ %rest.14.i.i.i, %bb10.i.i.i ]
  %src.sroa.0.1.i.i.i = phi ptr [ %rest.05.i.i.i, %bb39.i.i.i ], [ %rest.03.i.i.i, %bb10.i.i.i ]
  %_57.not.i.i.i = icmp eq i64 %src.sroa.26.1.i.i.i, 0
  br i1 %_57.not.i.i.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit", label %bb34.i.i.i

bb34.i.i.i:                                       ; preds = %bb33.i.i.i
  %5 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %result.sroa.0.0.i.i.i, i32 10)
  %_85.1.i.i.i = extractvalue { i32, i1 } %5, 1
  %_65.i.i.i = load i8, ptr %src.sroa.0.1.i.i.i, align 1, !alias.scope !1638, !noundef !37
  %_64.i.i.i = zext i8 %_65.i.i.i to i32
  %6 = add nsw i32 %_64.i.i.i, -48
  %_14.i.i.i.i = icmp ugt i32 %6, 9
  %brmerge.i.i.i = select i1 %_14.i.i.i.i, i1 true, i1 %_85.1.i.i.i
  br i1 %brmerge.i.i.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit", label %bb39.i.i.i

bb39.i.i.i:                                       ; preds = %bb34.i.i.i
  %_85.0.i.i.i = extractvalue { i32, i1 } %5, 0
  %rest.16.i.i.i = add nsw i64 %src.sroa.26.1.i.i.i, -1
  %rest.05.i.i.i = getelementptr inbounds nuw i8, ptr %src.sroa.0.1.i.i.i, i64 1
  %7 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_85.0.i.i.i, i32 %6)
  %_89.1.i.i.i = extractvalue { i32, i1 } %7, 1
  %_89.0.i.i.i = extractvalue { i32, i1 } %7, 0
  br i1 %_89.1.i.i.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit", label %bb33.i.i.i

bb20.i.i.i:                                       ; preds = %bb19.preheader.i.i.i, %bb23.i.i.i
  %src.sroa.0.2101.i.i.i = phi ptr [ %rest.08.i.i.i, %bb23.i.i.i ], [ %rest.03.i.i.i, %bb19.preheader.i.i.i ]
  %src.sroa.26.2100.i.i.i = phi i64 [ %rest.19.i.i.i, %bb23.i.i.i ], [ %rest.14.i.i.i, %bb19.preheader.i.i.i ]
  %result.sroa.0.299.i.i.i = phi i32 [ %10, %bb23.i.i.i ], [ 0, %bb19.preheader.i.i.i ]
  %_36.i.i.i = load i8, ptr %src.sroa.0.2101.i.i.i, align 1, !alias.scope !1638, !noundef !37
  %_35.i.i.i = zext i8 %_36.i.i.i to i32
  %8 = add nsw i32 %_35.i.i.i, -48
  %_14.i79.i.i.i = icmp ult i32 %8, 10
  br i1 %_14.i79.i.i.i, label %bb23.i.i.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit"

bb23.i.i.i:                                       ; preds = %bb20.i.i.i
  %9 = mul i32 %result.sroa.0.299.i.i.i, 10
  %rest.19.i.i.i = add nsw i64 %src.sroa.26.2100.i.i.i, -1
  %rest.08.i.i.i = getelementptr inbounds nuw i8, ptr %src.sroa.0.2101.i.i.i, i64 1
  %10 = sub i32 %9, %8
  %_29.not.i.i.i = icmp eq i64 %rest.19.i.i.i, 0
  br i1 %_29.not.i.i.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit", label %bb20.i.i.i

bb64.i.i.i:                                       ; preds = %bb11.i.i.i, %bb9.i.i.i, %bb6.i.i.i
  %src.sroa.26.0.i.i.i = phi i64 [ %rest.1.i.i.i, %bb11.i.i.i ], [ %len.i, %bb9.i.i.i ], [ %len.i, %bb6.i.i.i ]
  %src.sroa.0.0.i.i.i = phi ptr [ %rest.0.i.i.i, %bb11.i.i.i ], [ %_8.i, %bb9.i.i.i ], [ %_8.i, %bb6.i.i.i ]
  %11 = icmp ult i64 %src.sroa.26.0.i.i.i, 8
  br i1 %11, label %bb13.preheader.i.i.i, label %bb24.i.i.i

bb13.preheader.i.i.i:                             ; preds = %bb64.i.i.i
  %_16.not104.i.i.i = icmp eq i64 %src.sroa.26.0.i.i.i, 0
  br i1 %_16.not104.i.i.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit", label %bb14.i.i.i

bb24.i.i.i:                                       ; preds = %bb64.i.i.i, %bb30.i.i.i
  %result.sroa.0.3.i.i.i = phi i32 [ %_81.0.i.i.i, %bb30.i.i.i ], [ 0, %bb64.i.i.i ]
  %src.sroa.26.3.i.i.i = phi i64 [ %rest.112.i.i.i, %bb30.i.i.i ], [ %src.sroa.26.0.i.i.i, %bb64.i.i.i ]
  %src.sroa.0.3.i.i.i = phi ptr [ %rest.011.i.i.i, %bb30.i.i.i ], [ %src.sroa.0.0.i.i.i, %bb64.i.i.i ]
  %_42.not.i.i.i = icmp eq i64 %src.sroa.26.3.i.i.i, 0
  br i1 %_42.not.i.i.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit", label %bb25.i.i.i

bb25.i.i.i:                                       ; preds = %bb24.i.i.i
  %12 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %result.sroa.0.3.i.i.i, i32 10)
  %_77.1.i.i.i = extractvalue { i32, i1 } %12, 1
  %_50.i.i.i = load i8, ptr %src.sroa.0.3.i.i.i, align 1, !alias.scope !1638, !noundef !37
  %_49.i.i.i = zext i8 %_50.i.i.i to i32
  %13 = add nsw i32 %_49.i.i.i, -48
  %_14.i81.i.i.i = icmp ugt i32 %13, 9
  %brmerge77.i.i.i = select i1 %_14.i81.i.i.i, i1 true, i1 %_77.1.i.i.i
  br i1 %brmerge77.i.i.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit", label %bb30.i.i.i

bb30.i.i.i:                                       ; preds = %bb25.i.i.i
  %_77.0.i.i.i = extractvalue { i32, i1 } %12, 0
  %rest.112.i.i.i = add nsw i64 %src.sroa.26.3.i.i.i, -1
  %rest.011.i.i.i = getelementptr inbounds nuw i8, ptr %src.sroa.0.3.i.i.i, i64 1
  %14 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_77.0.i.i.i, i32 %13)
  %_81.1.i.i.i = extractvalue { i32, i1 } %14, 1
  %_81.0.i.i.i = extractvalue { i32, i1 } %14, 0
  br i1 %_81.1.i.i.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit", label %bb24.i.i.i

bb14.i.i.i:                                       ; preds = %bb13.preheader.i.i.i
  %_23.i.i.i = load i8, ptr %src.sroa.0.0.i.i.i, align 1, !alias.scope !1638, !noundef !37
  %_22.i.i.i = zext i8 %_23.i.i.i to i32
  %15 = add nsw i32 %_22.i.i.i, -48
  %_14.i83.i.i.i = icmp ult i32 %15, 10
  br i1 %_14.i83.i.i.i, label %bb18.i.i.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit"

bb18.i.i.i:                                       ; preds = %bb14.i.i.i
  %_16.not.i.i.i = icmp eq i64 %src.sroa.26.0.i.i.i, 1
  br i1 %_16.not.i.i.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit", label %bb14.i.i.i.1

bb14.i.i.i.1:                                     ; preds = %bb18.i.i.i
  %rest.015.i.i.i = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i.i.i, i64 1
  %_23.i.i.i.1 = load i8, ptr %rest.015.i.i.i, align 1, !alias.scope !1638, !noundef !37
  %_22.i.i.i.1 = zext i8 %_23.i.i.i.1 to i32
  %16 = add nsw i32 %_22.i.i.i.1, -48
  %_14.i83.i.i.i.1 = icmp ult i32 %16, 10
  br i1 %_14.i83.i.i.i.1, label %bb18.i.i.i.1, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit"

bb18.i.i.i.1:                                     ; preds = %bb14.i.i.i.1
  %17 = mul nuw nsw i32 %15, 10
  %18 = add nuw nsw i32 %16, %17
  %_16.not.i.i.i.1 = icmp eq i64 %src.sroa.26.0.i.i.i, 2
  br i1 %_16.not.i.i.i.1, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit", label %bb14.i.i.i.2

bb14.i.i.i.2:                                     ; preds = %bb18.i.i.i.1
  %rest.015.i.i.i.1 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i.i.i, i64 2
  %_23.i.i.i.2 = load i8, ptr %rest.015.i.i.i.1, align 1, !alias.scope !1638, !noundef !37
  %_22.i.i.i.2 = zext i8 %_23.i.i.i.2 to i32
  %19 = add nsw i32 %_22.i.i.i.2, -48
  %_14.i83.i.i.i.2 = icmp ult i32 %19, 10
  br i1 %_14.i83.i.i.i.2, label %bb18.i.i.i.2, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit"

bb18.i.i.i.2:                                     ; preds = %bb14.i.i.i.2
  %20 = mul nuw nsw i32 %18, 10
  %21 = add nuw nsw i32 %19, %20
  %_16.not.i.i.i.2 = icmp eq i64 %src.sroa.26.0.i.i.i, 3
  br i1 %_16.not.i.i.i.2, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit", label %bb14.i.i.i.3

bb14.i.i.i.3:                                     ; preds = %bb18.i.i.i.2
  %rest.015.i.i.i.2 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i.i.i, i64 3
  %_23.i.i.i.3 = load i8, ptr %rest.015.i.i.i.2, align 1, !alias.scope !1638, !noundef !37
  %_22.i.i.i.3 = zext i8 %_23.i.i.i.3 to i32
  %22 = add nsw i32 %_22.i.i.i.3, -48
  %_14.i83.i.i.i.3 = icmp ult i32 %22, 10
  br i1 %_14.i83.i.i.i.3, label %bb18.i.i.i.3, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit"

bb18.i.i.i.3:                                     ; preds = %bb14.i.i.i.3
  %23 = mul nuw nsw i32 %21, 10
  %24 = add nuw nsw i32 %22, %23
  %_16.not.i.i.i.3 = icmp eq i64 %src.sroa.26.0.i.i.i, 4
  br i1 %_16.not.i.i.i.3, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit", label %bb14.i.i.i.4

bb14.i.i.i.4:                                     ; preds = %bb18.i.i.i.3
  %rest.015.i.i.i.3 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i.i.i, i64 4
  %_23.i.i.i.4 = load i8, ptr %rest.015.i.i.i.3, align 1, !alias.scope !1638, !noundef !37
  %_22.i.i.i.4 = zext i8 %_23.i.i.i.4 to i32
  %25 = add nsw i32 %_22.i.i.i.4, -48
  %_14.i83.i.i.i.4 = icmp ult i32 %25, 10
  br i1 %_14.i83.i.i.i.4, label %bb18.i.i.i.4, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit"

bb18.i.i.i.4:                                     ; preds = %bb14.i.i.i.4
  %26 = mul i32 %24, 10
  %27 = add i32 %25, %26
  %_16.not.i.i.i.4 = icmp eq i64 %src.sroa.26.0.i.i.i, 5
  br i1 %_16.not.i.i.i.4, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit", label %bb14.i.i.i.5

bb14.i.i.i.5:                                     ; preds = %bb18.i.i.i.4
  %rest.015.i.i.i.4 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i.i.i, i64 5
  %_23.i.i.i.5 = load i8, ptr %rest.015.i.i.i.4, align 1, !alias.scope !1638, !noundef !37
  %_22.i.i.i.5 = zext i8 %_23.i.i.i.5 to i32
  %28 = add nsw i32 %_22.i.i.i.5, -48
  %_14.i83.i.i.i.5 = icmp ult i32 %28, 10
  br i1 %_14.i83.i.i.i.5, label %bb18.i.i.i.5, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit"

bb18.i.i.i.5:                                     ; preds = %bb14.i.i.i.5
  %29 = mul i32 %27, 10
  %30 = add i32 %28, %29
  %_16.not.i.i.i.5 = icmp eq i64 %src.sroa.26.0.i.i.i, 6
  br i1 %_16.not.i.i.i.5, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit", label %bb14.i.i.i.6

bb14.i.i.i.6:                                     ; preds = %bb18.i.i.i.5
  %rest.015.i.i.i.5 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i.i.i, i64 6
  %_23.i.i.i.6 = load i8, ptr %rest.015.i.i.i.5, align 1, !alias.scope !1638, !noundef !37
  %_22.i.i.i.6 = zext i8 %_23.i.i.i.6 to i32
  %31 = add nsw i32 %_22.i.i.i.6, -48
  %_14.i83.i.i.i.6 = icmp ult i32 %31, 10
  br i1 %_14.i83.i.i.i.6, label %bb18.i.i.i.6, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit"

bb18.i.i.i.6:                                     ; preds = %bb14.i.i.i.6
  %32 = mul i32 %30, 10
  %33 = add i32 %31, %32
  br label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit"

"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit": ; preds = %bb33.i.i.i, %bb34.i.i.i, %bb39.i.i.i, %bb23.i.i.i, %bb20.i.i.i, %bb24.i.i.i, %bb25.i.i.i, %bb30.i.i.i, %bb18.i.i.i, %bb14.i.i.i, %bb14.i.i.i.1, %bb18.i.i.i.1, %bb14.i.i.i.2, %bb18.i.i.i.2, %bb14.i.i.i.3, %bb18.i.i.i.3, %bb14.i.i.i.4, %bb18.i.i.i.4, %bb14.i.i.i.5, %bb18.i.i.i.5, %bb14.i.i.i.6, %bb18.i.i.i.6, %bb19.preheader.i.i.i, %bb13.preheader.i.i.i, %start, %bb7.i.i.i, %bb7.i.i.i
  %_0.sroa.0.0.i.i.i = phi i32 [ 0, %start ], [ 0, %bb7.i.i.i ], [ 0, %bb7.i.i.i ], [ 0, %bb13.preheader.i.i.i ], [ 0, %bb19.preheader.i.i.i ], [ 0, %bb14.i.i.i ], [ %15, %bb18.i.i.i ], [ 0, %bb14.i.i.i.1 ], [ %18, %bb18.i.i.i.1 ], [ 0, %bb14.i.i.i.2 ], [ %21, %bb18.i.i.i.2 ], [ 0, %bb14.i.i.i.3 ], [ %24, %bb18.i.i.i.3 ], [ 0, %bb14.i.i.i.4 ], [ %27, %bb18.i.i.i.4 ], [ 0, %bb14.i.i.i.5 ], [ %30, %bb18.i.i.i.5 ], [ 0, %bb14.i.i.i.6 ], [ %33, %bb18.i.i.i.6 ], [ 0, %bb30.i.i.i ], [ 0, %bb25.i.i.i ], [ %result.sroa.0.3.i.i.i, %bb24.i.i.i ], [ 0, %bb20.i.i.i ], [ %10, %bb23.i.i.i ], [ 0, %bb39.i.i.i ], [ 0, %bb34.i.i.i ], [ %result.sroa.0.0.i.i.i, %bb33.i.i.i ]
  %_11264 = icmp slt i32 %_0.sroa.0.0.i.i.i, %divisor
  br i1 %_11264, label %bb6, label %bb11.preheader

bb11.preheader:                                   ; preds = %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit237", %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit"
  %temp.sroa.0.0.lcssa = phi i32 [ %_0.sroa.0.0.i.i.i, %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit" ], [ %127, %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit237" ]
  %idx.sroa.0.0.lcssa = phi i64 [ 0, %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit" ], [ %_19, %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit237" ]
  %_0.i268 = load i64, ptr %1, align 8, !alias.scope !1645, !noundef !37
  %_2.i269 = icmp sgt i64 %_0.i268, -1
  tail call void @llvm.assume(i1 %_2.i269)
  %_21270 = icmp ugt i64 %_0.i268, %idx.sroa.0.0.lcssa
  br i1 %_21270, label %bb13.lr.ph, label %bb25

bb13.lr.ph:                                       ; preds = %bb11.preheader
  %_33 = icmp eq i32 %divisor, 0
  %_34 = icmp eq i32 %divisor, -1
  %34 = getelementptr inbounds nuw i8, ptr %_4.i.i.i, i64 8
  %35 = getelementptr inbounds nuw i8, ptr %_4.i.i.i, i64 16
  %_9.sroa.4.0.out.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %out.i.i, i64 8
  %_9.sroa.5.0.out.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %out.i.i, i64 16
  %36 = getelementptr inbounds nuw i8, ptr %_4.i3.i.i, i64 8
  %37 = getelementptr inbounds nuw i8, ptr %_4.i3.i.i, i64 16
  %_6.sroa.4.0.out.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %out.i.i, i64 8
  %_6.sroa.5.0.out.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %out.i.i, i64 16
  %38 = getelementptr inbounds nuw i8, ptr %_29, i64 8
  %39 = getelementptr inbounds nuw i8, ptr %_29, i64 16
  br label %bb13

bb6:                                              ; preds = %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit", %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit237"
  %idx.sroa.0.0266 = phi i64 [ %_19, %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit237" ], [ 0, %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit" ]
  %temp.sroa.0.0265 = phi i32 [ %127, %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit237" ], [ %_0.sroa.0.0.i.i.i, %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit" ]
  %_13 = mul i32 %temp.sroa.0.0265, 10
  %_19 = add i64 %idx.sroa.0.0266, 1
  %_8.i.i.i = icmp eq i64 %_19, 0
  br i1 %_8.i.i.i, label %bb11.i.i.i31, label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb6
  %_9.not.i.i.i = icmp ult i64 %_19, %len.i
  br i1 %_9.not.i.i.i, label %bb8.i.i.i, label %bb6.i.i.i28

bb6.i.i.i28:                                      ; preds = %bb5.i.i.i
  %40 = icmp eq i64 %_19, %len.i
  br label %bb9.i.i.i29

bb8.i.i.i:                                        ; preds = %bb5.i.i.i
  %41 = getelementptr inbounds nuw i8, ptr %_8.i, i64 %_19
  %self1.i.i.i = load i8, ptr %41, align 1, !alias.scope !1648, !noalias !1653, !noundef !37
  %42 = icmp sgt i8 %self1.i.i.i, -65
  br label %bb9.i.i.i29

bb9.i.i.i29:                                      ; preds = %bb8.i.i.i, %bb6.i.i.i28
  %_3.sroa.0.0.in.i.i.i = phi i1 [ %40, %bb6.i.i.i28 ], [ %42, %bb8.i.i.i ]
  br i1 %_3.sroa.0.0.in.i.i.i, label %bb11.i.i.i31, label %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17h1fdd9f14a8016a5dE.exit.i.i"

bb11.i.i.i31:                                     ; preds = %bb9.i.i.i29, %bb6
  %new_len.i.i.i = sub nuw i64 %len.i, %_19
  %data.i.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 %_19
  br label %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17h1fdd9f14a8016a5dE.exit.i.i"

"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17h1fdd9f14a8016a5dE.exit.i.i": ; preds = %bb11.i.i.i31, %bb9.i.i.i29
  %_0.sroa.3.0.i.i.i = phi i64 [ %new_len.i.i.i, %bb11.i.i.i31 ], [ undef, %bb9.i.i.i29 ]
  %_0.sroa.0.0.i.i.i30 = phi ptr [ %data.i.i.i, %bb11.i.i.i31 ], [ null, %bb9.i.i.i29 ]
  %.not.i.i = icmp eq ptr %_0.sroa.0.0.i.i.i30, null
  br i1 %.not.i.i, label %bb3.i.i.invoke, label %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h97fc9b88dd567aa2E.exit", !prof !1033

bb3.i.i.invoke:                                   ; preds = %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17h1fdd9f14a8016a5dE.exit.i.i", %bb9.i.i.i55
  %43 = phi ptr [ %_8.i49, %bb9.i.i.i55 ], [ %_8.i, %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17h1fdd9f14a8016a5dE.exit.i.i" ]
  %44 = phi i64 [ %len.i50, %bb9.i.i.i55 ], [ %len.i, %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17h1fdd9f14a8016a5dE.exit.i.i" ]
  %45 = phi i64 [ %_46, %bb9.i.i.i55 ], [ %_19, %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17h1fdd9f14a8016a5dE.exit.i.i" ]
  %46 = phi ptr [ @alloc_266815b979d0a4a0916b4592093b14e0, %bb9.i.i.i55 ], [ @alloc_e5d9209da51091951dab14997004893c, %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17h1fdd9f14a8016a5dE.exit.i.i" ]
; invoke core::str::slice_error_fail
  invoke void @_ZN4core3str16slice_error_fail17h4678567854dd8858E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %43, i64 noundef %44, i64 noundef %45, i64 noundef %44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %46) #24
          to label %bb3.i.i.cont unwind label %cleanup1.loopexit.split-lp

bb3.i.i.cont:                                     ; preds = %bb3.i.i.invoke
  unreachable

"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h97fc9b88dd567aa2E.exit": ; preds = %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17h1fdd9f14a8016a5dE.exit.i.i"
  switch i64 %_0.sroa.3.0.i.i.i, label %bb9.i.i.i161 [
    i64 0, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit237"
    i64 1, label %bb7.i.i.i155
  ]

bb25:                                             ; preds = %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit151", %bb11.preheader
  %_2.i32 = load i64, ptr %_1.sroa.5.0._0.sroa_idx.i, align 8, !alias.scope !1658, !noundef !37
  %_3.i = icmp sgt i64 %_2.i32, -1
  call void @llvm.assume(i1 %_3.i)
  %_0.i33 = icmp eq i64 %_2.i32, 0
  br i1 %_0.i33, label %bb27, label %bb30

bb13:                                             ; preds = %bb13.lr.ph, %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit151"
  %idx.sroa.0.1272 = phi i64 [ %idx.sroa.0.0.lcssa, %bb13.lr.ph ], [ %_46, %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit151" ]
  %temp.sroa.0.1271 = phi i32 [ %temp.sroa.0.0.lcssa, %bb13.lr.ph ], [ %93, %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit151" ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_29)
  br i1 %_33, label %panic, label %bb14

bb27:                                             ; preds = %bb25
; invoke <alloc::vec::Vec<T,A> as alloc::vec::spec_extend::SpecExtend<&T,core::slice::iter::Iter<T>>>::spec_extend
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h50a987f7cf4aec42E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %ans, ptr noundef nonnull @alloc_dda1ee2b88b89b9cdac753eef7988035, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @alloc_dda1ee2b88b89b9cdac753eef7988035, i64 1))
          to label %bb30 unwind label %cleanup1.loopexit.split-lp

bb30:                                             ; preds = %bb27, %bb25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_0, ptr noundef nonnull align 8 dereferenceable(24) %ans, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ans)
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %number)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb6e5c75831de1101E.exit" unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %bb30
  %47 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %number)
          to label %common.resume unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %48 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #23
  unreachable

common.resume:                                    ; preds = %bb34, %cleanup.i.i
  %common.resume.op = phi { ptr, i32 } [ %47, %cleanup.i.i ], [ %.pn, %bb34 ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb6e5c75831de1101E.exit": ; preds = %bb30
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %number)
  ret void

bb14:                                             ; preds = %bb13
  %_35 = icmp eq i32 %temp.sroa.0.1271, -2147483648
  %_36 = and i1 %_34, %_35
  br i1 %_36, label %panic2, label %bb15

panic:                                            ; preds = %bb13
; invoke core::panicking::panic_const::panic_const_div_by_zero
  invoke void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_8bae67a9e2a83c445d61cea535f7257c) #25
          to label %unreachable unwind label %cleanup1.loopexit.split-lp

unreachable:                                      ; preds = %panic2, %panic
  unreachable

bb15:                                             ; preds = %bb14
  %49 = sdiv i32 %temp.sroa.0.1271, %divisor
  %_38 = srem i32 %temp.sroa.0.1271, %divisor
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %buf.i.i), !noalias !1661
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %out.i.i), !noalias !1661
  %_4.i.i = icmp slt i32 %49, 0
  br i1 %_4.i.i, label %bb1.i.i38, label %bb3.i.i35

bb3.i.i35:                                        ; preds = %bb15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i.i), !noalias !1661
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i.i, i64 noundef 10, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i.i unwind label %cleanup.i.i36.loopexit, !noalias !1661

.noexc.i.i:                                       ; preds = %bb3.i.i35
  %_5.i.i.i = load i64, ptr %_4.i.i.i, align 8, !range !1031, !noalias !1661, !noundef !37
  %50 = trunc nuw i64 %_5.i.i.i to i1
  br i1 %50, label %bb3.i.i.i.invoke, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hfc327d45e45f5ba0E.exit.i.i", !prof !1033

bb3.i.i.i.invoke:                                 ; preds = %.noexc.i.i, %.noexc11.i.i
  %_4.i3.i.i.sink317.sroa.phi = phi ptr [ %_4.i3.i.i.sink317.sroa.gep, %.noexc11.i.i ], [ %_4.i3.i.i.sink317.sroa.gep341, %.noexc.i.i ]
  %_4.i3.i.i.sink317.sroa.phi342 = phi ptr [ %_4.i3.i.i.sink317.sroa.gep343, %.noexc11.i.i ], [ %_4.i3.i.i.sink317.sroa.gep344, %.noexc.i.i ]
  %err.0.i9.i.i = load i64, ptr %_4.i3.i.i.sink317.sroa.phi, align 8, !range !1032, !noalias !1661, !noundef !37
  %err.1.i10.i.i = load i64, ptr %_4.i3.i.i.sink317.sroa.phi342, align 8, !noalias !1661
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i9.i.i, i64 %err.1.i10.i.i) #25
          to label %bb3.i.i.i.cont unwind label %cleanup.i.i36.loopexit.split-lp, !noalias !1661

bb3.i.i.i.cont:                                   ; preds = %bb3.i.i.i.invoke
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hfc327d45e45f5ba0E.exit.i.i": ; preds = %.noexc.i.i
  %this.0.i.i.i = load i64, ptr %34, align 8, !range !1624, !noalias !1661, !noundef !37
  %this.1.i.i.i = load ptr, ptr %35, align 8, !noalias !1661, !nonnull !37, !noundef !37
  %_7.i.i.i = icmp samesign ugt i64 %this.0.i.i.i, 9
  call void @llvm.assume(i1 %_7.i.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i.i), !noalias !1661
  store i64 %this.0.i.i.i, ptr %out.i.i, align 8, !noalias !1661
  store ptr %this.1.i.i.i, ptr %_9.sroa.4.0.out.sroa_idx.i.i, align 8, !noalias !1661
  store i64 0, ptr %_9.sroa.5.0.out.sroa_idx.i.i, align 8, !noalias !1661
  br label %bb4.i.i

bb1.i.i38:                                        ; preds = %bb15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i3.i.i), !noalias !1661
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i3.i.i, i64 noundef 11, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc11.i.i unwind label %cleanup.i.i36.loopexit, !noalias !1661

.noexc11.i.i:                                     ; preds = %bb1.i.i38
  %_5.i4.i.i = load i64, ptr %_4.i3.i.i, align 8, !range !1031, !noalias !1661, !noundef !37
  %51 = trunc nuw i64 %_5.i4.i.i to i1
  br i1 %51, label %bb3.i.i.i.invoke, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hfc327d45e45f5ba0E.exit13.i.i", !prof !1033

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hfc327d45e45f5ba0E.exit13.i.i": ; preds = %.noexc11.i.i
  %this.0.i5.i.i = load i64, ptr %36, align 8, !range !1624, !noalias !1661, !noundef !37
  %this.1.i6.i.i = load ptr, ptr %37, align 8, !noalias !1661, !nonnull !37, !noundef !37
  %_7.i7.i.i = icmp samesign ugt i64 %this.0.i5.i.i, 10
  call void @llvm.assume(i1 %_7.i7.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i3.i.i), !noalias !1661
  store i64 %this.0.i5.i.i, ptr %out.i.i, align 8, !noalias !1661
  store ptr %this.1.i6.i.i, ptr %_6.sroa.4.0.out.sroa_idx.i.i, align 8, !noalias !1661
  store i64 0, ptr %_6.sroa.5.0.out.sroa_idx.i.i, align 8, !noalias !1661
; invoke alloc::vec::Vec<T,A>::reserve
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd7d983ab73297baaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %out.i.i, i64 noundef 1)
          to label %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit.i.i unwind label %cleanup.i.i36.loopexit, !noalias !1661

cleanup.i.i36.loopexit:                           ; preds = %bb3.i.i35, %bb1.i.i38, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hfc327d45e45f5ba0E.exit13.i.i", %bb4.i.i, %bb5.i.i
  %_17.sroa.0.0.i.i.ph = phi i1 [ true, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hfc327d45e45f5ba0E.exit13.i.i" ], [ false, %bb1.i.i38 ], [ false, %bb3.i.i35 ], [ true, %bb4.i.i ], [ true, %bb5.i.i ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %cleanup.i.i36

cleanup.i.i36.loopexit.split-lp:                  ; preds = %bb3.i.i.i.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %cleanup.i.i36

cleanup.i.i36:                                    ; preds = %cleanup.i.i36.loopexit.split-lp, %cleanup.i.i36.loopexit
  %_17.sroa.0.0.i.i = phi i1 [ %_17.sroa.0.0.i.i.ph, %cleanup.i.i36.loopexit ], [ false, %cleanup.i.i36.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup.i.i36.loopexit ], [ %lpad.loopexit.split-lp, %cleanup.i.i36.loopexit.split-lp ]
  br i1 %_17.sroa.0.0.i.i, label %bb7.i.i, label %bb33

bb4.i.i:                                          ; preds = %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hfc327d45e45f5ba0E.exit.i.i"
  %_24.sroa.0.0.i.i = call i32 @llvm.abs.i32(i32 %49, i1 false)
; invoke core::fmt::num::imp::<impl u32>::_fmt
  %52 = invoke { ptr, i64 } @"_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h1610a2f939cfe08fE"(i32 noundef %_24.sroa.0.0.i.i, ptr noalias noundef nonnull align 1 %buf.i.i, i64 noundef 10)
          to label %bb5.i.i unwind label %cleanup.i.i36.loopexit, !noalias !1661

_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit.i.i: ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hfc327d45e45f5ba0E.exit13.i.i"
  %_20.i.i.i = load ptr, ptr %_6.sroa.4.0.out.sroa_idx.i.i, align 8, !alias.scope !1668, !noalias !1661, !nonnull !37, !noundef !37
  %count.i.i.i = load i64, ptr %_6.sroa.5.0.out.sroa_idx.i.i, align 8, !alias.scope !1668, !noalias !1661, !noundef !37
  %_21.i.i.i = icmp sgt i64 %count.i.i.i, -1
  call void @llvm.assume(i1 %_21.i.i.i)
  %_8.i.i.i39 = getelementptr inbounds nuw i8, ptr %_20.i.i.i, i64 %count.i.i.i
  store i8 45, ptr %_8.i.i.i39, align 1, !noalias !1661
  store i64 1, ptr %_6.sroa.5.0.out.sroa_idx.i.i, align 8, !alias.scope !1668, !noalias !1661
  br label %bb4.i.i

bb5.i.i:                                          ; preds = %bb4.i.i
  %string.0.i.i = extractvalue { ptr, i64 } %52, 0
  %string.1.i.i = extractvalue { ptr, i64 } %52, 1
  %53 = icmp ne ptr %string.0.i.i, null
  call void @llvm.assume(i1 %53)
  %_32.i.i = getelementptr inbounds nuw i8, ptr %string.0.i.i, i64 %string.1.i.i
; invoke <alloc::vec::Vec<T,A> as alloc::vec::spec_extend::SpecExtend<&T,core::slice::iter::Iter<T>>>::spec_extend
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h50a987f7cf4aec42E"(ptr noalias noundef align 8 dereferenceable(24) %out.i.i, ptr noundef nonnull %string.0.i.i, ptr noundef nonnull %_32.i.i)
          to label %"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17hb4f2591d5610a62fE.exit" unwind label %cleanup.i.i36.loopexit, !noalias !1661

bb7.i.i:                                          ; preds = %cleanup.i.i36
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb6e5c75831de1101E"(ptr noalias noundef align 8 dereferenceable(24) %out.i.i) #27
          to label %bb33 unwind label %terminate.i.i37, !noalias !1661

terminate.i.i37:                                  ; preds = %bb7.i.i
  %54 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #23, !noalias !1661
  unreachable

"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17hb4f2591d5610a62fE.exit": ; preds = %bb5.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_29, ptr noundef nonnull align 8 dereferenceable(24) %out.i.i, i64 24, i1 false), !noalias !1671
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %out.i.i), !noalias !1661
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %buf.i.i), !noalias !1661
  %_6.i.i = load ptr, ptr %38, align 8, !alias.scope !1672, !nonnull !37, !noundef !37
  %len.i.i = load i64, ptr %39, align 8, !alias.scope !1672, !noundef !37
  %_9.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %len.i.i
; invoke <alloc::vec::Vec<T,A> as alloc::vec::spec_extend::SpecExtend<&T,core::slice::iter::Iter<T>>>::spec_extend
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h50a987f7cf4aec42E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %ans, ptr noundef nonnull readonly align 1 %_6.i.i, ptr noundef nonnull readonly %_9.i)
          to label %bb18 unwind label %cleanup3

panic2:                                           ; preds = %bb14
; invoke core::panicking::panic_const::panic_const_div_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_8bae67a9e2a83c445d61cea535f7257c) #25
          to label %unreachable unwind label %cleanup1.loopexit.split-lp

cleanup3:                                         ; preds = %"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17hb4f2591d5610a62fE.exit"
  %55 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb6e5c75831de1101E"(ptr noalias noundef align 8 dereferenceable(24) %_29) #27
          to label %bb33 unwind label %terminate

bb18:                                             ; preds = %"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17hb4f2591d5610a62fE.exit"
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_29)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hb264b7763056fae8E.exit.i" unwind label %cleanup.i.i42

cleanup.i.i42:                                    ; preds = %bb18
  %56 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_29)
          to label %bb33 unwind label %terminate.i.i43

terminate.i.i43:                                  ; preds = %cleanup.i.i42
  %57 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #23
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hb264b7763056fae8E.exit.i": ; preds = %bb18
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_29)
          to label %bb19 unwind label %cleanup1.loopexit

bb19:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hb264b7763056fae8E.exit.i"
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_29)
  %_37 = mul i32 %_38, 10
  %_46 = add nuw nsw i64 %idx.sroa.0.1272, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !1677)
  %_8.i49 = load ptr, ptr %0, align 8, !alias.scope !1677, !noalias !1680, !nonnull !37, !noundef !37
  %len.i50 = load i64, ptr %1, align 8, !alias.scope !1677, !noalias !1680, !noundef !37
  %_9.not.i.i.i53 = icmp ult i64 %_46, %len.i50
  br i1 %_9.not.i.i.i53, label %bb8.i.i.i65, label %bb6.i.i.i54

bb6.i.i.i54:                                      ; preds = %bb19
  %58 = icmp eq i64 %_46, %len.i50
  br label %bb9.i.i.i55

bb8.i.i.i65:                                      ; preds = %bb19
  %59 = getelementptr inbounds nuw i8, ptr %_8.i49, i64 %_46
  %self1.i.i.i66 = load i8, ptr %59, align 1, !alias.scope !1682, !noalias !1687, !noundef !37
  %60 = icmp sgt i8 %self1.i.i.i66, -65
  br label %bb9.i.i.i55

bb9.i.i.i55:                                      ; preds = %bb8.i.i.i65, %bb6.i.i.i54
  %_3.sroa.0.0.in.i.i.i56 = phi i1 [ %58, %bb6.i.i.i54 ], [ %60, %bb8.i.i.i65 ]
  %new_len.i.i.i63 = sub nuw i64 %len.i50, %_46
  %data.i.i.i64 = getelementptr inbounds nuw i8, ptr %_8.i49, i64 %_46
  %_0.sroa.3.0.i.i.i58 = select i1 %_3.sroa.0.0.in.i.i.i56, i64 %new_len.i.i.i63, i64 undef
  %_0.sroa.0.0.i.i.i59 = select i1 %_3.sroa.0.0.in.i.i.i56, ptr %data.i.i.i64, ptr null
  br i1 %_3.sroa.0.0.in.i.i.i56, label %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h97fc9b88dd567aa2E.exit68", label %bb3.i.i.invoke, !prof !1689

"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h97fc9b88dd567aa2E.exit68": ; preds = %bb9.i.i.i55
  switch i64 %_0.sroa.3.0.i.i.i58, label %bb9.i.i.i75 [
    i64 0, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit151"
    i64 1, label %bb7.i.i.i69
  ]

bb6.i.i.i73:                                      ; preds = %bb7.i.i.i69
  %_8.not.i.i.i74 = icmp eq i64 %_0.sroa.3.0.i.i.i58, 0
  br i1 %_8.not.i.i.i74, label %bb64.i.i.i116, label %bb9.i.i.i75

bb7.i.i.i69:                                      ; preds = %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h97fc9b88dd567aa2E.exit68"
  %61 = load i8, ptr %data.i.i.i64, align 1, !alias.scope !1690, !noundef !37
  switch i8 %61, label %bb6.i.i.i73 [
    i8 43, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit151"
    i8 45, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit151"
  ]

bb9.i.i.i75:                                      ; preds = %bb6.i.i.i73, %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h97fc9b88dd567aa2E.exit68"
  %62 = load i8, ptr %data.i.i.i64, align 1, !alias.scope !1690, !noundef !37
  switch i8 %62, label %bb64.i.i.i116 [
    i8 43, label %bb11.i.i.i113
    i8 45, label %bb10.i.i.i76
  ]

bb11.i.i.i113:                                    ; preds = %bb9.i.i.i75
  %rest.0.i.i.i114 = getelementptr inbounds nuw i8, ptr %_0.sroa.0.0.i.i.i59, i64 1
  %rest.1.i.i.i115 = add nsw i64 %_0.sroa.3.0.i.i.i58, -1
  br label %bb64.i.i.i116

bb10.i.i.i76:                                     ; preds = %bb9.i.i.i75
  %rest.03.i.i.i77 = getelementptr inbounds nuw i8, ptr %_0.sroa.0.0.i.i.i59, i64 1
  %rest.14.i.i.i78 = add nsw i64 %_0.sroa.3.0.i.i.i58, -1
  %63 = icmp samesign ult i64 %_0.sroa.3.0.i.i.i58, 9
  br i1 %63, label %bb19.preheader.i.i.i100, label %bb33.i.i.i79

bb19.preheader.i.i.i100:                          ; preds = %bb10.i.i.i76
  %_29.not98.i.i.i101 = icmp eq i64 %rest.14.i.i.i78, 0
  br i1 %_29.not98.i.i.i101, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit151", label %bb20.i.i.i102

bb33.i.i.i79:                                     ; preds = %bb10.i.i.i76, %bb39.i.i.i90
  %result.sroa.0.0.i.i.i80 = phi i32 [ %_89.0.i.i.i95, %bb39.i.i.i90 ], [ 0, %bb10.i.i.i76 ]
  %src.sroa.26.1.i.i.i81 = phi i64 [ %rest.16.i.i.i92, %bb39.i.i.i90 ], [ %rest.14.i.i.i78, %bb10.i.i.i76 ]
  %src.sroa.0.1.i.i.i82 = phi ptr [ %rest.05.i.i.i93, %bb39.i.i.i90 ], [ %rest.03.i.i.i77, %bb10.i.i.i76 ]
  %_57.not.i.i.i83 = icmp eq i64 %src.sroa.26.1.i.i.i81, 0
  br i1 %_57.not.i.i.i83, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit151", label %bb34.i.i.i84

bb34.i.i.i84:                                     ; preds = %bb33.i.i.i79
  %64 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %result.sroa.0.0.i.i.i80, i32 10)
  %_85.1.i.i.i85 = extractvalue { i32, i1 } %64, 1
  %_65.i.i.i86 = load i8, ptr %src.sroa.0.1.i.i.i82, align 1, !alias.scope !1690, !noundef !37
  %_64.i.i.i87 = zext i8 %_65.i.i.i86 to i32
  %65 = add nsw i32 %_64.i.i.i87, -48
  %_14.i.i.i.i88 = icmp ugt i32 %65, 9
  %brmerge.i.i.i89 = select i1 %_14.i.i.i.i88, i1 true, i1 %_85.1.i.i.i85
  br i1 %brmerge.i.i.i89, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit151", label %bb39.i.i.i90

bb39.i.i.i90:                                     ; preds = %bb34.i.i.i84
  %_85.0.i.i.i91 = extractvalue { i32, i1 } %64, 0
  %rest.16.i.i.i92 = add nsw i64 %src.sroa.26.1.i.i.i81, -1
  %rest.05.i.i.i93 = getelementptr inbounds nuw i8, ptr %src.sroa.0.1.i.i.i82, i64 1
  %66 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_85.0.i.i.i91, i32 %65)
  %_89.1.i.i.i94 = extractvalue { i32, i1 } %66, 1
  %_89.0.i.i.i95 = extractvalue { i32, i1 } %66, 0
  br i1 %_89.1.i.i.i94, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit151", label %bb33.i.i.i79

bb20.i.i.i102:                                    ; preds = %bb19.preheader.i.i.i100, %bb23.i.i.i109
  %src.sroa.0.2101.i.i.i103 = phi ptr [ %rest.08.i.i.i111, %bb23.i.i.i109 ], [ %rest.03.i.i.i77, %bb19.preheader.i.i.i100 ]
  %src.sroa.26.2100.i.i.i104 = phi i64 [ %rest.19.i.i.i110, %bb23.i.i.i109 ], [ %rest.14.i.i.i78, %bb19.preheader.i.i.i100 ]
  %result.sroa.0.299.i.i.i105 = phi i32 [ %69, %bb23.i.i.i109 ], [ 0, %bb19.preheader.i.i.i100 ]
  %_36.i.i.i106 = load i8, ptr %src.sroa.0.2101.i.i.i103, align 1, !alias.scope !1690, !noundef !37
  %_35.i.i.i107 = zext i8 %_36.i.i.i106 to i32
  %67 = add nsw i32 %_35.i.i.i107, -48
  %_14.i79.i.i.i108 = icmp ult i32 %67, 10
  br i1 %_14.i79.i.i.i108, label %bb23.i.i.i109, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit151"

bb23.i.i.i109:                                    ; preds = %bb20.i.i.i102
  %68 = mul i32 %result.sroa.0.299.i.i.i105, 10
  %rest.19.i.i.i110 = add nsw i64 %src.sroa.26.2100.i.i.i104, -1
  %rest.08.i.i.i111 = getelementptr inbounds nuw i8, ptr %src.sroa.0.2101.i.i.i103, i64 1
  %69 = sub i32 %68, %67
  %_29.not.i.i.i112 = icmp eq i64 %rest.19.i.i.i110, 0
  br i1 %_29.not.i.i.i112, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit151", label %bb20.i.i.i102

bb64.i.i.i116:                                    ; preds = %bb11.i.i.i113, %bb9.i.i.i75, %bb6.i.i.i73
  %src.sroa.26.0.i.i.i117 = phi i64 [ %rest.1.i.i.i115, %bb11.i.i.i113 ], [ %_0.sroa.3.0.i.i.i58, %bb9.i.i.i75 ], [ %_0.sroa.3.0.i.i.i58, %bb6.i.i.i73 ]
  %src.sroa.0.0.i.i.i118 = phi ptr [ %rest.0.i.i.i114, %bb11.i.i.i113 ], [ %_0.sroa.0.0.i.i.i59, %bb9.i.i.i75 ], [ %_0.sroa.0.0.i.i.i59, %bb6.i.i.i73 ]
  %70 = icmp ult i64 %src.sroa.26.0.i.i.i117, 8
  br i1 %70, label %bb13.preheader.i.i.i138, label %bb24.i.i.i119

bb13.preheader.i.i.i138:                          ; preds = %bb64.i.i.i116
  %_16.not104.i.i.i139 = icmp eq i64 %src.sroa.26.0.i.i.i117, 0
  br i1 %_16.not104.i.i.i139, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit151", label %bb14.i.i.i140

bb24.i.i.i119:                                    ; preds = %bb64.i.i.i116, %bb30.i.i.i130
  %result.sroa.0.3.i.i.i120 = phi i32 [ %_81.0.i.i.i135, %bb30.i.i.i130 ], [ 0, %bb64.i.i.i116 ]
  %src.sroa.26.3.i.i.i121 = phi i64 [ %rest.112.i.i.i132, %bb30.i.i.i130 ], [ %src.sroa.26.0.i.i.i117, %bb64.i.i.i116 ]
  %src.sroa.0.3.i.i.i122 = phi ptr [ %rest.011.i.i.i133, %bb30.i.i.i130 ], [ %src.sroa.0.0.i.i.i118, %bb64.i.i.i116 ]
  %_42.not.i.i.i123 = icmp eq i64 %src.sroa.26.3.i.i.i121, 0
  br i1 %_42.not.i.i.i123, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit151", label %bb25.i.i.i124

bb25.i.i.i124:                                    ; preds = %bb24.i.i.i119
  %71 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %result.sroa.0.3.i.i.i120, i32 10)
  %_77.1.i.i.i125 = extractvalue { i32, i1 } %71, 1
  %_50.i.i.i126 = load i8, ptr %src.sroa.0.3.i.i.i122, align 1, !alias.scope !1690, !noundef !37
  %_49.i.i.i127 = zext i8 %_50.i.i.i126 to i32
  %72 = add nsw i32 %_49.i.i.i127, -48
  %_14.i81.i.i.i128 = icmp ugt i32 %72, 9
  %brmerge77.i.i.i129 = select i1 %_14.i81.i.i.i128, i1 true, i1 %_77.1.i.i.i125
  br i1 %brmerge77.i.i.i129, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit151", label %bb30.i.i.i130

bb30.i.i.i130:                                    ; preds = %bb25.i.i.i124
  %_77.0.i.i.i131 = extractvalue { i32, i1 } %71, 0
  %rest.112.i.i.i132 = add nsw i64 %src.sroa.26.3.i.i.i121, -1
  %rest.011.i.i.i133 = getelementptr inbounds nuw i8, ptr %src.sroa.0.3.i.i.i122, i64 1
  %73 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_77.0.i.i.i131, i32 %72)
  %_81.1.i.i.i134 = extractvalue { i32, i1 } %73, 1
  %_81.0.i.i.i135 = extractvalue { i32, i1 } %73, 0
  br i1 %_81.1.i.i.i134, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit151", label %bb24.i.i.i119

bb14.i.i.i140:                                    ; preds = %bb13.preheader.i.i.i138
  %_23.i.i.i144 = load i8, ptr %src.sroa.0.0.i.i.i118, align 1, !alias.scope !1690, !noundef !37
  %_22.i.i.i145 = zext i8 %_23.i.i.i144 to i32
  %74 = add nsw i32 %_22.i.i.i145, -48
  %_14.i83.i.i.i146 = icmp ult i32 %74, 10
  br i1 %_14.i83.i.i.i146, label %bb18.i.i.i147, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit151"

bb18.i.i.i147:                                    ; preds = %bb14.i.i.i140
  %_16.not.i.i.i150 = icmp eq i64 %src.sroa.26.0.i.i.i117, 1
  br i1 %_16.not.i.i.i150, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit151", label %bb14.i.i.i140.1

bb14.i.i.i140.1:                                  ; preds = %bb18.i.i.i147
  %rest.015.i.i.i149 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i.i.i118, i64 1
  %_23.i.i.i144.1 = load i8, ptr %rest.015.i.i.i149, align 1, !alias.scope !1690, !noundef !37
  %_22.i.i.i145.1 = zext i8 %_23.i.i.i144.1 to i32
  %75 = add nsw i32 %_22.i.i.i145.1, -48
  %_14.i83.i.i.i146.1 = icmp ult i32 %75, 10
  br i1 %_14.i83.i.i.i146.1, label %bb18.i.i.i147.1, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit151"

bb18.i.i.i147.1:                                  ; preds = %bb14.i.i.i140.1
  %76 = mul nuw nsw i32 %74, 10
  %77 = add nuw nsw i32 %75, %76
  %_16.not.i.i.i150.1 = icmp eq i64 %src.sroa.26.0.i.i.i117, 2
  br i1 %_16.not.i.i.i150.1, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit151", label %bb14.i.i.i140.2

bb14.i.i.i140.2:                                  ; preds = %bb18.i.i.i147.1
  %rest.015.i.i.i149.1 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i.i.i118, i64 2
  %_23.i.i.i144.2 = load i8, ptr %rest.015.i.i.i149.1, align 1, !alias.scope !1690, !noundef !37
  %_22.i.i.i145.2 = zext i8 %_23.i.i.i144.2 to i32
  %78 = add nsw i32 %_22.i.i.i145.2, -48
  %_14.i83.i.i.i146.2 = icmp ult i32 %78, 10
  br i1 %_14.i83.i.i.i146.2, label %bb18.i.i.i147.2, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit151"

bb18.i.i.i147.2:                                  ; preds = %bb14.i.i.i140.2
  %79 = mul nuw nsw i32 %77, 10
  %80 = add nuw nsw i32 %78, %79
  %_16.not.i.i.i150.2 = icmp eq i64 %src.sroa.26.0.i.i.i117, 3
  br i1 %_16.not.i.i.i150.2, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit151", label %bb14.i.i.i140.3

bb14.i.i.i140.3:                                  ; preds = %bb18.i.i.i147.2
  %rest.015.i.i.i149.2 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i.i.i118, i64 3
  %_23.i.i.i144.3 = load i8, ptr %rest.015.i.i.i149.2, align 1, !alias.scope !1690, !noundef !37
  %_22.i.i.i145.3 = zext i8 %_23.i.i.i144.3 to i32
  %81 = add nsw i32 %_22.i.i.i145.3, -48
  %_14.i83.i.i.i146.3 = icmp ult i32 %81, 10
  br i1 %_14.i83.i.i.i146.3, label %bb18.i.i.i147.3, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit151"

bb18.i.i.i147.3:                                  ; preds = %bb14.i.i.i140.3
  %82 = mul nuw nsw i32 %80, 10
  %83 = add nuw nsw i32 %81, %82
  %_16.not.i.i.i150.3 = icmp eq i64 %src.sroa.26.0.i.i.i117, 4
  br i1 %_16.not.i.i.i150.3, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit151", label %bb14.i.i.i140.4

bb14.i.i.i140.4:                                  ; preds = %bb18.i.i.i147.3
  %rest.015.i.i.i149.3 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i.i.i118, i64 4
  %_23.i.i.i144.4 = load i8, ptr %rest.015.i.i.i149.3, align 1, !alias.scope !1690, !noundef !37
  %_22.i.i.i145.4 = zext i8 %_23.i.i.i144.4 to i32
  %84 = add nsw i32 %_22.i.i.i145.4, -48
  %_14.i83.i.i.i146.4 = icmp ult i32 %84, 10
  br i1 %_14.i83.i.i.i146.4, label %bb18.i.i.i147.4, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit151"

bb18.i.i.i147.4:                                  ; preds = %bb14.i.i.i140.4
  %85 = mul i32 %83, 10
  %86 = add i32 %84, %85
  %_16.not.i.i.i150.4 = icmp eq i64 %src.sroa.26.0.i.i.i117, 5
  br i1 %_16.not.i.i.i150.4, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit151", label %bb14.i.i.i140.5

bb14.i.i.i140.5:                                  ; preds = %bb18.i.i.i147.4
  %rest.015.i.i.i149.4 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i.i.i118, i64 5
  %_23.i.i.i144.5 = load i8, ptr %rest.015.i.i.i149.4, align 1, !alias.scope !1690, !noundef !37
  %_22.i.i.i145.5 = zext i8 %_23.i.i.i144.5 to i32
  %87 = add nsw i32 %_22.i.i.i145.5, -48
  %_14.i83.i.i.i146.5 = icmp ult i32 %87, 10
  br i1 %_14.i83.i.i.i146.5, label %bb18.i.i.i147.5, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit151"

bb18.i.i.i147.5:                                  ; preds = %bb14.i.i.i140.5
  %88 = mul i32 %86, 10
  %89 = add i32 %87, %88
  %_16.not.i.i.i150.5 = icmp eq i64 %src.sroa.26.0.i.i.i117, 6
  br i1 %_16.not.i.i.i150.5, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit151", label %bb14.i.i.i140.6

bb14.i.i.i140.6:                                  ; preds = %bb18.i.i.i147.5
  %rest.015.i.i.i149.5 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i.i.i118, i64 6
  %_23.i.i.i144.6 = load i8, ptr %rest.015.i.i.i149.5, align 1, !alias.scope !1690, !noundef !37
  %_22.i.i.i145.6 = zext i8 %_23.i.i.i144.6 to i32
  %90 = add nsw i32 %_22.i.i.i145.6, -48
  %_14.i83.i.i.i146.6 = icmp ult i32 %90, 10
  br i1 %_14.i83.i.i.i146.6, label %bb18.i.i.i147.6, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit151"

bb18.i.i.i147.6:                                  ; preds = %bb14.i.i.i140.6
  %91 = mul i32 %89, 10
  %92 = add i32 %90, %91
  br label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit151"

"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit151": ; preds = %bb33.i.i.i79, %bb34.i.i.i84, %bb39.i.i.i90, %bb23.i.i.i109, %bb20.i.i.i102, %bb24.i.i.i119, %bb25.i.i.i124, %bb30.i.i.i130, %bb18.i.i.i147, %bb14.i.i.i140, %bb14.i.i.i140.1, %bb18.i.i.i147.1, %bb14.i.i.i140.2, %bb18.i.i.i147.2, %bb14.i.i.i140.3, %bb18.i.i.i147.3, %bb14.i.i.i140.4, %bb18.i.i.i147.4, %bb14.i.i.i140.5, %bb18.i.i.i147.5, %bb14.i.i.i140.6, %bb18.i.i.i147.6, %bb19.preheader.i.i.i100, %bb13.preheader.i.i.i138, %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h97fc9b88dd567aa2E.exit68", %bb7.i.i.i69, %bb7.i.i.i69
  %_0.sroa.0.0.i.i.i70 = phi i32 [ 0, %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h97fc9b88dd567aa2E.exit68" ], [ 0, %bb7.i.i.i69 ], [ 0, %bb7.i.i.i69 ], [ 0, %bb13.preheader.i.i.i138 ], [ 0, %bb19.preheader.i.i.i100 ], [ 0, %bb14.i.i.i140 ], [ %74, %bb18.i.i.i147 ], [ 0, %bb14.i.i.i140.1 ], [ %77, %bb18.i.i.i147.1 ], [ 0, %bb14.i.i.i140.2 ], [ %80, %bb18.i.i.i147.2 ], [ 0, %bb14.i.i.i140.3 ], [ %83, %bb18.i.i.i147.3 ], [ 0, %bb14.i.i.i140.4 ], [ %86, %bb18.i.i.i147.4 ], [ 0, %bb14.i.i.i140.5 ], [ %89, %bb18.i.i.i147.5 ], [ 0, %bb14.i.i.i140.6 ], [ %92, %bb18.i.i.i147.6 ], [ 0, %bb30.i.i.i130 ], [ 0, %bb25.i.i.i124 ], [ %result.sroa.0.3.i.i.i120, %bb24.i.i.i119 ], [ 0, %bb20.i.i.i102 ], [ %69, %bb23.i.i.i109 ], [ 0, %bb39.i.i.i90 ], [ 0, %bb34.i.i.i84 ], [ %result.sroa.0.0.i.i.i80, %bb33.i.i.i79 ]
  %93 = add i32 %_0.sroa.0.0.i.i.i70, %_37
  %_0.i = load i64, ptr %1, align 8, !alias.scope !1645, !noundef !37
  %_2.i = icmp sgt i64 %_0.i, -1
  call void @llvm.assume(i1 %_2.i)
  %_21 = icmp ugt i64 %_0.i, %_46
  br i1 %_21, label %bb13, label %bb25

terminate:                                        ; preds = %bb34, %bb33, %cleanup3
  %94 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #23
  unreachable

bb6.i.i.i159:                                     ; preds = %bb7.i.i.i155
  %_8.not.i.i.i160 = icmp eq i64 %_0.sroa.3.0.i.i.i, 0
  br i1 %_8.not.i.i.i160, label %bb64.i.i.i202, label %bb9.i.i.i161

bb7.i.i.i155:                                     ; preds = %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h97fc9b88dd567aa2E.exit"
  %95 = load i8, ptr %_0.sroa.0.0.i.i.i30, align 1, !alias.scope !1697, !noundef !37
  switch i8 %95, label %bb6.i.i.i159 [
    i8 43, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit237"
    i8 45, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit237"
  ]

bb9.i.i.i161:                                     ; preds = %bb6.i.i.i159, %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h97fc9b88dd567aa2E.exit"
  %96 = load i8, ptr %_0.sroa.0.0.i.i.i30, align 1, !alias.scope !1697, !noundef !37
  switch i8 %96, label %bb64.i.i.i202 [
    i8 43, label %bb11.i.i.i199
    i8 45, label %bb10.i.i.i162
  ]

bb11.i.i.i199:                                    ; preds = %bb9.i.i.i161
  %rest.0.i.i.i200 = getelementptr inbounds nuw i8, ptr %_0.sroa.0.0.i.i.i30, i64 1
  %rest.1.i.i.i201 = add nsw i64 %_0.sroa.3.0.i.i.i, -1
  br label %bb64.i.i.i202

bb10.i.i.i162:                                    ; preds = %bb9.i.i.i161
  %rest.03.i.i.i163 = getelementptr inbounds nuw i8, ptr %_0.sroa.0.0.i.i.i30, i64 1
  %rest.14.i.i.i164 = add nsw i64 %_0.sroa.3.0.i.i.i, -1
  %97 = icmp samesign ult i64 %_0.sroa.3.0.i.i.i, 9
  br i1 %97, label %bb19.preheader.i.i.i186, label %bb33.i.i.i165

bb19.preheader.i.i.i186:                          ; preds = %bb10.i.i.i162
  %_29.not98.i.i.i187 = icmp eq i64 %rest.14.i.i.i164, 0
  br i1 %_29.not98.i.i.i187, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit237", label %bb20.i.i.i188

bb33.i.i.i165:                                    ; preds = %bb10.i.i.i162, %bb39.i.i.i176
  %result.sroa.0.0.i.i.i166 = phi i32 [ %_89.0.i.i.i181, %bb39.i.i.i176 ], [ 0, %bb10.i.i.i162 ]
  %src.sroa.26.1.i.i.i167 = phi i64 [ %rest.16.i.i.i178, %bb39.i.i.i176 ], [ %rest.14.i.i.i164, %bb10.i.i.i162 ]
  %src.sroa.0.1.i.i.i168 = phi ptr [ %rest.05.i.i.i179, %bb39.i.i.i176 ], [ %rest.03.i.i.i163, %bb10.i.i.i162 ]
  %_57.not.i.i.i169 = icmp eq i64 %src.sroa.26.1.i.i.i167, 0
  br i1 %_57.not.i.i.i169, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit237", label %bb34.i.i.i170

bb34.i.i.i170:                                    ; preds = %bb33.i.i.i165
  %98 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %result.sroa.0.0.i.i.i166, i32 10)
  %_85.1.i.i.i171 = extractvalue { i32, i1 } %98, 1
  %_65.i.i.i172 = load i8, ptr %src.sroa.0.1.i.i.i168, align 1, !alias.scope !1697, !noundef !37
  %_64.i.i.i173 = zext i8 %_65.i.i.i172 to i32
  %99 = add nsw i32 %_64.i.i.i173, -48
  %_14.i.i.i.i174 = icmp ugt i32 %99, 9
  %brmerge.i.i.i175 = select i1 %_14.i.i.i.i174, i1 true, i1 %_85.1.i.i.i171
  br i1 %brmerge.i.i.i175, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit237", label %bb39.i.i.i176

bb39.i.i.i176:                                    ; preds = %bb34.i.i.i170
  %_85.0.i.i.i177 = extractvalue { i32, i1 } %98, 0
  %rest.16.i.i.i178 = add nsw i64 %src.sroa.26.1.i.i.i167, -1
  %rest.05.i.i.i179 = getelementptr inbounds nuw i8, ptr %src.sroa.0.1.i.i.i168, i64 1
  %100 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_85.0.i.i.i177, i32 %99)
  %_89.1.i.i.i180 = extractvalue { i32, i1 } %100, 1
  %_89.0.i.i.i181 = extractvalue { i32, i1 } %100, 0
  br i1 %_89.1.i.i.i180, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit237", label %bb33.i.i.i165

bb20.i.i.i188:                                    ; preds = %bb19.preheader.i.i.i186, %bb23.i.i.i195
  %src.sroa.0.2101.i.i.i189 = phi ptr [ %rest.08.i.i.i197, %bb23.i.i.i195 ], [ %rest.03.i.i.i163, %bb19.preheader.i.i.i186 ]
  %src.sroa.26.2100.i.i.i190 = phi i64 [ %rest.19.i.i.i196, %bb23.i.i.i195 ], [ %rest.14.i.i.i164, %bb19.preheader.i.i.i186 ]
  %result.sroa.0.299.i.i.i191 = phi i32 [ %103, %bb23.i.i.i195 ], [ 0, %bb19.preheader.i.i.i186 ]
  %_36.i.i.i192 = load i8, ptr %src.sroa.0.2101.i.i.i189, align 1, !alias.scope !1697, !noundef !37
  %_35.i.i.i193 = zext i8 %_36.i.i.i192 to i32
  %101 = add nsw i32 %_35.i.i.i193, -48
  %_14.i79.i.i.i194 = icmp ult i32 %101, 10
  br i1 %_14.i79.i.i.i194, label %bb23.i.i.i195, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit237"

bb23.i.i.i195:                                    ; preds = %bb20.i.i.i188
  %102 = mul i32 %result.sroa.0.299.i.i.i191, 10
  %rest.19.i.i.i196 = add nsw i64 %src.sroa.26.2100.i.i.i190, -1
  %rest.08.i.i.i197 = getelementptr inbounds nuw i8, ptr %src.sroa.0.2101.i.i.i189, i64 1
  %103 = sub i32 %102, %101
  %_29.not.i.i.i198 = icmp eq i64 %rest.19.i.i.i196, 0
  br i1 %_29.not.i.i.i198, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit237", label %bb20.i.i.i188

bb64.i.i.i202:                                    ; preds = %bb11.i.i.i199, %bb9.i.i.i161, %bb6.i.i.i159
  %src.sroa.26.0.i.i.i203 = phi i64 [ %rest.1.i.i.i201, %bb11.i.i.i199 ], [ %_0.sroa.3.0.i.i.i, %bb9.i.i.i161 ], [ %_0.sroa.3.0.i.i.i, %bb6.i.i.i159 ]
  %src.sroa.0.0.i.i.i204 = phi ptr [ %rest.0.i.i.i200, %bb11.i.i.i199 ], [ %_0.sroa.0.0.i.i.i30, %bb9.i.i.i161 ], [ %_0.sroa.0.0.i.i.i30, %bb6.i.i.i159 ]
  %104 = icmp ult i64 %src.sroa.26.0.i.i.i203, 8
  br i1 %104, label %bb13.preheader.i.i.i224, label %bb24.i.i.i205

bb13.preheader.i.i.i224:                          ; preds = %bb64.i.i.i202
  %_16.not104.i.i.i225 = icmp eq i64 %src.sroa.26.0.i.i.i203, 0
  br i1 %_16.not104.i.i.i225, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit237", label %bb14.i.i.i226

bb24.i.i.i205:                                    ; preds = %bb64.i.i.i202, %bb30.i.i.i216
  %result.sroa.0.3.i.i.i206 = phi i32 [ %_81.0.i.i.i221, %bb30.i.i.i216 ], [ 0, %bb64.i.i.i202 ]
  %src.sroa.26.3.i.i.i207 = phi i64 [ %rest.112.i.i.i218, %bb30.i.i.i216 ], [ %src.sroa.26.0.i.i.i203, %bb64.i.i.i202 ]
  %src.sroa.0.3.i.i.i208 = phi ptr [ %rest.011.i.i.i219, %bb30.i.i.i216 ], [ %src.sroa.0.0.i.i.i204, %bb64.i.i.i202 ]
  %_42.not.i.i.i209 = icmp eq i64 %src.sroa.26.3.i.i.i207, 0
  br i1 %_42.not.i.i.i209, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit237", label %bb25.i.i.i210

bb25.i.i.i210:                                    ; preds = %bb24.i.i.i205
  %105 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %result.sroa.0.3.i.i.i206, i32 10)
  %_77.1.i.i.i211 = extractvalue { i32, i1 } %105, 1
  %_50.i.i.i212 = load i8, ptr %src.sroa.0.3.i.i.i208, align 1, !alias.scope !1697, !noundef !37
  %_49.i.i.i213 = zext i8 %_50.i.i.i212 to i32
  %106 = add nsw i32 %_49.i.i.i213, -48
  %_14.i81.i.i.i214 = icmp ugt i32 %106, 9
  %brmerge77.i.i.i215 = select i1 %_14.i81.i.i.i214, i1 true, i1 %_77.1.i.i.i211
  br i1 %brmerge77.i.i.i215, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit237", label %bb30.i.i.i216

bb30.i.i.i216:                                    ; preds = %bb25.i.i.i210
  %_77.0.i.i.i217 = extractvalue { i32, i1 } %105, 0
  %rest.112.i.i.i218 = add nsw i64 %src.sroa.26.3.i.i.i207, -1
  %rest.011.i.i.i219 = getelementptr inbounds nuw i8, ptr %src.sroa.0.3.i.i.i208, i64 1
  %107 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_77.0.i.i.i217, i32 %106)
  %_81.1.i.i.i220 = extractvalue { i32, i1 } %107, 1
  %_81.0.i.i.i221 = extractvalue { i32, i1 } %107, 0
  br i1 %_81.1.i.i.i220, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit237", label %bb24.i.i.i205

bb14.i.i.i226:                                    ; preds = %bb13.preheader.i.i.i224
  %_23.i.i.i230 = load i8, ptr %src.sroa.0.0.i.i.i204, align 1, !alias.scope !1697, !noundef !37
  %_22.i.i.i231 = zext i8 %_23.i.i.i230 to i32
  %108 = add nsw i32 %_22.i.i.i231, -48
  %_14.i83.i.i.i232 = icmp ult i32 %108, 10
  br i1 %_14.i83.i.i.i232, label %bb18.i.i.i233, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit237"

bb18.i.i.i233:                                    ; preds = %bb14.i.i.i226
  %_16.not.i.i.i236 = icmp eq i64 %src.sroa.26.0.i.i.i203, 1
  br i1 %_16.not.i.i.i236, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit237", label %bb14.i.i.i226.1

bb14.i.i.i226.1:                                  ; preds = %bb18.i.i.i233
  %rest.015.i.i.i235 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i.i.i204, i64 1
  %_23.i.i.i230.1 = load i8, ptr %rest.015.i.i.i235, align 1, !alias.scope !1697, !noundef !37
  %_22.i.i.i231.1 = zext i8 %_23.i.i.i230.1 to i32
  %109 = add nsw i32 %_22.i.i.i231.1, -48
  %_14.i83.i.i.i232.1 = icmp ult i32 %109, 10
  br i1 %_14.i83.i.i.i232.1, label %bb18.i.i.i233.1, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit237"

bb18.i.i.i233.1:                                  ; preds = %bb14.i.i.i226.1
  %110 = mul nuw nsw i32 %108, 10
  %111 = add nuw nsw i32 %109, %110
  %_16.not.i.i.i236.1 = icmp eq i64 %src.sroa.26.0.i.i.i203, 2
  br i1 %_16.not.i.i.i236.1, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit237", label %bb14.i.i.i226.2

bb14.i.i.i226.2:                                  ; preds = %bb18.i.i.i233.1
  %rest.015.i.i.i235.1 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i.i.i204, i64 2
  %_23.i.i.i230.2 = load i8, ptr %rest.015.i.i.i235.1, align 1, !alias.scope !1697, !noundef !37
  %_22.i.i.i231.2 = zext i8 %_23.i.i.i230.2 to i32
  %112 = add nsw i32 %_22.i.i.i231.2, -48
  %_14.i83.i.i.i232.2 = icmp ult i32 %112, 10
  br i1 %_14.i83.i.i.i232.2, label %bb18.i.i.i233.2, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit237"

bb18.i.i.i233.2:                                  ; preds = %bb14.i.i.i226.2
  %113 = mul nuw nsw i32 %111, 10
  %114 = add nuw nsw i32 %112, %113
  %_16.not.i.i.i236.2 = icmp eq i64 %src.sroa.26.0.i.i.i203, 3
  br i1 %_16.not.i.i.i236.2, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit237", label %bb14.i.i.i226.3

bb14.i.i.i226.3:                                  ; preds = %bb18.i.i.i233.2
  %rest.015.i.i.i235.2 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i.i.i204, i64 3
  %_23.i.i.i230.3 = load i8, ptr %rest.015.i.i.i235.2, align 1, !alias.scope !1697, !noundef !37
  %_22.i.i.i231.3 = zext i8 %_23.i.i.i230.3 to i32
  %115 = add nsw i32 %_22.i.i.i231.3, -48
  %_14.i83.i.i.i232.3 = icmp ult i32 %115, 10
  br i1 %_14.i83.i.i.i232.3, label %bb18.i.i.i233.3, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit237"

bb18.i.i.i233.3:                                  ; preds = %bb14.i.i.i226.3
  %116 = mul nuw nsw i32 %114, 10
  %117 = add nuw nsw i32 %115, %116
  %_16.not.i.i.i236.3 = icmp eq i64 %src.sroa.26.0.i.i.i203, 4
  br i1 %_16.not.i.i.i236.3, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit237", label %bb14.i.i.i226.4

bb14.i.i.i226.4:                                  ; preds = %bb18.i.i.i233.3
  %rest.015.i.i.i235.3 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i.i.i204, i64 4
  %_23.i.i.i230.4 = load i8, ptr %rest.015.i.i.i235.3, align 1, !alias.scope !1697, !noundef !37
  %_22.i.i.i231.4 = zext i8 %_23.i.i.i230.4 to i32
  %118 = add nsw i32 %_22.i.i.i231.4, -48
  %_14.i83.i.i.i232.4 = icmp ult i32 %118, 10
  br i1 %_14.i83.i.i.i232.4, label %bb18.i.i.i233.4, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit237"

bb18.i.i.i233.4:                                  ; preds = %bb14.i.i.i226.4
  %119 = mul i32 %117, 10
  %120 = add i32 %118, %119
  %_16.not.i.i.i236.4 = icmp eq i64 %src.sroa.26.0.i.i.i203, 5
  br i1 %_16.not.i.i.i236.4, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit237", label %bb14.i.i.i226.5

bb14.i.i.i226.5:                                  ; preds = %bb18.i.i.i233.4
  %rest.015.i.i.i235.4 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i.i.i204, i64 5
  %_23.i.i.i230.5 = load i8, ptr %rest.015.i.i.i235.4, align 1, !alias.scope !1697, !noundef !37
  %_22.i.i.i231.5 = zext i8 %_23.i.i.i230.5 to i32
  %121 = add nsw i32 %_22.i.i.i231.5, -48
  %_14.i83.i.i.i232.5 = icmp ult i32 %121, 10
  br i1 %_14.i83.i.i.i232.5, label %bb18.i.i.i233.5, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit237"

bb18.i.i.i233.5:                                  ; preds = %bb14.i.i.i226.5
  %122 = mul i32 %120, 10
  %123 = add i32 %121, %122
  %_16.not.i.i.i236.5 = icmp eq i64 %src.sroa.26.0.i.i.i203, 6
  br i1 %_16.not.i.i.i236.5, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit237", label %bb14.i.i.i226.6

bb14.i.i.i226.6:                                  ; preds = %bb18.i.i.i233.5
  %rest.015.i.i.i235.5 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i.i.i204, i64 6
  %_23.i.i.i230.6 = load i8, ptr %rest.015.i.i.i235.5, align 1, !alias.scope !1697, !noundef !37
  %_22.i.i.i231.6 = zext i8 %_23.i.i.i230.6 to i32
  %124 = add nsw i32 %_22.i.i.i231.6, -48
  %_14.i83.i.i.i232.6 = icmp ult i32 %124, 10
  br i1 %_14.i83.i.i.i232.6, label %bb18.i.i.i233.6, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit237"

bb18.i.i.i233.6:                                  ; preds = %bb14.i.i.i226.6
  %125 = mul i32 %123, 10
  %126 = add i32 %124, %125
  br label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit237"

"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h61201820a722c695E.exit237": ; preds = %bb33.i.i.i165, %bb34.i.i.i170, %bb39.i.i.i176, %bb23.i.i.i195, %bb20.i.i.i188, %bb24.i.i.i205, %bb25.i.i.i210, %bb30.i.i.i216, %bb18.i.i.i233, %bb14.i.i.i226, %bb14.i.i.i226.1, %bb18.i.i.i233.1, %bb14.i.i.i226.2, %bb18.i.i.i233.2, %bb14.i.i.i226.3, %bb18.i.i.i233.3, %bb14.i.i.i226.4, %bb18.i.i.i233.4, %bb14.i.i.i226.5, %bb18.i.i.i233.5, %bb14.i.i.i226.6, %bb18.i.i.i233.6, %bb19.preheader.i.i.i186, %bb13.preheader.i.i.i224, %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h97fc9b88dd567aa2E.exit", %bb7.i.i.i155, %bb7.i.i.i155
  %_0.sroa.0.0.i.i.i156 = phi i32 [ 0, %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h97fc9b88dd567aa2E.exit" ], [ 0, %bb7.i.i.i155 ], [ 0, %bb7.i.i.i155 ], [ 0, %bb13.preheader.i.i.i224 ], [ 0, %bb19.preheader.i.i.i186 ], [ 0, %bb14.i.i.i226 ], [ %108, %bb18.i.i.i233 ], [ 0, %bb14.i.i.i226.1 ], [ %111, %bb18.i.i.i233.1 ], [ 0, %bb14.i.i.i226.2 ], [ %114, %bb18.i.i.i233.2 ], [ 0, %bb14.i.i.i226.3 ], [ %117, %bb18.i.i.i233.3 ], [ 0, %bb14.i.i.i226.4 ], [ %120, %bb18.i.i.i233.4 ], [ 0, %bb14.i.i.i226.5 ], [ %123, %bb18.i.i.i233.5 ], [ 0, %bb14.i.i.i226.6 ], [ %126, %bb18.i.i.i233.6 ], [ 0, %bb30.i.i.i216 ], [ 0, %bb25.i.i.i210 ], [ %result.sroa.0.3.i.i.i206, %bb24.i.i.i205 ], [ 0, %bb20.i.i.i188 ], [ %103, %bb23.i.i.i195 ], [ 0, %bb39.i.i.i176 ], [ 0, %bb34.i.i.i170 ], [ %result.sroa.0.0.i.i.i166, %bb33.i.i.i165 ]
  %127 = add i32 %_0.sroa.0.0.i.i.i156, %_13
  %_11 = icmp slt i32 %127, %divisor
  br i1 %_11, label %bb6, label %bb11.preheader
}
