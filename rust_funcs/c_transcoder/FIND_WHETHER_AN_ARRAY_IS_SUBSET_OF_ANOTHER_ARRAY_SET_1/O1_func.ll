define noundef range(i32 0, 2) i32 @f_gold(ptr dead_on_return noalias noundef readonly align 4 captures(none) dereferenceable(40) %arr1, ptr dead_on_return noalias noundef readonly align 4 captures(none) dereferenceable(40) %arr2, i32 noundef %m, i32 noundef %n) unnamed_addr #3 {
start:
  %_26 = icmp eq i32 %m, 0
  br label %bb2

bb2:                                              ; preds = %bb15, %start
  %iter.sroa.0.0 = phi i32 [ 0, %start ], [ %spec.select, %bb15 ]
  %_0.i.i.i = icmp slt i32 %iter.sroa.0.0, %n
  %0 = zext i1 %_0.i.i.i to i32
  %spec.select = add nuw nsw i32 %iter.sroa.0.0, %0
  br i1 %_0.i.i.i, label %bb8.preheader, label %bb18

bb8.preheader:                                    ; preds = %bb2
  %_21 = zext nneg i32 %iter.sroa.0.0 to i64
  %_22 = icmp samesign ult i32 %iter.sroa.0.0, 10
  %1 = getelementptr inbounds nuw i32, ptr %arr2, i64 %_21
  br label %bb8

bb18:                                             ; preds = %bb15, %bb2
  %_0.sroa.0.0 = phi i32 [ 1, %bb2 ], [ 0, %bb15 ]
  ret i32 %_0.sroa.0.0

bb8:                                              ; preds = %bb8.preheader, %bb12
  %iter1.sroa.0.0 = phi i32 [ %spec.select13, %bb12 ], [ 0, %bb8.preheader ]
  %_0.i.i.i8 = icmp slt i32 %iter1.sroa.0.0, %m
  %2 = zext i1 %_0.i.i.i8 to i32
  %spec.select13 = add nuw nsw i32 %iter1.sroa.0.0, %2
  br i1 %_0.i.i.i8, label %bb10, label %bb15

bb10:                                             ; preds = %bb8
  br i1 %_22, label %bb11, label %panic

bb15:                                             ; preds = %bb12, %bb8
  br i1 %_26, label %bb18, label %bb2

bb11:                                             ; preds = %bb10
  %_24 = zext nneg i32 %iter1.sroa.0.0 to i64
  %_25 = icmp samesign ult i32 %iter1.sroa.0.0, 10
  br i1 %_25, label %bb12, label %panic2

panic:                                            ; preds = %bb10
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_21, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_ae631daa32209465b03b6afebc3eda83) #24
  unreachable

bb12:                                             ; preds = %bb11
  %_20 = load i32, ptr %1, align 4, !noundef !37
  %3 = getelementptr inbounds nuw i32, ptr %arr1, i64 %_24
  %_23 = load i32, ptr %3, align 4, !noundef !37
  %_19 = icmp eq i32 %_20, %_23
  br i1 %_19, label %bb15, label %bb8

panic2:                                           ; preds = %bb11
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_24, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_9ef82c06ba71a5075fc6cce21df16b33) #24
  unreachable
}
