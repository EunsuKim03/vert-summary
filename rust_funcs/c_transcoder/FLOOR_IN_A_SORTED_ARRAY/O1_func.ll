define noundef i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %x) unnamed_addr #3 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_7 = sext i32 %n to i64
  %_6 = add nsw i64 %_7, -1
  %_8 = icmp ult i64 %_6, 2
  br i1 %_8, label %bb1, label %panic

bb1:                                              ; preds = %start
  %1 = getelementptr inbounds nuw i32, ptr %arr, i64 %_6
  %_5 = load i32, ptr %1, align 4, !noundef !37
  %_4.not = icmp slt i32 %x, %_5
  br i1 %_4.not, label %bb3, label %bb2

panic:                                            ; preds = %start
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_6, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_6404a44fa4ef95d4358b8a2729ccab3c) #24
  unreachable

bb3:                                              ; preds = %bb1
  %_10 = load i32, ptr %arr, align 8, !noundef !37
  %_9 = icmp slt i32 %x, %_10
  br i1 %_9, label %bb15, label %bb7

bb2:                                              ; preds = %bb1
  %2 = add i32 %n, -1
  br label %bb15

bb7:                                              ; preds = %bb3, %bb12
  %iter.sroa.0.0 = phi i32 [ %spec.select, %bb12 ], [ 1, %bb3 ]
  %_0.i.i.i = icmp slt i32 %iter.sroa.0.0, %n
  %3 = zext i1 %_0.i.i.i to i32
  %spec.select = add nuw nsw i32 %iter.sroa.0.0, %3
  br i1 %_0.i.i.i, label %bb10, label %bb15

bb10:                                             ; preds = %bb7
  %_20 = zext nneg i32 %iter.sroa.0.0 to i64
  %_21 = icmp samesign ult i32 %iter.sroa.0.0, 2
  br i1 %_21, label %bb12, label %panic1

bb15:                                             ; preds = %bb7, %bb3, %bb2, %bb13
  %_0.sroa.0.0 = phi i32 [ %2, %bb2 ], [ %5, %bb13 ], [ -1, %bb3 ], [ -1, %bb7 ]
  ret i32 %_0.sroa.0.0

bb12:                                             ; preds = %bb10
  %4 = getelementptr inbounds nuw i32, ptr %arr, i64 %_20
  %_19 = load i32, ptr %4, align 4, !noundef !37
  %_18 = icmp sgt i32 %_19, %x
  br i1 %_18, label %bb13, label %bb7

panic1:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_20, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_73e5a2c70922e3ef7c1ab2fc18c99199) #24
  unreachable

bb13:                                             ; preds = %bb12
  %5 = add nsw i32 %iter.sroa.0.0, -1
  br label %bb15
}
