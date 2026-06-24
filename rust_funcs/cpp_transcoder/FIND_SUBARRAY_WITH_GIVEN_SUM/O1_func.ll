define noundef range(i32 0, 2) i32 @f_gold(ptr noalias noundef nonnull readonly align 4 captures(none) %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %n, i32 noundef %sum) unnamed_addr #3 {
start:
  %args = alloca [32 x i8], align 8
  %_31 = alloca [8 x i8], align 8
  %i = alloca [8 x i8], align 8
  %_5.not = icmp eq i64 %arr.1, 0
  br i1 %_5.not, label %panic, label %bb1

bb1:                                              ; preds = %start
  %_8 = sext i32 %n to i64
  %i.promoted = load i64, ptr %i, align 8
  %_0.i.i.i33.not = icmp eq i32 %n, 0
  br i1 %_0.i.i.i33.not, label %bb7, label %bb6.lr.ph

bb6.lr.ph:                                        ; preds = %bb1
  %_26 = sitofp i32 %sum to float
  %0 = add nsw i64 %_8, -1
  br label %bb6

panic:                                            ; preds = %start
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_8a8bbb9576ecfecef796859b57d81045) #24
  unreachable

bb6:                                              ; preds = %bb6.lr.ph, %bb24
  %spec.select36 = phi i64 [ 1, %bb6.lr.ph ], [ %spec.select, %bb24 ]
  %iter.sroa.0.035 = phi i64 [ 0, %bb6.lr.ph ], [ %spec.select36, %bb24 ]
  %_15 = icmp ult i64 %iter.sroa.0.035, %arr.1
  br i1 %_15, label %bb8, label %panic2

bb7:                                              ; preds = %bb24, %bb1
  %iter.sroa.0.030.lcssa = phi i64 [ %i.promoted, %bb1 ], [ %0, %bb24 ]
  store i64 %iter.sroa.0.030.lcssa, ptr %i, align 8
; call std::io::stdio::_print
  tail call void @_ZN3std2io5stdio6_print17hba8f5eda1e4e495eE(ptr noundef nonnull @alloc_011ebe6ea4ac69685dc67ff9ea43bbda, ptr noundef nonnull inttoptr (i64 37 to ptr))
  br label %bb27

bb27:                                             ; preds = %bb13, %bb7
  %_0.sroa.0.0 = phi i32 [ 1, %bb13 ], [ 0, %bb7 ]
  ret i32 %_0.sroa.0.0

bb8:                                              ; preds = %bb6
  %_18 = add nuw nsw i64 %iter.sroa.0.035, 1
  %_0.i.i.i1024 = icmp ult i64 %_18, %_8
  br i1 %_0.i.i.i1024, label %bb12.preheader, label %bb24

bb12.preheader:                                   ; preds = %bb8
  %spec.select1726 = add nuw i64 %iter.sroa.0.035, 2
  %1 = getelementptr inbounds nuw float, ptr %arr.0, i64 %iter.sroa.0.035
  %2 = load float, ptr %1, align 4, !noundef !37
  br label %bb12

panic2:                                           ; preds = %bb6
  store i64 %iter.sroa.0.035, ptr %i, align 8
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %iter.sroa.0.035, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_d5852e20ec62dabde9a76c603faee724) #24
  unreachable

bb12:                                             ; preds = %bb12.preheader, %bb23
  %spec.select1729 = phi i64 [ %spec.select17, %bb23 ], [ %spec.select1726, %bb12.preheader ]
  %curr_sum.sroa.0.028 = phi float [ %6, %bb23 ], [ %2, %bb12.preheader ]
  %iter1.sroa.0.027 = phi i64 [ %spec.select1729, %bb23 ], [ %_18, %bb12.preheader ]
  %_24 = fcmp oeq float %curr_sum.sroa.0.028, %_26
  br i1 %_24, label %bb13, label %bb18

bb24:                                             ; preds = %bb23, %bb18, %bb8
  %_0.i.i.i = icmp ult i64 %spec.select36, %_8
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select36, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb6, label %bb7

bb18:                                             ; preds = %bb12
  %_36 = fcmp ogt float %curr_sum.sroa.0.028, %_26
  %_38 = icmp eq i64 %iter1.sroa.0.027, %_8
  %or.cond = or i1 %_38, %_36
  br i1 %or.cond, label %bb24, label %bb21

bb13:                                             ; preds = %bb12
  store i64 %iter.sroa.0.035, ptr %i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_31)
  %3 = add i64 %iter1.sroa.0.027, -1
  store i64 %3, ptr %_31, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %args)
  store ptr %i, ptr %args, align 8
  %_33.sroa.4.0.args.sroa_idx = getelementptr inbounds nuw i8, ptr %args, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h4fc94a72f199f709E", ptr %_33.sroa.4.0.args.sroa_idx, align 8
  %4 = getelementptr inbounds nuw i8, ptr %args, i64 16
  store ptr %_31, ptr %4, align 8
  %_34.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %args, i64 24
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h4fc94a72f199f709E", ptr %_34.sroa.4.0..sroa_idx, align 8
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17hba8f5eda1e4e495eE(ptr noundef nonnull @alloc_ae29e8a9fec6eedf9365c958241f329d, ptr noundef nonnull %args)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_31)
  br label %bb27

bb21:                                             ; preds = %bb18
  %_40 = icmp ult i64 %iter1.sroa.0.027, %arr.1
  br i1 %_40, label %bb23, label %panic3

bb23:                                             ; preds = %bb21
  %5 = getelementptr inbounds nuw float, ptr %arr.0, i64 %iter1.sroa.0.027
  %_39 = load float, ptr %5, align 4, !noundef !37
  %6 = fadd float %curr_sum.sroa.0.028, %_39
  %_0.i.i.i10 = icmp ult i64 %spec.select1729, %_8
  %_0.i1.i.i13 = zext i1 %_0.i.i.i10 to i64
  %spec.select17 = add nuw i64 %spec.select1729, %_0.i1.i.i13
  br i1 %_0.i.i.i10, label %bb12, label %bb24

panic3:                                           ; preds = %bb21
  store i64 %iter.sroa.0.035, ptr %i, align 8
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %iter1.sroa.0.027, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4645dfa05f1b831313f1d14730f4fb0b) #24
  unreachable
}
