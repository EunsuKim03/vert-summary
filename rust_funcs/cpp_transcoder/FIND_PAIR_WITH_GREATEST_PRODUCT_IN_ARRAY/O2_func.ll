define noundef range(i32 -1, -2147483648) i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_2231 = icmp sgt i32 %n, 0
  br i1 %_2231, label %bb12.lr.ph, label %bb13

bb12.lr.ph:                                       ; preds = %start
  %iter3 = add nsw i32 %n, -1
  %_2927.not = icmp eq i32 %n, 1
  %wide.trip.count55 = zext nneg i32 %n to i64
  %_12 = load i32, ptr %arr, align 8
  %exitcond51.not = icmp eq i32 %iter3, 1
  %1 = getelementptr inbounds nuw i8, ptr %arr, i64 4
  %_12.1 = load i32, ptr %1, align 4
  %exitcond51.not.1 = icmp eq i32 %iter3, 2
  br label %bb12

bb1.loopexit:                                     ; preds = %bb2.loopexit, %bb2.loopexit.1, %bb12
  %result.sroa.0.1.lcssa = phi i32 [ %result.sroa.0.033, %bb12 ], [ %result.sroa.0.3, %bb2.loopexit ], [ %result.sroa.0.3.1, %bb2.loopexit.1 ]
  %exitcond56.not = icmp eq i64 %indvars.iv.next53, %wide.trip.count55
  br i1 %exitcond56.not, label %bb13, label %bb12

bb13:                                             ; preds = %bb1.loopexit, %start
  %result.sroa.0.0.lcssa = phi i32 [ -1, %start ], [ %result.sroa.0.1.lcssa, %bb1.loopexit ]
  ret i32 %result.sroa.0.0.lcssa

bb12:                                             ; preds = %bb12.lr.ph, %bb1.loopexit
  %indvars.iv52 = phi i64 [ 0, %bb12.lr.ph ], [ %indvars.iv.next53, %bb1.loopexit ]
  %result.sroa.0.033 = phi i32 [ -1, %bb12.lr.ph ], [ %result.sroa.0.1.lcssa, %bb1.loopexit ]
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  br i1 %_2927.not, label %bb1.loopexit, label %bb17.lr.ph

bb17.lr.ph:                                       ; preds = %bb12
  %_20 = icmp samesign ult i64 %indvars.iv52, 2
  %2 = getelementptr inbounds nuw i32, ptr %arr, i64 %indvars.iv52
  br label %bb21

bb2.loopexit:                                     ; preds = %bb6
  br i1 %exitcond51.not, label %bb1.loopexit, label %bb21.1

bb21.1:                                           ; preds = %bb2.loopexit, %bb6.1
  %indvars.iv41.1 = phi i64 [ %indvars.iv.next42.1, %bb6.1 ], [ 2, %bb2.loopexit ]
  %result.sroa.0.225.1 = phi i32 [ %result.sroa.0.3.1, %bb6.1 ], [ %result.sroa.0.3, %bb2.loopexit ]
  %exitcond.not.1 = icmp eq i64 %indvars.iv41.1, 2
  br i1 %exitcond.not.1, label %panic4, label %bb6.1

bb6.1:                                            ; preds = %bb21.1
  %3 = getelementptr inbounds nuw i32, ptr %arr, i64 %indvars.iv41.1
  %_15.1 = load i32, ptr %3, align 4, !noundef !23
  %_11.1 = mul i32 %_15.1, %_12.1
  %_18.1 = load i32, ptr %2, align 4, !noundef !23
  %_10.1 = icmp eq i32 %_11.1, %_18.1
  %_0.sroa.0.0.i.1 = tail call i32 @llvm.smax.i32(i32 %_18.1, i32 %result.sroa.0.225.1)
  %result.sroa.0.3.1 = select i1 %_10.1, i32 %_0.sroa.0.0.i.1, i32 %result.sroa.0.225.1
  %indvars.iv.next42.1 = add nuw nsw i64 %indvars.iv41.1, 1
  %exitcond46.not.1 = icmp eq i64 %indvars.iv.next42.1, %wide.trip.count55
  br i1 %exitcond46.not.1, label %bb2.loopexit.1, label %bb21.1

bb2.loopexit.1:                                   ; preds = %bb6.1
  br i1 %exitcond51.not.1, label %bb1.loopexit, label %panic

bb21:                                             ; preds = %bb17.lr.ph, %bb6
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %bb6 ], [ 1, %bb17.lr.ph ]
  %result.sroa.0.225 = phi i32 [ %result.sroa.0.3, %bb6 ], [ %result.sroa.0.033, %bb17.lr.ph ]
  %exitcond.not = icmp eq i64 %indvars.iv41, 2
  br i1 %exitcond.not, label %panic4, label %bb5

panic:                                            ; preds = %bb2.loopexit.1
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_d66c009ec7ef71e8082a80098e4c6821) #18
  unreachable

bb5:                                              ; preds = %bb21
  br i1 %_20, label %bb6, label %panic5

panic4:                                           ; preds = %bb21.1, %bb21
  %indvars.iv43.lcssa84 = phi i64 [ 1, %bb21 ], [ 0, %bb21.1 ]
  %indvars.iv.lcssa81 = phi i64 [ 1, %bb21 ], [ 2, %bb21.1 ]
  %4 = add nuw i64 %indvars.iv.lcssa81, %indvars.iv43.lcssa84
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %4, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_fe8c8bc1a0bd1c87baca7b5f26828dff) #18
  unreachable

bb6:                                              ; preds = %bb5
  %5 = getelementptr inbounds nuw i32, ptr %arr, i64 %indvars.iv41
  %_15 = load i32, ptr %5, align 4, !noundef !23
  %_11 = mul i32 %_15, %_12
  %_18 = load i32, ptr %2, align 4, !noundef !23
  %_10 = icmp eq i32 %_11, %_18
  %_0.sroa.0.0.i = tail call i32 @llvm.smax.i32(i32 %_18, i32 %result.sroa.0.225)
  %result.sroa.0.3 = select i1 %_10, i32 %_0.sroa.0.0.i, i32 %result.sroa.0.225
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  %exitcond46.not = icmp eq i64 %indvars.iv.next42, %wide.trip.count55
  br i1 %exitcond46.not, label %bb2.loopexit, label %bb21

panic5:                                           ; preds = %bb5
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv52, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_642ef4f680944956415d8597a97e8e95) #18
  unreachable
}
