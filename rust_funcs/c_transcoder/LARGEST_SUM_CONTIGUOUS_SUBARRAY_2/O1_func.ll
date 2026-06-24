define noundef i32 @f_gold(i64 %0, i32 noundef %size) unnamed_addr #3 {
start:
  %a = alloca [8 x i8], align 8
  store i64 %0, ptr %a, align 8
  %1 = load i32, ptr %a, align 8, !noundef !37
  %_5 = sext i32 %size to i64
  %_0.i.i.i9.not = icmp eq i32 %size, 0
  br i1 %_0.i.i.i9.not, label %bb6, label %bb7

bb6:                                              ; preds = %bb7, %bb7.1, %bb7.2, %start
  %max_so_far.sroa.0.0.lcssa = phi i32 [ %1, %start ], [ %x.y.i5, %bb7 ], [ %x.y.i5.1, %bb7.1 ], [ %x.y.i5.2, %bb7.2 ]
  ret i32 %max_so_far.sroa.0.0.lcssa

bb7:                                              ; preds = %start
  %_12 = load i32, ptr %a, align 8, !noundef !37
  %_14 = add i32 %_12, %1
  %x.y.i = tail call noundef i32 @llvm.smax.i32(i32 %_12, i32 %_14)
  %x.y.i5 = tail call noundef i32 @llvm.smax.i32(i32 %1, i32 %x.y.i)
  %_0.i.i.i.not = icmp eq i32 %size, 1
  %spec.select = select i1 %_0.i.i.i.not, i64 1, i64 2
  br i1 %_0.i.i.i.not, label %bb6, label %bb7.1

bb7.1:                                            ; preds = %bb7
  %2 = getelementptr inbounds nuw i8, ptr %a, i64 4
  %_12.1 = load i32, ptr %2, align 4, !noundef !37
  %_14.1 = add i32 %_12.1, %x.y.i
  %x.y.i.1 = tail call noundef i32 @llvm.smax.i32(i32 %_12.1, i32 %_14.1)
  %x.y.i5.1 = tail call noundef i32 @llvm.smax.i32(i32 %x.y.i5, i32 %x.y.i.1)
  %_0.i.i.i.1 = icmp ult i64 %spec.select, %_5
  br i1 %_0.i.i.i.1, label %bb5.2, label %bb6

bb5.2:                                            ; preds = %bb7.1
  br i1 %_0.i.i.i.not, label %bb7.2, label %panic

bb7.2:                                            ; preds = %bb5.2
  %3 = getelementptr inbounds nuw i32, ptr %a, i64 %spec.select
  %_12.2 = load i32, ptr %3, align 4, !noundef !37
  %_14.2 = add i32 %_12.2, %x.y.i.1
  %x.y.i.2 = tail call noundef i32 @llvm.smax.i32(i32 %_12.2, i32 %_14.2)
  %x.y.i5.2 = tail call noundef i32 @llvm.smax.i32(i32 %x.y.i5.1, i32 %x.y.i.2)
  br label %bb6

panic:                                            ; preds = %bb5.2
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %spec.select, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_41c112c02773a421ed5ab39c60d56356) #24
  unreachable
}
