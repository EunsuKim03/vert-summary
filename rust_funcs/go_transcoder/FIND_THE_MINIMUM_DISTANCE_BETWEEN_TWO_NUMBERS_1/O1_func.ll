define noundef i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %x, i32 noundef %y) unnamed_addr #3 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  br label %bb2

bb2:                                              ; preds = %bb6, %start
  %iter.sroa.0.0 = phi i32 [ 0, %start ], [ %spec.select22, %bb6 ]
  %_0.i.i.i = icmp slt i32 %iter.sroa.0.0, %n
  %1 = zext i1 %_0.i.i.i to i32
  %spec.select22 = add nuw nsw i32 %iter.sroa.0.0, %1
  br i1 %_0.i.i.i, label %bb5, label %bb11

bb5:                                              ; preds = %bb2
  %_15 = zext nneg i32 %iter.sroa.0.0 to i64
  %_16 = icmp samesign ult i32 %iter.sroa.0.0, 2
  br i1 %_16, label %bb6, label %panic

bb11:                                             ; preds = %bb6, %bb2
  %prev.sroa.0.0 = phi i32 [ 0, %bb2 ], [ %iter.sroa.0.0, %bb6 ]
  %_0.i.i.i1829 = icmp slt i32 %prev.sroa.0.0, %n
  br i1 %_0.i.i.i1829, label %bb15.preheader, label %bb16

bb15.preheader:                                   ; preds = %bb11
  %spec.select2430 = add nuw nsw i32 %prev.sroa.0.0, 1
  %_28 = zext nneg i32 %prev.sroa.0.0 to i64
  %2 = getelementptr inbounds nuw i32, ptr %arr, i64 %_28
  %_27 = load i32, ptr %2, align 4, !noundef !37
  %_26 = icmp eq i32 %_27, %x
  %_30 = icmp eq i32 %_27, %y
  %or.cond14 = or i1 %_26, %_30
  br i1 %or.cond14, label %bb22, label %bb29

bb6:                                              ; preds = %bb5
  %3 = getelementptr inbounds nuw i32, ptr %arr, i64 %_15
  %_14 = load i32, ptr %3, align 4, !noundef !37
  %_13 = icmp eq i32 %_14, %x
  %_17 = icmp eq i32 %_14, %y
  %or.cond = or i1 %_13, %_17
  br i1 %or.cond, label %bb11, label %bb2

panic:                                            ; preds = %bb5
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_15, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_389a26be994414b0ad8da10b568ac2e8) #24
  unreachable

bb16:                                             ; preds = %bb17.2, %bb22.2, %bb23.2, %bb29, %bb29.1, %bb11
  %min_dist.sroa.0.0.lcssa = phi i32 [ 2147483647, %bb11 ], [ %min_dist.sroa.0.1, %bb29 ], [ %min_dist.sroa.0.1.1, %bb29.1 ], [ %min_dist.sroa.0.1.1, %bb17.2 ], [ %min_dist.sroa.0.1.1, %bb22.2 ], [ %spec.select.2, %bb23.2 ]
  ret i32 %min_dist.sroa.0.0.lcssa

panic4:                                           ; preds = %bb15.2, %bb15.1
  %_28.lcssa = phi i64 [ %_28.1, %bb15.1 ], [ %_28.2, %bb15.2 ]
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_28.lcssa, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_d7544bbd56a92bb5b67d0540dcb25cbb) #24
  unreachable

bb29:                                             ; preds = %bb22, %bb15.preheader
  %min_dist.sroa.0.1 = phi i32 [ 2147483647, %bb15.preheader ], [ %spec.select, %bb22 ]
  %_0.i.i.i18 = icmp slt i32 %spec.select2430, %n
  %4 = zext i1 %_0.i.i.i18 to i32
  %spec.select24 = add nuw nsw i32 %spec.select2430, %4
  br i1 %_0.i.i.i18, label %bb15.1, label %bb16

bb15.1:                                           ; preds = %bb29
  %_28.1 = zext nneg i32 %spec.select2430 to i64
  %_29.1 = icmp eq i32 %prev.sroa.0.0, 0
  br i1 %_29.1, label %bb17.1, label %panic4

bb17.1:                                           ; preds = %bb15.1
  %5 = getelementptr inbounds nuw i32, ptr %arr, i64 %_28.1
  %_27.1 = load i32, ptr %5, align 4, !noundef !37
  %_26.1 = icmp eq i32 %_27.1, %x
  %_30.1 = icmp eq i32 %_27.1, %y
  %or.cond14.1 = or i1 %_26.1, %_30.1
  br i1 %or.cond14.1, label %bb22.1, label %bb29.1

bb22.1:                                           ; preds = %bb17.1
  %_33.1 = zext nneg i32 %prev.sroa.0.0 to i64
  %6 = getelementptr inbounds nuw i32, ptr %arr, i64 %_33.1
  %_32.1 = load i32, ptr %6, align 4, !noundef !37
  %_31.not.1 = icmp eq i32 %_32.1, %_27.1
  br i1 %_31.not.1, label %bb29.1, label %bb23.1

bb23.1:                                           ; preds = %bb22.1
  %spec.select.1 = tail call i32 @llvm.smin.i32(i32 %min_dist.sroa.0.1, i32 1)
  br label %bb29.1

bb29.1:                                           ; preds = %bb23.1, %bb22.1, %bb17.1
  %min_dist.sroa.0.1.1 = phi i32 [ %min_dist.sroa.0.1, %bb17.1 ], [ %min_dist.sroa.0.1, %bb22.1 ], [ %spec.select.1, %bb23.1 ]
  %prev.sroa.0.2.1 = phi i32 [ %prev.sroa.0.0, %bb17.1 ], [ %spec.select2430, %bb22.1 ], [ %spec.select2430, %bb23.1 ]
  %_0.i.i.i18.1 = icmp slt i32 %spec.select24, %n
  br i1 %_0.i.i.i18.1, label %bb15.2, label %bb16

bb15.2:                                           ; preds = %bb29.1
  %_28.2 = zext nneg i32 %spec.select24 to i64
  %_29.2 = icmp ult i32 %spec.select24, 2
  br i1 %_29.2, label %bb17.2, label %panic4

bb17.2:                                           ; preds = %bb15.2
  %7 = getelementptr inbounds nuw i32, ptr %arr, i64 %_28.2
  %_27.2 = load i32, ptr %7, align 4, !noundef !37
  %_26.2 = icmp eq i32 %_27.2, %x
  %_30.2 = icmp eq i32 %_27.2, %y
  %or.cond14.2 = or i1 %_26.2, %_30.2
  br i1 %or.cond14.2, label %bb20.2, label %bb16

bb20.2:                                           ; preds = %bb17.2
  %_33.2 = sext i32 %prev.sroa.0.2.1 to i64
  %_35.2 = icmp ult i32 %prev.sroa.0.2.1, 2
  br i1 %_35.2, label %bb22.2, label %panic6

bb22.2:                                           ; preds = %bb20.2
  %8 = getelementptr inbounds nuw i32, ptr %arr, i64 %_33.2
  %_32.2 = load i32, ptr %8, align 4, !noundef !37
  %_31.not.2 = icmp eq i32 %_32.2, %_27.2
  br i1 %_31.not.2, label %bb16, label %bb23.2

bb23.2:                                           ; preds = %bb22.2
  %_37.2 = sub nsw i32 %spec.select24, %prev.sroa.0.2.1
  %spec.select.2 = tail call i32 @llvm.smin.i32(i32 %_37.2, i32 %min_dist.sroa.0.1.1)
  br label %bb16

panic6:                                           ; preds = %bb20.2
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_33.2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0ee009ebfb7a677a021f69142d62cd3f) #24
  unreachable

bb22:                                             ; preds = %bb15.preheader
  %_33 = zext nneg i32 %prev.sroa.0.0 to i64
  %9 = getelementptr inbounds nuw i32, ptr %arr, i64 %_33
  %_32 = load i32, ptr %9, align 4, !noundef !37
  %_31.not = icmp eq i32 %_32, %_27
  %spec.select = select i1 %_31.not, i32 2147483647, i32 0
  br label %bb29
}
