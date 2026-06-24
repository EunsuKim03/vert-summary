define noundef range(i32 0, 2) i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 {
start:
  %a = alloca [8 x i8], align 8
  store i64 %0, ptr %a, align 8
  %_0.i.i.i7 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i7, label %bb7, label %bb6

bb6.loopexit:                                     ; preds = %bb7.2, %bb7.1, %bb7
  %count_odd.sroa.0.1.lcssa = phi i32 [ %_14, %bb7 ], [ %count_odd.sroa.0.1.1, %bb7.1 ], [ %count_odd.sroa.0.1.2, %bb7.2 ]
  %count_even.sroa.0.1.lcssa = phi i32 [ %4, %bb7 ], [ %count_even.sroa.0.1.1, %bb7.1 ], [ %count_even.sroa.0.1.2, %bb7.2 ]
  %1 = and i32 %count_odd.sroa.0.1.lcssa, %count_even.sroa.0.1.lcssa
  %2 = and i32 %1, 1
  %3 = xor i32 %2, 1
  br label %bb6

bb6:                                              ; preds = %bb6.loopexit, %start
  %count_odd.sroa.0.0.lcssa = phi i32 [ 1, %start ], [ %3, %bb6.loopexit ]
  ret i32 %count_odd.sroa.0.0.lcssa

bb7:                                              ; preds = %start
  %_14 = load i32, ptr %a, align 8, !noundef !37
  %4 = xor i32 %_14, 1
  %_0.i.i.i.not = icmp eq i32 %n, 1
  %spec.select = select i1 %_0.i.i.i.not, i32 1, i32 2
  br i1 %_0.i.i.i.not, label %bb6.loopexit, label %bb7.1

bb7.1:                                            ; preds = %bb7
  %5 = getelementptr inbounds nuw i8, ptr %a, i64 4
  %_14.1 = load i32, ptr %5, align 4, !noundef !37
  %count_odd.sroa.0.1.1 = add i32 %_14.1, %_14
  %6 = xor i32 %_14.1, 1
  %count_even.sroa.0.1.1 = add i32 %6, %4
  %_0.i.i.i.1 = icmp slt i32 %spec.select, %n
  br i1 %_0.i.i.i.1, label %bb5.2, label %bb6.loopexit

bb5.2:                                            ; preds = %bb7.1
  %_15.2 = zext nneg i32 %spec.select to i64
  br i1 %_0.i.i.i.not, label %bb7.2, label %panic

bb7.2:                                            ; preds = %bb5.2
  %7 = getelementptr inbounds nuw i32, ptr %a, i64 %_15.2
  %_14.2 = load i32, ptr %7, align 4, !noundef !37
  %count_odd.sroa.0.1.2 = add i32 %_14.2, %count_odd.sroa.0.1.1
  %8 = xor i32 %_14.2, 1
  %count_even.sroa.0.1.2 = add i32 %8, %count_even.sroa.0.1.1
  br label %bb6.loopexit

panic:                                            ; preds = %bb5.2
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_15.2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4e6bea02ec7109954ac197095409ed43) #24
  unreachable
}
