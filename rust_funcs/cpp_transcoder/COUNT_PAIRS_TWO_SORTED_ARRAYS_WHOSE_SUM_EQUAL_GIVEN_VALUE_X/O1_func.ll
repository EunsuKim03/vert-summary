define noundef i32 @f_gold(i64 %0, i64 %1, i32 noundef %m, i32 noundef %n, i32 noundef %x) unnamed_addr #3 {
start:
  %arr2 = alloca [8 x i8], align 8
  %arr1 = alloca [8 x i8], align 8
  store i64 %0, ptr %arr1, align 8
  store i64 %1, ptr %arr2, align 8
  %_0.i.i.i27 = icmp sgt i32 %m, 0
  br i1 %_0.i.i.i27, label %bb8.preheader.lr.ph, label %bb6

bb8.preheader.lr.ph:                              ; preds = %start
  %_0.i.i.i1023 = icmp sgt i32 %n, 0
  %2 = zext i1 %_0.i.i.i1023 to i32
  %wide.trip.count = zext nneg i32 %m to i64
  br label %bb8.preheader

bb2.loopexit:                                     ; preds = %bb13, %bb8.preheader
  %count.sroa.0.1.lcssa = phi i32 [ %count.sroa.0.029, %bb8.preheader ], [ %spec.select, %bb13 ]
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next35, %wide.trip.count
  br i1 %exitcond.not, label %bb6, label %bb8.preheader

bb8.preheader:                                    ; preds = %bb8.preheader.lr.ph, %bb2.loopexit
  %indvars.iv34 = phi i64 [ 0, %bb8.preheader.lr.ph ], [ %indvars.iv.next35, %bb2.loopexit ]
  %count.sroa.0.029 = phi i32 [ 0, %bb8.preheader.lr.ph ], [ %count.sroa.0.1.lcssa, %bb2.loopexit ]
  br i1 %_0.i.i.i1023, label %bb10.lr.ph, label %bb2.loopexit

bb10.lr.ph:                                       ; preds = %bb8.preheader
  %_24 = icmp samesign ult i64 %indvars.iv34, 2
  br i1 %_24, label %bb10.lr.ph.split, label %panic

bb10.lr.ph.split:                                 ; preds = %bb10.lr.ph
  %3 = getelementptr inbounds nuw i32, ptr %arr1, i64 %indvars.iv34
  %_22 = load i32, ptr %3, align 4, !noundef !37
  br label %bb10

bb6:                                              ; preds = %bb2.loopexit, %start
  %count.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %count.sroa.0.1.lcssa, %bb2.loopexit ]
  ret i32 %count.sroa.0.0.lcssa

bb10:                                             ; preds = %bb10.lr.ph.split, %bb13
  %spec.select1626 = phi i32 [ %2, %bb10.lr.ph.split ], [ %spec.select16, %bb13 ]
  %count.sroa.0.125 = phi i32 [ %count.sroa.0.029, %bb10.lr.ph.split ], [ %spec.select, %bb13 ]
  %iter1.sroa.0.024 = phi i32 [ 0, %bb10.lr.ph.split ], [ %spec.select1626, %bb13 ]
  %_26 = zext nneg i32 %iter1.sroa.0.024 to i64
  %_27 = icmp samesign ult i32 %iter1.sroa.0.024, 2
  br i1 %_27, label %bb13, label %panic2

panic:                                            ; preds = %bb10.lr.ph
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv34, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_056eabce1a0918256455f9fa61bf9ba8) #24
  unreachable

bb13:                                             ; preds = %bb10
  %4 = getelementptr inbounds nuw i32, ptr %arr2, i64 %_26
  %_25 = load i32, ptr %4, align 4, !noundef !37
  %_21 = add i32 %_25, %_22
  %_20 = icmp eq i32 %_21, %x
  %5 = zext i1 %_20 to i32
  %spec.select = add i32 %count.sroa.0.125, %5
  %_0.i.i.i10 = icmp slt i32 %spec.select1626, %n
  %6 = zext i1 %_0.i.i.i10 to i32
  %spec.select16 = add nuw nsw i32 %spec.select1626, %6
  br i1 %_0.i.i.i10, label %bb10, label %bb2.loopexit

panic2:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_26, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_9743d7c4b95b60ece2bab1ea6366e0d4) #24
  unreachable
}
