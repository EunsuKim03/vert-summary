define noundef range(i32 -1, 3) i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #0 {
start:
  %args = alloca [16 x i8], align 8
  %_32 = alloca [16 x i8], align 8
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %iter2 = add i32 %n, -1
  %_4428 = icmp sgt i32 %iter2, 0
  br i1 %_4428, label %bb21.lr.ph, label %bb16

bb21.lr.ph:                                       ; preds = %start
  %_5121 = icmp sgt i32 %n, 1
  br i1 %_5121, label %bb7.peel, label %panic

bb22:                                             ; preds = %bb7.peel
  br i1 %_19.peel, label %bb30, label %bb16

bb16:                                             ; preds = %start, %bb22
; call std::io::stdio::_print
  tail call void @_ZN3std2io5stdio6_print17hba8f5eda1e4e495eE(ptr noundef nonnull @alloc_e35ef0db3ff0e2e52d9de27516a202e9, ptr noundef nonnull inttoptr (i64 35 to ptr))
  br label %bb20

bb30:                                             ; preds = %bb22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_32)
  %_39 = zext nneg i32 %spec.select to i64
  store ptr %arr, ptr %_32, align 8
  %1 = getelementptr inbounds nuw i8, ptr %_32, i64 8
  store i64 %_39, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args)
  store ptr %_32, ptr %args, align 8
  %_42.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %args, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc1af96bc2d4cab3fE", ptr %_42.sroa.4.0..sroa_idx, align 8
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17hba8f5eda1e4e495eE(ptr noundef nonnull @alloc_61247b90e1706a3f65e71312b599d3d1, ptr noundef nonnull %args)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_32)
  br label %bb20

bb20:                                             ; preds = %bb16, %bb30
  %maxsize.sroa.0.0.lcssa54 = phi i32 [ -1, %bb16 ], [ %spec.select, %bb30 ]
  ret i32 %maxsize.sroa.0.0.lcssa54

bb7.peel:                                         ; preds = %bb21.lr.ph
  %2 = and i64 %0, 4294967295
  %_8 = icmp eq i64 %2, 0
  %_51.not = icmp eq i32 %n, 2
  %_15.peel = icmp ult i64 %0, 4294967296
  %_19.peel = xor i1 %_8, %_15.peel
  %spec.select = select i1 %_19.peel, i32 2, i32 -1
  br i1 %_51.not, label %bb22, label %panic3

panic:                                            ; preds = %bb21.lr.ph
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_9a773fcc3e883de64111d3dc1931b030) #18
  unreachable

panic3:                                           ; preds = %bb7.peel
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_ba62de7ca345cedcea20b56148fe58ba) #18
  unreachable
}
