define noundef i32 @f_gold(i64 %0, i64 %1, i32 noundef %m, i32 noundef %n, i32 noundef %x) unnamed_addr #3 {
start:
  %arr2 = alloca [8 x i8], align 8
  %arr1 = alloca [8 x i8], align 8
  store i64 %0, ptr %arr1, align 8
  store i64 %1, ptr %arr2, align 8
  %_8 = sext i32 %m to i64
  %_0.i.i.i34.not = icmp eq i32 %m, 0
  br i1 %_0.i.i.i34.not, label %bb6, label %bb5.lr.ph

bb5.lr.ph:                                        ; preds = %start
  %_16 = sext i32 %n to i64
  %_0.i.i.i1229 = icmp ne i32 %n, 0
  %_0.i1.i.i1530 = zext i1 %_0.i.i.i1229 to i64
  br label %bb5

bb2.loopexit:                                     ; preds = %bb13, %bb5
  %count.sroa.0.1.lcssa = phi i32 [ %count.sroa.0.037, %bb5 ], [ %spec.select, %bb13 ]
  %_0.i.i.i = icmp ult i64 %spec.select1738, %_8
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select17 = add nuw i64 %spec.select1738, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb5, label %bb6

bb5:                                              ; preds = %bb5.lr.ph, %bb2.loopexit
  %spec.select1738 = phi i64 [ 1, %bb5.lr.ph ], [ %spec.select17, %bb2.loopexit ]
  %count.sroa.0.037 = phi i32 [ 0, %bb5.lr.ph ], [ %count.sroa.0.1.lcssa, %bb2.loopexit ]
  %iter.sroa.0.036 = phi i64 [ 0, %bb5.lr.ph ], [ %spec.select1738, %bb2.loopexit ]
  br i1 %_0.i.i.i1229, label %bb10.lr.ph, label %bb2.loopexit

bb10.lr.ph:                                       ; preds = %bb5
  %_25 = icmp ult i64 %iter.sroa.0.036, 2
  br i1 %_25, label %bb10.lr.ph.split, label %panic

bb10.lr.ph.split:                                 ; preds = %bb10.lr.ph
  %2 = getelementptr inbounds nuw i32, ptr %arr1, i64 %iter.sroa.0.036
  %_24 = load i32, ptr %2, align 4, !noundef !37
  br label %bb10

bb6:                                              ; preds = %bb2.loopexit, %start
  %count.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %count.sroa.0.1.lcssa, %bb2.loopexit ]
  ret i32 %count.sroa.0.0.lcssa

bb10:                                             ; preds = %bb10.lr.ph.split, %bb13
  %spec.select1933 = phi i64 [ %_0.i1.i.i1530, %bb10.lr.ph.split ], [ %spec.select19, %bb13 ]
  %count.sroa.0.132 = phi i32 [ %count.sroa.0.037, %bb10.lr.ph.split ], [ %spec.select, %bb13 ]
  %iter1.sroa.0.031 = phi i64 [ 0, %bb10.lr.ph.split ], [ %spec.select1933, %bb13 ]
  %_27 = icmp ult i64 %iter1.sroa.0.031, 2
  br i1 %_27, label %bb13, label %panic2

panic:                                            ; preds = %bb10.lr.ph
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %iter.sroa.0.036, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_16488f17820ffb0be74f4a419be6a2fd) #24
  unreachable

bb13:                                             ; preds = %bb10
  %3 = getelementptr inbounds nuw i32, ptr %arr2, i64 %iter1.sroa.0.031
  %_26 = load i32, ptr %3, align 4, !noundef !37
  %_23 = add i32 %_26, %_24
  %_22 = icmp eq i32 %_23, %x
  %4 = zext i1 %_22 to i32
  %spec.select = add i32 %count.sroa.0.132, %4
  %_0.i.i.i12 = icmp ult i64 %spec.select1933, %_16
  %_0.i1.i.i15 = zext i1 %_0.i.i.i12 to i64
  %spec.select19 = add nuw i64 %spec.select1933, %_0.i1.i.i15
  br i1 %_0.i.i.i12, label %bb10, label %bb2.loopexit

panic2:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %iter1.sroa.0.031, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e6aa638230eeb46fd09db957963dd431) #24
  unreachable
}
