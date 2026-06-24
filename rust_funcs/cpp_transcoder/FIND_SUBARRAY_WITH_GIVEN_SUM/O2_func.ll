define noundef range(i32 0, 2) i32 @f_gold(ptr noalias noundef nonnull readonly align 4 captures(none) %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %n, i32 noundef %sum) unnamed_addr #1 {
start:
  %args = alloca [32 x i8], align 8
  %_20 = alloca [8 x i8], align 8
  %i = alloca [8 x i8], align 8
  %_5.not = icmp eq i64 %arr.1, 0
  br i1 %_5.not, label %panic, label %bb1

bb1:                                              ; preds = %start
  %iter2 = sext i32 %n to i64
  %_3218.not = icmp eq i32 %n, 0
  br i1 %_3218.not, label %bb17, label %bb16.lr.ph

bb16.lr.ph:                                       ; preds = %bb1
  %_15 = sitofp i32 %sum to float
  br label %bb16

panic:                                            ; preds = %start
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_8a8bbb9576ecfecef796859b57d81045) #18
  unreachable

bb17:                                             ; preds = %bb13, %bb1
; call std::io::stdio::_print
  tail call void @_ZN3std2io5stdio6_print17hba8f5eda1e4e495eE(ptr noundef nonnull @alloc_011ebe6ea4ac69685dc67ff9ea43bbda, ptr noundef nonnull inttoptr (i64 37 to ptr))
  br label %bb15

bb16:                                             ; preds = %bb16.lr.ph, %bb13
  %iter.sroa.0.019 = phi i64 [ 0, %bb16.lr.ph ], [ %0, %bb13 ]
  %0 = add nuw nsw i64 %iter.sroa.0.019, 1
  %exitcond26.not = icmp eq i64 %iter.sroa.0.019, %arr.1
  br i1 %exitcond26.not, label %panic3, label %bb3

bb15:                                             ; preds = %bb5, %bb17
  %_0.sroa.0.0 = phi i32 [ 1, %bb5 ], [ 0, %bb17 ]
  ret i32 %_0.sroa.0.0

bb3:                                              ; preds = %bb16
  %_4512 = icmp ult i64 %0, %iter2
  br i1 %_4512, label %bb18.preheader, label %bb13

bb18.preheader:                                   ; preds = %bb3
  %1 = getelementptr inbounds nuw float, ptr %arr.0, i64 %iter.sroa.0.019
  %2 = load float, ptr %1, align 4, !noundef !23
  br label %bb18

panic3:                                           ; preds = %bb16
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %arr.1, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_d5852e20ec62dabde9a76c603faee724) #18
  unreachable

bb18:                                             ; preds = %bb18.preheader, %bb12
  %iter1.sroa.0.014 = phi i64 [ %3, %bb12 ], [ %0, %bb18.preheader ]
  %curr_sum.sroa.0.013 = phi float [ %7, %bb12 ], [ %2, %bb18.preheader ]
  %3 = add nuw nsw i64 %iter1.sroa.0.014, 1
  %_13 = fcmp oeq float %curr_sum.sroa.0.013, %_15
  br i1 %_13, label %bb5, label %bb7

bb13:                                             ; preds = %bb12, %bb7, %bb3
  %exitcond27.not = icmp eq i64 %0, %iter2
  br i1 %exitcond27.not, label %bb17, label %bb16

bb7:                                              ; preds = %bb18
  %_25 = fcmp ogt float %curr_sum.sroa.0.013, %_15
  br i1 %_25, label %bb13, label %bb10

bb5:                                              ; preds = %bb18
  store i64 %iter.sroa.0.019, ptr %i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_20)
  %4 = add nsw i64 %iter1.sroa.0.014, -1
  store i64 %4, ptr %_20, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %args)
  store ptr %i, ptr %args, align 8
  %_22.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %args, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h4fc94a72f199f709E", ptr %_22.sroa.4.0..sroa_idx, align 8
  %5 = getelementptr inbounds nuw i8, ptr %args, i64 16
  store ptr %_20, ptr %5, align 8
  %_23.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %args, i64 24
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h4fc94a72f199f709E", ptr %_23.sroa.4.0..sroa_idx, align 8
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17hba8f5eda1e4e495eE(ptr noundef nonnull @alloc_ae29e8a9fec6eedf9365c958241f329d, ptr noundef nonnull %args)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_20)
  br label %bb15

bb10:                                             ; preds = %bb7
  %exitcond.not = icmp eq i64 %iter1.sroa.0.014, %arr.1
  br i1 %exitcond.not, label %panic4, label %bb12

bb12:                                             ; preds = %bb10
  %6 = getelementptr inbounds nuw float, ptr %arr.0, i64 %iter1.sroa.0.014
  %_28 = load float, ptr %6, align 4, !noundef !23
  %7 = fadd float %curr_sum.sroa.0.013, %_28
  %exitcond25.not = icmp eq i64 %3, %iter2
  br i1 %exitcond25.not, label %bb13, label %bb18

panic4:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %arr.1, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4645dfa05f1b831313f1d14730f4fb0b) #18
  unreachable
}
