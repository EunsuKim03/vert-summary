define noundef range(i32 -1, 3) i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 {
start:
  %args = alloca [32 x i8], align 8
  %_32 = alloca [4 x i8], align 4
  %startindex = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %startindex)
  %iter2 = add i32 %n, -1
  %_4030 = icmp sgt i32 %iter2, 0
  br i1 %_4030, label %bb21.lr.ph, label %bb16

bb21.lr.ph:                                       ; preds = %start
  %_4719 = icmp sgt i32 %n, 1
  br i1 %_4719, label %bb7.peel, label %panic

bb22:                                             ; preds = %bb7.peel
  store i32 0, ptr %startindex, align 4
  br i1 %_18.peel, label %bb17, label %bb16

bb17:                                             ; preds = %bb22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_32)
  %_33 = add nsw i32 %spec.select, -1
  store i32 %_33, ptr %_32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %args)
  store ptr %startindex, ptr %args, align 8
  %_37.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %args, i64 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h7fd7b150b5fcea6eE", ptr %_37.sroa.4.0..sroa_idx, align 8
  %1 = getelementptr inbounds nuw i8, ptr %args, i64 16
  store ptr %_32, ptr %1, align 8
  %_38.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %args, i64 24
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h7fd7b150b5fcea6eE", ptr %_38.sroa.4.0..sroa_idx, align 8
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17hba8f5eda1e4e495eE(ptr noundef nonnull @alloc_062de2de9aa914bcbbefc0d6493f1ca4, ptr noundef nonnull %args)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_32)
  br label %bb20

bb16:                                             ; preds = %start, %bb22
; call std::io::stdio::_print
  tail call void @_ZN3std2io5stdio6_print17hba8f5eda1e4e495eE(ptr noundef nonnull @alloc_e35ef0db3ff0e2e52d9de27516a202e9, ptr noundef nonnull inttoptr (i64 35 to ptr))
  br label %bb20

bb20:                                             ; preds = %bb16, %bb17
  %maxsize.sroa.0.0.lcssa63 = phi i32 [ -1, %bb16 ], [ %spec.select, %bb17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %startindex)
  ret i32 %maxsize.sroa.0.0.lcssa63

bb7.peel:                                         ; preds = %bb21.lr.ph
  %2 = and i64 %0, 4294967295
  %_8 = icmp eq i64 %2, 0
  %_47.not = icmp eq i32 %n, 2
  %_14.peel = icmp ult i64 %0, 4294967296
  %_18.peel = xor i1 %_8, %_14.peel
  %spec.select = select i1 %_18.peel, i32 2, i32 -1
  br i1 %_47.not, label %bb22, label %panic3

panic:                                            ; preds = %bb21.lr.ph
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_ccb76ea53e25ce13f767e5058e0d9519) #18
  unreachable

panic3:                                           ; preds = %bb7.peel
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_6f12c7b39e4c9931c4374f0860391a57) #18
  unreachable
}
