define noundef range(i32 0, 2) i32 @f_gold(ptr dead_on_return noalias noundef readonly align 4 captures(none) dereferenceable(40) %arr1, ptr dead_on_return noalias noundef readonly align 4 captures(none) dereferenceable(40) %arr2, i32 noundef %m, i32 noundef %n) unnamed_addr #1 {
start:
  %_16 = icmp eq i32 %m, 0
  %smax10 = tail call i32 @llvm.smax.i32(i32 %n, i32 0)
  %wide.trip.count11 = zext nneg i32 %smax10 to i64
  %exitcond.not = icmp slt i32 %m, 1
  %_13 = load i32, ptr %arr1, align 4
  %0 = getelementptr inbounds nuw i8, ptr %arr1, i64 4
  %_13.1 = load i32, ptr %0, align 4
  %1 = getelementptr inbounds nuw i8, ptr %arr1, i64 8
  %_13.2 = load i32, ptr %1, align 4
  %2 = getelementptr inbounds nuw i8, ptr %arr1, i64 12
  %_13.3 = load i32, ptr %2, align 4
  %3 = getelementptr inbounds nuw i8, ptr %arr1, i64 16
  %_13.4 = load i32, ptr %3, align 4
  %4 = getelementptr inbounds nuw i8, ptr %arr1, i64 20
  %_13.5 = load i32, ptr %4, align 4
  %5 = getelementptr inbounds nuw i8, ptr %arr1, i64 24
  %_13.6 = load i32, ptr %5, align 4
  %6 = getelementptr inbounds nuw i8, ptr %arr1, i64 28
  %_13.7 = load i32, ptr %6, align 4
  %7 = getelementptr inbounds nuw i8, ptr %arr1, i64 32
  %_13.8 = load i32, ptr %7, align 4
  %8 = getelementptr inbounds nuw i8, ptr %arr1, i64 36
  %_13.9 = load i32, ptr %8, align 4
  %exitcond12.not26 = icmp slt i32 %n, 1
  br i1 %exitcond12.not26, label %bb10, label %bb11.preheader

bb11.preheader:                                   ; preds = %start
  %cond = icmp eq i32 %m, 1
  %cond15 = icmp eq i32 %m, 2
  %cond16 = icmp eq i32 %m, 3
  %cond17 = icmp eq i32 %m, 4
  %cond18 = icmp eq i32 %m, 5
  %cond19 = icmp eq i32 %m, 6
  %cond20 = icmp eq i32 %m, 7
  %cond21 = icmp eq i32 %m, 8
  %cond22 = icmp eq i32 %m, 9
  %cond23 = icmp eq i32 %m, 10
  br label %bb11

bb11:                                             ; preds = %bb11.preheader, %bb1.backedge
  %indvars.iv27 = phi i64 [ %indvars.iv.next, %bb1.backedge ], [ 0, %bb11.preheader ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv27, 1
  %9 = getelementptr inbounds nuw i32, ptr %arr2, i64 %indvars.iv27
  br i1 %exitcond.not, label %bb7, label %bb16

bb10:                                             ; preds = %bb1.backedge, %bb7, %start
  %_0.sroa.0.0 = phi i32 [ 1, %start ], [ 1, %bb1.backedge ], [ 0, %bb7 ]
  ret i32 %_0.sroa.0.0

bb16:                                             ; preds = %bb11
  %_12 = icmp samesign ult i64 %indvars.iv27, 10
  br i1 %_12, label %bb3, label %panic

bb7:                                              ; preds = %bb3.9, %bb3.8, %bb3.7, %bb3.6, %bb3.5, %bb3.4, %bb3.3, %bb3.2, %bb3.1, %bb3, %bb11
  br i1 %_16, label %bb10, label %bb1.backedge

bb1.backedge:                                     ; preds = %bb7, %bb2.1, %bb2.2, %bb2.3, %bb2.4, %bb2.5, %bb2.6, %bb2.7, %bb2.8, %bb2.9, %bb2.10
  %exitcond12.not = icmp eq i64 %indvars.iv.next, %wide.trip.count11
  br i1 %exitcond12.not, label %bb10, label %bb11

bb3:                                              ; preds = %bb16
  %_10 = load i32, ptr %9, align 4, !noundef !23
  %_9 = icmp eq i32 %_10, %_13
  br i1 %_9, label %bb7, label %bb2.1

panic:                                            ; preds = %bb16
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv27, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_ae631daa32209465b03b6afebc3eda83) #18
  unreachable

bb2.1:                                            ; preds = %bb3
  br i1 %cond, label %bb1.backedge, label %bb3.1

bb3.1:                                            ; preds = %bb2.1
  %_9.1 = icmp eq i32 %_10, %_13.1
  br i1 %_9.1, label %bb7, label %bb2.2

bb2.2:                                            ; preds = %bb3.1
  br i1 %cond15, label %bb1.backedge, label %bb3.2

bb3.2:                                            ; preds = %bb2.2
  %_9.2 = icmp eq i32 %_10, %_13.2
  br i1 %_9.2, label %bb7, label %bb2.3

bb2.3:                                            ; preds = %bb3.2
  br i1 %cond16, label %bb1.backedge, label %bb3.3

bb3.3:                                            ; preds = %bb2.3
  %_9.3 = icmp eq i32 %_10, %_13.3
  br i1 %_9.3, label %bb7, label %bb2.4

bb2.4:                                            ; preds = %bb3.3
  br i1 %cond17, label %bb1.backedge, label %bb3.4

bb3.4:                                            ; preds = %bb2.4
  %_9.4 = icmp eq i32 %_10, %_13.4
  br i1 %_9.4, label %bb7, label %bb2.5

bb2.5:                                            ; preds = %bb3.4
  br i1 %cond18, label %bb1.backedge, label %bb3.5

bb3.5:                                            ; preds = %bb2.5
  %_9.5 = icmp eq i32 %_10, %_13.5
  br i1 %_9.5, label %bb7, label %bb2.6

bb2.6:                                            ; preds = %bb3.5
  br i1 %cond19, label %bb1.backedge, label %bb3.6

bb3.6:                                            ; preds = %bb2.6
  %_9.6 = icmp eq i32 %_10, %_13.6
  br i1 %_9.6, label %bb7, label %bb2.7

bb2.7:                                            ; preds = %bb3.6
  br i1 %cond20, label %bb1.backedge, label %bb3.7

bb3.7:                                            ; preds = %bb2.7
  %_9.7 = icmp eq i32 %_10, %_13.7
  br i1 %_9.7, label %bb7, label %bb2.8

bb2.8:                                            ; preds = %bb3.7
  br i1 %cond21, label %bb1.backedge, label %bb3.8

bb3.8:                                            ; preds = %bb2.8
  %_9.8 = icmp eq i32 %_10, %_13.8
  br i1 %_9.8, label %bb7, label %bb2.9

bb2.9:                                            ; preds = %bb3.8
  br i1 %cond22, label %bb1.backedge, label %bb3.9

bb3.9:                                            ; preds = %bb2.9
  %_9.9 = icmp eq i32 %_10, %_13.9
  br i1 %_9.9, label %bb7, label %bb2.10

bb2.10:                                           ; preds = %bb3.9
  br i1 %cond23, label %bb1.backedge, label %panic2

panic2:                                           ; preds = %bb2.10
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 10, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_9ef82c06ba71a5075fc6cce21df16b33) #18
  unreachable
}
