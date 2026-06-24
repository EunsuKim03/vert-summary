define noundef range(i32 0, 2) i32 @f_gold(i64 %0, i64 %1, i32 noundef %m, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %arr2.sroa.0 = alloca i32, align 8
  %arr2.sroa.3 = alloca i32, align 4
  %arr2.sroa.0.0.extract.trunc = trunc i64 %1 to i32
  store i32 %arr2.sroa.0.0.extract.trunc, ptr %arr2.sroa.0, align 8
  %arr2.sroa.3.0.extract.shift = lshr i64 %1, 32
  %arr2.sroa.3.0.extract.trunc = trunc nuw i64 %arr2.sroa.3.0.extract.shift to i32
  store i32 %arr2.sroa.3.0.extract.trunc, ptr %arr2.sroa.3, align 4
  %_5 = icmp slt i32 %m, %n
  %2 = lshr i64 %1, 32
  %3 = trunc nuw i64 %2 to i32
  %4 = trunc i64 %1 to i32
  br i1 %_5, label %bb19, label %bb2

bb2:                                              ; preds = %start
  %arr1.sroa.4.0.extract.shift = lshr i64 %0, 32
  %arr1.sroa.4.0.extract.trunc = trunc nuw i64 %arr1.sroa.4.0.extract.shift to i32
  %arr1.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %spec.select = tail call i32 @llvm.smax.i32(i32 %arr1.sroa.4.0.extract.trunc, i32 %arr1.sroa.0.0.extract.trunc)
  %spec.select27 = tail call i32 @llvm.smin.i32(i32 %arr1.sroa.4.0.extract.trunc, i32 %arr1.sroa.0.0.extract.trunc)
  %_0.i.i.i.i.i12 = icmp slt i32 %3, %4
  br i1 %_0.i.i.i.i.i12, label %bb10.i.i.i13, label %_ZN5alloc5slice11stable_sort17h0a8ee441f8f9c833E.exit14

bb10.i.i.i13:                                     ; preds = %bb2
  store i32 %4, ptr %arr2.sroa.3, align 4, !alias.scope !1817
  store i32 %3, ptr %arr2.sroa.0, align 8, !alias.scope !1817, !noalias !1822
  br label %_ZN5alloc5slice11stable_sort17h0a8ee441f8f9c833E.exit14

_ZN5alloc5slice11stable_sort17h0a8ee441f8f9c833E.exit14: ; preds = %bb2, %bb10.i.i.i13
  %_30 = phi i32 [ %4, %bb2 ], [ %3, %bb10.i.i.i13 ]
  %_14 = sext i32 %n to i64
  %_1219 = icmp ne i32 %n, 0
  %_1520 = icmp ne i32 %m, 0
  %or.cond21 = and i1 %_1219, %_1520
  br i1 %or.cond21, label %bb7, label %bb15

bb15:                                             ; preds = %bb12, %bb12.1, %_ZN5alloc5slice11stable_sort17h0a8ee441f8f9c833E.exit14
  %_12.lcssa = phi i1 [ %_1219, %_ZN5alloc5slice11stable_sort17h0a8ee441f8f9c833E.exit14 ], [ %_12, %bb12 ], [ %_12.1, %bb12.1 ]
  %not._12 = xor i1 %_12.lcssa, true
  %. = zext i1 %not._12 to i32
  br label %bb19

bb19:                                             ; preds = %bb7, %bb7.1, %start, %bb15
  %_0.sroa.0.1 = phi i32 [ %., %bb15 ], [ 0, %start ], [ 0, %bb7.1 ], [ 0, %bb7 ]
  ret i32 %_0.sroa.0.1

panic:                                            ; preds = %bb12.1
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_36daa2705048a37e47864c6100e97aba) #18
  unreachable

bb7:                                              ; preds = %_ZN5alloc5slice11stable_sort17h0a8ee441f8f9c833E.exit14
  %_18 = tail call i8 @llvm.scmp.i8.i32(i32 %spec.select27, i32 %_30)
  switch i8 %_18, label %bb8 [
    i8 -1, label %bb12
    i8 0, label %bb10
    i8 1, label %bb19
  ]

bb8:                                              ; preds = %bb7.1, %bb7
  unreachable

bb10:                                             ; preds = %bb7
  br label %bb12

bb12:                                             ; preds = %bb7, %bb10
  %i.sroa.0.1.sroa.phi = phi ptr [ %arr2.sroa.3, %bb10 ], [ %arr2.sroa.0, %bb7 ]
  %i.sroa.0.1 = phi i64 [ 1, %bb10 ], [ 0, %bb7 ]
  %_12 = icmp ult i64 %i.sroa.0.1, %_14
  %_15 = icmp ugt i32 %m, 1
  %or.cond = and i1 %_12, %_15
  br i1 %or.cond, label %bb7.1, label %bb15

bb7.1:                                            ; preds = %bb12
  %_30.1 = load i32, ptr %i.sroa.0.1.sroa.phi, align 4, !noundef !23
  %_18.1 = tail call i8 @llvm.scmp.i8.i32(i32 %spec.select, i32 %_30.1)
  switch i8 %_18.1, label %bb8 [
    i8 -1, label %bb12.1
    i8 0, label %bb10.1
    i8 1, label %bb19
  ]

bb10.1:                                           ; preds = %bb7.1
  %5 = add nuw nsw i64 %i.sroa.0.1, 1
  br label %bb12.1

bb12.1:                                           ; preds = %bb10.1, %bb7.1
  %i.sroa.0.1.1 = phi i64 [ %5, %bb10.1 ], [ %i.sroa.0.1, %bb7.1 ]
  %_12.1 = icmp ult i64 %i.sroa.0.1.1, %_14
  %_15.1 = icmp ugt i32 %m, 2
  %or.cond.1 = and i1 %_12.1, %_15.1
  br i1 %or.cond.1, label %panic, label %bb15
}
