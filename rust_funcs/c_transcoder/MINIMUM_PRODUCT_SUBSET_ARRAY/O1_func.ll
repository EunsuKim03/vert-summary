define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %a = alloca [8 x i8], align 8
  store i64 %0, ptr %a, align 8
  %_3 = icmp eq i32 %n, 1
  br i1 %_3, label %bb1, label %bb4.preheader

bb4.preheader:                                    ; preds = %start
  %_0.i.i.i3754 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i3754, label %bb7.lr.ph, label %bb8

bb1:                                              ; preds = %start
  %1 = load i32, ptr %a, align 8, !noundef !37
  br label %bb41

bb7:                                              ; preds = %bb7.lr.ph, %bb12
  %spec.select44 = phi i32 [ %spec.select3861, %bb7.lr.ph ], [ %spec.select, %bb12 ]
  %prod.sroa.0.043 = phi i32 [ %prod.sroa.0.0.ph60, %bb7.lr.ph ], [ %7, %bb12 ]
  %min_pos.sroa.0.042 = phi i32 [ %min_pos.sroa.0.0.ph59, %bb7.lr.ph ], [ %min_pos.sroa.0.3, %bb12 ]
  %max_neg.sroa.0.041 = phi i32 [ %max_neg.sroa.0.0.ph58, %bb7.lr.ph ], [ %max_neg.sroa.0.1, %bb12 ]
  %count_neg.sroa.0.040 = phi i32 [ %count_neg.sroa.0.0.ph57, %bb7.lr.ph ], [ %count_neg.sroa.0.1, %bb12 ]
  %iter.sroa.0.039 = phi i32 [ %iter.sroa.0.0.ph55, %bb7.lr.ph ], [ %spec.select44, %bb12 ]
  %_17 = sext i32 %iter.sroa.0.039 to i64
  %_18 = icmp ult i32 %iter.sroa.0.039, 2
  br i1 %_18, label %bb9, label %panic2

bb8:                                              ; preds = %bb10, %bb12, %bb4.preheader
  %count_zero.sroa.0.0.ph.lcssa36 = phi i32 [ 0, %bb4.preheader ], [ %count_zero.sroa.0.0.ph56, %bb12 ], [ %5, %bb10 ]
  %count_neg.sroa.0.0.lcssa = phi i32 [ 0, %bb4.preheader ], [ %count_neg.sroa.0.1, %bb12 ], [ %count_neg.sroa.0.040, %bb10 ]
  %max_neg.sroa.0.0.lcssa = phi i32 [ -2147483648, %bb4.preheader ], [ %max_neg.sroa.0.1, %bb12 ], [ %max_neg.sroa.0.041, %bb10 ]
  %min_pos.sroa.0.0.lcssa = phi i32 [ 2147483647, %bb4.preheader ], [ %min_pos.sroa.0.3, %bb12 ], [ %min_pos.sroa.0.042, %bb10 ]
  %prod.sroa.0.0.lcssa = phi i32 [ 1, %bb4.preheader ], [ %7, %bb12 ], [ %prod.sroa.0.043, %bb10 ]
  %_23 = icmp eq i32 %count_zero.sroa.0.0.ph.lcssa36, %n
  br i1 %_23, label %bb41, label %bb24

bb24:                                             ; preds = %bb8
  %_25 = icmp eq i32 %count_neg.sroa.0.0.lcssa, 0
  %_27 = icmp sgt i32 %count_zero.sroa.0.0.ph.lcssa36, 0
  %or.cond = and i1 %_25, %_27
  %.mux = select i1 %or.cond, i32 0, i32 %min_pos.sroa.0.0.lcssa
  br i1 %_25, label %bb41, label %bb32

bb32:                                             ; preds = %bb24
  %2 = and i32 %count_neg.sroa.0.0.lcssa, 1
  %_30 = icmp eq i32 %2, 0
  br i1 %_30, label %bb35, label %bb41

bb35:                                             ; preds = %bb32
  %_35 = icmp eq i32 %max_neg.sroa.0.0.lcssa, -1
  %_36 = icmp eq i32 %prod.sroa.0.0.lcssa, -2147483648
  %_37 = and i1 %_35, %_36
  br i1 %_37, label %panic1, label %bb36

bb36:                                             ; preds = %bb35
  %3 = sdiv i32 %prod.sroa.0.0.lcssa, %max_neg.sroa.0.0.lcssa
  br label %bb41

panic1:                                           ; preds = %bb35
; call core::panicking::panic_const::panic_const_div_overflow
  tail call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_eace049ace22d8e0459a4736380199f8) #24
  unreachable

bb41:                                             ; preds = %bb24, %bb8, %bb36, %bb32, %bb1
  %min_pos.sroa.0.1 = phi i32 [ %1, %bb1 ], [ %3, %bb36 ], [ %prod.sroa.0.0.lcssa, %bb32 ], [ %.mux, %bb24 ], [ 0, %bb8 ]
  ret i32 %min_pos.sroa.0.1

bb9:                                              ; preds = %bb7
  %4 = getelementptr inbounds nuw i32, ptr %a, i64 %_17
  %_16 = load i32, ptr %4, align 4, !noundef !37
  %_15 = icmp eq i32 %_16, 0
  br i1 %_15, label %bb10, label %bb12

panic2:                                           ; preds = %bb7
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_17, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_59f3e412e4133ac17d04cec109866048) #24
  unreachable

bb10:                                             ; preds = %bb9
  %5 = add i32 %count_zero.sroa.0.0.ph56, 1
  %_0.i.i.i37 = icmp slt i32 %spec.select44, %n
  %6 = zext i1 %_0.i.i.i37 to i32
  %spec.select38 = add nsw i32 %spec.select44, %6
  br i1 %_0.i.i.i37, label %bb7.lr.ph, label %bb8

bb7.lr.ph:                                        ; preds = %bb4.preheader, %bb10
  %spec.select3861 = phi i32 [ %spec.select38, %bb10 ], [ 1, %bb4.preheader ]
  %prod.sroa.0.0.ph60 = phi i32 [ %prod.sroa.0.043, %bb10 ], [ 1, %bb4.preheader ]
  %min_pos.sroa.0.0.ph59 = phi i32 [ %min_pos.sroa.0.042, %bb10 ], [ 2147483647, %bb4.preheader ]
  %max_neg.sroa.0.0.ph58 = phi i32 [ %max_neg.sroa.0.041, %bb10 ], [ -2147483648, %bb4.preheader ]
  %count_neg.sroa.0.0.ph57 = phi i32 [ %count_neg.sroa.0.040, %bb10 ], [ 0, %bb4.preheader ]
  %count_zero.sroa.0.0.ph56 = phi i32 [ %5, %bb10 ], [ 0, %bb4.preheader ]
  %iter.sroa.0.0.ph55 = phi i32 [ %spec.select44, %bb10 ], [ 0, %bb4.preheader ]
  br label %bb7

bb12:                                             ; preds = %bb9
  %_19 = icmp slt i32 %_16, 0
  %_0.sroa.0.0.i = tail call range(i32 -2147483648, 0) i32 @llvm.umax.i32(i32 range(i32 -2147483648, 0) %_16, i32 range(i32 -2147483648, 0) %max_neg.sroa.0.041)
  %_16.lobit = lshr i32 %_16, 31
  %count_neg.sroa.0.1 = add i32 %_16.lobit, %count_neg.sroa.0.040
  %max_neg.sroa.0.1 = select i1 %_19, i32 %_0.sroa.0.0.i, i32 %max_neg.sroa.0.041
  %_21 = icmp sgt i32 %_16, 0
  %_0.sroa.0.0.i23 = tail call range(i32 1, -2147483648) i32 @llvm.umin.i32(i32 range(i32 1, -2147483648) %_16, i32 range(i32 1, -2147483648) %min_pos.sroa.0.042)
  %min_pos.sroa.0.3 = select i1 %_21, i32 %_0.sroa.0.0.i23, i32 %min_pos.sroa.0.042
  %7 = mul i32 %_16, %prod.sroa.0.043
  %_0.i.i.i = icmp slt i32 %spec.select44, %n
  %8 = zext i1 %_0.i.i.i to i32
  %spec.select = add nsw i32 %spec.select44, %8
  br i1 %_0.i.i.i, label %bb7, label %bb8
}
