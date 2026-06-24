define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
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
  %ans.sroa.0.025 = phi i32 [ %_0.sroa.0.0.i, %bb2.loopexit ], [ -2147483648, %start ]
  %iter.sroa.0.024 = phi i32 [ %spec.select26, %bb2.loopexit ], [ 0, %start ]
  %2 = zext nneg i32 %iter.sroa.0.024 to i64
  %umax = tail call i32 @llvm.umax.i32(i32 %iter.sroa.0.024, i32 2)
  %wide.trip.count = zext i32 %umax to i64
  br label %bb10

bb6:                                              ; preds = %bb2.loopexit, %start
  %ans.sroa.0.0.lcssa = phi i32 [ -2147483648, %start ], [ %_0.sroa.0.0.i, %bb2.loopexit ]
  ret i32 %ans.sroa.0.0.lcssa

bb10:                                             ; preds = %bb8.preheader, %bb12
  %indvars.iv28 = phi i64 [ %2, %bb8.preheader ], [ %indvars.iv.next29, %bb12 ]
  %indvars.iv.in = phi i64 [ %2, %bb8.preheader ], [ %indvars.iv, %bb12 ]
  %curr_xor.sroa.0.021 = phi i32 [ 0, %bb8.preheader ], [ %4, %bb12 ]
  %ans.sroa.0.120 = phi i32 [ %ans.sroa.0.025, %bb8.preheader ], [ %_0.sroa.0.0.i, %bb12 ]
  %exitcond.not = icmp eq i64 %indvars.iv28, %wide.trip.count
  br i1 %exitcond.not, label %panic, label %bb12

bb12:                                             ; preds = %bb10
  %indvars.iv = add nuw nsw i64 %indvars.iv.in, 1
  %3 = getelementptr inbounds nuw i32, ptr %arr, i64 %indvars.iv28
  %_19 = load i32, ptr %3, align 4, !noundef !37
  %4 = xor i32 %_19, %curr_xor.sroa.0.021
  %_0.sroa.0.0.i = tail call noundef i32 @llvm.smax.i32(i32 %4, i32 %ans.sroa.0.120)
  %5 = trunc nuw i64 %indvars.iv to i32
  %_0.i.i.i9 = icmp sgt i32 %n, %5
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  br i1 %_0.i.i.i9, label %bb10, label %bb2.loopexit

panic:                                            ; preds = %bb10
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv28, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0c5c39a8ff54ba8e7d2d6c18fcfc5293) #24
  unreachable
}
