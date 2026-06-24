define noundef range(i32 -1, -2147483648) i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #0 {
start:
  %args = alloca [16 x i8], align 8
  %_43 = alloca [16 x i8], align 8
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_6 = add i32 %n, -1
  %_0.i.i.i38 = icmp sgt i32 %_6, 0
  br i1 %_0.i.i.i38, label %bb7, label %bb6

bb2.loopexit:                                     ; preds = %bb14.preheader, %bb7
  %maxsize.sroa.0.1.lcssa = phi i32 [ -1, %bb7 ], [ %maxsize.sroa.0.2, %bb14.preheader ]
  %_0.i.i.i.not = icmp eq i32 %_6, 1
  %spec.select19 = select i1 %_0.i.i.i.not, i32 1, i32 2
  br i1 %_0.i.i.i.not, label %bb6, label %bb7.1

bb7.1:                                            ; preds = %bb2.loopexit
  %_0.i.i.i1530.1 = icmp sgt i32 %n, 2
  br i1 %_0.i.i.i1530.1, label %panic2, label %bb2.loopexit.1

bb2.loopexit.1:                                   ; preds = %bb7.1
  %_0.i.i.i.1 = icmp slt i32 %spec.select19, %_6
  br i1 %_0.i.i.i.1, label %bb5.2, label %bb6

bb5.2:                                            ; preds = %bb2.loopexit.1
  br i1 %_0.i.i.i.not, label %bb7.2, label %panic

bb7.2:                                            ; preds = %bb5.2
  %_19.2 = add nuw nsw i32 %spec.select19, 1
  %_0.i.i.i1530.2 = icmp slt i32 %_19.2, %n
  br i1 %_0.i.i.i1530.2, label %bb14.2, label %bb6

bb14.2:                                           ; preds = %bb7.2
  %_28.2 = zext nneg i32 %_19.2 to i64
  br label %panic2

bb6:                                              ; preds = %bb2.loopexit, %bb2.loopexit.1, %bb7.2, %start
  %maxsize.sroa.0.0.lcssa = phi i32 [ -1, %start ], [ %maxsize.sroa.0.1.lcssa, %bb7.2 ], [ %maxsize.sroa.0.1.lcssa, %bb2.loopexit.1 ], [ %maxsize.sroa.0.1.lcssa, %bb2.loopexit ]
  %_36 = icmp eq i32 %maxsize.sroa.0.0.lcssa, -1
  br i1 %_36, label %bb25, label %bb26

bb26:                                             ; preds = %bb6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_43)
  %_51 = zext nneg i32 %maxsize.sroa.0.0.lcssa to i64
  %_7.i.i.i = icmp ult i32 %maxsize.sroa.0.0.lcssa, 3
  br i1 %_7.i.i.i, label %"_ZN4core5array85_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$5index17he69c5425cdd68754E.exit", label %bb3.i.i.i, !prof !1294

bb3.i.i.i:                                        ; preds = %bb26
; call core::slice::index::slice_index_fail
  tail call void @_ZN4core5slice5index16slice_index_fail17h62807bcaa490c9c1E(i64 noundef range(i64 -2147483648, 2147483648) 0, i64 noundef range(i64 -2147483648, 4294967295) %_51, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e08357e5067b17e9934a674952e74bd1) #24, !noalias !1647
  unreachable

"_ZN4core5array85_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$5index17he69c5425cdd68754E.exit": ; preds = %bb26
  store ptr %arr, ptr %_43, align 8
  %1 = getelementptr inbounds nuw i8, ptr %_43, i64 8
  store i64 %_51, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args)
  store ptr %_43, ptr %args, align 8
  %_54.sroa.4.0.args.sroa_idx = getelementptr inbounds nuw i8, ptr %args, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc1af96bc2d4cab3fE", ptr %_54.sroa.4.0.args.sroa_idx, align 8
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17hba8f5eda1e4e495eE(ptr noundef nonnull @alloc_61247b90e1706a3f65e71312b599d3d1, ptr noundef nonnull %args)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_43)
  br label %bb33

bb25:                                             ; preds = %bb6
; call std::io::stdio::_print
  tail call void @_ZN3std2io5stdio6_print17hba8f5eda1e4e495eE(ptr noundef nonnull @alloc_e35ef0db3ff0e2e52d9de27516a202e9, ptr noundef nonnull inttoptr (i64 35 to ptr))
  br label %bb33

bb33:                                             ; preds = %bb25, %"_ZN4core5array85_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$5index17he69c5425cdd68754E.exit"
  ret i32 %maxsize.sroa.0.0.lcssa

bb7:                                              ; preds = %start
  %_0.i.i.i1530 = icmp sgt i32 %n, 1
  br i1 %_0.i.i.i1530, label %bb14.preheader, label %bb2.loopexit

bb14.preheader:                                   ; preds = %bb7
  %_14 = load i32, ptr %arr, align 8, !noundef !3
  %_13 = icmp eq i32 %_14, 0
  %2 = getelementptr inbounds nuw i8, ptr %arr, i64 4
  %_27 = load i32, ptr %2, align 4, !noundef !3
  %_26 = icmp eq i32 %_27, 0
  %_30 = xor i1 %_13, %_26
  %maxsize.sroa.0.2 = select i1 %_30, i32 2, i32 -1
  %_0.i.i.i15.not = icmp eq i32 %n, 2
  br i1 %_0.i.i.i15.not, label %bb2.loopexit, label %panic2

panic:                                            ; preds = %bb5.2
  %_15.2 = zext nneg i32 %spec.select19 to i64
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_15.2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_9a773fcc3e883de64111d3dc1931b030) #24
  unreachable

panic2:                                           ; preds = %bb14.preheader, %bb7.1, %bb14.2
  %_28.lcssa = phi i64 [ %_28.2, %bb14.2 ], [ 2, %bb7.1 ], [ 2, %bb14.preheader ]
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_28.lcssa, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_ba62de7ca345cedcea20b56148fe58ba) #24
  unreachable
}
