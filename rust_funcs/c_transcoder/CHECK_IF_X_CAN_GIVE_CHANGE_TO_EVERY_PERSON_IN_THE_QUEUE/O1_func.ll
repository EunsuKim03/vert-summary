define noundef range(i32 0, 2) i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 {
start:
  %notes = alloca [8 x i8], align 8
  store i64 %0, ptr %notes, align 8
  %_0.i.i.i12 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i12, label %bb7, label %bb26

bb26:                                             ; preds = %bb7, %bb14.2, %bb7.1, %bb24, %bb24.1, %bb11.2, %bb24.2, %start
  %_0.sroa.0.0 = phi i32 [ 1, %start ], [ 1, %bb24 ], [ 1, %bb24.1 ], [ 0, %bb11.2 ], [ 1, %bb24.2 ], [ 0, %bb7 ], [ 0, %bb7.1 ], [ 0, %bb14.2 ]
  ret i32 %_0.sroa.0.0

bb7:                                              ; preds = %start
  %_13 = load i32, ptr %notes, align 8, !noundef !37
  %cond = icmp eq i32 %_13, 5
  br i1 %cond, label %bb24, label %bb26

panic:                                            ; preds = %bb5.2
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_14.2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_9938ce9edb91e671d397c9951ae6e6a2) #24
  unreachable

bb24:                                             ; preds = %bb7
  %_0.i.i.i.not = icmp eq i32 %n, 1
  %spec.select = select i1 %_0.i.i.i.not, i32 1, i32 2
  br i1 %_0.i.i.i.not, label %bb26, label %bb7.1

bb7.1:                                            ; preds = %bb24
  %1 = getelementptr inbounds nuw i8, ptr %notes, i64 4
  %_13.1 = load i32, ptr %1, align 4, !noundef !37
  switch i32 %_13.1, label %bb26 [
    i32 5, label %bb8.1
    i32 10, label %bb24.1
  ]

bb8.1:                                            ; preds = %bb7.1
  br label %bb24.1

bb24.1:                                           ; preds = %bb7.1, %bb8.1
  %_17.2 = phi i1 [ true, %bb8.1 ], [ false, %bb7.1 ]
  %_21.2 = phi i1 [ false, %bb8.1 ], [ true, %bb7.1 ]
  %_0.i.i.i.1 = icmp slt i32 %spec.select, %n
  br i1 %_0.i.i.i.1, label %bb5.2, label %bb26

bb5.2:                                            ; preds = %bb24.1
  %_14.2 = zext nneg i32 %spec.select to i64
  br i1 %_0.i.i.i.not, label %bb7.2, label %panic

bb7.2:                                            ; preds = %bb5.2
  %2 = getelementptr inbounds nuw i32, ptr %notes, i64 %_14.2
  %_13.2 = load i32, ptr %2, align 4, !noundef !37
  switch i32 %_13.2, label %bb14.2 [
    i32 5, label %bb24.2
    i32 10, label %bb11.2
  ]

bb11.2:                                           ; preds = %bb7.2
  br i1 %_17.2, label %bb24.2, label %bb26

bb14.2:                                           ; preds = %bb7.2
  %or.cond.2 = select i1 %_17.2, i1 %_21.2, i1 false
  br i1 %or.cond.2, label %bb24.2, label %bb26

bb24.2:                                           ; preds = %bb14.2, %bb7.2, %bb11.2
  br label %bb26
}
