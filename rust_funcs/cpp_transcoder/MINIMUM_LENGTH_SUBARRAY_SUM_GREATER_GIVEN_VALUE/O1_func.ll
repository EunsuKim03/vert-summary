define noundef i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %x) unnamed_addr #3 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %1 = add i32 %n, 1
  %_737 = icmp sgt i32 %n, 0
  br i1 %_737, label %bb3.preheader.preheader, label %bb20

bb3.preheader.preheader:                          ; preds = %start
  %2 = zext nneg i32 %n to i64
  %3 = zext nneg i32 %n to i64
  %_11.1 = icmp ugt i32 %n, 2
  %_19.1 = icmp ugt i32 %n, 2
  br label %bb3.preheader

bb1.loopexit.loopexit:                            ; preds = %bb16.1, %bb16
  %spec.select.lcssa = phi i32 [ %spec.select, %bb16 ], [ %spec.select.1, %bb16.1 ]
  %.lcssa57 = phi i32 [ %9, %bb16 ], [ %11, %bb16.1 ]
  %indvars.iv.next50.lcssa = phi i64 [ %indvars.iv.next50, %bb16 ], [ 2, %bb16.1 ]
  %4 = trunc nuw nsw i64 %indvars.iv.next50.lcssa to i32
  br label %bb1.loopexit

bb1.loopexit:                                     ; preds = %bb1.loopexit.loopexit, %bb10.preheader
  %start1.sroa.0.1.lcssa = phi i32 [ %start1.sroa.0.038, %bb10.preheader ], [ %4, %bb1.loopexit.loopexit ]
  %curr_sum.sroa.0.2.lcssa = phi i32 [ %curr_sum.sroa.0.1.lcssa, %bb10.preheader ], [ %.lcssa57, %bb1.loopexit.loopexit ]
  %min_len.sroa.0.1.lcssa = phi i32 [ %min_len.sroa.0.040, %bb10.preheader ], [ %spec.select.lcssa, %bb1.loopexit.loopexit ]
  %_7 = icmp slt i32 %end.sroa.0.1.lcssa, %n
  br i1 %_7, label %bb3.preheader, label %bb20

bb3.preheader:                                    ; preds = %bb3.preheader.preheader, %bb1.loopexit
  %end.sroa.0.041 = phi i32 [ %end.sroa.0.1.lcssa, %bb1.loopexit ], [ 0, %bb3.preheader.preheader ]
  %min_len.sroa.0.040 = phi i32 [ %min_len.sroa.0.1.lcssa, %bb1.loopexit ], [ %1, %bb3.preheader.preheader ]
  %curr_sum.sroa.0.039 = phi i32 [ %curr_sum.sroa.0.2.lcssa, %bb1.loopexit ], [ 0, %bb3.preheader.preheader ]
  %start1.sroa.0.038 = phi i32 [ %start1.sroa.0.1.lcssa, %bb1.loopexit ], [ 0, %bb3.preheader.preheader ]
  %_924.not = icmp sgt i32 %curr_sum.sroa.0.039, %x
  br i1 %_924.not, label %bb10.preheader, label %bb5.preheader

bb5.preheader:                                    ; preds = %bb3.preheader
  %5 = sext i32 %end.sroa.0.041 to i64
  %_16 = icmp ult i32 %end.sroa.0.041, 2
  br i1 %_16, label %bb6, label %panic2

bb20:                                             ; preds = %bb1.loopexit, %start
  %min_len.sroa.0.0.lcssa = phi i32 [ %1, %start ], [ %min_len.sroa.0.1.lcssa, %bb1.loopexit ]
  ret i32 %min_len.sroa.0.0.lcssa

bb10.preheader.loopexit:                          ; preds = %bb6.1, %bb6
  %.lcssa = phi i32 [ %13, %bb6 ], [ %15, %bb6.1 ]
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next, %bb6 ], [ 2, %bb6.1 ]
  %6 = trunc nuw nsw i64 %indvars.iv.next.lcssa to i32
  br label %bb10.preheader

bb10.preheader:                                   ; preds = %bb10.preheader.loopexit, %bb3.preheader
  %curr_sum.sroa.0.1.lcssa = phi i32 [ %curr_sum.sroa.0.039, %bb3.preheader ], [ %.lcssa, %bb10.preheader.loopexit ]
  %end.sroa.0.1.lcssa = phi i32 [ %end.sroa.0.041, %bb3.preheader ], [ %6, %bb10.preheader.loopexit ]
  %_1728 = icmp sgt i32 %curr_sum.sroa.0.1.lcssa, %x
  %_1929 = icmp slt i32 %start1.sroa.0.038, %n
  %or.cond330 = select i1 %_1728, i1 %_1929, i1 false
  br i1 %or.cond330, label %bb12.preheader, label %bb1.loopexit

bb12.preheader:                                   ; preds = %bb10.preheader
  %7 = sext i32 %start1.sroa.0.038 to i64
  %_31 = icmp ult i32 %start1.sroa.0.038, 2
  br i1 %_31, label %bb16, label %panic

bb16:                                             ; preds = %bb12.preheader
  %_22 = sub i32 %end.sroa.0.1.lcssa, %start1.sroa.0.038
  %spec.select = tail call i32 @llvm.smin.i32(i32 %_22, i32 %min_len.sroa.0.040)
  %8 = getelementptr inbounds nuw i32, ptr %arr, i64 %7
  %_28 = load i32, ptr %8, align 4, !noundef !37
  %9 = sub i32 %curr_sum.sroa.0.1.lcssa, %_28
  %indvars.iv.next50 = add nuw nsw i64 %7, 1
  %_17 = icmp sgt i32 %9, %x
  %_19 = icmp slt i64 %indvars.iv.next50, %3
  %or.cond3 = select i1 %_17, i1 %_19, i1 false
  br i1 %or.cond3, label %bb12.1, label %bb1.loopexit.loopexit

bb12.1:                                           ; preds = %bb16
  %_31.1 = icmp eq i32 %start1.sroa.0.038, 0
  br i1 %_31.1, label %bb16.1, label %panic

bb16.1:                                           ; preds = %bb12.1
  %_22.1 = add i32 %end.sroa.0.1.lcssa, -1
  %spec.select.1 = tail call i32 @llvm.smin.i32(i32 %_22.1, i32 %spec.select)
  %10 = getelementptr inbounds nuw i32, ptr %arr, i64 %indvars.iv.next50
  %_28.1 = load i32, ptr %10, align 4, !noundef !37
  %11 = sub i32 %9, %_28.1
  %_17.1 = icmp sgt i32 %11, %x
  %or.cond3.1 = and i1 %_17.1, %_19.1
  br i1 %or.cond3.1, label %panic, label %bb1.loopexit.loopexit

panic:                                            ; preds = %bb16.1, %bb12.1, %bb12.preheader
  %indvars.iv49.lcssa = phi i64 [ %7, %bb12.preheader ], [ %indvars.iv.next50, %bb12.1 ], [ 2, %bb16.1 ]
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv49.lcssa, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_6af4a4a86ec92964ef3128c5c115c3c3) #24
  unreachable

bb6:                                              ; preds = %bb5.preheader
  %12 = getelementptr inbounds nuw i32, ptr %arr, i64 %5
  %_13 = load i32, ptr %12, align 4, !noundef !37
  %13 = add i32 %_13, %curr_sum.sroa.0.039
  %indvars.iv.next = add nuw nsw i64 %5, 1
  %_9 = icmp sle i32 %13, %x
  %_11 = icmp slt i64 %indvars.iv.next, %2
  %or.cond = select i1 %_9, i1 %_11, i1 false
  br i1 %or.cond, label %bb5.1, label %bb10.preheader.loopexit

bb5.1:                                            ; preds = %bb6
  %_16.1 = icmp eq i32 %end.sroa.0.041, 0
  br i1 %_16.1, label %bb6.1, label %panic2

bb6.1:                                            ; preds = %bb5.1
  %14 = getelementptr inbounds nuw i32, ptr %arr, i64 %indvars.iv.next
  %_13.1 = load i32, ptr %14, align 4, !noundef !37
  %15 = add i32 %_13.1, %13
  %_9.1 = icmp sle i32 %15, %x
  %or.cond.1 = and i1 %_9.1, %_11.1
  br i1 %or.cond.1, label %panic2, label %bb10.preheader.loopexit

panic2:                                           ; preds = %bb6.1, %bb5.1, %bb5.preheader
  %indvars.iv.lcssa = phi i64 [ %5, %bb5.preheader ], [ %indvars.iv.next, %bb5.1 ], [ 2, %bb6.1 ]
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv.lcssa, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4d413ba44d84e2a31d3fc3011fd6b8a3) #24
  unreachable
}
