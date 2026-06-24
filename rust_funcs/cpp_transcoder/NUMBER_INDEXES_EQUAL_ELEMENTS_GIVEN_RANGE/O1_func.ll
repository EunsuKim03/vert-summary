define noundef i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %l, i32 noundef %r) unnamed_addr #3 {
start:
  %a = alloca [8 x i8], align 8
  store i64 %0, ptr %a, align 8
  %_0.i.i.i8 = icmp slt i32 %l, %r
  br i1 %_0.i.i.i8, label %bb5.preheader, label %bb6

bb5.preheader:                                    ; preds = %start
  %spec.select9 = add nsw i32 %l, 1
  %_14 = sext i32 %l to i64
  %_15 = icmp ult i32 %l, 2
  br i1 %_15, label %bb7, label %panic

bb6:                                              ; preds = %bb8, %start
  %count.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %3, %bb8 ]
  ret i32 %count.sroa.0.0.lcssa

bb7:                                              ; preds = %bb5.preheader
  %_18 = add nuw nsw i32 %l, 1
  %_17 = zext nneg i32 %_18 to i64
  %_19 = icmp eq i32 %l, 0
  br i1 %_19, label %bb8, label %panic1

panic:                                            ; preds = %bb5.1, %bb5.preheader
  %_14.lcssa = phi i64 [ %_14, %bb5.preheader ], [ %_14.1, %bb5.1 ]
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_14.lcssa, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0c6e4da0cca3be13bfe53d964f6ae05a) #24
  unreachable

bb8:                                              ; preds = %bb7
  %1 = getelementptr inbounds nuw float, ptr %a, i64 %_14
  %_13 = load float, ptr %1, align 4, !noundef !37
  %2 = getelementptr inbounds nuw float, ptr %a, i64 %_17
  %_16 = load float, ptr %2, align 4, !noundef !37
  %_12 = fcmp oeq float %_13, %_16
  %3 = zext i1 %_12 to i32
  %_0.i.i.i = icmp slt i32 %spec.select9, %r
  br i1 %_0.i.i.i, label %bb5.1, label %bb6

bb5.1:                                            ; preds = %bb8
  %_14.1 = zext nneg i32 %spec.select9 to i64
  %_15.1 = icmp ult i32 %spec.select9, 2
  br i1 %_15.1, label %panic1, label %panic

panic1:                                           ; preds = %bb5.1, %bb7
  %_17.lcssa = phi i64 [ %_17, %bb7 ], [ 2, %bb5.1 ]
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_17.lcssa, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4f5b6d2484fe932f9f775b35f4660793) #24
  unreachable
}
