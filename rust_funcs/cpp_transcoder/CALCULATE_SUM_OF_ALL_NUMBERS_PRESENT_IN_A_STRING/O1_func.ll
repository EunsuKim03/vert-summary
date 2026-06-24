define noundef i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %str) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %e.i14 = alloca [1 x i8], align 1
  %e.i = alloca [1 x i8], align 1
  %temp = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %temp)
  store i64 0, ptr %temp, align 8, !alias.scope !1630
  %_1.sroa.4.0._0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %temp, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %_1.sroa.4.0._0.sroa_idx.i, align 8, !alias.scope !1630
  %_1.sroa.5.0._0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %temp, i64 16
  store i64 0, ptr %_1.sroa.5.0._0.sroa_idx.i, align 8, !alias.scope !1630
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_6.i.i = load ptr, ptr %0, align 8, !alias.scope !1633, !nonnull !37, !noundef !37
  %1 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %len.i.i = load i64, ptr %1, align 8, !alias.scope !1633, !noundef !37
  %_7.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %len.i.i
  br label %bb5

bb27:                                             ; preds = %cleanup.i.i, %cleanup, %bb26
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb26 ], [ %2, %cleanup ], [ %42, %cleanup.i.i ]
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h90aae6d11478c896E"(ptr noalias noundef align 8 dereferenceable(24) %str) #28
          to label %common.resume unwind label %terminate

cleanup:                                          ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h522f301687d16547E.exit.i"
  %2 = landingpad { ptr, i32 }
          cleanup
  br label %bb27

bb26:                                             ; preds = %cleanup1.loopexit, %cleanup1.loopexit.split-lp, %cleanup2.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body135, %cleanup2.body ], [ %lpad.loopexit, %cleanup1.loopexit ], [ %lpad.loopexit.split-lp, %cleanup1.loopexit.split-lp ]
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h90aae6d11478c896E"(ptr noalias noundef align 8 dereferenceable(24) %temp) #28
          to label %bb27 unwind label %terminate

cleanup1.loopexit:                                ; preds = %bb8.i, %bb2.i36
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb26

cleanup1.loopexit.split-lp:                       ; preds = %bb2.i.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb26

bb5:                                              ; preds = %bb20, %start
  %iter.sroa.0.0 = phi ptr [ %_6.i.i, %start ], [ %iter.sroa.0.2, %bb20 ]
  %sum.sroa.0.0 = phi i32 [ 0, %start ], [ %sum.sroa.0.1, %bb20 ]
  %_7.i.i.i = icmp ne ptr %iter.sroa.0.0, %_7.i
  %spec.select.idx = zext i1 %_7.i.i.i to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %iter.sroa.0.0, i64 %spec.select.idx
  br i1 %_7.i.i.i, label %bb14.i.i, label %bb6

bb14.i.i:                                         ; preds = %bb5
  %x.i.i = load i8, ptr %iter.sroa.0.0, align 1, !noalias !1638, !noundef !37
  %_6.i.i22 = icmp sgt i8 %x.i.i, -1
  br i1 %_6.i.i22, label %bb3.i.i, label %bb4.i.i

bb4.i.i:                                          ; preds = %bb14.i.i
  %_30.i.i = and i8 %x.i.i, 31
  %init.i.i = zext nneg i8 %_30.i.i to i32
  %_7.i10.i.i = icmp ne ptr %spec.select, %_7.i
  call void @llvm.assume(i1 %_7.i10.i.i)
  %_18.i12.i.i = getelementptr inbounds nuw i8, ptr %spec.select, i64 1
  %y.i.i = load i8, ptr %spec.select, align 1, !noalias !1638, !noundef !37
  %_34.i.i = shl nuw nsw i32 %init.i.i, 6
  %_36.i.i = and i8 %y.i.i, 63
  %_35.i.i = zext nneg i8 %_36.i.i to i32
  %3 = or disjoint i32 %_34.i.i, %_35.i.i
  %_13.i.i = icmp ugt i8 %x.i.i, -33
  br i1 %_13.i.i, label %bb6.i.i, label %bb6

bb3.i.i:                                          ; preds = %bb14.i.i
  %_7.i.i = zext nneg i8 %x.i.i to i32
  br label %bb6

bb6.i.i:                                          ; preds = %bb4.i.i
  %_7.i17.i.i = icmp ne ptr %_18.i12.i.i, %_7.i
  call void @llvm.assume(i1 %_7.i17.i.i)
  %_18.i19.i.i = getelementptr inbounds nuw i8, ptr %spec.select, i64 2
  %z.i.i = load i8, ptr %_18.i12.i.i, align 1, !noalias !1638, !noundef !37
  %_40.i.i = shl nuw nsw i32 %_35.i.i, 6
  %_42.i.i = and i8 %z.i.i, 63
  %_41.i.i = zext nneg i8 %_42.i.i to i32
  %y_z.i.i = or disjoint i32 %_40.i.i, %_41.i.i
  %_20.i.i = shl nuw nsw i32 %init.i.i, 12
  %4 = or disjoint i32 %y_z.i.i, %_20.i.i
  %_21.i.i = icmp ugt i8 %x.i.i, -17
  br i1 %_21.i.i, label %bb8.i.i, label %bb6

bb8.i.i:                                          ; preds = %bb6.i.i
  %_7.i24.i.i = icmp ne ptr %_18.i19.i.i, %_7.i
  call void @llvm.assume(i1 %_7.i24.i.i)
  %_18.i26.i.i = getelementptr inbounds nuw i8, ptr %spec.select, i64 3
  %w.i.i = load i8, ptr %_18.i19.i.i, align 1, !noalias !1638, !noundef !37
  %_26.i.i = shl nuw nsw i32 %init.i.i, 18
  %_25.i.i = and i32 %_26.i.i, 1835008
  %_46.i.i = shl nuw nsw i32 %y_z.i.i, 6
  %_48.i.i = and i8 %w.i.i, 63
  %_47.i.i = zext nneg i8 %_48.i.i to i32
  %_27.i.i = or disjoint i32 %_46.i.i, %_47.i.i
  %5 = or disjoint i32 %_27.i.i, %_25.i.i
  br label %bb6

bb6:                                              ; preds = %bb8.i.i, %bb6.i.i, %bb3.i.i, %bb4.i.i, %bb5
  %iter.sroa.0.2 = phi ptr [ %spec.select, %bb5 ], [ %spec.select, %bb3.i.i ], [ %_18.i26.i.i, %bb8.i.i ], [ %_18.i19.i.i, %bb6.i.i ], [ %_18.i12.i.i, %bb4.i.i ]
  %spec.select.i = phi i32 [ 1114112, %bb5 ], [ %_7.i.i, %bb3.i.i ], [ %5, %bb8.i.i ], [ %4, %bb6.i.i ], [ %3, %bb4.i.i ]
  %.not = icmp eq i32 %spec.select.i, 1114112
  br i1 %.not, label %bb9, label %bb8

bb8:                                              ; preds = %bb6
  %6 = add nsw i32 %spec.select.i, -48
  %or.cond.i = icmp ult i32 %6, 10
  br i1 %or.cond.i, label %bb11, label %bb1.i

bb1.i:                                            ; preds = %bb8
  %_6.i = icmp samesign ugt i32 %spec.select.i, 177
  br i1 %_6.i, label %bb8.i, label %bb13

bb8.i:                                            ; preds = %bb1.i
; invoke core::unicode::unicode_data::n::lookup_slow
  %7 = invoke noundef zeroext i1 @_ZN4core7unicode12unicode_data1n11lookup_slow17h22daba5cd9540137E(i32 noundef range(i32 0, 1114112) %spec.select.i) #27
          to label %bb10 unwind label %cleanup1.loopexit

bb9:                                              ; preds = %bb6
  %_6.i.i24 = load ptr, ptr %_1.sroa.4.0._0.sroa_idx.i, align 8, !alias.scope !1643, !nonnull !37, !noundef !37
  %len.i.i25 = load i64, ptr %_1.sroa.5.0._0.sroa_idx.i, align 8, !alias.scope !1643, !noundef !37
  switch i64 %len.i.i25, label %bb9.i.i.i [
    i64 0, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h41871728795138d2E.exit"
    i64 1, label %bb7.i.i.i
  ]

bb6.i.i.i27:                                      ; preds = %bb7.i.i.i
  %_8.not.i.i.i = icmp eq i64 %len.i.i25, 0
  br i1 %_8.not.i.i.i, label %bb64.i.i.i, label %bb9.i.i.i

bb7.i.i.i:                                        ; preds = %bb9
  %8 = load i8, ptr %_6.i.i24, align 1, !alias.scope !1648, !noundef !37
  switch i8 %8, label %bb6.i.i.i27 [
    i8 43, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h41871728795138d2E.exit"
    i8 45, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h41871728795138d2E.exit"
  ]

bb46.loopexit86.split.loop.exit.i.i.i:            ; preds = %bb25.i.i.i
  %.mux78.le.i.i.i = select i1 %_14.i81.i.i.i, i64 256, i64 512
  br label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h41871728795138d2E.exit"

bb46.loopexit90.split.loop.exit.i.i.i:            ; preds = %bb34.i.i.i
  %.mux.le.i.i.i = select i1 %_14.i.i.i.i, i64 256, i64 768
  br label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h41871728795138d2E.exit"

bb9.i.i.i:                                        ; preds = %bb6.i.i.i27, %bb9
  %9 = load i8, ptr %_6.i.i24, align 1, !alias.scope !1648, !noundef !37
  switch i8 %9, label %bb64.i.i.i [
    i8 43, label %bb11.i.i.i
    i8 45, label %bb10.i.i.i
  ]

bb11.i.i.i:                                       ; preds = %bb9.i.i.i
  %rest.0.i.i.i = getelementptr inbounds nuw i8, ptr %_6.i.i24, i64 1
  %rest.1.i.i.i = add nsw i64 %len.i.i25, -1
  br label %bb64.i.i.i

bb10.i.i.i:                                       ; preds = %bb9.i.i.i
  %rest.03.i.i.i = getelementptr inbounds nuw i8, ptr %_6.i.i24, i64 1
  %rest.14.i.i.i = add nsw i64 %len.i.i25, -1
  %10 = icmp samesign ult i64 %len.i.i25, 9
  br i1 %10, label %bb19.preheader.i.i.i, label %bb33.i.i.i

bb19.preheader.i.i.i:                             ; preds = %bb10.i.i.i
  %_29.not98.i.i.i = icmp eq i64 %rest.14.i.i.i, 0
  br i1 %_29.not98.i.i.i, label %bb42.i.i.i, label %bb20.i.i.i

bb33.i.i.i:                                       ; preds = %bb10.i.i.i, %bb39.i.i.i
  %result.sroa.0.0.i.i.i = phi i32 [ %_89.0.i.i.i, %bb39.i.i.i ], [ 0, %bb10.i.i.i ]
  %src.sroa.26.1.i.i.i = phi i64 [ %rest.16.i.i.i, %bb39.i.i.i ], [ %rest.14.i.i.i, %bb10.i.i.i ]
  %src.sroa.0.1.i.i.i = phi ptr [ %rest.05.i.i.i, %bb39.i.i.i ], [ %rest.03.i.i.i, %bb10.i.i.i ]
  %_57.not.i.i.i = icmp eq i64 %src.sroa.26.1.i.i.i, 0
  br i1 %_57.not.i.i.i, label %bb42.i.i.i, label %bb34.i.i.i

bb42.i.i.i:                                       ; preds = %bb33.i.i.i, %bb23.i.i.i, %bb24.i.i.i, %bb18.i.i.i, %bb18.i.i.i.1, %bb18.i.i.i.2, %bb18.i.i.i.3, %bb18.i.i.i.4, %bb18.i.i.i.5, %bb18.i.i.i.6, %bb13.preheader.i.i.i, %bb19.preheader.i.i.i
  %result.sroa.0.1.i.i.i = phi i32 [ 0, %bb13.preheader.i.i.i ], [ 0, %bb19.preheader.i.i.i ], [ %23, %bb18.i.i.i ], [ %26, %bb18.i.i.i.1 ], [ %29, %bb18.i.i.i.2 ], [ %32, %bb18.i.i.i.3 ], [ %35, %bb18.i.i.i.4 ], [ %38, %bb18.i.i.i.5 ], [ %41, %bb18.i.i.i.6 ], [ %result.sroa.0.3.i.i.i, %bb24.i.i.i ], [ %18, %bb23.i.i.i ], [ %result.sroa.0.0.i.i.i, %bb33.i.i.i ]
  %11 = zext i32 %result.sroa.0.1.i.i.i to i64
  %12 = shl nuw i64 %11, 32
  br label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h41871728795138d2E.exit"

bb34.i.i.i:                                       ; preds = %bb33.i.i.i
  %13 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %result.sroa.0.0.i.i.i, i32 10)
  %_85.1.i.i.i = extractvalue { i32, i1 } %13, 1
  %_65.i.i.i = load i8, ptr %src.sroa.0.1.i.i.i, align 1, !alias.scope !1648, !noundef !37
  %_64.i.i.i = zext i8 %_65.i.i.i to i32
  %14 = add nsw i32 %_64.i.i.i, -48
  %_14.i.i.i.i = icmp ugt i32 %14, 9
  %brmerge.i.i.i = select i1 %_14.i.i.i.i, i1 true, i1 %_85.1.i.i.i
  br i1 %brmerge.i.i.i, label %bb46.loopexit90.split.loop.exit.i.i.i, label %bb39.i.i.i

bb39.i.i.i:                                       ; preds = %bb34.i.i.i
  %_85.0.i.i.i = extractvalue { i32, i1 } %13, 0
  %rest.16.i.i.i = add nsw i64 %src.sroa.26.1.i.i.i, -1
  %rest.05.i.i.i = getelementptr inbounds nuw i8, ptr %src.sroa.0.1.i.i.i, i64 1
  %15 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_85.0.i.i.i, i32 %14)
  %_89.1.i.i.i = extractvalue { i32, i1 } %15, 1
  %_89.0.i.i.i = extractvalue { i32, i1 } %15, 0
  br i1 %_89.1.i.i.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h41871728795138d2E.exit", label %bb33.i.i.i

bb20.i.i.i:                                       ; preds = %bb19.preheader.i.i.i, %bb23.i.i.i
  %src.sroa.0.2101.i.i.i = phi ptr [ %rest.08.i.i.i, %bb23.i.i.i ], [ %rest.03.i.i.i, %bb19.preheader.i.i.i ]
  %src.sroa.26.2100.i.i.i = phi i64 [ %rest.19.i.i.i, %bb23.i.i.i ], [ %rest.14.i.i.i, %bb19.preheader.i.i.i ]
  %result.sroa.0.299.i.i.i = phi i32 [ %18, %bb23.i.i.i ], [ 0, %bb19.preheader.i.i.i ]
  %_36.i.i.i = load i8, ptr %src.sroa.0.2101.i.i.i, align 1, !alias.scope !1648, !noundef !37
  %_35.i.i.i = zext i8 %_36.i.i.i to i32
  %16 = add nsw i32 %_35.i.i.i, -48
  %_14.i79.i.i.i = icmp ult i32 %16, 10
  br i1 %_14.i79.i.i.i, label %bb23.i.i.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h41871728795138d2E.exit"

bb23.i.i.i:                                       ; preds = %bb20.i.i.i
  %17 = mul i32 %result.sroa.0.299.i.i.i, 10
  %rest.19.i.i.i = add nsw i64 %src.sroa.26.2100.i.i.i, -1
  %rest.08.i.i.i = getelementptr inbounds nuw i8, ptr %src.sroa.0.2101.i.i.i, i64 1
  %18 = sub i32 %17, %16
  %_29.not.i.i.i = icmp eq i64 %rest.19.i.i.i, 0
  br i1 %_29.not.i.i.i, label %bb42.i.i.i, label %bb20.i.i.i

bb64.i.i.i:                                       ; preds = %bb11.i.i.i, %bb9.i.i.i, %bb6.i.i.i27
  %src.sroa.26.0.i.i.i = phi i64 [ %rest.1.i.i.i, %bb11.i.i.i ], [ %len.i.i25, %bb9.i.i.i ], [ %len.i.i25, %bb6.i.i.i27 ]
  %src.sroa.0.0.i.i.i = phi ptr [ %rest.0.i.i.i, %bb11.i.i.i ], [ %_6.i.i24, %bb9.i.i.i ], [ %_6.i.i24, %bb6.i.i.i27 ]
  %19 = icmp ult i64 %src.sroa.26.0.i.i.i, 8
  br i1 %19, label %bb13.preheader.i.i.i, label %bb24.i.i.i

bb13.preheader.i.i.i:                             ; preds = %bb64.i.i.i
  %_16.not104.i.i.i = icmp eq i64 %src.sroa.26.0.i.i.i, 0
  br i1 %_16.not104.i.i.i, label %bb42.i.i.i, label %bb14.i.i.i

bb24.i.i.i:                                       ; preds = %bb64.i.i.i, %bb30.i.i.i
  %result.sroa.0.3.i.i.i = phi i32 [ %_81.0.i.i.i, %bb30.i.i.i ], [ 0, %bb64.i.i.i ]
  %src.sroa.26.3.i.i.i = phi i64 [ %rest.112.i.i.i, %bb30.i.i.i ], [ %src.sroa.26.0.i.i.i, %bb64.i.i.i ]
  %src.sroa.0.3.i.i.i = phi ptr [ %rest.011.i.i.i, %bb30.i.i.i ], [ %src.sroa.0.0.i.i.i, %bb64.i.i.i ]
  %_42.not.i.i.i = icmp eq i64 %src.sroa.26.3.i.i.i, 0
  br i1 %_42.not.i.i.i, label %bb42.i.i.i, label %bb25.i.i.i

bb25.i.i.i:                                       ; preds = %bb24.i.i.i
  %20 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %result.sroa.0.3.i.i.i, i32 10)
  %_77.1.i.i.i = extractvalue { i32, i1 } %20, 1
  %_50.i.i.i = load i8, ptr %src.sroa.0.3.i.i.i, align 1, !alias.scope !1648, !noundef !37
  %_49.i.i.i = zext i8 %_50.i.i.i to i32
  %21 = add nsw i32 %_49.i.i.i, -48
  %_14.i81.i.i.i = icmp ugt i32 %21, 9
  %brmerge77.i.i.i = select i1 %_14.i81.i.i.i, i1 true, i1 %_77.1.i.i.i
  br i1 %brmerge77.i.i.i, label %bb46.loopexit86.split.loop.exit.i.i.i, label %bb30.i.i.i

bb30.i.i.i:                                       ; preds = %bb25.i.i.i
  %_77.0.i.i.i = extractvalue { i32, i1 } %20, 0
  %rest.112.i.i.i = add nsw i64 %src.sroa.26.3.i.i.i, -1
  %rest.011.i.i.i = getelementptr inbounds nuw i8, ptr %src.sroa.0.3.i.i.i, i64 1
  %22 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_77.0.i.i.i, i32 %21)
  %_81.1.i.i.i = extractvalue { i32, i1 } %22, 1
  %_81.0.i.i.i = extractvalue { i32, i1 } %22, 0
  br i1 %_81.1.i.i.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h41871728795138d2E.exit", label %bb24.i.i.i

bb14.i.i.i:                                       ; preds = %bb13.preheader.i.i.i
  %_23.i.i.i = load i8, ptr %src.sroa.0.0.i.i.i, align 1, !alias.scope !1648, !noundef !37
  %_22.i.i.i = zext i8 %_23.i.i.i to i32
  %23 = add nsw i32 %_22.i.i.i, -48
  %_14.i83.i.i.i = icmp ult i32 %23, 10
  br i1 %_14.i83.i.i.i, label %bb18.i.i.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h41871728795138d2E.exit"

bb18.i.i.i:                                       ; preds = %bb14.i.i.i
  %_16.not.i.i.i = icmp eq i64 %src.sroa.26.0.i.i.i, 1
  br i1 %_16.not.i.i.i, label %bb42.i.i.i, label %bb14.i.i.i.1

bb14.i.i.i.1:                                     ; preds = %bb18.i.i.i
  %rest.015.i.i.i = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i.i.i, i64 1
  %_23.i.i.i.1 = load i8, ptr %rest.015.i.i.i, align 1, !alias.scope !1648, !noundef !37
  %_22.i.i.i.1 = zext i8 %_23.i.i.i.1 to i32
  %24 = add nsw i32 %_22.i.i.i.1, -48
  %_14.i83.i.i.i.1 = icmp ult i32 %24, 10
  br i1 %_14.i83.i.i.i.1, label %bb18.i.i.i.1, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h41871728795138d2E.exit"

bb18.i.i.i.1:                                     ; preds = %bb14.i.i.i.1
  %25 = mul nuw nsw i32 %23, 10
  %26 = add nuw nsw i32 %24, %25
  %_16.not.i.i.i.1 = icmp eq i64 %src.sroa.26.0.i.i.i, 2
  br i1 %_16.not.i.i.i.1, label %bb42.i.i.i, label %bb14.i.i.i.2

bb14.i.i.i.2:                                     ; preds = %bb18.i.i.i.1
  %rest.015.i.i.i.1 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i.i.i, i64 2
  %_23.i.i.i.2 = load i8, ptr %rest.015.i.i.i.1, align 1, !alias.scope !1648, !noundef !37
  %_22.i.i.i.2 = zext i8 %_23.i.i.i.2 to i32
  %27 = add nsw i32 %_22.i.i.i.2, -48
  %_14.i83.i.i.i.2 = icmp ult i32 %27, 10
  br i1 %_14.i83.i.i.i.2, label %bb18.i.i.i.2, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h41871728795138d2E.exit"

bb18.i.i.i.2:                                     ; preds = %bb14.i.i.i.2
  %28 = mul nuw nsw i32 %26, 10
  %29 = add nuw nsw i32 %27, %28
  %_16.not.i.i.i.2 = icmp eq i64 %src.sroa.26.0.i.i.i, 3
  br i1 %_16.not.i.i.i.2, label %bb42.i.i.i, label %bb14.i.i.i.3

bb14.i.i.i.3:                                     ; preds = %bb18.i.i.i.2
  %rest.015.i.i.i.2 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i.i.i, i64 3
  %_23.i.i.i.3 = load i8, ptr %rest.015.i.i.i.2, align 1, !alias.scope !1648, !noundef !37
  %_22.i.i.i.3 = zext i8 %_23.i.i.i.3 to i32
  %30 = add nsw i32 %_22.i.i.i.3, -48
  %_14.i83.i.i.i.3 = icmp ult i32 %30, 10
  br i1 %_14.i83.i.i.i.3, label %bb18.i.i.i.3, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h41871728795138d2E.exit"

bb18.i.i.i.3:                                     ; preds = %bb14.i.i.i.3
  %31 = mul nuw nsw i32 %29, 10
  %32 = add nuw nsw i32 %30, %31
  %_16.not.i.i.i.3 = icmp eq i64 %src.sroa.26.0.i.i.i, 4
  br i1 %_16.not.i.i.i.3, label %bb42.i.i.i, label %bb14.i.i.i.4

bb14.i.i.i.4:                                     ; preds = %bb18.i.i.i.3
  %rest.015.i.i.i.3 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i.i.i, i64 4
  %_23.i.i.i.4 = load i8, ptr %rest.015.i.i.i.3, align 1, !alias.scope !1648, !noundef !37
  %_22.i.i.i.4 = zext i8 %_23.i.i.i.4 to i32
  %33 = add nsw i32 %_22.i.i.i.4, -48
  %_14.i83.i.i.i.4 = icmp ult i32 %33, 10
  br i1 %_14.i83.i.i.i.4, label %bb18.i.i.i.4, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h41871728795138d2E.exit"

bb18.i.i.i.4:                                     ; preds = %bb14.i.i.i.4
  %34 = mul i32 %32, 10
  %35 = add i32 %33, %34
  %_16.not.i.i.i.4 = icmp eq i64 %src.sroa.26.0.i.i.i, 5
  br i1 %_16.not.i.i.i.4, label %bb42.i.i.i, label %bb14.i.i.i.5

bb14.i.i.i.5:                                     ; preds = %bb18.i.i.i.4
  %rest.015.i.i.i.4 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i.i.i, i64 5
  %_23.i.i.i.5 = load i8, ptr %rest.015.i.i.i.4, align 1, !alias.scope !1648, !noundef !37
  %_22.i.i.i.5 = zext i8 %_23.i.i.i.5 to i32
  %36 = add nsw i32 %_22.i.i.i.5, -48
  %_14.i83.i.i.i.5 = icmp ult i32 %36, 10
  br i1 %_14.i83.i.i.i.5, label %bb18.i.i.i.5, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h41871728795138d2E.exit"

bb18.i.i.i.5:                                     ; preds = %bb14.i.i.i.5
  %37 = mul i32 %35, 10
  %38 = add i32 %36, %37
  %_16.not.i.i.i.5 = icmp eq i64 %src.sroa.26.0.i.i.i, 6
  br i1 %_16.not.i.i.i.5, label %bb42.i.i.i, label %bb14.i.i.i.6

bb14.i.i.i.6:                                     ; preds = %bb18.i.i.i.5
  %rest.015.i.i.i.5 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i.i.i, i64 6
  %_23.i.i.i.6 = load i8, ptr %rest.015.i.i.i.5, align 1, !alias.scope !1648, !noundef !37
  %_22.i.i.i.6 = zext i8 %_23.i.i.i.6 to i32
  %39 = add nsw i32 %_22.i.i.i.6, -48
  %_14.i83.i.i.i.6 = icmp ult i32 %39, 10
  br i1 %_14.i83.i.i.i.6, label %bb18.i.i.i.6, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h41871728795138d2E.exit"

bb18.i.i.i.6:                                     ; preds = %bb14.i.i.i.6
  %40 = mul i32 %38, 10
  %41 = add i32 %39, %40
  br label %bb42.i.i.i

"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h41871728795138d2E.exit": ; preds = %bb39.i.i.i, %bb20.i.i.i, %bb30.i.i.i, %bb14.i.i.i, %bb14.i.i.i.1, %bb14.i.i.i.2, %bb14.i.i.i.3, %bb14.i.i.i.4, %bb14.i.i.i.5, %bb14.i.i.i.6, %bb9, %bb7.i.i.i, %bb7.i.i.i, %bb46.loopexit86.split.loop.exit.i.i.i, %bb46.loopexit90.split.loop.exit.i.i.i, %bb42.i.i.i
  %_0.sroa.0.0.i.i.i26 = phi i1 [ false, %bb42.i.i.i ], [ true, %bb9 ], [ true, %bb7.i.i.i ], [ true, %bb7.i.i.i ], [ true, %bb46.loopexit86.split.loop.exit.i.i.i ], [ true, %bb46.loopexit90.split.loop.exit.i.i.i ], [ true, %bb14.i.i.i.6 ], [ true, %bb14.i.i.i.5 ], [ true, %bb14.i.i.i.4 ], [ true, %bb14.i.i.i.3 ], [ true, %bb14.i.i.i.2 ], [ true, %bb14.i.i.i.1 ], [ true, %bb14.i.i.i ], [ true, %bb30.i.i.i ], [ true, %bb20.i.i.i ], [ true, %bb39.i.i.i ]
  %_0.sroa.12.0.insert.insert.i.i.i = phi i64 [ %12, %bb42.i.i.i ], [ %len.i.i25, %bb9 ], [ 256, %bb7.i.i.i ], [ 256, %bb7.i.i.i ], [ %.mux78.le.i.i.i, %bb46.loopexit86.split.loop.exit.i.i.i ], [ %.mux.le.i.i.i, %bb46.loopexit90.split.loop.exit.i.i.i ], [ 256, %bb14.i.i.i.6 ], [ 256, %bb14.i.i.i.5 ], [ 256, %bb14.i.i.i.4 ], [ 256, %bb14.i.i.i.3 ], [ 256, %bb14.i.i.i.2 ], [ 256, %bb14.i.i.i.1 ], [ 256, %bb14.i.i.i ], [ 512, %bb30.i.i.i ], [ 256, %bb20.i.i.i ], [ 768, %bb39.i.i.i ]
  br i1 %_0.sroa.0.0.i.i.i26, label %bb2.i17, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h62b37049f0cd4fd1E.exit21", !prof !1033

bb2.i17:                                          ; preds = %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h41871728795138d2E.exit"
  %.sroa.4.0.extract.shift.i18 = lshr exact i64 %_0.sroa.12.0.insert.insert.i.i.i, 8
  %.sroa.4.0.extract.trunc.i19 = trunc i64 %.sroa.4.0.extract.shift.i18 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %e.i14), !noalias !1655
  store i8 %.sroa.4.0.extract.trunc.i19, ptr %e.i14, align 1, !noalias !1655
  br label %bb2.i.invoke

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h62b37049f0cd4fd1E.exit21": ; preds = %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h41871728795138d2E.exit"
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %temp)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h522f301687d16547E.exit.i" unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h62b37049f0cd4fd1E.exit21"
  %42 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %temp)
          to label %bb27 unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %43 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #24
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h522f301687d16547E.exit.i": ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h62b37049f0cd4fd1E.exit21"
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %temp)
          to label %bb24 unwind label %cleanup

bb24:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h522f301687d16547E.exit.i"
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %temp)
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h90aae6d11478c896E.exit33" unwind label %cleanup.i.i29

cleanup.i.i29:                                    ; preds = %bb24
  %44 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %common.resume unwind label %terminate.i.i30

terminate.i.i30:                                  ; preds = %cleanup.i.i29
  %45 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #24
  unreachable

common.resume:                                    ; preds = %bb27, %cleanup.i.i29
  %common.resume.op = phi { ptr, i32 } [ %44, %cleanup.i.i29 ], [ %.pn.pn, %bb27 ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h90aae6d11478c896E.exit33": ; preds = %bb24
  %.sroa.6.0.extract.shift.i15 = lshr i64 %_0.sroa.12.0.insert.insert.i.i.i, 32
  %.sroa.6.0.extract.trunc.i16 = trunc nuw i64 %.sroa.6.0.extract.shift.i15 to i32
  %46 = add i32 %sum.sroa.0.0, %.sroa.6.0.extract.trunc.i16
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
  ret i32 %46

bb10:                                             ; preds = %bb8.i
  br i1 %7, label %bb11, label %bb13

bb13:                                             ; preds = %bb1.i, %bb10
  %_6.i.i34 = load ptr, ptr %_1.sroa.4.0._0.sroa_idx.i, align 8, !alias.scope !1658, !nonnull !37, !noundef !37
  %len.i.i35 = load i64, ptr %_1.sroa.5.0._0.sroa_idx.i, align 8, !alias.scope !1658, !noundef !37
  switch i64 %len.i.i35, label %bb9.i.i.i52 [
    i64 0, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h41871728795138d2E.exit128"
    i64 1, label %bb7.i.i.i46
  ]

bb11:                                             ; preds = %bb8, %bb10
  %len.i = load i64, ptr %_1.sroa.5.0._0.sroa_idx.i, align 8, !alias.scope !1663, !noundef !37
  %_14.i = icmp sgt i64 %len.i, -1
  call void @llvm.assume(i1 %_14.i)
  %_16.i = icmp samesign ult i32 %spec.select.i, 128
  br i1 %_16.i, label %bb2.i36, label %bb3.i

bb3.i:                                            ; preds = %bb11
  %_17.i = icmp samesign ult i32 %spec.select.i, 2048
  br i1 %_17.i, label %bb2.i36, label %bb4.i

bb4.i:                                            ; preds = %bb3.i
  %_18.i = icmp samesign ult i32 %spec.select.i, 65536
  %..i = select i1 %_18.i, i64 3, i64 4
  br label %bb2.i36

bb2.i36:                                          ; preds = %bb4.i, %bb3.i, %bb11
  %ch_len.sroa.0.0.i = phi i64 [ 1, %bb11 ], [ %..i, %bb4.i ], [ 2, %bb3.i ]
; invoke alloc::vec::Vec<T,A>::reserve
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd7d983ab73297baaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %temp, i64 noundef %ch_len.sroa.0.0.i)
          to label %.noexc45 unwind label %cleanup1.loopexit

.noexc45:                                         ; preds = %bb2.i36
  %_20.i = load ptr, ptr %_1.sroa.4.0._0.sroa_idx.i, align 8, !alias.scope !1663, !nonnull !37, !noundef !37
  %count.i = load i64, ptr %_1.sroa.5.0._0.sroa_idx.i, align 8, !alias.scope !1663, !noundef !37
  %_21.i = icmp sgt i64 %count.i, -1
  call void @llvm.assume(i1 %_21.i)
  %_8.i = getelementptr inbounds nuw i8, ptr %_20.i, i64 %count.i
  br i1 %_16.i, label %bb12.i.i, label %bb7.i.i

bb7.i.i:                                          ; preds = %.noexc45
  %_29.i.i = icmp samesign ult i32 %spec.select.i, 2048
  %47 = trunc i32 %spec.select.i to i8
  %_5.i.i = and i8 %47, 63
  %last1.i.i = or disjoint i8 %_5.i.i, -128
  %_10.i.i = lshr i32 %spec.select.i, 6
  %48 = trunc i32 %_10.i.i to i8
  %_8.i.i = and i8 %48, 63
  %last2.i.i = or disjoint i8 %_8.i.i, -128
  %_14.i.i = lshr i32 %spec.select.i, 12
  %49 = trunc i32 %_14.i.i to i8
  %_12.i.i = and i8 %49, 63
  %last3.i.i = or disjoint i8 %_12.i.i, -128
  %_18.i.i = lshr i32 %spec.select.i, 18
  %_16.i.i = trunc nuw nsw i32 %_18.i.i to i8
  %last4.i.i = or disjoint i8 %_16.i.i, -16
  br i1 %_29.i.i, label %bb1.i.i43, label %bb2.i.i

bb12.i.i:                                         ; preds = %.noexc45
  %50 = trunc nuw nsw i32 %spec.select.i to i8
  store i8 %50, ptr %_8.i, align 1
  br label %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit

bb2.i.i:                                          ; preds = %bb7.i.i
  %_30.i.i37 = icmp samesign ult i32 %spec.select.i, 65536
  br i1 %_30.i.i37, label %bb3.i.i42, label %bb4.i.i38

bb1.i.i43:                                        ; preds = %bb7.i.i
  %51 = or disjoint i8 %48, -64
  store i8 %51, ptr %_8.i, align 1
  %_21.i.i44 = getelementptr inbounds nuw i8, ptr %_8.i, i64 1
  store i8 %last1.i.i, ptr %_21.i.i44, align 1
  br label %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit

bb4.i.i38:                                        ; preds = %bb2.i.i
  store i8 %last4.i.i, ptr %_8.i, align 1
  %_25.i.i39 = getelementptr inbounds nuw i8, ptr %_8.i, i64 1
  store i8 %last3.i.i, ptr %_25.i.i39, align 1
  %_26.i.i40 = getelementptr inbounds nuw i8, ptr %_8.i, i64 2
  store i8 %last2.i.i, ptr %_26.i.i40, align 1
  %_27.i.i41 = getelementptr inbounds nuw i8, ptr %_8.i, i64 3
  store i8 %last1.i.i, ptr %_27.i.i41, align 1
  br label %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit

bb3.i.i42:                                        ; preds = %bb2.i.i
  %52 = or disjoint i8 %49, -32
  store i8 %52, ptr %_8.i, align 1
  %_23.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 1
  store i8 %last2.i.i, ptr %_23.i.i, align 1
  %_24.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 2
  store i8 %last1.i.i, ptr %_24.i.i, align 1
  br label %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit

_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit: ; preds = %bb12.i.i, %bb1.i.i43, %bb4.i.i38, %bb3.i.i42
  %new_len.i = add nuw i64 %ch_len.sroa.0.0.i, %len.i
  br label %bb20

bb6.i.i.i50:                                      ; preds = %bb7.i.i.i46
  %_8.not.i.i.i51 = icmp eq i64 %len.i.i35, 0
  br i1 %_8.not.i.i.i51, label %bb64.i.i.i93, label %bb9.i.i.i52

bb7.i.i.i46:                                      ; preds = %bb13
  %53 = load i8, ptr %_6.i.i34, align 1, !alias.scope !1666, !noundef !37
  switch i8 %53, label %bb6.i.i.i50 [
    i8 43, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h41871728795138d2E.exit128"
    i8 45, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h41871728795138d2E.exit128"
  ]

bb46.loopexit86.split.loop.exit.i.i.i113:         ; preds = %bb25.i.i.i101
  %.mux78.le.i.i.i114 = select i1 %_14.i81.i.i.i105, i64 256, i64 512
  br label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h41871728795138d2E.exit128"

bb46.loopexit90.split.loop.exit.i.i.i73:          ; preds = %bb34.i.i.i61
  %.mux.le.i.i.i74 = select i1 %_14.i.i.i.i65, i64 256, i64 768
  br label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h41871728795138d2E.exit128"

bb9.i.i.i52:                                      ; preds = %bb6.i.i.i50, %bb13
  %54 = load i8, ptr %_6.i.i34, align 1, !alias.scope !1666, !noundef !37
  switch i8 %54, label %bb64.i.i.i93 [
    i8 43, label %bb11.i.i.i90
    i8 45, label %bb10.i.i.i53
  ]

bb11.i.i.i90:                                     ; preds = %bb9.i.i.i52
  %rest.0.i.i.i91 = getelementptr inbounds nuw i8, ptr %_6.i.i34, i64 1
  %rest.1.i.i.i92 = add nsw i64 %len.i.i35, -1
  br label %bb64.i.i.i93

bb10.i.i.i53:                                     ; preds = %bb9.i.i.i52
  %rest.03.i.i.i54 = getelementptr inbounds nuw i8, ptr %_6.i.i34, i64 1
  %rest.14.i.i.i55 = add nsw i64 %len.i.i35, -1
  %55 = icmp samesign ult i64 %len.i.i35, 9
  br i1 %55, label %bb19.preheader.i.i.i77, label %bb33.i.i.i56

bb19.preheader.i.i.i77:                           ; preds = %bb10.i.i.i53
  %_29.not98.i.i.i78 = icmp eq i64 %rest.14.i.i.i55, 0
  br i1 %_29.not98.i.i.i78, label %bb42.i.i.i75, label %bb20.i.i.i79

bb33.i.i.i56:                                     ; preds = %bb10.i.i.i53, %bb39.i.i.i67
  %result.sroa.0.0.i.i.i57 = phi i32 [ %_89.0.i.i.i72, %bb39.i.i.i67 ], [ 0, %bb10.i.i.i53 ]
  %src.sroa.26.1.i.i.i58 = phi i64 [ %rest.16.i.i.i69, %bb39.i.i.i67 ], [ %rest.14.i.i.i55, %bb10.i.i.i53 ]
  %src.sroa.0.1.i.i.i59 = phi ptr [ %rest.05.i.i.i70, %bb39.i.i.i67 ], [ %rest.03.i.i.i54, %bb10.i.i.i53 ]
  %_57.not.i.i.i60 = icmp eq i64 %src.sroa.26.1.i.i.i58, 0
  br i1 %_57.not.i.i.i60, label %bb42.i.i.i75, label %bb34.i.i.i61

bb42.i.i.i75:                                     ; preds = %bb33.i.i.i56, %bb23.i.i.i86, %bb24.i.i.i96, %bb18.i.i.i124, %bb18.i.i.i124.1, %bb18.i.i.i124.2, %bb18.i.i.i124.3, %bb18.i.i.i124.4, %bb18.i.i.i124.5, %bb18.i.i.i124.6, %bb13.preheader.i.i.i115, %bb19.preheader.i.i.i77
  %result.sroa.0.1.i.i.i76 = phi i32 [ 0, %bb13.preheader.i.i.i115 ], [ 0, %bb19.preheader.i.i.i77 ], [ %68, %bb18.i.i.i124 ], [ %71, %bb18.i.i.i124.1 ], [ %74, %bb18.i.i.i124.2 ], [ %77, %bb18.i.i.i124.3 ], [ %80, %bb18.i.i.i124.4 ], [ %83, %bb18.i.i.i124.5 ], [ %86, %bb18.i.i.i124.6 ], [ %result.sroa.0.3.i.i.i97, %bb24.i.i.i96 ], [ %63, %bb23.i.i.i86 ], [ %result.sroa.0.0.i.i.i57, %bb33.i.i.i56 ]
  %56 = zext i32 %result.sroa.0.1.i.i.i76 to i64
  %57 = shl nuw i64 %56, 32
  br label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h41871728795138d2E.exit128"

bb34.i.i.i61:                                     ; preds = %bb33.i.i.i56
  %58 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %result.sroa.0.0.i.i.i57, i32 10)
  %_85.1.i.i.i62 = extractvalue { i32, i1 } %58, 1
  %_65.i.i.i63 = load i8, ptr %src.sroa.0.1.i.i.i59, align 1, !alias.scope !1666, !noundef !37
  %_64.i.i.i64 = zext i8 %_65.i.i.i63 to i32
  %59 = add nsw i32 %_64.i.i.i64, -48
  %_14.i.i.i.i65 = icmp ugt i32 %59, 9
  %brmerge.i.i.i66 = select i1 %_14.i.i.i.i65, i1 true, i1 %_85.1.i.i.i62
  br i1 %brmerge.i.i.i66, label %bb46.loopexit90.split.loop.exit.i.i.i73, label %bb39.i.i.i67

bb39.i.i.i67:                                     ; preds = %bb34.i.i.i61
  %_85.0.i.i.i68 = extractvalue { i32, i1 } %58, 0
  %rest.16.i.i.i69 = add nsw i64 %src.sroa.26.1.i.i.i58, -1
  %rest.05.i.i.i70 = getelementptr inbounds nuw i8, ptr %src.sroa.0.1.i.i.i59, i64 1
  %60 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_85.0.i.i.i68, i32 %59)
  %_89.1.i.i.i71 = extractvalue { i32, i1 } %60, 1
  %_89.0.i.i.i72 = extractvalue { i32, i1 } %60, 0
  br i1 %_89.1.i.i.i71, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h41871728795138d2E.exit128", label %bb33.i.i.i56

bb20.i.i.i79:                                     ; preds = %bb19.preheader.i.i.i77, %bb23.i.i.i86
  %src.sroa.0.2101.i.i.i80 = phi ptr [ %rest.08.i.i.i88, %bb23.i.i.i86 ], [ %rest.03.i.i.i54, %bb19.preheader.i.i.i77 ]
  %src.sroa.26.2100.i.i.i81 = phi i64 [ %rest.19.i.i.i87, %bb23.i.i.i86 ], [ %rest.14.i.i.i55, %bb19.preheader.i.i.i77 ]
  %result.sroa.0.299.i.i.i82 = phi i32 [ %63, %bb23.i.i.i86 ], [ 0, %bb19.preheader.i.i.i77 ]
  %_36.i.i.i83 = load i8, ptr %src.sroa.0.2101.i.i.i80, align 1, !alias.scope !1666, !noundef !37
  %_35.i.i.i84 = zext i8 %_36.i.i.i83 to i32
  %61 = add nsw i32 %_35.i.i.i84, -48
  %_14.i79.i.i.i85 = icmp ult i32 %61, 10
  br i1 %_14.i79.i.i.i85, label %bb23.i.i.i86, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h41871728795138d2E.exit128"

bb23.i.i.i86:                                     ; preds = %bb20.i.i.i79
  %62 = mul i32 %result.sroa.0.299.i.i.i82, 10
  %rest.19.i.i.i87 = add nsw i64 %src.sroa.26.2100.i.i.i81, -1
  %rest.08.i.i.i88 = getelementptr inbounds nuw i8, ptr %src.sroa.0.2101.i.i.i80, i64 1
  %63 = sub i32 %62, %61
  %_29.not.i.i.i89 = icmp eq i64 %rest.19.i.i.i87, 0
  br i1 %_29.not.i.i.i89, label %bb42.i.i.i75, label %bb20.i.i.i79

bb64.i.i.i93:                                     ; preds = %bb11.i.i.i90, %bb9.i.i.i52, %bb6.i.i.i50
  %src.sroa.26.0.i.i.i94 = phi i64 [ %rest.1.i.i.i92, %bb11.i.i.i90 ], [ %len.i.i35, %bb9.i.i.i52 ], [ %len.i.i35, %bb6.i.i.i50 ]
  %src.sroa.0.0.i.i.i95 = phi ptr [ %rest.0.i.i.i91, %bb11.i.i.i90 ], [ %_6.i.i34, %bb9.i.i.i52 ], [ %_6.i.i34, %bb6.i.i.i50 ]
  %64 = icmp ult i64 %src.sroa.26.0.i.i.i94, 8
  br i1 %64, label %bb13.preheader.i.i.i115, label %bb24.i.i.i96

bb13.preheader.i.i.i115:                          ; preds = %bb64.i.i.i93
  %_16.not104.i.i.i116 = icmp eq i64 %src.sroa.26.0.i.i.i94, 0
  br i1 %_16.not104.i.i.i116, label %bb42.i.i.i75, label %bb14.i.i.i117

bb24.i.i.i96:                                     ; preds = %bb64.i.i.i93, %bb30.i.i.i107
  %result.sroa.0.3.i.i.i97 = phi i32 [ %_81.0.i.i.i112, %bb30.i.i.i107 ], [ 0, %bb64.i.i.i93 ]
  %src.sroa.26.3.i.i.i98 = phi i64 [ %rest.112.i.i.i109, %bb30.i.i.i107 ], [ %src.sroa.26.0.i.i.i94, %bb64.i.i.i93 ]
  %src.sroa.0.3.i.i.i99 = phi ptr [ %rest.011.i.i.i110, %bb30.i.i.i107 ], [ %src.sroa.0.0.i.i.i95, %bb64.i.i.i93 ]
  %_42.not.i.i.i100 = icmp eq i64 %src.sroa.26.3.i.i.i98, 0
  br i1 %_42.not.i.i.i100, label %bb42.i.i.i75, label %bb25.i.i.i101

bb25.i.i.i101:                                    ; preds = %bb24.i.i.i96
  %65 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %result.sroa.0.3.i.i.i97, i32 10)
  %_77.1.i.i.i102 = extractvalue { i32, i1 } %65, 1
  %_50.i.i.i103 = load i8, ptr %src.sroa.0.3.i.i.i99, align 1, !alias.scope !1666, !noundef !37
  %_49.i.i.i104 = zext i8 %_50.i.i.i103 to i32
  %66 = add nsw i32 %_49.i.i.i104, -48
  %_14.i81.i.i.i105 = icmp ugt i32 %66, 9
  %brmerge77.i.i.i106 = select i1 %_14.i81.i.i.i105, i1 true, i1 %_77.1.i.i.i102
  br i1 %brmerge77.i.i.i106, label %bb46.loopexit86.split.loop.exit.i.i.i113, label %bb30.i.i.i107

bb30.i.i.i107:                                    ; preds = %bb25.i.i.i101
  %_77.0.i.i.i108 = extractvalue { i32, i1 } %65, 0
  %rest.112.i.i.i109 = add nsw i64 %src.sroa.26.3.i.i.i98, -1
  %rest.011.i.i.i110 = getelementptr inbounds nuw i8, ptr %src.sroa.0.3.i.i.i99, i64 1
  %67 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_77.0.i.i.i108, i32 %66)
  %_81.1.i.i.i111 = extractvalue { i32, i1 } %67, 1
  %_81.0.i.i.i112 = extractvalue { i32, i1 } %67, 0
  br i1 %_81.1.i.i.i111, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h41871728795138d2E.exit128", label %bb24.i.i.i96

bb14.i.i.i117:                                    ; preds = %bb13.preheader.i.i.i115
  %_23.i.i.i121 = load i8, ptr %src.sroa.0.0.i.i.i95, align 1, !alias.scope !1666, !noundef !37
  %_22.i.i.i122 = zext i8 %_23.i.i.i121 to i32
  %68 = add nsw i32 %_22.i.i.i122, -48
  %_14.i83.i.i.i123 = icmp ult i32 %68, 10
  br i1 %_14.i83.i.i.i123, label %bb18.i.i.i124, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h41871728795138d2E.exit128"

bb18.i.i.i124:                                    ; preds = %bb14.i.i.i117
  %_16.not.i.i.i127 = icmp eq i64 %src.sroa.26.0.i.i.i94, 1
  br i1 %_16.not.i.i.i127, label %bb42.i.i.i75, label %bb14.i.i.i117.1

bb14.i.i.i117.1:                                  ; preds = %bb18.i.i.i124
  %rest.015.i.i.i126 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i.i.i95, i64 1
  %_23.i.i.i121.1 = load i8, ptr %rest.015.i.i.i126, align 1, !alias.scope !1666, !noundef !37
  %_22.i.i.i122.1 = zext i8 %_23.i.i.i121.1 to i32
  %69 = add nsw i32 %_22.i.i.i122.1, -48
  %_14.i83.i.i.i123.1 = icmp ult i32 %69, 10
  br i1 %_14.i83.i.i.i123.1, label %bb18.i.i.i124.1, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h41871728795138d2E.exit128"

bb18.i.i.i124.1:                                  ; preds = %bb14.i.i.i117.1
  %70 = mul nuw nsw i32 %68, 10
  %71 = add nuw nsw i32 %69, %70
  %_16.not.i.i.i127.1 = icmp eq i64 %src.sroa.26.0.i.i.i94, 2
  br i1 %_16.not.i.i.i127.1, label %bb42.i.i.i75, label %bb14.i.i.i117.2

bb14.i.i.i117.2:                                  ; preds = %bb18.i.i.i124.1
  %rest.015.i.i.i126.1 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i.i.i95, i64 2
  %_23.i.i.i121.2 = load i8, ptr %rest.015.i.i.i126.1, align 1, !alias.scope !1666, !noundef !37
  %_22.i.i.i122.2 = zext i8 %_23.i.i.i121.2 to i32
  %72 = add nsw i32 %_22.i.i.i122.2, -48
  %_14.i83.i.i.i123.2 = icmp ult i32 %72, 10
  br i1 %_14.i83.i.i.i123.2, label %bb18.i.i.i124.2, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h41871728795138d2E.exit128"

bb18.i.i.i124.2:                                  ; preds = %bb14.i.i.i117.2
  %73 = mul nuw nsw i32 %71, 10
  %74 = add nuw nsw i32 %72, %73
  %_16.not.i.i.i127.2 = icmp eq i64 %src.sroa.26.0.i.i.i94, 3
  br i1 %_16.not.i.i.i127.2, label %bb42.i.i.i75, label %bb14.i.i.i117.3

bb14.i.i.i117.3:                                  ; preds = %bb18.i.i.i124.2
  %rest.015.i.i.i126.2 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i.i.i95, i64 3
  %_23.i.i.i121.3 = load i8, ptr %rest.015.i.i.i126.2, align 1, !alias.scope !1666, !noundef !37
  %_22.i.i.i122.3 = zext i8 %_23.i.i.i121.3 to i32
  %75 = add nsw i32 %_22.i.i.i122.3, -48
  %_14.i83.i.i.i123.3 = icmp ult i32 %75, 10
  br i1 %_14.i83.i.i.i123.3, label %bb18.i.i.i124.3, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h41871728795138d2E.exit128"

bb18.i.i.i124.3:                                  ; preds = %bb14.i.i.i117.3
  %76 = mul nuw nsw i32 %74, 10
  %77 = add nuw nsw i32 %75, %76
  %_16.not.i.i.i127.3 = icmp eq i64 %src.sroa.26.0.i.i.i94, 4
  br i1 %_16.not.i.i.i127.3, label %bb42.i.i.i75, label %bb14.i.i.i117.4

bb14.i.i.i117.4:                                  ; preds = %bb18.i.i.i124.3
  %rest.015.i.i.i126.3 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i.i.i95, i64 4
  %_23.i.i.i121.4 = load i8, ptr %rest.015.i.i.i126.3, align 1, !alias.scope !1666, !noundef !37
  %_22.i.i.i122.4 = zext i8 %_23.i.i.i121.4 to i32
  %78 = add nsw i32 %_22.i.i.i122.4, -48
  %_14.i83.i.i.i123.4 = icmp ult i32 %78, 10
  br i1 %_14.i83.i.i.i123.4, label %bb18.i.i.i124.4, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h41871728795138d2E.exit128"

bb18.i.i.i124.4:                                  ; preds = %bb14.i.i.i117.4
  %79 = mul i32 %77, 10
  %80 = add i32 %78, %79
  %_16.not.i.i.i127.4 = icmp eq i64 %src.sroa.26.0.i.i.i94, 5
  br i1 %_16.not.i.i.i127.4, label %bb42.i.i.i75, label %bb14.i.i.i117.5

bb14.i.i.i117.5:                                  ; preds = %bb18.i.i.i124.4
  %rest.015.i.i.i126.4 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i.i.i95, i64 5
  %_23.i.i.i121.5 = load i8, ptr %rest.015.i.i.i126.4, align 1, !alias.scope !1666, !noundef !37
  %_22.i.i.i122.5 = zext i8 %_23.i.i.i121.5 to i32
  %81 = add nsw i32 %_22.i.i.i122.5, -48
  %_14.i83.i.i.i123.5 = icmp ult i32 %81, 10
  br i1 %_14.i83.i.i.i123.5, label %bb18.i.i.i124.5, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h41871728795138d2E.exit128"

bb18.i.i.i124.5:                                  ; preds = %bb14.i.i.i117.5
  %82 = mul i32 %80, 10
  %83 = add i32 %81, %82
  %_16.not.i.i.i127.5 = icmp eq i64 %src.sroa.26.0.i.i.i94, 6
  br i1 %_16.not.i.i.i127.5, label %bb42.i.i.i75, label %bb14.i.i.i117.6

bb14.i.i.i117.6:                                  ; preds = %bb18.i.i.i124.5
  %rest.015.i.i.i126.5 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i.i.i95, i64 6
  %_23.i.i.i121.6 = load i8, ptr %rest.015.i.i.i126.5, align 1, !alias.scope !1666, !noundef !37
  %_22.i.i.i122.6 = zext i8 %_23.i.i.i121.6 to i32
  %84 = add nsw i32 %_22.i.i.i122.6, -48
  %_14.i83.i.i.i123.6 = icmp ult i32 %84, 10
  br i1 %_14.i83.i.i.i123.6, label %bb18.i.i.i124.6, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h41871728795138d2E.exit128"

bb18.i.i.i124.6:                                  ; preds = %bb14.i.i.i117.6
  %85 = mul i32 %83, 10
  %86 = add i32 %84, %85
  br label %bb42.i.i.i75

"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h41871728795138d2E.exit128": ; preds = %bb39.i.i.i67, %bb20.i.i.i79, %bb30.i.i.i107, %bb14.i.i.i117, %bb14.i.i.i117.1, %bb14.i.i.i117.2, %bb14.i.i.i117.3, %bb14.i.i.i117.4, %bb14.i.i.i117.5, %bb14.i.i.i117.6, %bb13, %bb7.i.i.i46, %bb7.i.i.i46, %bb46.loopexit86.split.loop.exit.i.i.i113, %bb46.loopexit90.split.loop.exit.i.i.i73, %bb42.i.i.i75
  %_0.sroa.0.0.i.i.i47 = phi i1 [ false, %bb42.i.i.i75 ], [ true, %bb13 ], [ true, %bb7.i.i.i46 ], [ true, %bb7.i.i.i46 ], [ true, %bb46.loopexit86.split.loop.exit.i.i.i113 ], [ true, %bb46.loopexit90.split.loop.exit.i.i.i73 ], [ true, %bb14.i.i.i117.6 ], [ true, %bb14.i.i.i117.5 ], [ true, %bb14.i.i.i117.4 ], [ true, %bb14.i.i.i117.3 ], [ true, %bb14.i.i.i117.2 ], [ true, %bb14.i.i.i117.1 ], [ true, %bb14.i.i.i117 ], [ true, %bb30.i.i.i107 ], [ true, %bb20.i.i.i79 ], [ true, %bb39.i.i.i67 ]
  %_0.sroa.12.0.insert.insert.i.i.i48 = phi i64 [ %57, %bb42.i.i.i75 ], [ %len.i.i35, %bb13 ], [ 256, %bb7.i.i.i46 ], [ 256, %bb7.i.i.i46 ], [ %.mux78.le.i.i.i114, %bb46.loopexit86.split.loop.exit.i.i.i113 ], [ %.mux.le.i.i.i74, %bb46.loopexit90.split.loop.exit.i.i.i73 ], [ 256, %bb14.i.i.i117.6 ], [ 256, %bb14.i.i.i117.5 ], [ 256, %bb14.i.i.i117.4 ], [ 256, %bb14.i.i.i117.3 ], [ 256, %bb14.i.i.i117.2 ], [ 256, %bb14.i.i.i117.1 ], [ 256, %bb14.i.i.i117 ], [ 512, %bb30.i.i.i107 ], [ 256, %bb20.i.i.i79 ], [ 768, %bb39.i.i.i67 ]
  br i1 %_0.sroa.0.0.i.i.i47, label %bb2.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h62b37049f0cd4fd1E.exit", !prof !1033

bb2.i:                                            ; preds = %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h41871728795138d2E.exit128"
  %.sroa.4.0.extract.shift.i = lshr exact i64 %_0.sroa.12.0.insert.insert.i.i.i48, 8
  %.sroa.4.0.extract.trunc.i = trunc i64 %.sroa.4.0.extract.shift.i to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %e.i), !noalias !1673
  store i8 %.sroa.4.0.extract.trunc.i, ptr %e.i, align 1, !noalias !1673
  br label %bb2.i.invoke

bb2.i.invoke:                                     ; preds = %bb2.i17, %bb2.i
  %87 = phi ptr [ %e.i, %bb2.i ], [ %e.i14, %bb2.i17 ]
  %88 = phi ptr [ @alloc_ab67633e08808d3e190b02d350c52308, %bb2.i ], [ @alloc_fcb0459a5c5429e65c8f5decd9e3b356, %bb2.i17 ]
; invoke core::result::unwrap_failed
  invoke void @_ZN4core6result13unwrap_failed17hac9339a6c7ad693bE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @alloc_00ae4b301f7fab8ac9617c03fcbd7274, i64 noundef 43, ptr noundef nonnull align 1 %87, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @vtable.0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %88) #26
          to label %bb2.i.cont unwind label %cleanup1.loopexit.split-lp

bb2.i.cont:                                       ; preds = %bb2.i.invoke
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h62b37049f0cd4fd1E.exit": ; preds = %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h41871728795138d2E.exit128"
  %.sroa.6.0.extract.shift.i = lshr i64 %_0.sroa.12.0.insert.insert.i.i.i48, 32
  %.sroa.6.0.extract.trunc.i = trunc nuw i64 %.sroa.6.0.extract.shift.i to i32
  %89 = add i32 %sum.sroa.0.0, %.sroa.6.0.extract.trunc.i
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %temp)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h522f301687d16547E.exit.i134" unwind label %cleanup.i.i131

cleanup.i.i131:                                   ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h62b37049f0cd4fd1E.exit"
  %90 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %temp)
          to label %cleanup2.body unwind label %terminate.i.i132

terminate.i.i132:                                 ; preds = %cleanup.i.i131
  %91 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #24
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h522f301687d16547E.exit.i134": ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h62b37049f0cd4fd1E.exit"
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %temp)
          to label %bb18 unwind label %cleanup2

cleanup2:                                         ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h522f301687d16547E.exit.i134"
  %92 = landingpad { ptr, i32 }
          cleanup
  br label %cleanup2.body

cleanup2.body:                                    ; preds = %cleanup.i.i131, %cleanup2
  %eh.lpad-body135 = phi { ptr, i32 } [ %92, %cleanup2 ], [ %90, %cleanup.i.i131 ]
  store i64 0, ptr %temp, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %_1.sroa.4.0._0.sroa_idx.i, align 8
  store i64 0, ptr %_1.sroa.5.0._0.sroa_idx.i, align 8
  br label %bb26

bb18:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h522f301687d16547E.exit.i134"
  store i64 0, ptr %temp, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %_1.sroa.4.0._0.sroa_idx.i, align 8
  br label %bb20

bb20:                                             ; preds = %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit, %bb18
  %storemerge = phi i64 [ 0, %bb18 ], [ %new_len.i, %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit ]
  %sum.sroa.0.1 = phi i32 [ %89, %bb18 ], [ %sum.sroa.0.0, %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit ]
  store i64 %storemerge, ptr %_1.sroa.5.0._0.sroa_idx.i, align 8
  br label %bb5

terminate:                                        ; preds = %bb27, %bb26
  %93 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #24
  unreachable
}
