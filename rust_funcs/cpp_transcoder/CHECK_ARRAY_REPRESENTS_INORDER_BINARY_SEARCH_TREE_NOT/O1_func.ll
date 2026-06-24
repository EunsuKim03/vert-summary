define noundef range(i32 0, 2) i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %switch = icmp ult i32 %n, 2
  br i1 %switch, label %bb14, label %bb5

bb5:                                              ; preds = %start, %bb11
  %iter.sroa.0.0 = phi i32 [ %spec.select, %bb11 ], [ 1, %start ]
  %_0.i.i.i = icmp slt i32 %iter.sroa.0.0, %n
  %1 = zext i1 %_0.i.i.i to i32
  %spec.select = add nuw nsw i32 %iter.sroa.0.0, %1
  br i1 %_0.i.i.i, label %bb8, label %bb14

bb8:                                              ; preds = %bb5
  %_15 = zext nneg i32 %iter.sroa.0.0 to i64
  %_14 = add nsw i64 %_15, -1
  %_16 = icmp samesign ult i32 %iter.sroa.0.0, 3
  br i1 %_16, label %bb10, label %panic

bb14:                                             ; preds = %bb11, %bb5, %start
  %_0.sroa.0.0 = phi i32 [ 1, %start ], [ 1, %bb5 ], [ 0, %bb11 ]
  ret i32 %_0.sroa.0.0

bb10:                                             ; preds = %bb8
  %_18.not = icmp eq i32 %iter.sroa.0.0, 2
  br i1 %_18.not, label %panic1, label %bb11

panic:                                            ; preds = %bb8
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_14, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_9a3b8d8505ff7f328a76038ccdd853c3) #24
  unreachable

bb11:                                             ; preds = %bb10
  %2 = getelementptr inbounds nuw i32, ptr %arr, i64 %_14
  %_13 = load i32, ptr %2, align 4, !noundef !37
  %3 = getelementptr inbounds nuw i32, ptr %arr, i64 %_15
  %_17 = load i32, ptr %3, align 4, !noundef !37
  %_12 = icmp sgt i32 %_13, %_17
  br i1 %_12, label %bb14, label %bb5

panic1:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_15, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_1de4dca7228c0e7e7b08d10065fd390d) #24
  unreachable
}
