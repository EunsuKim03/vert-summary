define noundef range(i32 0, -2147483648) i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_0.i.i.i22 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i22, label %bb8.preheader, label %bb6

bb2.loopexit:                                     ; preds = %bb12
  %_0.i.i.i = icmp slt i32 %spec.select25, %n
  %1 = zext i1 %_0.i.i.i to i32
  %spec.select = add nuw nsw i32 %spec.select25, %1
  br i1 %_0.i.i.i, label %bb8.preheader, label %bb6

bb8.preheader:                                    ; preds = %start, %bb2.loopexit
  %spec.select25 = phi i32 [ %spec.select, %bb2.loopexit ], [ 1, %start ]
  %max_len.sroa.0.024 = phi i32 [ %max_len.sroa.0.2, %bb2.loopexit ], [ 0, %start ]
  %iter.sroa.0.023 = phi i32 [ %spec.select25, %bb2.loopexit ], [ 0, %start ]
  %2 = zext nneg i32 %iter.sroa.0.023 to i64
  %umax = tail call i32 @llvm.umax.i32(i32 %iter.sroa.0.023, i32 2)
  %wide.trip.count = zext i32 %umax to i64
  br label %bb10

bb6:                                              ; preds = %bb2.loopexit, %start
  %max_len.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %max_len.sroa.0.2, %bb2.loopexit ]
  ret i32 %max_len.sroa.0.0.lcssa

bb10:                                             ; preds = %bb8.preheader, %bb12
  %indvars.iv27 = phi i64 [ %2, %bb8.preheader ], [ %indvars.iv.next28, %bb12 ]
  %indvars.iv.in = phi i64 [ %2, %bb8.preheader ], [ %indvars.iv, %bb12 ]
  %curr_sum.sroa.0.020 = phi float [ 0.000000e+00, %bb8.preheader ], [ %4, %bb12 ]
  %max_len.sroa.0.119 = phi i32 [ %max_len.sroa.0.024, %bb8.preheader ], [ %max_len.sroa.0.2, %bb12 ]
  %exitcond.not = icmp eq i64 %indvars.iv27, %wide.trip.count
  br i1 %exitcond.not, label %panic, label %bb12

bb12:                                             ; preds = %bb10
  %indvars.iv = add nuw nsw i64 %indvars.iv.in, 1
  %3 = getelementptr inbounds nuw float, ptr %arr, i64 %indvars.iv27
  %_18 = load float, ptr %3, align 4, !noundef !37
  %4 = fadd float %curr_sum.sroa.0.020, %_18
  %_21 = fcmp oeq float %4, 0.000000e+00
  %5 = trunc i64 %indvars.iv27 to i32
  %6 = sub i32 %5, %iter.sroa.0.023
  %7 = add i32 %6, 1
  %_0.sroa.0.0.i = tail call i32 @llvm.smax.i32(i32 %7, i32 %max_len.sroa.0.119)
  %max_len.sroa.0.2 = select i1 %_21, i32 %_0.sroa.0.0.i, i32 %max_len.sroa.0.119
  %8 = trunc nuw i64 %indvars.iv to i32
  %_0.i.i.i8 = icmp sgt i32 %n, %8
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  br i1 %_0.i.i.i8, label %bb10, label %bb2.loopexit

panic:                                            ; preds = %bb10
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv27, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_5f86f6e9dcadb26fa650756119ae211b) #24
  unreachable
}
