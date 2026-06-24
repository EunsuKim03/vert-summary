define noundef range(i32 0, 2) i32 @f_gold(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %str.0, i64 noundef %str.1) unnamed_addr #13 {
start:
  %_17 = alloca [16 x i8], align 8
  %_8 = alloca [16 x i8], align 8
  %_7.i = getelementptr inbounds nuw i8, ptr %str.0, i64 %str.1
  %0 = getelementptr inbounds nuw i8, ptr %_8, i64 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_8)
  store ptr %str.0, ptr %_8, align 8
  store ptr %_7.i, ptr %0, align 8
; call core::iter::traits::iterator::Iterator::nth
  %1 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17ha1f5db159691f2bfE(ptr noalias noundef align 8 dereferenceable(16) %_8, i64 noundef 0) #30
  %_0.sroa.0.0.shrunk.i7 = icmp eq i32 %1, 97
  br i1 %_0.sroa.0.0.shrunk.i7, label %bb6, label %bb7

bb7:                                              ; preds = %bb6, %start
  %i.sroa.0.0.lcssa = phi i64 [ 0, %start ], [ %4, %bb6 ]
  %_7.i.le = getelementptr inbounds nuw i8, ptr %str.0, i64 %str.1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_8)
  %_11 = shl i64 %i.sroa.0.0.lcssa, 1
  %_10.not = icmp eq i64 %_11, %str.1
  br i1 %_10.not, label %bb10.preheader, label %bb16

bb10.preheader:                                   ; preds = %bb7
  %2 = getelementptr inbounds nuw i8, ptr %_17, i64 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_17)
  store ptr %str.0, ptr %_17, align 8
  store ptr %_7.i.le, ptr %2, align 8
; call core::iter::traits::iterator::Iterator::nth
  %3 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17ha1f5db159691f2bfE(ptr noalias noundef align 8 dereferenceable(16) %_17, i64 noundef %i.sroa.0.0.lcssa) #30
  %_0.sroa.0.0.shrunk.i69 = icmp eq i32 %3, 98
  br i1 %_0.sroa.0.0.shrunk.i69, label %bb14, label %bb15

bb6:                                              ; preds = %start, %bb6
  %i.sroa.0.08 = phi i64 [ %4, %bb6 ], [ 0, %start ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_8)
  %4 = add i64 %i.sroa.0.08, 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_8)
  store ptr %str.0, ptr %_8, align 8
  store ptr %_7.i, ptr %0, align 8
; call core::iter::traits::iterator::Iterator::nth
  %5 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17ha1f5db159691f2bfE(ptr noalias noundef align 8 dereferenceable(16) %_8, i64 noundef %4) #30
  %_0.sroa.0.0.shrunk.i = icmp eq i32 %5, 97
  br i1 %_0.sroa.0.0.shrunk.i, label %bb6, label %bb7

bb15:                                             ; preds = %bb14, %bb10.preheader
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_17)
  br label %bb16

bb14:                                             ; preds = %bb10.preheader, %bb14
  %i.sroa.0.110 = phi i64 [ %6, %bb14 ], [ %i.sroa.0.0.lcssa, %bb10.preheader ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_17)
  %6 = add i64 %i.sroa.0.110, 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_17)
  store ptr %str.0, ptr %_17, align 8
  store ptr %_7.i.le, ptr %2, align 8
; call core::iter::traits::iterator::Iterator::nth
  %7 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17ha1f5db159691f2bfE(ptr noalias noundef align 8 dereferenceable(16) %_17, i64 noundef %6) #30
  %_0.sroa.0.0.shrunk.i6 = icmp eq i32 %7, 98
  br i1 %_0.sroa.0.0.shrunk.i6, label %bb14, label %bb15

bb16:                                             ; preds = %bb7, %bb15
  %_0.sroa.0.0 = phi i32 [ 1, %bb15 ], [ 0, %bb7 ]
  ret i32 %_0.sroa.0.0
}
