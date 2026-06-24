define noundef i32 @f_gold(ptr noalias noundef nonnull readonly align 4 captures(none) %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %n) unnamed_addr #3 {
start:
  %_5 = add i32 %n, -1
  %_0.i.i.i42 = icmp sgt i32 %_5, 1
  br i1 %_0.i.i.i42, label %bb5.preheader, label %bb6

bb5.preheader:                                    ; preds = %start
  %0 = add i32 %n, 1
  br label %bb5

bb5:                                              ; preds = %bb5.preheader, %bb22
  %spec.select46 = phi i32 [ %spec.select, %bb22 ], [ 2, %bb5.preheader ]
  %invcount.sroa.0.045 = phi i32 [ %5, %bb22 ], [ 0, %bb5.preheader ]
  %iter.sroa.0.044 = phi i32 [ %spec.select46, %bb22 ], [ 1, %bb5.preheader ]
  %_14 = add nuw i32 %iter.sroa.0.044, 1
  %_0.i.i.i1634 = icmp slt i32 %_14, %n
  br i1 %_0.i.i.i1634, label %bb10.lr.ph, label %bb19.preheader

bb10.lr.ph:                                       ; preds = %bb5
  %_22 = zext nneg i32 %iter.sroa.0.044 to i64
  %_24 = icmp samesign ugt i64 %arr.1, %_22
  %1 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_22
  br i1 %_24, label %bb10.preheader, label %panic5

bb10.preheader:                                   ; preds = %bb10.lr.ph
  %spec.select2235 = add nuw i32 %iter.sroa.0.044, 2
  %2 = zext i32 %spec.select2235 to i64
  br label %bb10

bb6:                                              ; preds = %bb22, %start
  %invcount.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %5, %bb22 ]
  ret i32 %invcount.sroa.0.0.lcssa

bb19.preheader:                                   ; preds = %bb13, %bb5
  %small.sroa.0.0.lcssa = phi i32 [ 0, %bb5 ], [ %small.sroa.0.1, %bb13 ]
  %_39 = zext nneg i32 %iter.sroa.0.044 to i64
  %_41 = icmp samesign ugt i64 %arr.1, %_39
  %3 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_39
  br i1 %_41, label %bb21.preheader, label %panic

bb21.preheader:                                   ; preds = %bb19.preheader
  %4 = add nsw i32 %iter.sroa.0.044, -1
  br label %bb21

bb10:                                             ; preds = %bb10.preheader, %bb13
  %indvars.iv = phi i64 [ %2, %bb10.preheader ], [ %indvars.iv.next, %bb13 ]
  %small.sroa.0.037 = phi i32 [ 0, %bb10.preheader ], [ %small.sroa.0.1, %bb13 ]
  %iter1.sroa.0.036 = phi i32 [ %_14, %bb10.preheader ], [ %12, %bb13 ]
  %_26 = sext i32 %iter1.sroa.0.036 to i64
  %_27 = icmp ugt i64 %arr.1, %_26
  br i1 %_27, label %bb13, label %panic6

bb21:                                             ; preds = %bb21.preheader, %bb24
  %_0.sroa.3.0.i.i.i41 = phi i32 [ %_0.sroa.3.0.i.i.i, %bb24 ], [ %4, %bb21.preheader ]
  %iter2.sroa.4.140 = phi i32 [ %iter2.sroa.4.1, %bb24 ], [ %4, %bb21.preheader ]
  %great.sroa.0.039 = phi i32 [ %great.sroa.0.1, %bb24 ], [ 0, %bb21.preheader ]
  %_43 = sext i32 %_0.sroa.3.0.i.i.i41 to i64
  %_44 = icmp ugt i64 %arr.1, %_43
  br i1 %_44, label %bb24, label %panic3

bb22:                                             ; preds = %bb24
  %_45 = mul i32 %great.sroa.0.1, %small.sroa.0.0.lcssa
  %5 = add i32 %_45, %invcount.sroa.0.045
  %_0.i.i.i = icmp slt i32 %spec.select46, %_5
  %6 = zext i1 %_0.i.i.i to i32
  %spec.select = add nuw nsw i32 %spec.select46, %6
  br i1 %_0.i.i.i, label %bb5, label %bb6

panic:                                            ; preds = %bb19.preheader
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_39, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_952d3252ba3fe51053788899126b19eb) #24
  unreachable

bb24:                                             ; preds = %bb21
  %_38 = load float, ptr %3, align 4, !noundef !37
  %7 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_43
  %_42 = load float, ptr %7, align 4, !noundef !37
  %_37 = fcmp olt float %_38, %_42
  %8 = zext i1 %_37 to i32
  %great.sroa.0.1 = add i32 %great.sroa.0.039, %8
  %_0.i.i.i.i = icmp sgt i32 %iter2.sroa.4.140, 0
  %9 = add nsw i32 %iter2.sroa.4.140, -1
  %iter2.sroa.4.1 = select i1 %_0.i.i.i.i, i32 %9, i32 %iter2.sroa.4.140
  %_0.sroa.3.0.i.i.i = select i1 %_0.i.i.i.i, i32 %9, i32 undef
  br i1 %_0.i.i.i.i, label %bb21, label %bb22

panic3:                                           ; preds = %bb21
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_43, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_18d819d35e84672d5aefd520e0c7a4a0) #24
  unreachable

panic5:                                           ; preds = %bb10.lr.ph
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_22, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_5e516f23107a45426ae529d460b0767e) #24
  unreachable

bb13:                                             ; preds = %bb10
  %_21 = load float, ptr %1, align 4, !noundef !37
  %10 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_26
  %_25 = load float, ptr %10, align 4, !noundef !37
  %_20 = fcmp ogt float %_21, %_25
  %11 = zext i1 %_20 to i32
  %small.sroa.0.1 = add i32 %small.sroa.0.037, %11
  %indvars.iv.next = add i64 %indvars.iv, 1
  %12 = trunc i64 %indvars.iv to i32
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %0, %lftr.wideiv
  br i1 %exitcond.not, label %bb19.preheader, label %bb10

panic6:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_26, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_6e4c18a25bc3c435221967b9b710bffc) #24
  unreachable
}
