define noundef range(i32 0, 2) i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %k) unnamed_addr #3 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_0.i.i.i20 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i20, label %bb8.preheader.lr.ph, label %bb19

bb8.preheader.lr.ph:                              ; preds = %start
  %_27 = shl i32 %k, 1
  %wide.trip.count = zext nneg i32 %n to i64
  br label %bb8.preheader

bb2.loopexit:                                     ; preds = %bb8
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next30, %wide.trip.count
  br i1 %exitcond.not, label %bb19, label %bb8.preheader

bb8.preheader:                                    ; preds = %bb8.preheader.lr.ph, %bb2.loopexit
  %indvars.iv29 = phi i64 [ 0, %bb8.preheader.lr.ph ], [ %indvars.iv.next30, %bb2.loopexit ]
  %_24 = icmp samesign ult i64 %indvars.iv29, 2
  %1 = getelementptr inbounds nuw float, ptr %arr, i64 %indvars.iv29
  br label %bb8

bb19:                                             ; preds = %bb2.loopexit, %bb13, %start
  %_0.sroa.0.0 = phi i32 [ 1, %start ], [ 0, %bb13 ], [ 1, %bb2.loopexit ]
  ret i32 %_0.sroa.0.0

bb8:                                              ; preds = %bb8.preheader, %bb13
  %iter1.sroa.0.0 = phi i32 [ %spec.select14, %bb13 ], [ 0, %bb8.preheader ]
  %count.sroa.0.0 = phi i32 [ %count.sroa.0.1, %bb13 ], [ 0, %bb8.preheader ]
  %_0.i.i.i9 = icmp slt i32 %iter1.sroa.0.0, %n
  %2 = zext i1 %_0.i.i.i9 to i32
  %spec.select14 = add nuw nsw i32 %iter1.sroa.0.0, %2
  br i1 %_0.i.i.i9, label %bb10, label %bb2.loopexit

bb10:                                             ; preds = %bb8
  %_20 = zext nneg i32 %iter1.sroa.0.0 to i64
  %_21 = icmp samesign ult i32 %iter1.sroa.0.0, 2
  br i1 %_21, label %bb12, label %panic

bb12:                                             ; preds = %bb10
  br i1 %_24, label %bb13, label %panic2

panic:                                            ; preds = %bb10
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_20, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_6a43f5ca113e5c8311411aa4d7be39cf) #24
  unreachable

bb13:                                             ; preds = %bb12
  %3 = getelementptr inbounds nuw float, ptr %arr, i64 %_20
  %_19 = load float, ptr %3, align 4, !noundef !37
  %_22 = load float, ptr %1, align 4, !noundef !37
  %_18 = fcmp oeq float %_19, %_22
  %4 = zext i1 %_18 to i32
  %count.sroa.0.1 = add i32 %count.sroa.0.0, %4
  %_25 = icmp sgt i32 %count.sroa.0.1, %_27
  br i1 %_25, label %bb19, label %bb8

panic2:                                           ; preds = %bb12
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv29, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_81221169c62d6bf15dc9a5a4a1b9237b) #24
  unreachable
}
