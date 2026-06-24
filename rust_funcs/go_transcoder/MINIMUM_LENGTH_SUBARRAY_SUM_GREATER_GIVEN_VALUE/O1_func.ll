define noundef range(i32 -2, -2147483648) i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %x) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_9 = sext i32 %n to i64
  %_735.not = icmp eq i32 %n, 0
  br i1 %_735.not, label %bb18, label %bb3.preheader.lr.ph

bb3.preheader.lr.ph:                              ; preds = %start
  %_12 = sitofp i32 %x to float
  %_13.1 = icmp ugt i32 %n, 2
  %_21.1 = icmp ugt i32 %n, 2
  br label %bb3.preheader

bb1.loopexit:                                     ; preds = %bb14, %bb14.1, %bb10.preheader
  %start1.sroa.0.1.lcssa = phi i64 [ %start1.sroa.0.036, %bb10.preheader ], [ %3, %bb14 ], [ 2, %bb14.1 ]
  %curr_sum.sroa.0.2.lcssa = phi float [ %curr_sum.sroa.0.1.lcssa, %bb10.preheader ], [ %2, %bb14 ], [ %6, %bb14.1 ]
  %min_len.sroa.0.1.lcssa = phi i32 [ %min_len.sroa.0.038, %bb10.preheader ], [ %_0.sroa.0.0.i.i, %bb14 ], [ %_0.sroa.0.0.i.i.1, %bb14.1 ]
  %_7 = icmp ult i64 %end.sroa.0.1.lcssa, %_9
  br i1 %_7, label %bb3.preheader, label %bb18

bb3.preheader:                                    ; preds = %bb3.preheader.lr.ph, %bb1.loopexit
  %end.sroa.0.039 = phi i64 [ 0, %bb3.preheader.lr.ph ], [ %end.sroa.0.1.lcssa, %bb1.loopexit ]
  %min_len.sroa.0.038 = phi i32 [ 2147483647, %bb3.preheader.lr.ph ], [ %min_len.sroa.0.1.lcssa, %bb1.loopexit ]
  %curr_sum.sroa.0.037 = phi float [ 0.000000e+00, %bb3.preheader.lr.ph ], [ %curr_sum.sroa.0.2.lcssa, %bb1.loopexit ]
  %start1.sroa.0.036 = phi i64 [ 0, %bb3.preheader.lr.ph ], [ %start1.sroa.0.1.lcssa, %bb1.loopexit ]
  %_1021 = fcmp ugt float %curr_sum.sroa.0.037, %_12
  br i1 %_1021, label %bb10.preheader, label %bb5

bb18:                                             ; preds = %bb1.loopexit, %start
  %min_len.sroa.0.0.lcssa = phi i32 [ 2147483647, %start ], [ %min_len.sroa.0.1.lcssa, %bb1.loopexit ]
  ret i32 %min_len.sroa.0.0.lcssa

bb10.preheader:                                   ; preds = %bb6, %bb6.1, %bb3.preheader
  %curr_sum.sroa.0.1.lcssa = phi float [ %curr_sum.sroa.0.037, %bb3.preheader ], [ %8, %bb6 ], [ %11, %bb6.1 ]
  %end.sroa.0.1.lcssa = phi i64 [ %end.sroa.0.039, %bb3.preheader ], [ %9, %bb6 ], [ 2, %bb6.1 ]
  %_1926 = fcmp ogt float %curr_sum.sroa.0.1.lcssa, %_12
  %_2127 = icmp ult i64 %start1.sroa.0.036, %_9
  %or.cond328 = select i1 %_1926, i1 %_2127, i1 false
  br i1 %or.cond328, label %bb12, label %bb1.loopexit

bb5:                                              ; preds = %bb3.preheader
  %_18 = icmp ult i64 %end.sroa.0.039, 2
  br i1 %_18, label %bb6, label %panic2

bb12:                                             ; preds = %bb10.preheader
  %_31 = icmp ult i64 %start1.sroa.0.036, 2
  br i1 %_31, label %bb14, label %panic

bb14:                                             ; preds = %bb12
  %_25 = sub nsw i64 %end.sroa.0.1.lcssa, %start1.sroa.0.036
  %_24 = trunc nsw i64 %_25 to i32
  %_0.sroa.0.0.i.i = tail call noundef range(i32 -2, 3) i32 @llvm.smin.i32(i32 range(i32 -2, 3) %_24, i32 range(i32 -2, -2147483648) %min_len.sroa.0.038)
  %1 = getelementptr inbounds nuw i32, ptr %arr, i64 %start1.sroa.0.036
  %_29 = load i32, ptr %1, align 4, !noundef !37
  %_28 = sitofp i32 %_29 to float
  %2 = fsub float %curr_sum.sroa.0.1.lcssa, %_28
  %3 = add nuw nsw i64 %start1.sroa.0.036, 1
  %_19 = fcmp ogt float %2, %_12
  %_21 = icmp ult i64 %3, %_9
  %or.cond3 = select i1 %_19, i1 %_21, i1 false
  br i1 %or.cond3, label %bb12.1, label %bb1.loopexit

bb12.1:                                           ; preds = %bb14
  %_31.1 = icmp eq i64 %start1.sroa.0.036, 0
  br i1 %_31.1, label %bb14.1, label %panic

bb14.1:                                           ; preds = %bb12.1
  %4 = trunc i64 %end.sroa.0.1.lcssa to i32
  %_24.1 = add i32 %4, -1
  %_0.sroa.0.0.i.i.1 = tail call noundef range(i32 -2, 3) i32 @llvm.smin.i32(i32 range(i32 -2, 3) %_24.1, i32 range(i32 -2, -2147483648) %_0.sroa.0.0.i.i)
  %5 = getelementptr inbounds nuw i32, ptr %arr, i64 %3
  %_29.1 = load i32, ptr %5, align 4, !noundef !37
  %_28.1 = sitofp i32 %_29.1 to float
  %6 = fsub float %2, %_28.1
  %_19.1 = fcmp ogt float %6, %_12
  %or.cond3.1 = and i1 %_19.1, %_21.1
  br i1 %or.cond3.1, label %panic, label %bb1.loopexit

panic:                                            ; preds = %bb14.1, %bb12.1, %bb12
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_fe9247814b05322e5819fb2dd348a7d5) #24
  unreachable

bb6:                                              ; preds = %bb5
  %7 = getelementptr inbounds nuw i32, ptr %arr, i64 %end.sroa.0.039
  %_16 = load i32, ptr %7, align 4, !noundef !37
  %_15 = sitofp i32 %_16 to float
  %8 = fadd float %curr_sum.sroa.0.037, %_15
  %9 = add nuw nsw i64 %end.sroa.0.039, 1
  %_10 = fcmp ole float %8, %_12
  %_13 = icmp ult i64 %9, %_9
  %or.cond = select i1 %_10, i1 %_13, i1 false
  br i1 %or.cond, label %bb5.1, label %bb10.preheader

bb5.1:                                            ; preds = %bb6
  %_18.1 = icmp eq i64 %end.sroa.0.039, 0
  br i1 %_18.1, label %bb6.1, label %panic2

bb6.1:                                            ; preds = %bb5.1
  %10 = getelementptr inbounds nuw i32, ptr %arr, i64 %9
  %_16.1 = load i32, ptr %10, align 4, !noundef !37
  %_15.1 = sitofp i32 %_16.1 to float
  %11 = fadd float %8, %_15.1
  %_10.1 = fcmp ole float %11, %_12
  %or.cond.1 = and i1 %_10.1, %_13.1
  br i1 %or.cond.1, label %panic2, label %bb10.preheader

panic2:                                           ; preds = %bb6.1, %bb5.1, %bb5
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_d89cbfa947f08c1313ebbda7b11ce473) #24
  unreachable
}
