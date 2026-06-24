define noundef i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %k) unnamed_addr #1 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_1817 = icmp sgt i32 %n, 0
  br i1 %_1817, label %bb13.preheader, label %bb14

bb13.preheader:                                   ; preds = %start
  %1 = zext nneg i32 %n to i64
  %wide.trip.count30 = zext nneg i32 %n to i64
  %2 = add nsw i64 %wide.trip.count30, -2
  br label %bb13

bb1.loopexit:                                     ; preds = %bb4, %bb13
  %count.sroa.0.1.lcssa = phi i32 [ %count.sroa.0.019, %bb13 ], [ %count.sroa.0.2, %bb4 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond31.not = icmp eq i64 %indvars.iv.next28, %wide.trip.count30
  br i1 %exitcond31.not, label %bb14, label %bb13

bb14:                                             ; preds = %bb1.loopexit, %start
  %count.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %count.sroa.0.1.lcssa, %bb1.loopexit ]
  ret i32 %count.sroa.0.0.lcssa

bb13:                                             ; preds = %bb13.preheader, %bb1.loopexit
  %indvars.iv27 = phi i64 [ 0, %bb13.preheader ], [ %indvars.iv.next28, %bb1.loopexit ]
  %indvars.iv = phi i64 [ 1, %bb13.preheader ], [ %indvars.iv.next, %bb1.loopexit ]
  %count.sroa.0.019 = phi i32 [ 0, %bb13.preheader ], [ %count.sroa.0.1.lcssa, %bb1.loopexit ]
  %3 = sub i64 %2, %indvars.iv27
  %4 = sub nsw i64 1, %indvars.iv27
  %umin = tail call i64 @llvm.umin.i64(i64 %3, i64 %4)
  %5 = add nsw i64 %umin, 1
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %_2514 = icmp samesign ult i64 %indvars.iv.next28, %1
  br i1 %_2514, label %bb18.lr.ph, label %bb1.loopexit

bb18.lr.ph:                                       ; preds = %bb13
  %_12 = icmp samesign ult i64 %indvars.iv27, 2
  %6 = getelementptr inbounds nuw i32, ptr %arr, i64 %indvars.iv27
  br i1 %_12, label %bb18.preheader, label %panic

bb18.preheader:                                   ; preds = %bb18.lr.ph
  %min.iters.check = icmp samesign ult i64 %5, 9
  br i1 %min.iters.check, label %bb18, label %vector.body

vector.body:                                      ; preds = %bb18.preheader, %vector.body
  br label %vector.body, !llvm.loop !1031

bb18:                                             ; preds = %bb18.preheader, %bb4
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %bb4 ], [ %indvars.iv, %bb18.preheader ]
  %count.sroa.0.115 = phi i32 [ %count.sroa.0.2, %bb4 ], [ %count.sroa.0.019, %bb18.preheader ]
  %exitcond.not = icmp eq i64 %indvars.iv23, 2
  br i1 %exitcond.not, label %panic2, label %bb4

panic:                                            ; preds = %bb18.lr.ph
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv27, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_62c358a4823a4c56f2a763eb2947a1f8) #18
  unreachable

bb4:                                              ; preds = %bb18
  %_10 = load i32, ptr %6, align 4, !noundef !23
  %7 = getelementptr inbounds nuw i32, ptr %arr, i64 %indvars.iv23
  %_13 = load i32, ptr %7, align 4, !noundef !23
  %_9 = sub i32 %_10, %_13
  %_8 = icmp eq i32 %_9, %k
  %_17 = sub i32 %_13, %_10
  %_16 = icmp eq i32 %_17, %k
  %or.cond = or i1 %_8, %_16
  %8 = zext i1 %or.cond to i32
  %count.sroa.0.2 = add i32 %count.sroa.0.115, %8
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  %exitcond26.not = icmp eq i64 %indvars.iv.next24, %wide.trip.count30
  br i1 %exitcond26.not, label %bb1.loopexit, label %bb18, !llvm.loop !1032

panic2:                                           ; preds = %bb18
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_bca1139f73abfd86fa2e7c54aec67f3d) #18
  unreachable
}
