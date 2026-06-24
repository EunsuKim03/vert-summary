define noundef range(i32 0, 2) i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %switch = icmp ult i32 %n, 2
  br i1 %switch, label %bb14, label %bb3

bb3:                                              ; preds = %start
  %1 = load i32, ptr %arr, align 8, !noundef !37
  %_8 = sext i32 %n to i64
  br label %bb5

bb5:                                              ; preds = %bb10, %bb3
  %iter.sroa.0.0 = phi i64 [ 1, %bb3 ], [ %spec.select, %bb10 ]
  %prev.sroa.0.0 = phi i32 [ %1, %bb3 ], [ %_15, %bb10 ]
  %_0.i.i.i = icmp ult i64 %iter.sroa.0.0, %_8
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %iter.sroa.0.0, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb8, label %bb14

bb8:                                              ; preds = %bb5
  %_16 = icmp ult i64 %iter.sroa.0.0, 2
  br i1 %_16, label %bb10, label %panic

bb14:                                             ; preds = %bb10, %bb5, %start
  %_0.sroa.0.0 = phi i32 [ 1, %start ], [ 1, %bb5 ], [ 0, %bb10 ]
  ret i32 %_0.sroa.0.0

bb10:                                             ; preds = %bb8
  %2 = getelementptr inbounds nuw i32, ptr %arr, i64 %iter.sroa.0.0
  %_15 = load i32, ptr %2, align 4, !noundef !37
  %_14 = icmp sgt i32 %prev.sroa.0.0, %_15
  br i1 %_14, label %bb14, label %bb5

panic:                                            ; preds = %bb8
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %iter.sroa.0.0, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_8d921cfed0b8f8443a578ad0733d632c) #24
  unreachable
}
