define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_1917 = icmp sgt i32 %n, 0
  br i1 %_1917, label %bb12.preheader, label %bb8

bb8:                                              ; preds = %bb13, %start
  %res.sroa.0.0.lcssa = phi i32 [ -2147483648, %start ], [ %_0.sroa.0.0.i, %bb13 ]
  ret i32 %res.sroa.0.0.lcssa

bb12.preheader:                                   ; preds = %start, %bb13
  %res.sroa.0.019 = phi i32 [ %_0.sroa.0.0.i, %bb13 ], [ -2147483648, %start ]
  %iter.sroa.0.018 = phi i32 [ %1, %bb13 ], [ 0, %start ]
  %1 = add nuw nsw i32 %iter.sroa.0.018, 1
  br label %bb12

bb13:                                             ; preds = %bb5
  %_0.sroa.0.0.i = tail call noundef i32 @llvm.smax.i32(i32 %4, i32 %res.sroa.0.019)
  %exitcond22.not = icmp eq i32 %1, %n
  br i1 %exitcond22.not, label %bb8, label %bb12.preheader

bb12:                                             ; preds = %bb12.preheader, %bb5
  %iter1.sroa.0.016 = phi i32 [ %2, %bb5 ], [ 0, %bb12.preheader ]
  %curr_sum.sroa.0.015 = phi i32 [ %4, %bb5 ], [ 0, %bb12.preheader ]
  %_9 = add nuw i32 %iter1.sroa.0.016, %iter.sroa.0.018
  %index = srem i32 %_9, %n
  %_16 = sext i32 %index to i64
  %_17 = icmp ult i32 %index, 2
  br i1 %_17, label %bb5, label %panic3

bb5:                                              ; preds = %bb12
  %2 = add nuw nsw i32 %iter1.sroa.0.016, 1
  %3 = getelementptr inbounds nuw i32, ptr %arr, i64 %_16
  %_15 = load i32, ptr %3, align 4, !noundef !23
  %_14 = mul i32 %_15, %iter1.sroa.0.016
  %4 = add i32 %_14, %curr_sum.sroa.0.015
  %exitcond.not = icmp eq i32 %2, %n
  br i1 %exitcond.not, label %bb13, label %bb12

panic3:                                           ; preds = %bb12
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_16, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_fc22464ebf2dd82d3f5e4a5725850908) #18
  unreachable
}
