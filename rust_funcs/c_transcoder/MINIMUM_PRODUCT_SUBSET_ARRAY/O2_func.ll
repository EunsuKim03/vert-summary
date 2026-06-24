define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %a = alloca [8 x i8], align 8
  store i64 %0, ptr %a, align 8
  %_3 = icmp eq i32 %n, 1
  br i1 %_3, label %bb1, label %bb3.preheader

bb3.preheader:                                    ; preds = %start
  %_333951 = icmp sgt i32 %n, 0
  br i1 %_333951, label %bb37.lr.ph.preheader, label %bb38.thread

bb37.lr.ph.preheader:                             ; preds = %bb3.preheader
  %1 = zext nneg i32 %n to i64
  br label %bb37.lr.ph

bb1:                                              ; preds = %start
  %2 = trunc i64 %0 to i32
  br label %bb36

bb38:                                             ; preds = %bb17, %bb5
  %prod.sroa.0.0.ph.lcssa38 = phi i32 [ %prod.sroa.0.0.ph52, %bb5 ], [ %9, %bb17 ]
  %count_neg.sroa.0.0.ph.lcssa37 = phi i32 [ %count_neg.sroa.0.0.ph54, %bb5 ], [ %count_neg.sroa.0.127, %bb17 ]
  %max_neg.sroa.0.0.ph.lcssa36 = phi i32 [ %max_neg.sroa.0.0.ph55, %bb5 ], [ %max_neg.sroa.0.129, %bb17 ]
  %min_pos.sroa.0.0.ph.lcssa35 = phi i32 [ %min_pos.sroa.0.0.ph56, %bb5 ], [ %min_pos.sroa.0.3, %bb17 ]
  %count_zero.sroa.0.0.lcssa = phi i32 [ %6, %bb5 ], [ %count_zero.sroa.0.040, %bb17 ]
  %_18 = icmp eq i32 %count_zero.sroa.0.0.lcssa, %n
  br i1 %_18, label %bb36, label %bb19

bb38.thread:                                      ; preds = %bb3.preheader
  %_1886 = icmp eq i32 %n, 0
  %spec.select = select i1 %_1886, i32 0, i32 2147483647
  br label %bb36

bb37:                                             ; preds = %bb37.lr.ph, %bb5
  %indvars.iv = phi i64 [ %10, %bb37.lr.ph ], [ %indvars.iv.next, %bb5 ]
  %count_zero.sroa.0.040 = phi i32 [ %count_zero.sroa.0.0.ph53, %bb37.lr.ph ], [ %6, %bb5 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %panic2, label %bb4

bb19:                                             ; preds = %bb38
  %_20 = icmp eq i32 %count_neg.sroa.0.0.ph.lcssa37, 0
  %_22 = icmp sgt i32 %count_zero.sroa.0.0.lcssa, 0
  %or.cond = and i1 %_20, %_22
  %.mux = select i1 %or.cond, i32 0, i32 %min_pos.sroa.0.0.ph.lcssa35
  br i1 %_20, label %bb36, label %bb27

bb27:                                             ; preds = %bb19
  %3 = and i32 %count_neg.sroa.0.0.ph.lcssa37, 1
  %_25 = icmp eq i32 %3, 0
  br i1 %_25, label %bb30, label %bb36

bb30:                                             ; preds = %bb27
  %_30 = icmp eq i32 %max_neg.sroa.0.0.ph.lcssa36, -1
  %_31 = icmp eq i32 %prod.sroa.0.0.ph.lcssa38, -2147483648
  %_32 = and i1 %_31, %_30
  br i1 %_32, label %panic1, label %bb31

bb31:                                             ; preds = %bb30
  %4 = sdiv i32 %prod.sroa.0.0.ph.lcssa38, %max_neg.sroa.0.0.ph.lcssa36
  br label %bb36

panic1:                                           ; preds = %bb30
; call core::panicking::panic_const::panic_const_div_overflow
  tail call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_eace049ace22d8e0459a4736380199f8) #18
  unreachable

bb36:                                             ; preds = %bb38.thread, %bb19, %bb38, %bb31, %bb27, %bb1
  %min_pos.sroa.0.1 = phi i32 [ %2, %bb1 ], [ %4, %bb31 ], [ %prod.sroa.0.0.ph.lcssa38, %bb27 ], [ %.mux, %bb19 ], [ 0, %bb38 ], [ %spec.select, %bb38.thread ]
  ret i32 %min_pos.sroa.0.1

bb4:                                              ; preds = %bb37
  %5 = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv
  %_11 = load i32, ptr %5, align 4, !noundef !23
  %_10 = icmp eq i32 %_11, 0
  br i1 %_10, label %bb5, label %bb7

panic2:                                           ; preds = %bb37
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %wide.trip.count, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_59f3e412e4133ac17d04cec109866048) #18
  unreachable

bb5:                                              ; preds = %bb4
  %6 = add i32 %count_zero.sroa.0.040, 1
  %_33 = icmp slt i64 %indvars.iv.next, %1
  br i1 %_33, label %bb37, label %bb38

bb7:                                              ; preds = %bb4
  %7 = trunc nsw i64 %indvars.iv.next to i32
  %_14 = icmp slt i32 %_11, 0
  br i1 %_14, label %bb12, label %bb14

bb12:                                             ; preds = %bb7
  %8 = add i32 %count_neg.sroa.0.0.ph54, 1
  %_0.sroa.0.0.i = tail call noundef range(i32 -2147483648, 0) i32 @llvm.umax.i32(i32 range(i32 -2147483648, 0) %_11, i32 range(i32 -2147483648, 0) %max_neg.sroa.0.0.ph55)
  br label %bb17

bb14:                                             ; preds = %bb7
  %_0.sroa.0.0.i23 = tail call noundef range(i32 1, -2147483648) i32 @llvm.umin.i32(i32 range(i32 1, -2147483648) %_11, i32 range(i32 1, -2147483648) %min_pos.sroa.0.0.ph56)
  br label %bb17

bb17:                                             ; preds = %bb12, %bb14
  %max_neg.sroa.0.129 = phi i32 [ %max_neg.sroa.0.0.ph55, %bb14 ], [ %_0.sroa.0.0.i, %bb12 ]
  %count_neg.sroa.0.127 = phi i32 [ %count_neg.sroa.0.0.ph54, %bb14 ], [ %8, %bb12 ]
  %min_pos.sroa.0.3 = phi i32 [ %_0.sroa.0.0.i23, %bb14 ], [ %min_pos.sroa.0.0.ph56, %bb12 ]
  %9 = mul i32 %_11, %prod.sroa.0.0.ph52
  %_3339 = icmp sgt i32 %n, %7
  br i1 %_3339, label %bb37.lr.ph, label %bb38

bb37.lr.ph:                                       ; preds = %bb37.lr.ph.preheader, %bb17
  %iter.sroa.0.0.ph57 = phi i32 [ %7, %bb17 ], [ 0, %bb37.lr.ph.preheader ]
  %min_pos.sroa.0.0.ph56 = phi i32 [ %min_pos.sroa.0.3, %bb17 ], [ 2147483647, %bb37.lr.ph.preheader ]
  %max_neg.sroa.0.0.ph55 = phi i32 [ %max_neg.sroa.0.129, %bb17 ], [ -2147483648, %bb37.lr.ph.preheader ]
  %count_neg.sroa.0.0.ph54 = phi i32 [ %count_neg.sroa.0.127, %bb17 ], [ 0, %bb37.lr.ph.preheader ]
  %count_zero.sroa.0.0.ph53 = phi i32 [ %count_zero.sroa.0.040, %bb17 ], [ 0, %bb37.lr.ph.preheader ]
  %prod.sroa.0.0.ph52 = phi i32 [ %9, %bb17 ], [ 1, %bb37.lr.ph.preheader ]
  %10 = sext i32 %iter.sroa.0.0.ph57 to i64
  %umax = tail call i32 @llvm.umax.i32(i32 %iter.sroa.0.0.ph57, i32 2)
  %wide.trip.count = sext i32 %umax to i64
  br label %bb37
}
