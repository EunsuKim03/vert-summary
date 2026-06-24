define noundef range(i32 0, 2) i32 @f_gold(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %str1.0, i64 noundef %str1.1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %str2.0, i64 noundef %str2.1, i32 noundef %k) unnamed_addr #13 {
start:
  %_28 = alloca [16 x i8], align 8
  %_24 = alloca [16 x i8], align 8
  %str1_len = trunc i64 %str1.1 to i32
  %str2_len = trunc i64 %str2.1 to i32
  %_9 = add i32 %str2_len, %str1_len
  %_8 = icmp slt i32 %_9, %k
  br i1 %_8, label %bb21, label %bb4

bb4:                                              ; preds = %start
  %x.y.i = tail call noundef i32 @llvm.smin.i32(i32 %str1_len, i32 %str2_len)
  %_13 = sext i32 %x.y.i to i64
  %_0.i.i.i5.not = icmp eq i32 %x.y.i, 0
  br i1 %_0.i.i.i5.not, label %bb18, label %bb10.lr.ph

bb10.lr.ph:                                       ; preds = %bb4
  %_7.i = getelementptr inbounds nuw i8, ptr %str1.0, i64 %str1.1
  %0 = getelementptr inbounds nuw i8, ptr %_24, i64 8
  %_7.i3 = getelementptr inbounds nuw i8, ptr %str2.0, i64 %str2.1
  %1 = getelementptr inbounds nuw i8, ptr %_28, i64 8
  br label %bb10

bb10:                                             ; preds = %bb10.lr.ph, %bb16
  %spec.select8 = phi i64 [ 1, %bb10.lr.ph ], [ %spec.select, %bb16 ]
  %iter.sroa.0.07 = phi i64 [ 0, %bb10.lr.ph ], [ %spec.select8, %bb16 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_24)
  store ptr %str1.0, ptr %_24, align 8
  store ptr %_7.i, ptr %0, align 8
; call core::iter::traits::iterator::Iterator::nth
  %2 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h113b46939a86b73aE(ptr noalias noundef align 8 dereferenceable(16) %_24, i64 noundef %iter.sroa.0.07) #30
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_28)
  store ptr %str2.0, ptr %_28, align 8
  store ptr %_7.i3, ptr %1, align 8
; call core::iter::traits::iterator::Iterator::nth
  %3 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h113b46939a86b73aE(ptr noalias noundef align 8 dereferenceable(16) %_28, i64 noundef %iter.sroa.0.07) #30
  %_0.sroa.0.0.shrunk.i = icmp eq i32 %3, %2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_28)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_24)
  br i1 %_0.sroa.0.0.shrunk.i, label %bb16, label %bb18

bb18:                                             ; preds = %bb10, %bb16, %bb4
  %_32 = sub i32 %k, %_9
  %4 = and i32 %_32, 1
  %. = xor i32 %4, 1
  br label %bb21

bb16:                                             ; preds = %bb10
  %_0.i.i.i = icmp ult i64 %spec.select8, %_13
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select8, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb10, label %bb18

bb21:                                             ; preds = %bb18, %start
  %_0.sroa.0.0 = phi i32 [ 1, %start ], [ %., %bb18 ]
  ret i32 %_0.sroa.0.0
}
