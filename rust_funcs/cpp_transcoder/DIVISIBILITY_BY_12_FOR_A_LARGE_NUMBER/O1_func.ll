define noundef range(i32 0, 2) i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %num) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %start_bytes.i.i = alloca [32 x i8], align 1
  %e.i = alloca [1 x i8], align 1
  %0 = getelementptr inbounds nuw i8, ptr %num, i64 16
  %_0.i = load i64, ptr %0, align 8, !alias.scope !1630, !noundef !37
  %_2.i = icmp sgt i64 %_0.i, -1
  tail call void @llvm.assume(i1 %_2.i)
  %_2 = icmp samesign ugt i64 %_0.i, 2
  %1 = getelementptr inbounds nuw i8, ptr %num, i64 8
  %_6.i.i12 = load ptr, ptr %1, align 8, !nonnull !37, !noundef !37
  br i1 %_2, label %bb2, label %bb27

cleanup:                                          ; preds = %bb2.i7.invoke, %bb2.i10
  %2 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h371b7869e3768009E"(ptr noalias noundef align 8 dereferenceable(24) %num) #29
          to label %common.resume unwind label %terminate

bb27:                                             ; preds = %start
  switch i64 %_0.i, label %bb9.i.i.i [
    i64 0, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h44fc71b46a48287dE.exit"
    i64 1, label %bb7.i.i.i
  ]

bb2:                                              ; preds = %start
  %_7.i = getelementptr inbounds nuw i8, ptr %_6.i.i12, i64 %_0.i
  %_24.i.i.i.i = getelementptr inbounds i8, ptr %_7.i, i64 -1
  %w.i.i.i = load i8, ptr %_24.i.i.i.i, align 1, !noalias !1633, !noundef !37
  %_6.i.i.i = icmp sgt i8 %w.i.i.i, -1
  br i1 %_6.i.i.i, label %bb3.i.i.i, label %bb4.i.i.i

bb6.i.i.i:                                        ; preds = %bb7.i.i.i
  %_8.not.i.i.i = icmp eq i64 %_0.i, 0
  br i1 %_8.not.i.i.i, label %bb64.i.i.i, label %bb9.i.i.i

bb7.i.i.i:                                        ; preds = %bb27
  %3 = load i8, ptr %_6.i.i12, align 1, !alias.scope !1638, !noundef !37
  switch i8 %3, label %bb6.i.i.i [
    i8 43, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h44fc71b46a48287dE.exit"
    i8 45, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h44fc71b46a48287dE.exit"
  ]

bb46.loopexit86.split.loop.exit.i.i.i:            ; preds = %bb25.i.i.i
  %.mux78.le.i.i.i = select i1 %_14.i81.i.i.i, i64 256, i64 512
  br label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h44fc71b46a48287dE.exit"

bb9.i.i.i:                                        ; preds = %bb6.i.i.i, %bb27
  %4 = load i8, ptr %_6.i.i12, align 1, !alias.scope !1638, !noundef !37
  switch i8 %4, label %bb64.i.i.i [
    i8 43, label %bb11.i.i.i
    i8 45, label %bb19.preheader.i.i.i
  ]

bb11.i.i.i:                                       ; preds = %bb9.i.i.i
  %rest.0.i.i.i = getelementptr inbounds nuw i8, ptr %_6.i.i12, i64 1
  %rest.1.i.i.i = add nsw i64 %_0.i, -1
  br label %bb64.i.i.i

bb19.preheader.i.i.i:                             ; preds = %bb9.i.i.i
  %rest.14.i.i.i = add nsw i64 %_0.i, -1
  %_29.not98.i.i.i = icmp eq i64 %rest.14.i.i.i, 0
  br i1 %_29.not98.i.i.i, label %bb42.i.i.i, label %bb20.i.i.i

bb42.i.i.i:                                       ; preds = %bb23.i.i.i, %bb24.i.i.i, %bb18.i.i.i, %bb18.i.i.i.1, %bb18.i.i.i.2, %bb18.i.i.i.3, %bb18.i.i.i.4, %bb18.i.i.i.5, %bb18.i.i.i.6, %bb13.preheader.i.i.i, %bb19.preheader.i.i.i
  %result.sroa.0.1.i.i.i = phi i32 [ 0, %bb13.preheader.i.i.i ], [ 0, %bb19.preheader.i.i.i ], [ %14, %bb18.i.i.i ], [ %17, %bb18.i.i.i.1 ], [ %20, %bb18.i.i.i.2 ], [ %23, %bb18.i.i.i.3 ], [ %26, %bb18.i.i.i.4 ], [ %29, %bb18.i.i.i.5 ], [ %32, %bb18.i.i.i.6 ], [ %result.sroa.0.3.i.i.i, %bb24.i.i.i ], [ %9, %bb23.i.i.i ]
  %5 = zext i32 %result.sroa.0.1.i.i.i to i64
  %6 = shl nuw i64 %5, 32
  br label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h44fc71b46a48287dE.exit"

bb20.i.i.i:                                       ; preds = %bb19.preheader.i.i.i, %bb23.i.i.i
  %src.sroa.0.2101.i.i.i.pn = phi ptr [ %src.sroa.0.2101.i.i.i, %bb23.i.i.i ], [ %_6.i.i12, %bb19.preheader.i.i.i ]
  %src.sroa.26.2100.i.i.i = phi i64 [ %rest.19.i.i.i, %bb23.i.i.i ], [ %rest.14.i.i.i, %bb19.preheader.i.i.i ]
  %result.sroa.0.299.i.i.i = phi i32 [ %9, %bb23.i.i.i ], [ 0, %bb19.preheader.i.i.i ]
  %src.sroa.0.2101.i.i.i = getelementptr inbounds nuw i8, ptr %src.sroa.0.2101.i.i.i.pn, i64 1
  %_36.i.i.i = load i8, ptr %src.sroa.0.2101.i.i.i, align 1, !alias.scope !1638, !noundef !37
  %_35.i.i.i = zext i8 %_36.i.i.i to i32
  %7 = add nsw i32 %_35.i.i.i, -48
  %_14.i79.i.i.i = icmp ult i32 %7, 10
  br i1 %_14.i79.i.i.i, label %bb23.i.i.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h44fc71b46a48287dE.exit"

bb23.i.i.i:                                       ; preds = %bb20.i.i.i
  %8 = mul i32 %result.sroa.0.299.i.i.i, 10
  %rest.19.i.i.i = add nsw i64 %src.sroa.26.2100.i.i.i, -1
  %9 = sub i32 %8, %7
  %_29.not.i.i.i = icmp eq i64 %rest.19.i.i.i, 0
  br i1 %_29.not.i.i.i, label %bb42.i.i.i, label %bb20.i.i.i

bb64.i.i.i:                                       ; preds = %bb11.i.i.i, %bb9.i.i.i, %bb6.i.i.i
  %src.sroa.26.0.i.i.i = phi i64 [ %rest.1.i.i.i, %bb11.i.i.i ], [ %_0.i, %bb9.i.i.i ], [ %_0.i, %bb6.i.i.i ]
  %src.sroa.0.0.i.i.i = phi ptr [ %rest.0.i.i.i, %bb11.i.i.i ], [ %_6.i.i12, %bb9.i.i.i ], [ %_6.i.i12, %bb6.i.i.i ]
  %10 = icmp ult i64 %src.sroa.26.0.i.i.i, 8
  br i1 %10, label %bb13.preheader.i.i.i, label %bb24.i.i.i

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
  %11 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %result.sroa.0.3.i.i.i, i32 10)
  %_77.1.i.i.i = extractvalue { i32, i1 } %11, 1
  %_50.i.i.i = load i8, ptr %src.sroa.0.3.i.i.i, align 1, !alias.scope !1638, !noundef !37
  %_49.i.i.i = zext i8 %_50.i.i.i to i32
  %12 = add nsw i32 %_49.i.i.i, -48
  %_14.i81.i.i.i = icmp ugt i32 %12, 9
  %brmerge77.i.i.i = select i1 %_14.i81.i.i.i, i1 true, i1 %_77.1.i.i.i
  br i1 %brmerge77.i.i.i, label %bb46.loopexit86.split.loop.exit.i.i.i, label %bb30.i.i.i

bb30.i.i.i:                                       ; preds = %bb25.i.i.i
  %_77.0.i.i.i = extractvalue { i32, i1 } %11, 0
  %rest.112.i.i.i = add nsw i64 %src.sroa.26.3.i.i.i, -1
  %rest.011.i.i.i = getelementptr inbounds nuw i8, ptr %src.sroa.0.3.i.i.i, i64 1
  %13 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_77.0.i.i.i, i32 %12)
  %_81.1.i.i.i = extractvalue { i32, i1 } %13, 1
  %_81.0.i.i.i = extractvalue { i32, i1 } %13, 0
  br i1 %_81.1.i.i.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h44fc71b46a48287dE.exit", label %bb24.i.i.i

bb14.i.i.i:                                       ; preds = %bb13.preheader.i.i.i
  %_23.i.i.i = load i8, ptr %src.sroa.0.0.i.i.i, align 1, !alias.scope !1638, !noundef !37
  %_22.i.i.i = zext i8 %_23.i.i.i to i32
  %14 = add nsw i32 %_22.i.i.i, -48
  %_14.i83.i.i.i = icmp ult i32 %14, 10
  br i1 %_14.i83.i.i.i, label %bb18.i.i.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h44fc71b46a48287dE.exit"

bb18.i.i.i:                                       ; preds = %bb14.i.i.i
  %_16.not.i.i.i = icmp eq i64 %src.sroa.26.0.i.i.i, 1
  br i1 %_16.not.i.i.i, label %bb42.i.i.i, label %bb14.i.i.i.1

bb14.i.i.i.1:                                     ; preds = %bb18.i.i.i
  %rest.015.i.i.i = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i.i.i, i64 1
  %_23.i.i.i.1 = load i8, ptr %rest.015.i.i.i, align 1, !alias.scope !1638, !noundef !37
  %_22.i.i.i.1 = zext i8 %_23.i.i.i.1 to i32
  %15 = add nsw i32 %_22.i.i.i.1, -48
  %_14.i83.i.i.i.1 = icmp ult i32 %15, 10
  br i1 %_14.i83.i.i.i.1, label %bb18.i.i.i.1, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h44fc71b46a48287dE.exit"

bb18.i.i.i.1:                                     ; preds = %bb14.i.i.i.1
  %16 = mul nuw nsw i32 %14, 10
  %17 = add nuw nsw i32 %15, %16
  %_16.not.i.i.i.1 = icmp eq i64 %src.sroa.26.0.i.i.i, 2
  br i1 %_16.not.i.i.i.1, label %bb42.i.i.i, label %bb14.i.i.i.2

bb14.i.i.i.2:                                     ; preds = %bb18.i.i.i.1
  %rest.015.i.i.i.1 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i.i.i, i64 2
  %_23.i.i.i.2 = load i8, ptr %rest.015.i.i.i.1, align 1, !alias.scope !1638, !noundef !37
  %_22.i.i.i.2 = zext i8 %_23.i.i.i.2 to i32
  %18 = add nsw i32 %_22.i.i.i.2, -48
  %_14.i83.i.i.i.2 = icmp ult i32 %18, 10
  br i1 %_14.i83.i.i.i.2, label %bb18.i.i.i.2, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h44fc71b46a48287dE.exit"

bb18.i.i.i.2:                                     ; preds = %bb14.i.i.i.2
  %19 = mul nuw nsw i32 %17, 10
  %20 = add nuw nsw i32 %18, %19
  %_16.not.i.i.i.2 = icmp eq i64 %src.sroa.26.0.i.i.i, 3
  br i1 %_16.not.i.i.i.2, label %bb42.i.i.i, label %bb14.i.i.i.3

bb14.i.i.i.3:                                     ; preds = %bb18.i.i.i.2
  %rest.015.i.i.i.2 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i.i.i, i64 3
  %_23.i.i.i.3 = load i8, ptr %rest.015.i.i.i.2, align 1, !alias.scope !1638, !noundef !37
  %_22.i.i.i.3 = zext i8 %_23.i.i.i.3 to i32
  %21 = add nsw i32 %_22.i.i.i.3, -48
  %_14.i83.i.i.i.3 = icmp ult i32 %21, 10
  br i1 %_14.i83.i.i.i.3, label %bb18.i.i.i.3, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h44fc71b46a48287dE.exit"

bb18.i.i.i.3:                                     ; preds = %bb14.i.i.i.3
  %22 = mul nuw nsw i32 %20, 10
  %23 = add nuw nsw i32 %21, %22
  %_16.not.i.i.i.3 = icmp eq i64 %src.sroa.26.0.i.i.i, 4
  br i1 %_16.not.i.i.i.3, label %bb42.i.i.i, label %bb14.i.i.i.4

bb14.i.i.i.4:                                     ; preds = %bb18.i.i.i.3
  %rest.015.i.i.i.3 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i.i.i, i64 4
  %_23.i.i.i.4 = load i8, ptr %rest.015.i.i.i.3, align 1, !alias.scope !1638, !noundef !37
  %_22.i.i.i.4 = zext i8 %_23.i.i.i.4 to i32
  %24 = add nsw i32 %_22.i.i.i.4, -48
  %_14.i83.i.i.i.4 = icmp ult i32 %24, 10
  br i1 %_14.i83.i.i.i.4, label %bb18.i.i.i.4, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h44fc71b46a48287dE.exit"

bb18.i.i.i.4:                                     ; preds = %bb14.i.i.i.4
  %25 = mul i32 %23, 10
  %26 = add i32 %24, %25
  %_16.not.i.i.i.4 = icmp eq i64 %src.sroa.26.0.i.i.i, 5
  br i1 %_16.not.i.i.i.4, label %bb42.i.i.i, label %bb14.i.i.i.5

bb14.i.i.i.5:                                     ; preds = %bb18.i.i.i.4
  %rest.015.i.i.i.4 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i.i.i, i64 5
  %_23.i.i.i.5 = load i8, ptr %rest.015.i.i.i.4, align 1, !alias.scope !1638, !noundef !37
  %_22.i.i.i.5 = zext i8 %_23.i.i.i.5 to i32
  %27 = add nsw i32 %_22.i.i.i.5, -48
  %_14.i83.i.i.i.5 = icmp ult i32 %27, 10
  br i1 %_14.i83.i.i.i.5, label %bb18.i.i.i.5, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h44fc71b46a48287dE.exit"

bb18.i.i.i.5:                                     ; preds = %bb14.i.i.i.5
  %28 = mul i32 %26, 10
  %29 = add i32 %27, %28
  %_16.not.i.i.i.5 = icmp eq i64 %src.sroa.26.0.i.i.i, 6
  br i1 %_16.not.i.i.i.5, label %bb42.i.i.i, label %bb14.i.i.i.6

bb14.i.i.i.6:                                     ; preds = %bb18.i.i.i.5
  %rest.015.i.i.i.5 = getelementptr inbounds nuw i8, ptr %src.sroa.0.0.i.i.i, i64 6
  %_23.i.i.i.6 = load i8, ptr %rest.015.i.i.i.5, align 1, !alias.scope !1638, !noundef !37
  %_22.i.i.i.6 = zext i8 %_23.i.i.i.6 to i32
  %30 = add nsw i32 %_22.i.i.i.6, -48
  %_14.i83.i.i.i.6 = icmp ult i32 %30, 10
  br i1 %_14.i83.i.i.i.6, label %bb18.i.i.i.6, label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h44fc71b46a48287dE.exit"

bb18.i.i.i.6:                                     ; preds = %bb14.i.i.i.6
  %31 = mul i32 %29, 10
  %32 = add i32 %30, %31
  br label %bb42.i.i.i

"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h44fc71b46a48287dE.exit": ; preds = %bb20.i.i.i, %bb30.i.i.i, %bb14.i.i.i, %bb14.i.i.i.1, %bb14.i.i.i.2, %bb14.i.i.i.3, %bb14.i.i.i.4, %bb14.i.i.i.5, %bb14.i.i.i.6, %bb27, %bb7.i.i.i, %bb7.i.i.i, %bb46.loopexit86.split.loop.exit.i.i.i, %bb42.i.i.i
  %_0.sroa.0.0.i.i.i = phi i1 [ false, %bb42.i.i.i ], [ true, %bb27 ], [ true, %bb7.i.i.i ], [ true, %bb7.i.i.i ], [ true, %bb46.loopexit86.split.loop.exit.i.i.i ], [ true, %bb14.i.i.i.6 ], [ true, %bb14.i.i.i.5 ], [ true, %bb14.i.i.i.4 ], [ true, %bb14.i.i.i.3 ], [ true, %bb14.i.i.i.2 ], [ true, %bb14.i.i.i.1 ], [ true, %bb14.i.i.i ], [ true, %bb30.i.i.i ], [ true, %bb20.i.i.i ]
  %_0.sroa.12.0.insert.insert.i.i.i = phi i64 [ %6, %bb42.i.i.i ], [ %_0.i, %bb27 ], [ 256, %bb7.i.i.i ], [ 256, %bb7.i.i.i ], [ %.mux78.le.i.i.i, %bb46.loopexit86.split.loop.exit.i.i.i ], [ 256, %bb14.i.i.i.6 ], [ 256, %bb14.i.i.i.5 ], [ 256, %bb14.i.i.i.4 ], [ 256, %bb14.i.i.i.3 ], [ 256, %bb14.i.i.i.2 ], [ 256, %bb14.i.i.i.1 ], [ 256, %bb14.i.i.i ], [ 512, %bb30.i.i.i ], [ 256, %bb20.i.i.i ]
  br i1 %_0.sroa.0.0.i.i.i, label %bb2.i10, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17he4b1b399bf4b160bE.exit", !prof !1033

bb2.i10:                                          ; preds = %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h44fc71b46a48287dE.exit"
  %.sroa.4.0.extract.shift.i = lshr exact i64 %_0.sroa.12.0.insert.insert.i.i.i, 8
  %.sroa.4.0.extract.trunc.i = trunc i64 %.sroa.4.0.extract.shift.i to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %e.i)
  store i8 %.sroa.4.0.extract.trunc.i, ptr %e.i, align 1
; invoke core::result::unwrap_failed
  invoke void @_ZN4core6result13unwrap_failed17hac9339a6c7ad693bE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @alloc_00ae4b301f7fab8ac9617c03fcbd7274, i64 noundef 43, ptr noundef nonnull align 1 %e.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @vtable.0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_f0e93f2a3efeda78432e1787b2a7bea1) #27
          to label %.noexc11 unwind label %cleanup

.noexc11:                                         ; preds = %bb2.i10
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17he4b1b399bf4b160bE.exit": ; preds = %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h44fc71b46a48287dE.exit"
  %.sroa.6.0.extract.shift.i = lshr i64 %_0.sroa.12.0.insert.insert.i.i.i, 32
  %.sroa.6.0.extract.trunc.i = trunc nuw i64 %.sroa.6.0.extract.shift.i to i32
  %_45 = srem i32 %.sroa.6.0.extract.trunc.i, 12
  %_44 = icmp eq i32 %_45, 0
  %. = zext i1 %_44 to i32
  br label %bb35

bb35:                                             ; preds = %bb22, %bb21, %bb6, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17he4b1b399bf4b160bE.exit"
  %_0.sroa.0.0 = phi i32 [ %., %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17he4b1b399bf4b160bE.exit" ], [ 0, %bb6 ], [ 0, %bb21 ], [ %spec.select, %bb22 ]
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %num)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h371b7869e3768009E.exit" unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %bb35
  %33 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %num)
          to label %common.resume unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %34 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #25
  unreachable

common.resume:                                    ; preds = %cleanup, %cleanup.i.i
  %common.resume.op = phi { ptr, i32 } [ %33, %cleanup.i.i ], [ %2, %cleanup ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h371b7869e3768009E.exit": ; preds = %bb35
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %num)
  ret i32 %_0.sroa.0.0

bb4.i.i.i:                                        ; preds = %bb2
  %_24.i13.i.i.i = getelementptr inbounds i8, ptr %_7.i, i64 -2
  %z.i.i.i = load i8, ptr %_24.i13.i.i.i, align 1, !noalias !1633, !noundef !37
  %_26.i.i.i = and i8 %z.i.i.i, 31
  %35 = zext nneg i8 %_26.i.i.i to i32
  %_12.i.i.i = icmp slt i8 %z.i.i.i, -64
  br i1 %_12.i.i.i, label %bb6.i.i.i14, label %bb13.i.i.i

bb3.i.i.i:                                        ; preds = %bb2
  %_8.i.i.i = zext nneg i8 %w.i.i.i to i32
  br label %bb5

bb6.i.i.i14:                                      ; preds = %bb4.i.i.i
  %_24.i19.i.i.i = getelementptr inbounds i8, ptr %_7.i, i64 -3
  %y.i.i.i = load i8, ptr %_24.i19.i.i.i, align 1, !noalias !1633, !noundef !37
  %_31.i.i.i = and i8 %y.i.i.i, 15
  %36 = zext nneg i8 %_31.i.i.i to i32
  %_16.i.i.i = icmp slt i8 %y.i.i.i, -64
  br i1 %_16.i.i.i, label %bb8.i.i.i, label %bb11.i.i.i15

bb13.i.i.i:                                       ; preds = %bb11.i.i.i15, %bb4.i.i.i
  %ch.sroa.0.0.i.i.i = phi i32 [ %41, %bb11.i.i.i15 ], [ %35, %bb4.i.i.i ]
  %_43.i.i.i = shl nuw nsw i32 %ch.sroa.0.0.i.i.i, 6
  %_45.i.i.i = and i8 %w.i.i.i, 63
  %_44.i.i.i = zext nneg i8 %_45.i.i.i to i32
  %37 = or disjoint i32 %_43.i.i.i, %_44.i.i.i
  br label %bb5

bb8.i.i.i:                                        ; preds = %bb6.i.i.i14
  %38 = icmp ne i64 %_0.i, 3
  tail call void @llvm.assume(i1 %38)
  %_24.i25.i.i.i = getelementptr inbounds i8, ptr %_7.i, i64 -4
  %x.i.i.i = load i8, ptr %_24.i25.i.i.i, align 1, !noalias !1633, !noundef !37
  %_36.i.i.i16 = and i8 %x.i.i.i, 7
  %39 = zext nneg i8 %_36.i.i.i16 to i32
  %_37.i.i.i = shl nuw nsw i32 %39, 6
  %_39.i.i.i = and i8 %y.i.i.i, 63
  %_38.i.i.i = zext nneg i8 %_39.i.i.i to i32
  %40 = or disjoint i32 %_37.i.i.i, %_38.i.i.i
  br label %bb11.i.i.i15

bb11.i.i.i15:                                     ; preds = %bb8.i.i.i, %bb6.i.i.i14
  %ch.sroa.0.1.i.i.i = phi i32 [ %40, %bb8.i.i.i ], [ %36, %bb6.i.i.i14 ]
  %_40.i.i.i = shl nuw nsw i32 %ch.sroa.0.1.i.i.i, 6
  %_42.i.i.i = and i8 %z.i.i.i, 63
  %_41.i.i.i = zext nneg i8 %_42.i.i.i to i32
  %41 = or disjoint i32 %_40.i.i.i, %_41.i.i.i
  br label %bb13.i.i.i

bb5:                                              ; preds = %bb13.i.i.i, %bb3.i.i.i
  %spec.select.i.i = phi i32 [ %37, %bb13.i.i.i ], [ %_8.i.i.i, %bb3.i.i.i ]
  %.not.i6 = icmp eq i32 %spec.select.i.i, 1114112
  br i1 %.not.i6, label %bb2.i7.invoke, label %bb6, !prof !1033

bb2.i7.invoke:                                    ; preds = %bb12, %bb5
  %42 = phi ptr [ @alloc_be43772f70968356d6141cdbf0a15b4f, %bb5 ], [ @alloc_ef2c363c226c81b7ccebc7bb7b6efab8, %bb12 ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %42) #26
          to label %bb2.i7.cont unwind label %cleanup

bb2.i7.cont:                                      ; preds = %bb2.i7.invoke
  unreachable

bb6:                                              ; preds = %bb5
  %_12 = and i32 %spec.select.i.i, 1
  %_11.not = icmp eq i32 %_12, 0
  br i1 %_11.not, label %bb8, label %bb35

bb8:                                              ; preds = %bb6
  %_20 = add nsw i64 %_0.i, -2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %start_bytes.i.i), !noalias !1645
  %_3.i.i = icmp ugt i64 %_20, 31
  br i1 %_3.i.i, label %bb1.i.i38, label %bb25.i.i

bb1.i.i38:                                        ; preds = %bb8
  %43 = lshr i64 %_0.i, 5
  %_65.i.i = getelementptr inbounds nuw [32 x i8], ptr %_6.i.i12, i64 %43
  %_1042.not.i.i = icmp eq i64 %_20, 32
  br i1 %_1042.not.i.i, label %bb14.i.i, label %bb4.i.preheader.i

bb4.i.preheader.i:                                ; preds = %bb1.i.i38
  %_92.sroa.34.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 31
  %_92.sroa.33.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 30
  %_92.sroa.32.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 29
  %_92.sroa.31.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 28
  %_92.sroa.30.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 27
  %_92.sroa.29.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 26
  %_92.sroa.28.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 25
  %_92.sroa.27.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 24
  %_92.sroa.26.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 23
  %_92.sroa.25.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 22
  %_92.sroa.24.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 21
  %_92.sroa.23.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 20
  %_92.sroa.22.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 19
  %_92.sroa.21.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 18
  %_92.sroa.20.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 17
  %_92.sroa.19.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 16
  %_92.sroa.18.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 15
  %_92.sroa.17.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 14
  %_92.sroa.16.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 13
  %_92.sroa.15.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 12
  %_92.sroa.14.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 11
  %_92.sroa.13.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 10
  %_92.sroa.12.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 9
  %_92.sroa.11.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 8
  %_92.sroa.10.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 7
  %_92.sroa.9.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 6
  %_92.sroa.8.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 5
  %_92.sroa.7.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 4
  %_92.sroa.6.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 3
  %_92.sroa.5.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 2
  %_92.sroa.4.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 1
  br label %bb4.i.i

bb25.i.i:                                         ; preds = %bb19.i.i, %bb18.i.i, %bb14.i.i, %bb8
  %_17.sroa.0.0 = phi ptr [ %_19.i.i.i, %bb14.i.i ], [ %_6.i.i12, %bb8 ], [ %_7.i, %bb19.i.i ], [ %_17.sroa.0.3, %bb18.i.i ]
  %remainder.sroa.0.0.i.i = phi i64 [ %remainder.sroa.0.1.lcssa.i.i, %bb14.i.i ], [ %_20, %bb8 ], [ %remainder.sroa.0.1.lcssa.i.i, %bb18.i.i ], [ %remainder.sroa.0.1.lcssa.i.i, %bb19.i.i ]
  %_39.not57.i.i = icmp eq i64 %remainder.sroa.0.0.i.i, 0
  br i1 %_39.not57.i.i, label %bb5.critedge.i, label %bb27.lr.ph.i.i

bb27.lr.ph.i.i:                                   ; preds = %bb25.i.i
  %44 = ptrtoint ptr %_7.i to i64
  br label %bb27.i.i

bb4.i.i:                                          ; preds = %bb2.i.i.i.i, %bb4.i.preheader.i
  %remainder.sroa.0.145.i.i = phi i64 [ %46, %bb2.i.i.i.i ], [ %_20, %bb4.i.preheader.i ]
  %chunks.sroa.0.044.i.i = phi ptr [ %chunks.sroa.0.1.i.i, %bb2.i.i.i.i ], [ %_6.i.i12, %bb4.i.preheader.i ]
  %bytes_skipped.sroa.0.043.i.i = phi i64 [ %45, %bb2.i.i.i.i ], [ 0, %bb4.i.preheader.i ]
  %_73.i.i = icmp eq ptr %chunks.sroa.0.044.i.i, %_65.i.i
  %chunks.sroa.0.1.idx.i.i = select i1 %_73.i.i, i64 0, i64 32
  %chunks.sroa.0.1.i.i = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i.i, i64 %chunks.sroa.0.1.idx.i.i
  br i1 %_73.i.i, label %bb14.i.i, label %bb5.i.i

bb14.i.i:                                         ; preds = %bb2.i.i.i.i, %bb4.i.i, %bb1.i.i38
  %bytes_skipped.sroa.0.0.lcssa.i.i = phi i64 [ 0, %bb1.i.i38 ], [ %bytes_skipped.sroa.0.043.i.i, %bb4.i.i ], [ %45, %bb2.i.i.i.i ]
  %remainder.sroa.0.1.lcssa.i.i = phi i64 [ %_20, %bb1.i.i38 ], [ %remainder.sroa.0.145.i.i, %bb4.i.i ], [ %46, %bb2.i.i.i.i ]
  %_19.i.i.i = getelementptr inbounds nuw i8, ptr %_6.i.i12, i64 %bytes_skipped.sroa.0.0.lcssa.i.i
  %.not27.i.i = icmp ule i64 %bytes_skipped.sroa.0.0.lcssa.i.i, %_0.i
  tail call void @llvm.assume(i1 %.not27.i.i)
  %_30.not53.i.i = icmp samesign eq i64 %_0.i, %bytes_skipped.sroa.0.0.lcssa.i.i
  br i1 %_30.not53.i.i, label %bb25.i.i, label %bb18.i.i

bb5.i.i:                                          ; preds = %bb4.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %start_bytes.i.i, i8 0, i64 32, i1 false), !noalias !1648
  br label %bb10.i.i

bb2.i.i.i.i:                                      ; preds = %bb10.i.i
  %_92.sroa.34.0.copyload.i.i = load i8, ptr %_92.sroa.34.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1648
  %_92.sroa.33.0.copyload.i.i = load i8, ptr %_92.sroa.33.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1648
  %_92.sroa.32.0.copyload.i.i = load i8, ptr %_92.sroa.32.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1648
  %_92.sroa.31.0.copyload.i.i = load i8, ptr %_92.sroa.31.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1648
  %_92.sroa.30.0.copyload.i.i = load i8, ptr %_92.sroa.30.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1648
  %_92.sroa.29.0.copyload.i.i = load i8, ptr %_92.sroa.29.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1648
  %_92.sroa.28.0.copyload.i.i = load i8, ptr %_92.sroa.28.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1648
  %_92.sroa.27.0.copyload.i.i = load i8, ptr %_92.sroa.27.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1648
  %_92.sroa.26.0.copyload.i.i = load i8, ptr %_92.sroa.26.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1648
  %_92.sroa.25.0.copyload.i.i = load i8, ptr %_92.sroa.25.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1648
  %_92.sroa.24.0.copyload.i.i = load i8, ptr %_92.sroa.24.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1648
  %_92.sroa.23.0.copyload.i.i = load i8, ptr %_92.sroa.23.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1648
  %_92.sroa.22.0.copyload.i.i = load i8, ptr %_92.sroa.22.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1648
  %_92.sroa.21.0.copyload.i.i = load i8, ptr %_92.sroa.21.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1648
  %_92.sroa.20.0.copyload.i.i = load i8, ptr %_92.sroa.20.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1648
  %_92.sroa.19.0.copyload.i.i = load i8, ptr %_92.sroa.19.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1648
  %_92.sroa.18.0.copyload.i.i = load i8, ptr %_92.sroa.18.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1648
  %_92.sroa.17.0.copyload.i.i = load i8, ptr %_92.sroa.17.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1648
  %_92.sroa.16.0.copyload.i.i = load i8, ptr %_92.sroa.16.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1648
  %_92.sroa.15.0.copyload.i.i = load i8, ptr %_92.sroa.15.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1648
  %_92.sroa.14.0.copyload.i.i = load i8, ptr %_92.sroa.14.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1648
  %_92.sroa.13.0.copyload.i.i = load i8, ptr %_92.sroa.13.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1648
  %_92.sroa.12.0.copyload.i.i = load i8, ptr %_92.sroa.12.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1648
  %_92.sroa.11.0.copyload.i.i = load i8, ptr %_92.sroa.11.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1648
  %_92.sroa.10.0.copyload.i.i = load i8, ptr %_92.sroa.10.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1648
  %_92.sroa.9.0.copyload.i.i = load i8, ptr %_92.sroa.9.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1648
  %_92.sroa.8.0.copyload.i.i = load i8, ptr %_92.sroa.8.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1648
  %_92.sroa.7.0.copyload.i.i = load i8, ptr %_92.sroa.7.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1648
  %_92.sroa.6.0.copyload.i.i = load i8, ptr %_92.sroa.6.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1648
  %_92.sroa.5.0.copyload.i.i = load i8, ptr %_92.sroa.5.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1648
  %_92.sroa.4.0.copyload.i.i = load i8, ptr %_92.sroa.4.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1648
  %_92.sroa.0.0.copyload.i.i = load i8, ptr %start_bytes.i.i, align 1, !noalias !1648
  %_4.0.i.i.i.i.i.i.1.i.i = add i8 %_92.sroa.33.0.copyload.i.i, %_92.sroa.34.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.2.i.i = add i8 %_4.0.i.i.i.i.i.i.1.i.i, %_92.sroa.32.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.3.i.i = add i8 %_4.0.i.i.i.i.i.i.2.i.i, %_92.sroa.31.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.4.i.i = add i8 %_4.0.i.i.i.i.i.i.3.i.i, %_92.sroa.30.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.5.i.i = add i8 %_4.0.i.i.i.i.i.i.4.i.i, %_92.sroa.29.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.6.i.i = add i8 %_4.0.i.i.i.i.i.i.5.i.i, %_92.sroa.28.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.7.i.i = add i8 %_4.0.i.i.i.i.i.i.6.i.i, %_92.sroa.27.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.8.i.i = add i8 %_4.0.i.i.i.i.i.i.7.i.i, %_92.sroa.26.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.9.i.i = add i8 %_4.0.i.i.i.i.i.i.8.i.i, %_92.sroa.25.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.10.i.i = add i8 %_4.0.i.i.i.i.i.i.9.i.i, %_92.sroa.24.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.11.i.i = add i8 %_4.0.i.i.i.i.i.i.10.i.i, %_92.sroa.23.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.12.i.i = add i8 %_4.0.i.i.i.i.i.i.11.i.i, %_92.sroa.22.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.13.i.i = add i8 %_4.0.i.i.i.i.i.i.12.i.i, %_92.sroa.21.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.14.i.i = add i8 %_4.0.i.i.i.i.i.i.13.i.i, %_92.sroa.20.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.15.i.i = add i8 %_4.0.i.i.i.i.i.i.14.i.i, %_92.sroa.19.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.16.i.i = add i8 %_4.0.i.i.i.i.i.i.15.i.i, %_92.sroa.18.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.17.i.i = add i8 %_4.0.i.i.i.i.i.i.16.i.i, %_92.sroa.17.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.18.i.i = add i8 %_4.0.i.i.i.i.i.i.17.i.i, %_92.sroa.16.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.19.i.i = add i8 %_4.0.i.i.i.i.i.i.18.i.i, %_92.sroa.15.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.20.i.i = add i8 %_4.0.i.i.i.i.i.i.19.i.i, %_92.sroa.14.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.21.i.i = add i8 %_4.0.i.i.i.i.i.i.20.i.i, %_92.sroa.13.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.22.i.i = add i8 %_4.0.i.i.i.i.i.i.21.i.i, %_92.sroa.12.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.23.i.i = add i8 %_4.0.i.i.i.i.i.i.22.i.i, %_92.sroa.11.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.24.i.i = add i8 %_4.0.i.i.i.i.i.i.23.i.i, %_92.sroa.10.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.25.i.i = add i8 %_4.0.i.i.i.i.i.i.24.i.i, %_92.sroa.9.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.26.i.i = add i8 %_4.0.i.i.i.i.i.i.25.i.i, %_92.sroa.8.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.27.i.i = add i8 %_4.0.i.i.i.i.i.i.26.i.i, %_92.sroa.7.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.28.i.i = add i8 %_4.0.i.i.i.i.i.i.27.i.i, %_92.sroa.6.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.29.i.i = add i8 %_4.0.i.i.i.i.i.i.28.i.i, %_92.sroa.5.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.30.i.i = add i8 %_4.0.i.i.i.i.i.i.29.i.i, %_92.sroa.4.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.31.i.i = add i8 %_4.0.i.i.i.i.i.i.30.i.i, %_92.sroa.0.0.copyload.i.i
  %45 = add i64 %bytes_skipped.sroa.0.043.i.i, 32
  %_25.i.i = zext i8 %_4.0.i.i.i.i.i.i.31.i.i to i64
  %46 = sub i64 %remainder.sroa.0.145.i.i, %_25.i.i
  %_10.i.i = icmp ugt i64 %46, 32
  br i1 %_10.i.i, label %bb4.i.i, label %bb14.i.i

bb10.i.i:                                         ; preds = %bb10.i.i, %bb5.i.i
  %iter.sroa.0.041.i.i = phi i64 [ 0, %bb5.i.i ], [ %_88.i.i.3, %bb10.i.i ]
  %_88.i.i = or disjoint i64 %iter.sroa.0.041.i.i, 1
  %47 = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i.i, i64 %iter.sroa.0.041.i.i
  %byte.i.i = load i8, ptr %47, align 1, !noalias !1648, !noundef !37
  %_22.i.i = icmp sgt i8 %byte.i.i, -65
  %48 = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 %iter.sroa.0.041.i.i
  %49 = zext i1 %_22.i.i to i8
  store i8 %49, ptr %48, align 1, !noalias !1648
  %_88.i.i.1 = or disjoint i64 %iter.sroa.0.041.i.i, 2
  %50 = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i.i, i64 %_88.i.i
  %byte.i.i.1 = load i8, ptr %50, align 1, !noalias !1648, !noundef !37
  %_22.i.i.1 = icmp sgt i8 %byte.i.i.1, -65
  %51 = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 %_88.i.i
  %52 = zext i1 %_22.i.i.1 to i8
  store i8 %52, ptr %51, align 1, !noalias !1648
  %_88.i.i.2 = or disjoint i64 %iter.sroa.0.041.i.i, 3
  %53 = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i.i, i64 %_88.i.i.1
  %byte.i.i.2 = load i8, ptr %53, align 1, !noalias !1648, !noundef !37
  %_22.i.i.2 = icmp sgt i8 %byte.i.i.2, -65
  %54 = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 %_88.i.i.1
  %55 = zext i1 %_22.i.i.2 to i8
  store i8 %55, ptr %54, align 1, !noalias !1648
  %_88.i.i.3 = add nuw nsw i64 %iter.sroa.0.041.i.i, 4
  %56 = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i.i, i64 %_88.i.i.2
  %byte.i.i.3 = load i8, ptr %56, align 1, !noalias !1648, !noundef !37
  %_22.i.i.3 = icmp sgt i8 %byte.i.i.3, -65
  %57 = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 %_88.i.i.2
  %58 = zext i1 %_22.i.i.3 to i8
  store i8 %58, ptr %57, align 1, !noalias !1648
  %exitcond.not.i.i.3 = icmp eq i64 %_88.i.i.3, 32
  br i1 %exitcond.not.i.i.3, label %bb2.i.i.i.i, label %bb10.i.i

bb18.i.i:                                         ; preds = %bb14.i.i, %bb19.i.i
  %_17.sroa.0.3 = phi ptr [ %_19.i33.i.i, %bb19.i.i ], [ %_19.i.i.i, %bb14.i.i ]
  %b.i.i = load i8, ptr %_17.sroa.0.3, align 1, !noalias !1648, !noundef !37
  %_36.i.i = icmp slt i8 %b.i.i, -64
  br i1 %_36.i.i, label %bb19.i.i, label %bb25.i.i

bb19.i.i:                                         ; preds = %bb18.i.i
  %_19.i33.i.i = getelementptr inbounds nuw i8, ptr %_17.sroa.0.3, i64 1
  %_30.not.i.i = icmp eq ptr %_7.i, %_19.i33.i.i
  br i1 %_30.not.i.i, label %bb25.i.i, label %bb18.i.i

bb27.i.i:                                         ; preds = %bb28.i.i, %bb27.lr.ph.i.i
  %remainder.sroa.0.259.i.i = phi i64 [ %remainder.sroa.0.0.i.i, %bb27.lr.ph.i.i ], [ %61, %bb28.i.i ]
  %_19.i385658.i.i = phi ptr [ %_17.sroa.0.0, %bb27.lr.ph.i.i ], [ %_19.i38.i.i, %bb28.i.i ]
  %_41.not.i.i = icmp eq ptr %_7.i, %_19.i385658.i.i
  br i1 %_41.not.i.i, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E.exit.i", label %bb28.i.i

bb28.i.i:                                         ; preds = %bb27.i.i
  %59 = ptrtoint ptr %_19.i385658.i.i to i64
  %60 = sub nuw i64 %44, %59
  %61 = add i64 %remainder.sroa.0.259.i.i, -1
  %b15.i.i = load i8, ptr %_19.i385658.i.i, align 1, !noalias !1648, !noundef !37
  %_130.i.i = zext i8 %b15.i.i to i64
  %62 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i.i
  %_128.i.i = load i8, ptr %62, align 1, !noalias !1648, !noundef !37
  %slurp.i.i = zext i8 %_128.i.i to i64
  %_19.i38.i.i = getelementptr inbounds nuw i8, ptr %_19.i385658.i.i, i64 %slurp.i.i
  %.not28.i.i = icmp uge i64 %60, %slurp.i.i
  tail call void @llvm.assume(i1 %.not28.i.i)
  %_39.not.i.i = icmp eq i64 %61, 0
  br i1 %_39.not.i.i, label %bb5.critedge.i, label %bb27.i.i

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E.exit.i": ; preds = %bb27.i.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %start_bytes.i.i), !noalias !1645
  br label %bb12

bb5.critedge.i:                                   ; preds = %bb28.i.i, %bb25.i.i
  %_17.sroa.0.1 = phi ptr [ %_17.sroa.0.0, %bb25.i.i ], [ %_19.i38.i.i, %bb28.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %start_bytes.i.i), !noalias !1645
  %_7.i.i.i.i = icmp ne ptr %_17.sroa.0.1, %_7.i
  %spec.select51.idx = zext i1 %_7.i.i.i.i to i64
  %spec.select51 = getelementptr inbounds nuw i8, ptr %_17.sroa.0.1, i64 %spec.select51.idx
  br i1 %_7.i.i.i.i, label %bb14.i.i.i22, label %bb12

bb14.i.i.i22:                                     ; preds = %bb5.critedge.i
  %x.i.i.i23 = load i8, ptr %_17.sroa.0.1, align 1, !noalias !1651, !noundef !37
  %_6.i.i.i24 = icmp sgt i8 %x.i.i.i23, -1
  br i1 %_6.i.i.i24, label %bb3.i.i.i37, label %bb4.i.i.i25

bb4.i.i.i25:                                      ; preds = %bb14.i.i.i22
  %_30.i.i.i = and i8 %x.i.i.i23, 31
  %init.i.i.i = zext nneg i8 %_30.i.i.i to i32
  %_7.i10.i.i.i = icmp ne ptr %spec.select51, %_7.i
  tail call void @llvm.assume(i1 %_7.i10.i.i.i)
  %y.i.i.i26 = load i8, ptr %spec.select51, align 1, !noalias !1651, !noundef !37
  %_34.i.i.i = shl nuw nsw i32 %init.i.i.i, 6
  %_36.i.i.i27 = and i8 %y.i.i.i26, 63
  %_35.i.i.i28 = zext nneg i8 %_36.i.i.i27 to i32
  %63 = or disjoint i32 %_34.i.i.i, %_35.i.i.i28
  %_13.i.i.i = icmp ugt i8 %x.i.i.i23, -33
  br i1 %_13.i.i.i, label %bb6.i.i.i29, label %bb12

bb3.i.i.i37:                                      ; preds = %bb14.i.i.i22
  %_7.i.i.i = zext nneg i8 %x.i.i.i23 to i32
  br label %bb12

bb6.i.i.i29:                                      ; preds = %bb4.i.i.i25
  %_18.i12.i.i.i = getelementptr inbounds nuw i8, ptr %spec.select51, i64 1
  %_7.i17.i.i.i = icmp ne ptr %_18.i12.i.i.i, %_7.i
  tail call void @llvm.assume(i1 %_7.i17.i.i.i)
  %z.i.i.i30 = load i8, ptr %_18.i12.i.i.i, align 1, !noalias !1651, !noundef !37
  %_40.i.i.i31 = shl nuw nsw i32 %_35.i.i.i28, 6
  %_42.i.i.i32 = and i8 %z.i.i.i30, 63
  %_41.i.i.i33 = zext nneg i8 %_42.i.i.i32 to i32
  %y_z.i.i.i = or disjoint i32 %_40.i.i.i31, %_41.i.i.i33
  %_20.i.i.i = shl nuw nsw i32 %init.i.i.i, 12
  %64 = or disjoint i32 %y_z.i.i.i, %_20.i.i.i
  %_21.i.i.i = icmp ugt i8 %x.i.i.i23, -17
  br i1 %_21.i.i.i, label %bb8.i.i.i34, label %bb12

bb8.i.i.i34:                                      ; preds = %bb6.i.i.i29
  %_18.i19.i.i.i = getelementptr inbounds nuw i8, ptr %spec.select51, i64 2
  %_7.i24.i.i.i = icmp ne ptr %_18.i19.i.i.i, %_7.i
  tail call void @llvm.assume(i1 %_7.i24.i.i.i)
  %w.i.i.i35 = load i8, ptr %_18.i19.i.i.i, align 1, !noalias !1651, !noundef !37
  %_26.i.i.i36 = shl nuw nsw i32 %init.i.i.i, 18
  %_25.i.i.i = and i32 %_26.i.i.i36, 1835008
  %_46.i.i.i = shl nuw nsw i32 %y_z.i.i.i, 6
  %_48.i.i.i = and i8 %w.i.i.i35, 63
  %_47.i.i.i = zext nneg i8 %_48.i.i.i to i32
  %_27.i.i.i = or disjoint i32 %_46.i.i.i, %_47.i.i.i
  %65 = or disjoint i32 %_27.i.i.i, %_25.i.i.i
  br label %bb12

bb12:                                             ; preds = %bb8.i.i.i34, %bb6.i.i.i29, %bb3.i.i.i37, %bb4.i.i.i25, %bb5.critedge.i, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E.exit.i"
  %_0.sroa.0.0.i = phi i32 [ 1114112, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E.exit.i" ], [ %_7.i.i.i, %bb3.i.i.i37 ], [ 1114112, %bb5.critedge.i ], [ %65, %bb8.i.i.i34 ], [ %64, %bb6.i.i.i29 ], [ %63, %bb4.i.i.i25 ]
  %.not.i = icmp eq i32 %_0.sroa.0.0.i, 1114112
  br i1 %.not.i, label %bb2.i7.invoke, label %bb17, !prof !1033

bb17:                                             ; preds = %bb12, %bb20
  %iter.sroa.0.0 = phi ptr [ %iter.sroa.0.2, %bb20 ], [ %_6.i.i12, %bb12 ]
  %sum.sroa.0.0 = phi i32 [ %70, %bb20 ], [ 0, %bb12 ]
  %_7.i.i.i42 = icmp ne ptr %iter.sroa.0.0, %_7.i
  %spec.select53.idx = zext i1 %_7.i.i.i42 to i64
  %spec.select53 = getelementptr inbounds nuw i8, ptr %iter.sroa.0.0, i64 %spec.select53.idx
  br i1 %_7.i.i.i42, label %bb14.i.i45, label %bb18

bb14.i.i45:                                       ; preds = %bb17
  %x.i.i = load i8, ptr %iter.sroa.0.0, align 1, !noalias !1656, !noundef !37
  %_6.i.i46 = icmp sgt i8 %x.i.i, -1
  br i1 %_6.i.i46, label %bb3.i.i, label %bb4.i.i47

bb4.i.i47:                                        ; preds = %bb14.i.i45
  %_30.i.i = and i8 %x.i.i, 31
  %init.i.i = zext nneg i8 %_30.i.i to i32
  %_7.i10.i.i = icmp ne ptr %spec.select53, %_7.i
  tail call void @llvm.assume(i1 %_7.i10.i.i)
  %_18.i12.i.i = getelementptr inbounds nuw i8, ptr %spec.select53, i64 1
  %y.i.i = load i8, ptr %spec.select53, align 1, !noalias !1656, !noundef !37
  %_34.i.i = shl nuw nsw i32 %init.i.i, 6
  %_36.i.i48 = and i8 %y.i.i, 63
  %_35.i.i = zext nneg i8 %_36.i.i48 to i32
  %66 = or disjoint i32 %_34.i.i, %_35.i.i
  %_13.i.i = icmp ugt i8 %x.i.i, -33
  br i1 %_13.i.i, label %bb6.i.i, label %bb18

bb3.i.i:                                          ; preds = %bb14.i.i45
  %_7.i.i = zext nneg i8 %x.i.i to i32
  br label %bb18

bb6.i.i:                                          ; preds = %bb4.i.i47
  %_7.i17.i.i = icmp ne ptr %_18.i12.i.i, %_7.i
  tail call void @llvm.assume(i1 %_7.i17.i.i)
  %_18.i19.i.i = getelementptr inbounds nuw i8, ptr %spec.select53, i64 2
  %z.i.i = load i8, ptr %_18.i12.i.i, align 1, !noalias !1656, !noundef !37
  %_40.i.i = shl nuw nsw i32 %_35.i.i, 6
  %_42.i.i = and i8 %z.i.i, 63
  %_41.i.i = zext nneg i8 %_42.i.i to i32
  %y_z.i.i = or disjoint i32 %_40.i.i, %_41.i.i
  %_20.i.i = shl nuw nsw i32 %init.i.i, 12
  %67 = or disjoint i32 %y_z.i.i, %_20.i.i
  %_21.i.i = icmp ugt i8 %x.i.i, -17
  br i1 %_21.i.i, label %bb8.i.i, label %bb18

bb8.i.i:                                          ; preds = %bb6.i.i
  %_7.i24.i.i = icmp ne ptr %_18.i19.i.i, %_7.i
  tail call void @llvm.assume(i1 %_7.i24.i.i)
  %_18.i26.i.i = getelementptr inbounds nuw i8, ptr %spec.select53, i64 3
  %w.i.i = load i8, ptr %_18.i19.i.i, align 1, !noalias !1656, !noundef !37
  %_26.i.i = shl nuw nsw i32 %init.i.i, 18
  %_25.i.i50 = and i32 %_26.i.i, 1835008
  %_46.i.i = shl nuw nsw i32 %y_z.i.i, 6
  %_48.i.i = and i8 %w.i.i, 63
  %_47.i.i = zext nneg i8 %_48.i.i to i32
  %_27.i.i = or disjoint i32 %_46.i.i, %_47.i.i
  %68 = or disjoint i32 %_27.i.i, %_25.i.i50
  br label %bb18

bb18:                                             ; preds = %bb8.i.i, %bb6.i.i, %bb3.i.i, %bb4.i.i47, %bb17
  %iter.sroa.0.2 = phi ptr [ %spec.select53, %bb17 ], [ %spec.select53, %bb3.i.i ], [ %_18.i26.i.i, %bb8.i.i ], [ %_18.i19.i.i, %bb6.i.i ], [ %_18.i12.i.i, %bb4.i.i47 ]
  %spec.select.i49 = phi i32 [ 1114112, %bb17 ], [ %_7.i.i, %bb3.i.i ], [ %68, %bb8.i.i ], [ %67, %bb6.i.i ], [ %66, %bb4.i.i47 ]
  %.not = icmp eq i32 %spec.select.i49, 1114112
  br i1 %.not, label %bb21, label %bb20

bb20:                                             ; preds = %bb18
  %69 = icmp samesign ult i32 %spec.select.i49, 1114112
  tail call void @llvm.assume(i1 %69)
  %70 = add i32 %spec.select.i49, %sum.sroa.0.0
  br label %bb17

bb21:                                             ; preds = %bb18
  %_35 = srem i32 %sum.sroa.0.0, 3
  %_34 = icmp eq i32 %_35, 0
  br i1 %_34, label %bb22, label %bb35

bb22:                                             ; preds = %bb21
  %71 = lshr exact i32 %spec.select.i.i, 1
  %_37 = add nuw nsw i32 %_0.sroa.0.0.i, %71
  %_37.lobit = and i32 %_37, 1
  %spec.select = xor i32 %_37.lobit, 1
  br label %bb35

terminate:                                        ; preds = %cleanup
  %72 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #25
  unreachable
}
