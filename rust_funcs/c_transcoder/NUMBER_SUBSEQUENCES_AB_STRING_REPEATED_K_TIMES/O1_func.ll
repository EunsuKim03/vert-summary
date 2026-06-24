define noundef i32 @f_gold(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %s.0, i64 noundef %s.1, i32 noundef %k) unnamed_addr #4 {
start:
  %_23 = alloca [16 x i8], align 8
  %_18 = alloca [16 x i8], align 8
  %_0.i.i.i17.not = icmp eq i64 %s.1, 0
  br i1 %_0.i.i.i17.not, label %bb7, label %bb6.lr.ph

bb6.lr.ph:                                        ; preds = %start
  %_7.i = getelementptr inbounds nuw i8, ptr %s.0, i64 %s.1
  %0 = getelementptr inbounds nuw i8, ptr %_18, i64 8
  %1 = getelementptr inbounds nuw i8, ptr %_23, i64 8
  br label %bb6

bb6:                                              ; preds = %bb6.lr.ph, %bb19
  %spec.select23 = phi i64 [ 1, %bb6.lr.ph ], [ %spec.select, %bb19 ]
  %c1.sroa.0.022 = phi i32 [ 0, %bb6.lr.ph ], [ %c1.sroa.0.1, %bb19 ]
  %c2.sroa.0.021 = phi i32 [ 0, %bb6.lr.ph ], [ %c2.sroa.0.1, %bb19 ]
  %c.sroa.0.020 = phi i32 [ 0, %bb6.lr.ph ], [ %c.sroa.0.1, %bb19 ]
  %iter.sroa.0.019 = phi i64 [ 0, %bb6.lr.ph ], [ %spec.select23, %bb19 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_18)
  store ptr %s.0, ptr %_18, align 8
  store ptr %_7.i, ptr %0, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_16 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h1b58d682adacc1beE(ptr noalias noundef align 8 dereferenceable(16) %_18, i64 noundef %iter.sroa.0.019) #29
  switch i32 %_16, label %bb12 [
    i32 1114112, label %bb2.i7
    i32 97, label %bb11
  ], !prof !1661

bb2.i7:                                           ; preds = %bb6
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b9949057d1eb3f9dbc9027783aeb5a26) #25
  unreachable

bb7:                                              ; preds = %bb19, %start
  %c.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %c.sroa.0.1, %bb19 ]
  %c2.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %c2.sroa.0.1, %bb19 ]
  %c1.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %c1.sroa.0.1, %bb19 ]
  %_25 = mul i32 %c.sroa.0.0.lcssa, %k
  %_30 = add i32 %k, -1
  %_29 = mul i32 %_30, %k
  %_28 = sdiv i32 %_29, 2
  %_27 = mul i32 %c2.sroa.0.0.lcssa, %_28
  %_26 = mul i32 %_27, %c1.sroa.0.0.lcssa
  %_0 = add i32 %_26, %_25
  ret i32 %_0

bb12:                                             ; preds = %bb6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_18)
  br label %bb13

bb11:                                             ; preds = %bb6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_18)
  %2 = add i32 %c1.sroa.0.022, 1
  br label %bb13

bb13:                                             ; preds = %bb11, %bb12
  %c1.sroa.0.1 = phi i32 [ %2, %bb11 ], [ %c1.sroa.0.022, %bb12 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_23)
  store ptr %s.0, ptr %_23, align 8
  store ptr %_7.i, ptr %1, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_21 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h1b58d682adacc1beE(ptr noalias noundef align 8 dereferenceable(16) %_23, i64 noundef %iter.sroa.0.019) #29
  switch i32 %_21, label %bb18 [
    i32 1114112, label %bb2.i
    i32 98, label %bb17
  ], !prof !1661

bb2.i:                                            ; preds = %bb13
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_96534126341073df20640405862ef689) #25
  unreachable

bb18:                                             ; preds = %bb13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_23)
  br label %bb19

bb17:                                             ; preds = %bb13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_23)
  %3 = add i32 %c2.sroa.0.021, 1
  %4 = add i32 %c1.sroa.0.1, %c.sroa.0.020
  br label %bb19

bb19:                                             ; preds = %bb17, %bb18
  %c.sroa.0.1 = phi i32 [ %4, %bb17 ], [ %c.sroa.0.020, %bb18 ]
  %c2.sroa.0.1 = phi i32 [ %3, %bb17 ], [ %c2.sroa.0.021, %bb18 ]
  %_0.i.i.i = icmp ult i64 %spec.select23, %s.1
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select23, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb6, label %bb7
}
