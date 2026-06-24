define noundef range(i32 -1, -2147483648) i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 {
start:
  %args = alloca [32 x i8], align 8
  %_43 = alloca [4 x i8], align 4
  %startindex = alloca [4 x i8], align 4
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %startindex)
  store i32 0, ptr %startindex, align 4
  %_6 = add i32 %n, -1
  %_0.i.i.i45 = icmp sgt i32 %_6, 0
  br i1 %_0.i.i.i45, label %bb7, label %bb6

bb2.loopexit:                                     ; preds = %bb14.preheader, %bb7
  %maxsize.sroa.0.1.lcssa = phi i32 [ -1, %bb7 ], [ %maxsize.sroa.0.2, %bb14.preheader ]
  %_0.i.i.i.not = icmp eq i32 %_6, 1
  %spec.select = select i1 %_0.i.i.i.not, i32 1, i32 2
  br i1 %_0.i.i.i.not, label %bb6, label %bb7.1

bb7.1:                                            ; preds = %bb2.loopexit
  %_0.i.i.i1432.1 = icmp sgt i32 %n, 2
  br i1 %_0.i.i.i1432.1, label %panic2, label %bb2.loopexit.1

bb2.loopexit.1:                                   ; preds = %bb7.1
  %_0.i.i.i.1 = icmp slt i32 %spec.select, %_6
  br i1 %_0.i.i.i.1, label %bb5.2, label %bb6

bb5.2:                                            ; preds = %bb2.loopexit.1
  br i1 %_0.i.i.i.not, label %bb7.2, label %panic

bb7.2:                                            ; preds = %bb5.2
  %_19.2 = add nuw nsw i32 %spec.select, 1
  %_0.i.i.i1432.2 = icmp slt i32 %_19.2, %n
  br i1 %_0.i.i.i1432.2, label %bb14.2, label %bb6

bb14.2:                                           ; preds = %bb7.2
  %_27.2 = zext nneg i32 %_19.2 to i64
  br label %panic2

bb6:                                              ; preds = %bb2.loopexit, %bb2.loopexit.1, %bb7.2, %start
  %maxsize.sroa.0.0.lcssa = phi i32 [ -1, %start ], [ %maxsize.sroa.0.1.lcssa, %bb7.2 ], [ %maxsize.sroa.0.1.lcssa, %bb2.loopexit.1 ], [ %maxsize.sroa.0.1.lcssa, %bb2.loopexit ]
  store i32 0, ptr %startindex, align 4
  %_35 = icmp eq i32 %maxsize.sroa.0.0.lcssa, -1
  br i1 %_35, label %bb25, label %bb26

bb26:                                             ; preds = %bb6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_43)
  %_44 = add i32 %maxsize.sroa.0.0.lcssa, -1
  store i32 %_44, ptr %_43, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %args)
  store ptr %startindex, ptr %args, align 8
  %_48.sroa.4.0.args.sroa_idx = getelementptr inbounds nuw i8, ptr %args, i64 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h7fd7b150b5fcea6eE", ptr %_48.sroa.4.0.args.sroa_idx, align 8
  %1 = getelementptr inbounds nuw i8, ptr %args, i64 16
  store ptr %_43, ptr %1, align 8
  %_49.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %args, i64 24
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h7fd7b150b5fcea6eE", ptr %_49.sroa.4.0..sroa_idx, align 8
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17hba8f5eda1e4e495eE(ptr noundef nonnull @alloc_062de2de9aa914bcbbefc0d6493f1ca4, ptr noundef nonnull %args)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_43)
  br label %bb33

bb25:                                             ; preds = %bb6
; call std::io::stdio::_print
  tail call void @_ZN3std2io5stdio6_print17hba8f5eda1e4e495eE(ptr noundef nonnull @alloc_e35ef0db3ff0e2e52d9de27516a202e9, ptr noundef nonnull inttoptr (i64 35 to ptr))
  br label %bb33

bb33:                                             ; preds = %bb25, %bb26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %startindex)
  ret i32 %maxsize.sroa.0.0.lcssa

bb7:                                              ; preds = %start
  %_0.i.i.i1432 = icmp sgt i32 %n, 1
  br i1 %_0.i.i.i1432, label %bb14.preheader, label %bb2.loopexit

bb14.preheader:                                   ; preds = %bb7
  %_14 = load i32, ptr %arr, align 8, !noundef !37
  %_13 = icmp eq i32 %_14, 0
  %2 = getelementptr inbounds nuw i8, ptr %arr, i64 4
  %_26 = load i32, ptr %2, align 4, !noundef !37
  %_25 = icmp eq i32 %_26, 0
  %_29 = xor i1 %_13, %_25
  %maxsize.sroa.0.2 = select i1 %_29, i32 2, i32 -1
  %_0.i.i.i14.not = icmp eq i32 %n, 2
  br i1 %_0.i.i.i14.not, label %bb2.loopexit, label %panic2

panic:                                            ; preds = %bb5.2
  %_15.2 = zext nneg i32 %spec.select to i64
  store i32 0, ptr %startindex, align 4
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_15.2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_ccb76ea53e25ce13f767e5058e0d9519) #24
  unreachable

panic2:                                           ; preds = %bb14.preheader, %bb7.1, %bb14.2
  %_27.lcssa = phi i64 [ %_27.2, %bb14.2 ], [ 2, %bb7.1 ], [ 2, %bb14.preheader ]
  store i32 0, ptr %startindex, align 4
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_27.lcssa, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_6f12c7b39e4c9931c4374f0860391a57) #24
  unreachable
}
