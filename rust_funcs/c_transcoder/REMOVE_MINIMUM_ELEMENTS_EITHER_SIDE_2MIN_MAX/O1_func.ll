define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_0.i.i.i35 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i35, label %bb11, label %bb6

bb6.loopexit:                                     ; preds = %bb11.266, %bb15.273, %bb22.1, %bb22
  %longest_end.sroa.0.1.lcssa.lcssa = phi i32 [ %longest_end.sroa.0.1.lcssa, %bb22 ], [ %longest_end.sroa.0.1.lcssa.1, %bb22.1 ], [ %longest_end.sroa.0.1.lcssa.1, %bb11.266 ], [ %spec.select.271, %bb15.273 ]
  %longest_start.sroa.0.1.lcssa.lcssa = phi i32 [ %longest_start.sroa.0.1.lcssa, %bb22 ], [ %longest_start.sroa.0.1.lcssa.1, %bb22.1 ], [ %longest_start.sroa.0.1.lcssa.1, %bb11.266 ], [ %spec.select11.272, %bb15.273 ]
  %1 = xor i32 %longest_end.sroa.0.1.lcssa.lcssa, -1
  br label %bb6

bb6:                                              ; preds = %bb6.loopexit, %start
  %longest_end.sroa.0.0.lcssa = phi i32 [ -1, %start ], [ %1, %bb6.loopexit ]
  %longest_start.sroa.0.0.lcssa = phi i32 [ -1, %start ], [ %longest_start.sroa.0.1.lcssa.lcssa, %bb6.loopexit ]
  %_37 = icmp eq i32 %longest_start.sroa.0.0.lcssa, -1
  %_39.neg = add i32 %longest_start.sroa.0.0.lcssa, %longest_end.sroa.0.0.lcssa
  %2 = select i1 %_37, i32 0, i32 %_39.neg
  %_0.sroa.0.0 = add i32 %2, %n
  ret i32 %_0.sroa.0.0

bb22:                                             ; preds = %bb15.1, %bb11.1, %bb11, %bb15
  %longest_end.sroa.0.1.lcssa = phi i32 [ 0, %bb11 ], [ 0, %bb15 ], [ 0, %bb11.1 ], [ 1, %bb15.1 ]
  %_35.154 = phi i1 [ true, %bb11 ], [ false, %bb15 ], [ false, %bb11.1 ], [ false, %bb15.1 ]
  %longest_start.sroa.0.1.lcssa = phi i32 [ -1, %bb11 ], [ 0, %bb15 ], [ 0, %bb11.1 ], [ 0, %bb15.1 ]
  %_0.i.i.i.not = icmp eq i32 %n, 1
  %spec.select20 = select i1 %_0.i.i.i.not, i32 1, i32 2
  br i1 %_0.i.i.i.not, label %bb6.loopexit, label %bb11.151

bb11.151:                                         ; preds = %bb22
  %3 = getelementptr inbounds nuw i8, ptr %arr, i64 4
  %val.148 = load i32, ptr %3, align 4, !noundef !37
  %_27.149 = shl i32 %val.148, 1
  %_26.not.150 = icmp sgt i32 %_27.149, %val.148
  br i1 %_26.not.150, label %bb15.159, label %bb22.1

bb15.159:                                         ; preds = %bb11.151
  %_32.152 = sub i32 %longest_end.sroa.0.1.lcssa, %longest_start.sroa.0.1.lcssa
  %_30.153 = icmp slt i32 %_32.152, 0
  %or.cond.155 = or i1 %_35.154, %_30.153
  %spec.select.156 = select i1 %or.cond.155, i32 1, i32 %longest_end.sroa.0.1.lcssa
  %spec.select11.157 = select i1 %or.cond.155, i32 1, i32 %longest_start.sroa.0.1.lcssa
  %_0.i.i.i15.158 = icmp sgt i32 %n, 2
  br i1 %_0.i.i.i15.158, label %panic, label %bb22.1

bb22.1:                                           ; preds = %bb15.159, %bb11.151
  %longest_end.sroa.0.1.lcssa.1 = phi i32 [ %longest_end.sroa.0.1.lcssa, %bb11.151 ], [ %spec.select.156, %bb15.159 ]
  %longest_start.sroa.0.1.lcssa.1 = phi i32 [ %longest_start.sroa.0.1.lcssa, %bb11.151 ], [ %spec.select11.157, %bb15.159 ]
  %_0.i.i.i.1 = icmp slt i32 %spec.select20, %n
  br i1 %_0.i.i.i.1, label %bb10.262, label %bb6.loopexit

bb10.262:                                         ; preds = %bb22.1
  %narrow = add nuw nsw i32 %spec.select20, 1
  %indvars.iv.2 = zext nneg i32 %narrow to i64
  %_22.260 = zext nneg i32 %spec.select20 to i64
  br i1 %_0.i.i.i.not, label %bb11.266, label %panic

bb11.266:                                         ; preds = %bb10.262
  %4 = getelementptr inbounds nuw i32, ptr %arr, i64 %_22.260
  %val.263 = load i32, ptr %4, align 4, !noundef !37
  %_27.264 = shl i32 %val.263, 1
  %_26.not.265 = icmp sgt i32 %_27.264, %val.263
  br i1 %_26.not.265, label %bb15.273, label %bb6.loopexit

bb15.273:                                         ; preds = %bb11.266
  %_32.267 = sub i32 %longest_end.sroa.0.1.lcssa.1, %longest_start.sroa.0.1.lcssa.1
  %_30.268 = icmp slt i32 %_32.267, 0
  %_35.269 = icmp eq i32 %longest_start.sroa.0.1.lcssa.1, -1
  %or.cond.270 = or i1 %_35.269, %_30.268
  %spec.select.271 = select i1 %or.cond.270, i32 %spec.select20, i32 %longest_end.sroa.0.1.lcssa.1
  %spec.select11.272 = select i1 %or.cond.270, i32 %spec.select20, i32 %longest_start.sroa.0.1.lcssa.1
  %_0.i.i.i15.2 = icmp sgt i32 %n, %narrow
  br i1 %_0.i.i.i15.2, label %panic, label %bb6.loopexit

bb11:                                             ; preds = %start
  %val = load i32, ptr %arr, align 8, !noundef !37
  %_27 = shl i32 %val, 1
  %_26.not = icmp sgt i32 %_27, %val
  br i1 %_26.not, label %bb15, label %bb22

panic:                                            ; preds = %bb15.1, %bb15.273, %bb15.159, %bb10.262
  %_22.lcssa = phi i64 [ %_22.260, %bb10.262 ], [ 2, %bb15.159 ], [ %indvars.iv.2, %bb15.273 ], [ 2, %bb15.1 ]
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_22.lcssa, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_db93824dbd2cc9b394212b0e043cacf8) #24
  unreachable

bb15:                                             ; preds = %bb11
  %_0.i.i.i15.not = icmp eq i32 %n, 1
  br i1 %_0.i.i.i15.not, label %bb22, label %bb11.1

bb11.1:                                           ; preds = %bb15
  %5 = getelementptr inbounds nuw i8, ptr %arr, i64 4
  %val.1 = load i32, ptr %5, align 4, !noundef !37
  %_0.sroa.0.0.i.1 = tail call noundef i32 @llvm.smin.i32(i32 %val.1, i32 %val)
  %_0.sroa.0.0.i19.1 = tail call noundef i32 @llvm.smax.i32(i32 %val.1, i32 %val)
  %_27.1 = shl i32 %_0.sroa.0.0.i.1, 1
  %_26.not.1 = icmp sgt i32 %_27.1, %_0.sroa.0.0.i19.1
  br i1 %_26.not.1, label %bb15.1, label %bb22

bb15.1:                                           ; preds = %bb11.1
  %_0.i.i.i15.1 = icmp sgt i32 %n, 2
  br i1 %_0.i.i.i15.1, label %panic, label %bb22
}
