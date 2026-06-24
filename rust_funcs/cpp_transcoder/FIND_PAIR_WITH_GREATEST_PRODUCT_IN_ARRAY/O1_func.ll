define noundef range(i32 -1, -2147483648) i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_0.i.i.i51 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i51, label %bb5.lr.ph, label %bb6

bb5.lr.ph:                                        ; preds = %start
  %_12 = add nsw i32 %n, -1
  %_0.i.i.i1346 = icmp ne i32 %n, 1
  %1 = zext i1 %_0.i.i.i1346 to i32
  %wide.trip.count = zext nneg i32 %n to i64
  %invariant.gep = getelementptr inbounds i8, ptr %arr, i64 8
  br label %bb5

bb2.loopexit:                                     ; preds = %bb8.loopexit, %bb5
  %result.sroa.0.1.lcssa = phi i32 [ %result.sroa.0.053, %bb5 ], [ %result.sroa.0.2.lcssa, %bb8.loopexit ]
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1
  %exitcond73.not = icmp eq i64 %indvars.iv.next70, %wide.trip.count
  br i1 %exitcond73.not, label %bb6, label %bb5

bb5:                                              ; preds = %bb5.lr.ph, %bb2.loopexit
  %indvars.iv69 = phi i64 [ 0, %bb5.lr.ph ], [ %indvars.iv.next70, %bb2.loopexit ]
  %result.sroa.0.053 = phi i32 [ -1, %bb5.lr.ph ], [ %result.sroa.0.1.lcssa, %bb2.loopexit ]
  br i1 %_0.i.i.i1346, label %bb10.lr.ph, label %bb2.loopexit

bb10.lr.ph:                                       ; preds = %bb5
  %_36 = icmp samesign ult i64 %indvars.iv69, 2
  %2 = getelementptr inbounds nuw i32, ptr %arr, i64 %indvars.iv69
  br label %bb10

bb6:                                              ; preds = %bb2.loopexit, %start
  %result.sroa.0.0.lcssa = phi i32 [ -1, %start ], [ %result.sroa.0.1.lcssa, %bb2.loopexit ]
  ret i32 %result.sroa.0.0.lcssa

bb8.loopexit:                                     ; preds = %bb19, %bb19.1, %bb10
  %result.sroa.0.2.lcssa = phi i32 [ %result.sroa.0.148, %bb10 ], [ %result.sroa.0.3, %bb19 ], [ %result.sroa.0.3.1, %bb19.1 ]
  %_0.i.i.i13 = icmp slt i32 %spec.select2549, %_12
  %3 = zext i1 %_0.i.i.i13 to i32
  %spec.select25 = add nuw nsw i32 %spec.select2549, %3
  br i1 %_0.i.i.i13, label %bb10, label %bb2.loopexit

bb10:                                             ; preds = %bb10.lr.ph, %bb8.loopexit
  %spec.select2549 = phi i32 [ %1, %bb10.lr.ph ], [ %spec.select25, %bb8.loopexit ]
  %result.sroa.0.148 = phi i32 [ %result.sroa.0.053, %bb10.lr.ph ], [ %result.sroa.0.2.lcssa, %bb8.loopexit ]
  %iter1.sroa.0.047 = phi i32 [ 0, %bb10.lr.ph ], [ %spec.select2549, %bb8.loopexit ]
  %_20 = add nuw i32 %iter1.sroa.0.047, 1
  %_0.i.i.i2041 = icmp slt i32 %_20, %n
  br i1 %_0.i.i.i2041, label %bb15.lr.ph, label %bb8.loopexit

bb15.lr.ph:                                       ; preds = %bb10
  %_29 = zext nneg i32 %iter1.sroa.0.047 to i64
  %_30 = icmp samesign ult i32 %iter1.sroa.0.047, 2
  %4 = getelementptr inbounds nuw i32, ptr %arr, i64 %_29
  br i1 %_30, label %bb15.preheader, label %panic

bb15.preheader:                                   ; preds = %bb15.lr.ph
  %5 = zext nneg i32 %iter1.sroa.0.047 to i64
  %indvars.iv62 = add nuw nsw i64 %5, 1
  %exitcond.not = icmp eq i64 %indvars.iv62, 2
  br i1 %exitcond.not, label %panic3, label %bb18

panic:                                            ; preds = %bb15.lr.ph
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_29, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_d66c009ec7ef71e8082a80098e4c6821) #24
  unreachable

bb18:                                             ; preds = %bb15.preheader
  br i1 %_36, label %bb19, label %panic4

panic3:                                           ; preds = %bb15.1, %bb15.preheader
  %6 = add nuw nsw i64 %5, 1
  %7 = sub nuw nsw i32 1, %iter1.sroa.0.047
  %8 = zext nneg i32 %7 to i64
  %9 = add nuw nsw i64 %6, %8
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %9, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_fe8c8bc1a0bd1c87baca7b5f26828dff) #24
  unreachable

bb19:                                             ; preds = %bb18
  %_28 = load i32, ptr %4, align 4, !noundef !37
  %10 = getelementptr inbounds nuw i32, ptr %arr, i64 %indvars.iv62
  %_31 = load i32, ptr %10, align 4, !noundef !37
  %_27 = mul i32 %_31, %_28
  %_34 = load i32, ptr %2, align 4, !noundef !37
  %_26 = icmp eq i32 %_27, %_34
  %_0.sroa.0.0.i = tail call i32 @llvm.smax.i32(i32 %_34, i32 %result.sroa.0.148)
  %result.sroa.0.3 = select i1 %_26, i32 %_0.sroa.0.0.i, i32 %result.sroa.0.148
  %11 = or disjoint i32 %iter1.sroa.0.047, 2
  %exitcond66.not = icmp eq i32 %n, %11
  br i1 %exitcond66.not, label %bb8.loopexit, label %bb15.1

bb15.1:                                           ; preds = %bb19
  %exitcond.not.1 = icmp eq i32 %iter1.sroa.0.047, 0
  br i1 %exitcond.not.1, label %panic3, label %bb19.1

bb19.1:                                           ; preds = %bb15.1
  %_28.1 = load i32, ptr %4, align 4, !noundef !37
  %gep = getelementptr inbounds i32, ptr %invariant.gep, i64 %5
  %_31.1 = load i32, ptr %gep, align 4, !noundef !37
  %_27.1 = mul i32 %_31.1, %_28.1
  %_34.1 = load i32, ptr %2, align 4, !noundef !37
  %_26.1 = icmp eq i32 %_27.1, %_34.1
  %_0.sroa.0.0.i.1 = tail call i32 @llvm.smax.i32(i32 %_34.1, i32 %result.sroa.0.3)
  %result.sroa.0.3.1 = select i1 %_26.1, i32 %_0.sroa.0.0.i.1, i32 %result.sroa.0.3
  br label %bb8.loopexit

panic4:                                           ; preds = %bb18
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv69, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_642ef4f680944956415d8597a97e8e95) #24
  unreachable
}
