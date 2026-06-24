define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_0.i.i.i11 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i11, label %bb7, label %bb6

bb6:                                              ; preds = %bb7, %bb7.1, %bb7.2, %start
  %ones.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %_15, %bb7 ], [ %2, %bb7.1 ], [ %5, %bb7.2 ]
  ret i32 %ones.sroa.0.0.lcssa

bb7:                                              ; preds = %start
  %_15 = load i32, ptr %arr, align 8, !noundef !37
  %_0.i.i.i.not = icmp eq i32 %n, 1
  %spec.select = select i1 %_0.i.i.i.not, i32 1, i32 2
  br i1 %_0.i.i.i.not, label %bb6, label %bb7.1

bb7.1:                                            ; preds = %bb7
  %1 = getelementptr inbounds nuw i8, ptr %arr, i64 4
  %_15.1 = load i32, ptr %1, align 4, !noundef !37
  %_13.1 = and i32 %_15.1, %_15
  %2 = xor i32 %_15.1, %_15
  %_0.i.i.i.1 = icmp slt i32 %spec.select, %n
  br i1 %_0.i.i.i.1, label %bb5.2, label %bb6

bb5.2:                                            ; preds = %bb7.1
  %_16.2 = zext nneg i32 %spec.select to i64
  br i1 %_0.i.i.i.not, label %bb7.2, label %panic

bb7.2:                                            ; preds = %bb5.2
  %3 = getelementptr inbounds nuw i32, ptr %arr, i64 %_16.2
  %_15.2 = load i32, ptr %3, align 4, !noundef !37
  %_19.2 = and i32 %_15.2, %_13.1
  %4 = xor i32 %2, %_19.2
  %5 = xor i32 %4, %_15.2
  br label %bb6

panic:                                            ; preds = %bb5.2
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_16.2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a0dd9d73dff2b639580cebb588e83844) #24
  unreachable
}
