define noundef range(i32 -1, 2) i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %x) unnamed_addr #1 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_49 = icmp sgt i32 %n, 0
  br i1 %_49, label %bb2, label %bb7

bb7:                                              ; preds = %bb6, %start
; call std::io::stdio::_print
  tail call void @_ZN3std2io5stdio6_print17hba8f5eda1e4e495eE(ptr noundef nonnull @alloc_3cc4ab2e96aee8eb167dc6f61e3ddf68, ptr noundef nonnull inttoptr (i64 47 to ptr))
  br label %bb9

bb2:                                              ; preds = %start, %bb6
  %i.sroa.0.010 = phi i32 [ %2, %bb6 ], [ 0, %start ]
  %_8 = sext i32 %i.sroa.0.010 to i64
  %_10 = icmp ult i32 %i.sroa.0.010, 2
  br i1 %_10, label %bb3, label %panic

bb9:                                              ; preds = %bb3, %bb7
  %i.sroa.0.1 = phi i32 [ -1, %bb7 ], [ %i.sroa.0.010, %bb3 ]
  ret i32 %i.sroa.0.1

bb3:                                              ; preds = %bb2
  %1 = getelementptr inbounds nuw i32, ptr %arr, i64 %_8
  %_7 = load i32, ptr %1, align 4, !noundef !23
  %_6 = icmp eq i32 %_7, %x
  br i1 %_6, label %bb9, label %bb6

panic:                                            ; preds = %bb2
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_8, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_d9dbd73472563e0d734db9c301b84990) #18
  unreachable

bb6:                                              ; preds = %bb3
  %_12 = sub i32 %_7, %x
  %_11.sroa.0.0 = tail call i32 @llvm.abs.i32(i32 %_12, i1 false)
  %2 = add nuw i32 %_11.sroa.0.0, %i.sroa.0.010
  %_4 = icmp slt i32 %2, %n
  br i1 %_4, label %bb2, label %bb7
}
