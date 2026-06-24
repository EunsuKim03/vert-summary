define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_0.i.i.i25 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i25, label %bb8.preheader.lr.ph, label %bb6

bb8.preheader.lr.ph:                              ; preds = %start
  %_20 = zext nneg i32 %n to i64
  %wide.trip.count40 = zext nneg i32 %n to i64
  %wide.trip.count = zext nneg i32 %n to i64
  br label %bb8.preheader

bb8.preheader:                                    ; preds = %bb8.preheader.lr.ph, %bb11
  %indvars.iv36 = phi i64 [ 0, %bb8.preheader.lr.ph ], [ %indvars.iv.next37, %bb11 ]
  %res.sroa.0.027 = phi i32 [ -2147483648, %bb8.preheader.lr.ph ], [ %_0.sroa.0.0.i, %bb11 ]
  br label %bb10

bb6:                                              ; preds = %bb11, %start
  %res.sroa.0.0.lcssa = phi i32 [ -2147483648, %start ], [ %_0.sroa.0.0.i, %bb11 ]
  ret i32 %res.sroa.0.0.lcssa

bb10:                                             ; preds = %bb8.preheader, %bb13
  %indvars.iv31 = phi i64 [ 0, %bb8.preheader ], [ %indvars.iv.next32, %bb13 ]
  %curr_sum.sroa.0.023 = phi i32 [ 0, %bb8.preheader ], [ %4, %bb13 ]
  %1 = add nuw nsw i64 %indvars.iv31, %indvars.iv36
  %sext = shl i64 %1, 32
  %_18 = ashr exact i64 %sext, 32
  %index = urem i64 %_18, %_20
  %_24 = icmp samesign ult i64 %index, 2
  br i1 %_24, label %bb13, label %panic2

bb11:                                             ; preds = %bb13
  %_0.sroa.0.0.i = tail call noundef i32 @llvm.smax.i32(i32 %4, i32 %res.sroa.0.027)
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  %exitcond41.not = icmp eq i64 %indvars.iv.next37, %wide.trip.count40
  br i1 %exitcond41.not, label %bb6, label %bb8.preheader

bb13:                                             ; preds = %bb10
  %2 = getelementptr inbounds nuw i32, ptr %arr, i64 %index
  %_23 = load i32, ptr %2, align 4, !noundef !37
  %3 = trunc nuw nsw i64 %indvars.iv31 to i32
  %_22 = mul i32 %_23, %3
  %4 = add i32 %_22, %curr_sum.sroa.0.023
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next32, %wide.trip.count
  br i1 %exitcond.not, label %bb11, label %bb10

panic2:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %index, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_de6af84c3718d7d5eefbc3616487ef28) #24
  unreachable
}
