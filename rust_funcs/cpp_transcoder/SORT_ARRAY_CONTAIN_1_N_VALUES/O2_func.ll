define void @f_gold(ptr noalias noundef nonnull writeonly align 4 captures(none) %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %n) unnamed_addr #1 {
start:
  %_92 = icmp sgt i32 %n, 0
  br i1 %_92, label %bb3.preheader, label %bb4

bb3.preheader:                                    ; preds = %start
  %wide.trip.count = zext nneg i32 %n to i64
  %0 = add nsw i64 %wide.trip.count, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %arr.1, i64 %0)
  %min.iters.check = icmp samesign ult i64 %umin, 8
  br i1 %min.iters.check, label %bb3.preheader7, label %vector.ph

bb3.preheader7:                                   ; preds = %vector.body, %bb3.preheader
  %indvars.iv.ph = phi i64 [ 0, %bb3.preheader ], [ %n.vec, %vector.body ]
  br label %bb3

vector.ph:                                        ; preds = %bb3.preheader
  %1 = add nuw nsw i64 %umin, 1
  %n.mod.vf = and i64 %1, 7
  %2 = icmp eq i64 %n.mod.vf, 0
  %3 = select i1 %2, i64 8, i64 %n.mod.vf
  %n.vec = sub nsw i64 %1, %3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %4 = getelementptr inbounds nuw float, ptr %arr.0, i64 %index
  %5 = trunc <4 x i64> %vec.ind to <4 x i32>
  %6 = add <4 x i32> %5, splat (i32 1)
  %7 = trunc <4 x i64> %vec.ind to <4 x i32>
  %8 = add <4 x i32> %7, splat (i32 5)
  %9 = uitofp nneg <4 x i32> %6 to <4 x float>
  %10 = uitofp nneg <4 x i32> %8 to <4 x float>
  %11 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <4 x float> %9, ptr %4, align 4
  store <4 x float> %10, ptr %11, align 4
  %index.next = add nuw i64 %index, 8
  %vec.ind.next = add <4 x i64> %vec.ind, splat (i64 8)
  %12 = icmp eq i64 %index.next, %n.vec
  br i1 %12, label %bb3.preheader7, label %vector.body, !llvm.loop !1031

bb4:                                              ; preds = %bb2, %start
  ret void

bb3:                                              ; preds = %bb3.preheader7, %bb2
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb2 ], [ %indvars.iv.ph, %bb3.preheader7 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %arr.1
  br i1 %exitcond.not, label %panic, label %bb2

bb2:                                              ; preds = %bb3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %13 = getelementptr inbounds nuw float, ptr %arr.0, i64 %indvars.iv
  %14 = trunc nuw nsw i64 %indvars.iv.next to i32
  %15 = uitofp nneg i32 %14 to float
  store float %15, ptr %13, align 4
  %exitcond6.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond6.not, label %bb4, label %bb3, !llvm.loop !1032

panic:                                            ; preds = %bb3
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %arr.1, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_c0e7c54de9d361136dcb9123f37c94fd) #18
  unreachable
}
