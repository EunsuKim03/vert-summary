define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %iter1 = add i32 %n, -1
  %_157 = icmp sgt i32 %iter1, 0
  br i1 %_157, label %bb4.preheader, label %start.bb5_crit_edge

start.bb5_crit_edge:                              ; preds = %start
  %.pre = sext i32 %iter1 to i64
  br label %bb5

bb4.preheader:                                    ; preds = %start
  %1 = zext nneg i32 %iter1 to i64
  %2 = and i32 %n, -2
  %.not.not = icmp eq i32 %2, 2
  br i1 %.not.not, label %bb4.preheader13, label %panic2

bb4.preheader13:                                  ; preds = %bb4.preheader
  %min.iters.check = icmp ult i32 %iter1, 8
  br i1 %min.iters.check, label %bb4, label %vector.body

vector.body:                                      ; preds = %bb4.preheader13, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %bb4.preheader13 ]
  %vec.ind = phi <4 x i64> [ %vec.ind.next, %vector.body ], [ <i64 0, i64 1, i64 2, i64 3>, %bb4.preheader13 ]
  %vec.phi = phi <4 x i32> [ %11, %vector.body ], [ zeroinitializer, %bb4.preheader13 ]
  %vec.phi14 = phi <4 x i32> [ %12, %vector.body ], [ zeroinitializer, %bb4.preheader13 ]
  %3 = getelementptr inbounds nuw i32, ptr %arr, i64 %index
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %wide.load = load <4 x i32>, ptr %3, align 8
  %wide.load15 = load <4 x i32>, ptr %4, align 8
  %5 = xor <4 x i32> %vec.phi, %wide.load
  %6 = xor <4 x i32> %vec.phi14, %wide.load15
  %7 = trunc <4 x i64> %vec.ind to <4 x i32>
  %8 = add <4 x i32> %7, splat (i32 1)
  %9 = trunc <4 x i64> %vec.ind to <4 x i32>
  %10 = add <4 x i32> %9, splat (i32 5)
  %11 = xor <4 x i32> %5, %8
  %12 = xor <4 x i32> %6, %10
  %index.next = add nuw i64 %index, 8
  %vec.ind.next = add <4 x i64> %vec.ind, splat (i64 8)
  br label %vector.body, !llvm.loop !1031

bb5:                                              ; preds = %bb4, %bb4.1, %bb4.2, %bb4.3, %start.bb5_crit_edge
  %_13.pre-phi = phi i64 [ %.pre, %start.bb5_crit_edge ], [ %1, %bb4.3 ], [ %1, %bb4.2 ], [ %1, %bb4.1 ], [ %1, %bb4 ]
  %res.sroa.0.0.lcssa = phi i32 [ 0, %start.bb5_crit_edge ], [ %13, %bb4 ], [ %16, %bb4.1 ], [ %19, %bb4.2 ], [ %27, %bb4.3 ]
  %_14 = icmp ult i32 %iter1, 2
  br i1 %_14, label %bb3, label %panic

bb4:                                              ; preds = %bb4.preheader13
  %_8 = load i32, ptr %arr, align 8, !noundef !23
  %13 = xor i32 %_8, 1
  %exitcond.not = icmp eq i32 %iter1, 1
  br i1 %exitcond.not, label %bb5, label %bb4.1, !llvm.loop !1032

bb4.1:                                            ; preds = %bb4
  %14 = getelementptr inbounds nuw i8, ptr %arr, i64 4
  %_8.1 = load i32, ptr %14, align 4, !noundef !23
  %15 = xor i32 %13, %_8.1
  %16 = xor i32 %15, 2
  %exitcond.not.1 = icmp eq i32 %iter1, 2
  br i1 %exitcond.not.1, label %bb5, label %bb4.2, !llvm.loop !1032

bb4.2:                                            ; preds = %bb4.1
  %17 = getelementptr inbounds nuw i8, ptr %arr, i64 8
  %_8.2 = load i32, ptr %17, align 8, !noundef !23
  %18 = xor i32 %16, %_8.2
  %19 = xor i32 %18, 3
  %exitcond.not.2 = icmp eq i32 %iter1, 3
  br i1 %exitcond.not.2, label %bb5, label %bb4.3, !llvm.loop !1032

bb4.3:                                            ; preds = %bb4.2
  %20 = getelementptr inbounds nuw i8, ptr %arr, i64 12
  %_8.3 = load i32, ptr %20, align 4, !noundef !23
  %21 = getelementptr inbounds nuw i8, ptr %arr, i64 16
  %_8.4 = load i32, ptr %21, align 8, !noundef !23
  %22 = xor i32 %_8.3, %_8.4
  %23 = getelementptr inbounds nuw i8, ptr %arr, i64 20
  %_8.5 = load i32, ptr %23, align 4, !noundef !23
  %24 = xor i32 %22, %_8.5
  %25 = getelementptr inbounds nuw i8, ptr %arr, i64 24
  %_8.6 = load i32, ptr %25, align 8, !noundef !23
  %26 = xor i32 %24, %_8.6
  %27 = xor i32 %26, %19
  br label %bb5

bb3:                                              ; preds = %bb5
  %28 = getelementptr inbounds nuw i32, ptr %arr, i64 %_13.pre-phi
  %_12 = load i32, ptr %28, align 4, !noundef !23
  %29 = xor i32 %_12, %res.sroa.0.0.lcssa
  ret i32 %29

panic:                                            ; preds = %bb5
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_13.pre-phi, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_aed8be85cd359367044931f8115b68fe) #18
  unreachable

panic2:                                           ; preds = %bb4.preheader
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_8f981141c0dda8cb9a2bfadf094fd338) #18
  unreachable
}
