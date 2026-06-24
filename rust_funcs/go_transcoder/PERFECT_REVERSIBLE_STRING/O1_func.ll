define noundef range(i32 0, 2) i32 @f_gold(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %str.0, i64 noundef %str.1) unnamed_addr #13 {
start:
  %_17 = alloca [16 x i8], align 8
  %_12 = alloca [16 x i8], align 8
  %j.sroa.0.06 = add i64 %str.1, -1
  %_57.not = icmp eq i64 %j.sroa.0.06, 0
  br i1 %_57.not, label %bb12, label %bb3.lr.ph

bb3.lr.ph:                                        ; preds = %start
  %_7.i = getelementptr inbounds nuw i8, ptr %str.0, i64 %str.1
  %0 = getelementptr inbounds nuw i8, ptr %_12, i64 8
  %1 = getelementptr inbounds nuw i8, ptr %_17, i64 8
  br label %bb3

bb3:                                              ; preds = %bb3.lr.ph, %bb10
  %j.sroa.0.09 = phi i64 [ %j.sroa.0.06, %bb3.lr.ph ], [ %j.sroa.0.0, %bb10 ]
  %i.sroa.0.08 = phi i64 [ 0, %bb3.lr.ph ], [ %4, %bb10 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_12)
  store ptr %str.0, ptr %_12, align 8
  store ptr %_7.i, ptr %0, align 8
; call core::iter::traits::iterator::Iterator::nth
  %2 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hbc85fccd123f6c83E(ptr noalias noundef align 8 dereferenceable(16) %_12, i64 noundef %i.sroa.0.08) #30
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_17)
  store ptr %str.0, ptr %_17, align 8
  store ptr %_7.i, ptr %1, align 8
; call core::iter::traits::iterator::Iterator::nth
  %3 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hbc85fccd123f6c83E(ptr noalias noundef align 8 dereferenceable(16) %_17, i64 noundef %j.sroa.0.09) #30
  %_0.sroa.0.0.shrunk.i.i.not = icmp eq i32 %3, %2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_17)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_12)
  br i1 %_0.sroa.0.0.shrunk.i.i.not, label %bb10, label %bb12

bb12:                                             ; preds = %bb3, %bb10, %start
  %_0.sroa.0.0 = phi i32 [ 1, %start ], [ 0, %bb3 ], [ 1, %bb10 ]
  ret i32 %_0.sroa.0.0

bb10:                                             ; preds = %bb3
  %4 = add nuw i64 %i.sroa.0.08, 1
  %j.sroa.0.0 = add i64 %j.sroa.0.09, -1
  %_5 = icmp ult i64 %4, %j.sroa.0.0
  br i1 %_5, label %bb3, label %bb12
}
