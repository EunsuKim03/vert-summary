define noundef range(i32 0, -2147483648) i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_0.i.i.i23 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i23, label %bb8.preheader, label %bb6

bb2.loopexit:                                     ; preds = %bb12
  %_0.i.i.i = icmp slt i32 %spec.select26, %n
  %1 = zext i1 %_0.i.i.i to i32
  %spec.select = add nuw nsw i32 %spec.select26, %1
  br i1 %_0.i.i.i, label %bb8.preheader, label %bb6

bb8.preheader:                                    ; preds = %start, %bb2.loopexit
  %spec.select26 = phi i32 [ %spec.select, %bb2.loopexit ], [ 1, %start ]
  %max_len.sroa.0.025 = phi i32 [ %max_len.sroa.0.2, %bb2.loopexit ], [ 0, %start ]
  %iter.sroa.0.024 = phi i32 [ %spec.select26, %bb2.loopexit ], [ 0, %start ]
  %2 = zext nneg i32 %iter.sroa.0.024 to i64
  %umax = tail call i32 @llvm.umax.i32(i32 %iter.sroa.0.024, i32 2)
  %wide.trip.count = zext i32 %umax to i64
  br label %bb10

bb6:                                              ; preds = %bb2.loopexit, %start
  %max_len.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %max_len.sroa.0.2, %bb2.loopexit ]
  ret i32 %max_len.sroa.0.0.lcssa

bb10:                                             ; preds = %bb8.preheader, %bb12
  %indvars.iv28 = phi i64 [ %2, %bb8.preheader ], [ %indvars.iv.next29, %bb12 ]
  %indvars.iv.in = phi i64 [ %2, %bb8.preheader ], [ %indvars.iv, %bb12 ]
  %curr_sum.sroa.0.021 = phi i32 [ 0, %bb8.preheader ], [ %4, %bb12 ]
  %max_len.sroa.0.120 = phi i32 [ %max_len.sroa.0.025, %bb8.preheader ], [ %max_len.sroa.0.2, %bb12 ]
  %exitcond.not = icmp eq i64 %indvars.iv28, %wide.trip.count
  br i1 %exitcond.not, label %panic, label %bb12

bb12:                                             ; preds = %bb10
  %indvars.iv = add nuw nsw i64 %indvars.iv.in, 1
  %3 = getelementptr inbounds nuw i32, ptr %arr, i64 %indvars.iv28
  %_18 = load i32, ptr %3, align 4, !noundef !37
  %4 = add i32 %_18, %curr_sum.sroa.0.021
  %_21 = icmp eq i32 %4, 0
  %5 = trunc i64 %indvars.iv28 to i32
  %6 = sub i32 %5, %iter.sroa.0.024
  %7 = add i32 %6, 1
  %x.y.i = tail call i32 @llvm.smax.i32(i32 %max_len.sroa.0.120, i32 %7)
  %max_len.sroa.0.2 = select i1 %_21, i32 %x.y.i, i32 %max_len.sroa.0.120
  %8 = trunc nuw i64 %indvars.iv to i32
  %_0.i.i.i9 = icmp sgt i32 %n, %8
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  br i1 %_0.i.i.i9, label %bb10, label %bb2.loopexit

panic:                                            ; preds = %bb10
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv28, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_f96b666488424186a8ace07bfd084d0f) #24
  unreachable
}
