define noundef range(i32 0, 2) i32 @f_gold(i64 %0, i64 %1, i32 noundef %m, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %arr2.sroa.0 = alloca i32, align 8
  %arr2.sroa.5 = alloca i32, align 4
  %arr2.sroa.0.0.extract.trunc = trunc i64 %1 to i32
  store i32 %arr2.sroa.0.0.extract.trunc, ptr %arr2.sroa.0, align 8
  %arr2.sroa.5.0.extract.shift = lshr i64 %1, 32
  %arr2.sroa.5.0.extract.trunc = trunc nuw i64 %arr2.sroa.5.0.extract.shift to i32
  store i32 %arr2.sroa.5.0.extract.trunc, ptr %arr2.sroa.5, align 4
  %_5 = icmp slt i32 %m, %n
  br i1 %_5, label %bb22, label %bb2

bb2:                                              ; preds = %start
  %arr1.sroa.4.0.extract.shift = lshr i64 %0, 32
  %arr1.sroa.4.0.extract.trunc = trunc nuw i64 %arr1.sroa.4.0.extract.shift to i32
  %arr1.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %spec.select = tail call i32 @llvm.smax.i32(i32 %arr1.sroa.4.0.extract.trunc, i32 %arr1.sroa.0.0.extract.trunc)
  %spec.select26 = tail call i32 @llvm.smin.i32(i32 %arr1.sroa.4.0.extract.trunc, i32 %arr1.sroa.0.0.extract.trunc)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2605)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2608)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2610)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2613)
  %arr2.sroa.5.0.arr2.sroa.5.4._3.i.i.i.i.i.i10 = load i32, ptr %arr2.sroa.5, align 4, !alias.scope !2615, !noalias !2622, !noundef !37
  %arr2.sroa.0.0.arr2.sroa.0.0._4.i.i.i.i.i.i11 = load i32, ptr %arr2.sroa.0, align 8, !alias.scope !2623, !noalias !2624, !noundef !37
  %_0.i.i.i.i.i.i12 = icmp slt i32 %arr2.sroa.5.0.arr2.sroa.5.4._3.i.i.i.i.i.i10, %arr2.sroa.0.0.arr2.sroa.0.0._4.i.i.i.i.i.i11
  br i1 %_0.i.i.i.i.i.i12, label %bb4.i.i.i.i13, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h6d402ef7b25803c2E.exit14"

bb4.i.i.i.i13:                                    ; preds = %bb2
  store i32 %arr2.sroa.0.0.arr2.sroa.0.0._4.i.i.i.i.i.i11, ptr %arr2.sroa.5, align 4, !alias.scope !2625
  store i32 %arr2.sroa.5.0.arr2.sroa.5.4._3.i.i.i.i.i.i10, ptr %arr2.sroa.0, align 8, !alias.scope !2625, !noalias !2626
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h6d402ef7b25803c2E.exit14"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h6d402ef7b25803c2E.exit14": ; preds = %bb2, %bb4.i.i.i.i13
  %_16 = sext i32 %n to i64
  %_1419 = icmp ne i32 %n, 0
  %_1720 = icmp ne i32 %m, 0
  %or.cond21 = and i1 %_1419, %_1720
  br i1 %or.cond21, label %bb9, label %bb18

bb18:                                             ; preds = %bb15, %bb15.1, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h6d402ef7b25803c2E.exit14"
  %_14.lcssa = phi i1 [ %_1419, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h6d402ef7b25803c2E.exit14" ], [ %_14, %bb15 ], [ %_14.1, %bb15.1 ]
  %not._14 = xor i1 %_14.lcssa, true
  %. = zext i1 %not._14 to i32
  br label %bb22

bb22:                                             ; preds = %bb9, %bb9.1, %start, %bb18
  %_0.sroa.0.1 = phi i32 [ %., %bb18 ], [ 0, %start ], [ 0, %bb9.1 ], [ 0, %bb9 ]
  ret i32 %_0.sroa.0.1

bb9:                                              ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h6d402ef7b25803c2E.exit14"
  %arr2.sroa.0.0.arr2.sroa.0.0._4.i = load i32, ptr %arr2.sroa.0, align 8, !alias.scope !2631, !noalias !2634, !noundef !37
  %_0.i = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32 %spec.select26, i32 %arr2.sroa.0.0.arr2.sroa.0.0._4.i)
  switch i8 %_0.i, label %bb11 [
    i8 -1, label %bb15
    i8 0, label %bb13
    i8 1, label %bb22
  ]

bb11:                                             ; preds = %bb9.1, %bb9
  unreachable

bb13:                                             ; preds = %bb9
  br label %bb15

bb15:                                             ; preds = %bb9, %bb13
  %i.sroa.0.1.sroa.phi = phi ptr [ %arr2.sroa.5, %bb13 ], [ %arr2.sroa.0, %bb9 ]
  %i.sroa.0.1 = phi i64 [ 1, %bb13 ], [ 0, %bb9 ]
  %_14 = icmp ult i64 %i.sroa.0.1, %_16
  %_17 = icmp ugt i32 %m, 1
  %or.cond = and i1 %_14, %_17
  br i1 %or.cond, label %bb9.1, label %bb18

bb9.1:                                            ; preds = %bb15
  %_4.i.1 = load i32, ptr %i.sroa.0.1.sroa.phi, align 4, !alias.scope !2636, !noalias !2638, !noundef !37
  %_0.i.1 = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32 %spec.select, i32 %_4.i.1)
  switch i8 %_0.i.1, label %bb11 [
    i8 -1, label %bb15.1
    i8 0, label %bb13.1
    i8 1, label %bb22
  ]

bb13.1:                                           ; preds = %bb9.1
  %2 = add nuw nsw i64 %i.sroa.0.1, 1
  br label %bb15.1

bb15.1:                                           ; preds = %bb13.1, %bb9.1
  %i.sroa.0.1.1 = phi i64 [ %2, %bb13.1 ], [ %i.sroa.0.1, %bb9.1 ]
  %_14.1 = icmp ult i64 %i.sroa.0.1.1, %_16
  %_17.1 = icmp ugt i32 %m, 2
  %or.cond.1 = and i1 %_14.1, %_17.1
  br i1 %or.cond.1, label %bb7.2, label %bb18

bb7.2:                                            ; preds = %bb15.1
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_36daa2705048a37e47864c6100e97aba) #24
  unreachable
}
