define noundef i32 @f_gold(i64 %0, i32 noundef %arr_size) unnamed_addr #1 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %iter2 = sext i32 %arr_size to i64
  %iter.sroa.0.0.lcssa20.sroa.gep23 = getelementptr inbounds nuw i8, ptr %arr, i64 4
  %exitcond21.not = icmp eq i32 %arr_size, 0
  %1 = trunc i64 %0 to i32
  %2 = lshr i64 %0, 32
  %3 = trunc nuw i64 %2 to i32
  br i1 %exitcond21.not, label %bb11, label %bb12

bb12:                                             ; preds = %start
  %4 = add nsw i64 %iter2, -3
  %.not = icmp ult i64 %4, -2
  br i1 %.not, label %panic4, label %bb14.preheader

bb14.preheader:                                   ; preds = %bb12
  %min.iters.check = icmp ult i32 %arr_size, 8
  br i1 %min.iters.check, label %bb14, label %vector.body

vector.body:                                      ; preds = %bb14.preheader, %vector.body
  br label %vector.body, !llvm.loop !1031

bb11:                                             ; preds = %start, %bb1.1, %bb1.2, %bb9
  %_0.sroa.0.0 = phi i32 [ %25, %bb9 ], [ -1, %bb1.2 ], [ -1, %bb1.1 ], [ -1, %start ]
  ret i32 %_0.sroa.0.0

bb15.loopexit:                                    ; preds = %bb14.3, %bb14.2, %bb14.153, %bb14
  %spec.select.lcssa = phi i32 [ %12, %bb14 ], [ %spec.select.152, %bb14.153 ], [ %spec.select.2, %bb14.2 ], [ %spec.select.6, %bb14.3 ]
  %5 = and i32 %spec.select.lcssa, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %bb1.1, label %bb9

bb1.1:                                            ; preds = %bb15.loopexit
  %exitcond21.1.not = icmp eq i32 %arr_size, 1
  br i1 %exitcond21.1.not, label %bb11, label %bb14.1

bb14.1:                                           ; preds = %bb1.1, %bb14.1
  %iter1.sroa.0.016.1 = phi i64 [ %7, %bb14.1 ], [ 0, %bb1.1 ]
  %count.sroa.0.015.1 = phi i32 [ %spec.select.1, %bb14.1 ], [ 0, %bb1.1 ]
  %7 = add nuw nsw i64 %iter1.sroa.0.016.1, 1
  %8 = getelementptr inbounds nuw i32, ptr %arr, i64 %iter1.sroa.0.016.1
  %_12.1 = load i32, ptr %8, align 4, !noundef !23
  %_9.1 = icmp eq i32 %_12.1, %3
  %9 = zext i1 %_9.1 to i32
  %spec.select.1 = add i32 %count.sroa.0.015.1, %9
  %exitcond.1.not = icmp eq i64 %7, %iter2
  br i1 %exitcond.1.not, label %bb15.1.loopexit, label %bb14.1, !llvm.loop !1032

bb15.1.loopexit:                                  ; preds = %bb14.1
  %10 = and i32 %spec.select.1, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %bb1.2, label %bb9

bb1.2:                                            ; preds = %bb15.1.loopexit
  %exitcond21.2.not = icmp eq i32 %arr_size, 2
  br i1 %exitcond21.2.not, label %bb11, label %panic3

bb14:                                             ; preds = %bb14.preheader
  %_12 = load i32, ptr %arr, align 8, !noundef !23
  %_9 = icmp eq i32 %_12, %1
  %12 = zext i1 %_9 to i32
  %exitcond.not = icmp eq i32 %arr_size, 1
  br i1 %exitcond.not, label %bb15.loopexit, label %bb14.153, !llvm.loop !1033

bb14.153:                                         ; preds = %bb14
  %13 = getelementptr inbounds nuw i8, ptr %arr, i64 4
  %_12.150 = load i32, ptr %13, align 4, !noundef !23
  %_9.151 = icmp eq i32 %_12.150, %1
  %14 = zext i1 %_9.151 to i32
  %spec.select.152 = add nuw nsw i32 %12, %14
  %exitcond.not.1 = icmp eq i32 %arr_size, 2
  br i1 %exitcond.not.1, label %bb15.loopexit, label %bb14.2, !llvm.loop !1033

bb14.2:                                           ; preds = %bb14.153
  %15 = getelementptr inbounds nuw i8, ptr %arr, i64 8
  %_12.2 = load i32, ptr %15, align 8, !noundef !23
  %_9.2 = icmp eq i32 %_12.2, %1
  %16 = zext i1 %_9.2 to i32
  %spec.select.2 = add nuw nsw i32 %spec.select.152, %16
  %exitcond.not.2 = icmp eq i32 %arr_size, 3
  br i1 %exitcond.not.2, label %bb15.loopexit, label %bb14.3, !llvm.loop !1033

bb14.3:                                           ; preds = %bb14.2
  %17 = getelementptr inbounds nuw i8, ptr %arr, i64 12
  %_12.3 = load i32, ptr %17, align 4, !noundef !23
  %_9.3 = icmp eq i32 %_12.3, %1
  %18 = zext i1 %_9.3 to i32
  %spec.select.3 = add nuw nsw i32 %spec.select.2, %18
  %19 = getelementptr inbounds nuw i8, ptr %arr, i64 16
  %_12.4 = load i32, ptr %19, align 8, !noundef !23
  %_9.4 = icmp eq i32 %_12.4, %1
  %20 = zext i1 %_9.4 to i32
  %spec.select.4 = add nuw nsw i32 %spec.select.3, %20
  %21 = getelementptr inbounds nuw i8, ptr %arr, i64 20
  %_12.5 = load i32, ptr %21, align 4, !noundef !23
  %_9.5 = icmp eq i32 %_12.5, %1
  %22 = zext i1 %_9.5 to i32
  %spec.select.5 = add nuw nsw i32 %spec.select.4, %22
  %23 = getelementptr inbounds nuw i8, ptr %arr, i64 24
  %_12.6 = load i32, ptr %23, align 8, !noundef !23
  %_9.6 = icmp eq i32 %_12.6, %1
  %24 = zext i1 %_9.6 to i32
  %spec.select.6 = add nuw nsw i32 %spec.select.5, %24
  br label %bb15.loopexit

bb9:                                              ; preds = %bb15.loopexit, %bb15.1.loopexit
  %iter.sroa.0.0.lcssa20.sroa.phi = phi ptr [ %arr, %bb15.loopexit ], [ %iter.sroa.0.0.lcssa20.sroa.gep23, %bb15.1.loopexit ]
  %25 = load i32, ptr %iter.sroa.0.0.lcssa20.sroa.phi, align 4, !noundef !23
  br label %bb11

panic3:                                           ; preds = %bb1.2
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_6257a6f1348d598c377db2de57554403) #18
  unreachable

panic4:                                           ; preds = %bb12
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_eb67a3abe77f3ba1662b05958491d936) #18
  unreachable
}
