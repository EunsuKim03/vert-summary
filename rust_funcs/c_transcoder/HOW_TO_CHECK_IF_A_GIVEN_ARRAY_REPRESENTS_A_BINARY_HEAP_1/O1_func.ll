define noundef range(i32 0, 2) i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %n1 = sext i32 %n to i64
  %_7 = add nsw i64 %n1, -2
  %_66 = lshr i64 %_7, 1
  %_20 = icmp ugt i32 %n, 2
  br label %bb2

bb2:                                              ; preds = %bb10, %start
  %iter.sroa.0.0 = phi i64 [ 0, %start ], [ %spec.select, %bb10 ]
  %_0.i.i.i = icmp ult i64 %iter.sroa.0.0, %_66
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %iter.sroa.0.0, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb5, label %bb18

bb5:                                              ; preds = %bb2
  %_16 = shl i64 %iter.sroa.0.0, 1
  %_15 = or disjoint i64 %_16, 1
  %_17 = icmp eq i64 %_16, 0
  br i1 %_17, label %bb7, label %panic

bb18:                                             ; preds = %bb8, %bb2
  %_0.sroa.0.0 = phi i32 [ 1, %bb2 ], [ 0, %bb8 ]
  ret i32 %_0.sroa.0.0

bb7:                                              ; preds = %bb5
  %_19 = icmp ult i64 %iter.sroa.0.0, 2
  br i1 %_19, label %bb8, label %panic2

panic:                                            ; preds = %bb5
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_15, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_803520d081f3a498bb23584d0ae5c4e7) #24
  unreachable

bb8:                                              ; preds = %bb7
  %1 = getelementptr inbounds nuw i32, ptr %arr, i64 %_15
  %_14 = load i32, ptr %1, align 4, !noundef !37
  %2 = getelementptr inbounds nuw i32, ptr %arr, i64 %iter.sroa.0.0
  %_18 = load i32, ptr %2, align 4, !noundef !37
  %_13 = icmp sgt i32 %_14, %_18
  br i1 %_13, label %bb18, label %bb10

panic2:                                           ; preds = %bb7
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %iter.sroa.0.0, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_ca22d24bb754822f04e574fdd5de64b6) #24
  unreachable

bb10:                                             ; preds = %bb8
  br i1 %_20, label %panic3, label %bb2

panic3:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_8d98252c80e7a33808f83bbc778b7f7a) #24
  unreachable
}
