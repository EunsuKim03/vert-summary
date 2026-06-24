define noundef range(i32 -1, -2147483648) i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_5 = sext i32 %n to i64
  %_0.i.i.i65.not = icmp eq i32 %n, 0
  br i1 %_0.i.i.i65.not, label %bb6, label %bb5.lr.ph

bb5.lr.ph:                                        ; preds = %start
  %_13 = add nsw i64 %_5, -1
  %_0.i.i.i1759 = icmp ne i64 %_13, 0
  %_0.i1.i.i2060 = zext i1 %_0.i.i.i1759 to i64
  br label %bb5

bb2.loopexit:                                     ; preds = %bb8.loopexit, %bb5
  %result.sroa.0.1.lcssa = phi i32 [ %result.sroa.0.068, %bb5 ], [ %result.sroa.0.2.lcssa, %bb8.loopexit ]
  %_0.i.i.i = icmp ult i64 %spec.select69, %_5
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select69, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb5, label %bb6

bb5:                                              ; preds = %bb5.lr.ph, %bb2.loopexit
  %spec.select69 = phi i64 [ 1, %bb5.lr.ph ], [ %spec.select, %bb2.loopexit ]
  %result.sroa.0.068 = phi i32 [ -1, %bb5.lr.ph ], [ %result.sroa.0.1.lcssa, %bb2.loopexit ]
  %iter.sroa.0.067 = phi i64 [ 0, %bb5.lr.ph ], [ %spec.select69, %bb2.loopexit ]
  br i1 %_0.i.i.i1759, label %bb10.lr.ph, label %bb2.loopexit

bb10.lr.ph:                                       ; preds = %bb5
  %_37 = icmp ult i64 %iter.sroa.0.067, 2
  %1 = getelementptr inbounds nuw i32, ptr %arr, i64 %iter.sroa.0.067
  br label %bb10

bb6:                                              ; preds = %bb2.loopexit, %start
  %result.sroa.0.0.lcssa = phi i32 [ -1, %start ], [ %result.sroa.0.1.lcssa, %bb2.loopexit ]
  ret i32 %result.sroa.0.0.lcssa

bb8.loopexit:                                     ; preds = %bb19, %bb10
  %result.sroa.0.2.lcssa = phi i32 [ %result.sroa.0.162, %bb10 ], [ %result.sroa.0.3, %bb19 ]
  %_0.i.i.i17 = icmp ult i64 %spec.select3163, %_13
  %_0.i1.i.i20 = zext i1 %_0.i.i.i17 to i64
  %spec.select31 = add nuw i64 %spec.select3163, %_0.i1.i.i20
  br i1 %_0.i.i.i17, label %bb10, label %bb2.loopexit

bb10:                                             ; preds = %bb10.lr.ph, %bb8.loopexit
  %spec.select3163 = phi i64 [ %_0.i1.i.i2060, %bb10.lr.ph ], [ %spec.select31, %bb8.loopexit ]
  %result.sroa.0.162 = phi i32 [ %result.sroa.0.068, %bb10.lr.ph ], [ %result.sroa.0.2.lcssa, %bb8.loopexit ]
  %iter1.sroa.0.061 = phi i64 [ 0, %bb10.lr.ph ], [ %spec.select3163, %bb8.loopexit ]
  %_21 = add i64 %iter1.sroa.0.061, 1
  %_0.i.i.i2553 = icmp ult i64 %_21, %_5
  br i1 %_0.i.i.i2553, label %bb15.lr.ph, label %bb8.loopexit

bb15.lr.ph:                                       ; preds = %bb10
  %_31 = icmp ult i64 %iter1.sroa.0.061, 2
  %2 = getelementptr inbounds nuw i32, ptr %arr, i64 %iter1.sroa.0.061
  br i1 %_31, label %bb15.preheader, label %panic

bb15.preheader:                                   ; preds = %bb15.lr.ph
  %spec.select3355 = or disjoint i64 %iter1.sroa.0.061, 2
  %_34 = icmp ult i64 %_21, 2
  br i1 %_34, label %bb18, label %panic3

panic:                                            ; preds = %bb15.lr.ph
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %iter1.sroa.0.061, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_56ab95d094517ed169eca5a58aff51a6) #24
  unreachable

bb18:                                             ; preds = %bb15.preheader
  br i1 %_37, label %bb19, label %panic4

panic3:                                           ; preds = %bb19, %bb15.preheader
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_807f1422a766a986fbd4cfdbee0da579) #24
  unreachable

bb19:                                             ; preds = %bb18
  %_30 = load i32, ptr %2, align 4, !noundef !37
  %_29 = sitofp i32 %_30 to float
  %3 = getelementptr inbounds nuw i32, ptr %arr, i64 %_21
  %_33 = load i32, ptr %3, align 4, !noundef !37
  %_32 = sitofp i32 %_33 to float
  %_28 = fmul float %_29, %_32
  %_36 = load i32, ptr %1, align 4, !noundef !37
  %_35 = sitofp i32 %_36 to float
  %_27 = fcmp oeq float %_28, %_35
  %_0.sroa.0.0.i = tail call i32 @llvm.smax.i32(i32 %_36, i32 %result.sroa.0.162)
  %result.sroa.0.3 = select i1 %_27, i32 %_0.sroa.0.0.i, i32 %result.sroa.0.162
  %_0.i.i.i25 = icmp ult i64 %spec.select3355, %_5
  br i1 %_0.i.i.i25, label %panic3, label %bb8.loopexit

panic4:                                           ; preds = %bb18
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %iter.sroa.0.067, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_3847d7f470fbf7506b20dd52b15e2108) #24
  unreachable
}
