define noundef i32 @f_gold(i64 %0, i64 %1, i32 noundef %n, i32 noundef %k) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %a.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %a.sroa.2.0.extract.shift = lshr i64 %0, 32
  %a.sroa.2.0.extract.trunc = trunc nuw i64 %a.sroa.2.0.extract.shift to i32
  %b.sroa.0.0.extract.trunc = trunc i64 %1 to i32
  %b.sroa.2.0.extract.shift = lshr i64 %1, 32
  %b.sroa.2.0.extract.trunc = trunc nuw i64 %b.sroa.2.0.extract.shift to i32
  %_4830 = icmp sgt i32 %n, 0
  br i1 %_4830, label %bb34.lr.ph, label %bb35

bb34.lr.ph:                                       ; preds = %start
  %_43 = shl i32 %k, 1
  %2 = add nsw i32 %n, -3
  %.not = icmp ult i32 %2, -2
  br i1 %.not, label %panic, label %bb34

bb35.loopexit:                                    ; preds = %bb17.1, %bb25.1, %bb27.1, %bb21.1, %bb12.1, %bb14.1, %bb7.1, %bb33
  %diff.sroa.0.1.lcssa = phi i32 [ %diff.sroa.0.1, %bb33 ], [ %_0.sroa.0.0.i26.1, %bb7.1 ], [ %_0.sroa.0.0.i25.1, %bb14.1 ], [ %_0.sroa.0.0.i24.1, %bb21.1 ], [ %_0.sroa.0.0.i.1, %bb27.1 ], [ %diff.sroa.0.1, %bb25.1 ], [ %diff.sroa.0.1, %bb17.1 ], [ %diff.sroa.0.1, %bb12.1 ]
  %.lcssa = phi i32 [ %pro, %bb33 ], [ %4, %bb7.1 ], [ %4, %bb14.1 ], [ %4, %bb12.1 ], [ %4, %bb21.1 ], [ %4, %bb27.1 ], [ %4, %bb25.1 ], [ %4, %bb17.1 ]
  %3 = sub i32 %.lcssa, %diff.sroa.0.1.lcssa
  br label %bb35

bb35:                                             ; preds = %bb35.loopexit, %start
  %_0 = phi i32 [ 0, %start ], [ %3, %bb35.loopexit ]
  ret i32 %_0

bb34:                                             ; preds = %bb34.lr.ph
  %pro = mul i32 %b.sroa.0.0.extract.trunc, %a.sroa.0.0.extract.trunc
  %_14 = icmp slt i32 %pro, 0
  br i1 %_14, label %bb5, label %bb17

panic:                                            ; preds = %bb34.lr.ph
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_efcc73e7234170c543d3277d5eae92ce) #18
  unreachable

bb5:                                              ; preds = %bb34
  %_15 = icmp slt i32 %b.sroa.0.0.extract.trunc, 0
  br i1 %_15, label %bb7, label %bb12

bb17:                                             ; preds = %bb34
  %_31.not = icmp eq i32 %pro, 0
  br i1 %_31.not, label %bb33, label %bb19

bb12:                                             ; preds = %bb5
  %_23 = icmp slt i32 %a.sroa.0.0.extract.trunc, 0
  br i1 %_23, label %bb14, label %bb33

bb19:                                             ; preds = %bb17
  %_32 = icmp slt i32 %a.sroa.0.0.extract.trunc, 0
  br i1 %_32, label %bb21, label %bb25

bb25:                                             ; preds = %bb19
  %_40.not = icmp eq i32 %a.sroa.0.0.extract.trunc, 0
  br i1 %_40.not, label %bb33, label %bb27

bb27:                                             ; preds = %bb25
  %_42 = sub i32 %a.sroa.0.0.extract.trunc, %_43
  %temp = mul i32 %_42, %b.sroa.0.0.extract.trunc
  %_46.sroa.0.0 = tail call i32 @llvm.abs.i32(i32 %temp, i1 false)
  %_45 = sub i32 %_46.sroa.0.0, %pro
  %_0.sroa.0.0.i = tail call noundef i32 @llvm.smax.i32(i32 %_45, i32 0)
  br label %bb33

bb21:                                             ; preds = %bb19
  %_34 = add i32 %_43, %a.sroa.0.0.extract.trunc
  %temp10 = mul i32 %_34, %b.sroa.0.0.extract.trunc
  %_38.sroa.0.0 = tail call i32 @llvm.abs.i32(i32 %temp10, i1 false)
  %_37 = sub i32 %_38.sroa.0.0, %pro
  %_0.sroa.0.0.i24 = tail call noundef i32 @llvm.smax.i32(i32 %_37, i32 0)
  br label %bb33

bb14:                                             ; preds = %bb12
  %_25 = sub i32 %a.sroa.0.0.extract.trunc, %_43
  %temp13 = mul i32 %_25, %b.sroa.0.0.extract.trunc
  %_29.sroa.0.0 = tail call i32 @llvm.abs.i32(i32 %temp13, i1 false)
  %_28 = add i32 %_29.sroa.0.0, %pro
  %_0.sroa.0.0.i25 = tail call noundef i32 @llvm.smax.i32(i32 %_28, i32 0)
  br label %bb33

bb33:                                             ; preds = %bb12, %bb14, %bb17, %bb25, %bb27, %bb21, %bb7
  %diff.sroa.0.1 = phi i32 [ %_0.sroa.0.0.i26, %bb7 ], [ %_0.sroa.0.0.i25, %bb14 ], [ %_0.sroa.0.0.i24, %bb21 ], [ %_0.sroa.0.0.i, %bb27 ], [ 0, %bb25 ], [ 0, %bb17 ], [ 0, %bb12 ]
  %exitcond.not = icmp eq i32 %n, 1
  br i1 %exitcond.not, label %bb35.loopexit, label %bb34.1

bb34.1:                                           ; preds = %bb33
  %pro.1 = mul i32 %b.sroa.2.0.extract.trunc, %a.sroa.2.0.extract.trunc
  %4 = add i32 %pro.1, %pro
  %_14.1 = icmp slt i32 %pro.1, 0
  br i1 %_14.1, label %bb5.1, label %bb17.1

bb17.1:                                           ; preds = %bb34.1
  %_31.not.1 = icmp eq i32 %pro.1, 0
  br i1 %_31.not.1, label %bb35.loopexit, label %bb19.1

bb19.1:                                           ; preds = %bb17.1
  %_32.1 = icmp slt i64 %0, 0
  br i1 %_32.1, label %bb21.1, label %bb25.1

bb25.1:                                           ; preds = %bb19.1
  %_40.not.1 = icmp ult i64 %0, 4294967296
  br i1 %_40.not.1, label %bb35.loopexit, label %bb27.1

bb27.1:                                           ; preds = %bb25.1
  %_42.1 = sub i32 %a.sroa.2.0.extract.trunc, %_43
  %temp.1 = mul i32 %_42.1, %b.sroa.2.0.extract.trunc
  %_46.sroa.0.0.1 = tail call i32 @llvm.abs.i32(i32 %temp.1, i1 false)
  %_45.1 = sub i32 %_46.sroa.0.0.1, %pro.1
  %_0.sroa.0.0.i.1 = tail call noundef i32 @llvm.smax.i32(i32 %_45.1, i32 %diff.sroa.0.1)
  br label %bb35.loopexit

bb21.1:                                           ; preds = %bb19.1
  %_34.1 = add i32 %_43, %a.sroa.2.0.extract.trunc
  %temp10.1 = mul i32 %_34.1, %b.sroa.2.0.extract.trunc
  %_38.sroa.0.0.1 = tail call i32 @llvm.abs.i32(i32 %temp10.1, i1 false)
  %_37.1 = sub i32 %_38.sroa.0.0.1, %pro.1
  %_0.sroa.0.0.i24.1 = tail call noundef i32 @llvm.smax.i32(i32 %_37.1, i32 %diff.sroa.0.1)
  br label %bb35.loopexit

bb5.1:                                            ; preds = %bb34.1
  %_15.1 = icmp slt i64 %1, 0
  br i1 %_15.1, label %bb7.1, label %bb12.1

bb12.1:                                           ; preds = %bb5.1
  %_23.1 = icmp slt i64 %0, 0
  br i1 %_23.1, label %bb14.1, label %bb35.loopexit

bb14.1:                                           ; preds = %bb12.1
  %_25.1 = sub i32 %a.sroa.2.0.extract.trunc, %_43
  %temp13.1 = mul i32 %_25.1, %b.sroa.2.0.extract.trunc
  %_29.sroa.0.0.1 = tail call i32 @llvm.abs.i32(i32 %temp13.1, i1 false)
  %_28.1 = add i32 %_29.sroa.0.0.1, %pro.1
  %_0.sroa.0.0.i25.1 = tail call noundef i32 @llvm.smax.i32(i32 %_28.1, i32 %diff.sroa.0.1)
  br label %bb35.loopexit

bb7.1:                                            ; preds = %bb5.1
  %_17.1 = add i32 %_43, %a.sroa.2.0.extract.trunc
  %temp16.1 = mul i32 %_17.1, %b.sroa.2.0.extract.trunc
  %_21.sroa.0.0.1 = tail call i32 @llvm.abs.i32(i32 %temp16.1, i1 false)
  %_20.1 = add i32 %_21.sroa.0.0.1, %pro.1
  %_0.sroa.0.0.i26.1 = tail call noundef i32 @llvm.smax.i32(i32 %_20.1, i32 %diff.sroa.0.1)
  br label %bb35.loopexit

bb7:                                              ; preds = %bb5
  %_17 = add i32 %_43, %a.sroa.0.0.extract.trunc
  %temp16 = mul i32 %_17, %b.sroa.0.0.extract.trunc
  %_21.sroa.0.0 = tail call i32 @llvm.abs.i32(i32 %temp16, i1 false)
  %_20 = add i32 %_21.sroa.0.0, %pro
  %_0.sroa.0.0.i26 = tail call noundef i32 @llvm.smax.i32(i32 %_20, i32 0)
  br label %bb33
}
