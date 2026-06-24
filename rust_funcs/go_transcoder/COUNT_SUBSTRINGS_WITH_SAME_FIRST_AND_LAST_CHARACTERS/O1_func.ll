define noundef i32 @f_gold(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %s.0, i64 noundef %s.1) unnamed_addr #13 {
start:
  %_25 = alloca [16 x i8], align 8
  %_21 = alloca [16 x i8], align 8
  %_0.i.i.i21.not = icmp eq i64 %s.1, 0
  br i1 %_0.i.i.i21.not, label %bb7, label %bb9.preheader.lr.ph

bb9.preheader.lr.ph:                              ; preds = %start
  %_7.i = getelementptr inbounds nuw i8, ptr %s.0, i64 %s.1
  %0 = getelementptr inbounds nuw i8, ptr %_21, i64 8
  %1 = getelementptr inbounds nuw i8, ptr %_25, i64 8
  br label %bb9.preheader

bb3.loopexit:                                     ; preds = %bb11
  %_0.i.i.i = icmp ult i64 %spec.select25, %s.1
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select25, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb9.preheader, label %bb7

bb9.preheader:                                    ; preds = %bb9.preheader.lr.ph, %bb3.loopexit
  %spec.select25 = phi i64 [ 1, %bb9.preheader.lr.ph ], [ %spec.select, %bb3.loopexit ]
  %result.sroa.0.024 = phi i32 [ 0, %bb9.preheader.lr.ph ], [ %result.sroa.0.2, %bb3.loopexit ]
  %iter.sroa.0.023 = phi i64 [ 0, %bb9.preheader.lr.ph ], [ %spec.select25, %bb3.loopexit ]
  %spec.select1517 = add nuw i64 %iter.sroa.0.023, 1
  br label %bb11

bb7:                                              ; preds = %bb3.loopexit, %start
  %result.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %result.sroa.0.2, %bb3.loopexit ]
  ret i32 %result.sroa.0.0.lcssa

bb11:                                             ; preds = %bb9.preheader, %bb11
  %spec.select1520 = phi i64 [ %spec.select1517, %bb9.preheader ], [ %spec.select15, %bb11 ]
  %result.sroa.0.119 = phi i32 [ %result.sroa.0.024, %bb9.preheader ], [ %result.sroa.0.2, %bb11 ]
  %iter1.sroa.0.018 = phi i64 [ %iter.sroa.0.023, %bb9.preheader ], [ %spec.select1520, %bb11 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_21)
  store ptr %s.0, ptr %_21, align 8
  store ptr %_7.i, ptr %0, align 8
; call core::iter::traits::iterator::Iterator::nth
  %2 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h9252e5f5fba6e5fbE(ptr noalias noundef align 8 dereferenceable(16) %_21, i64 noundef %iter.sroa.0.023) #30
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_25)
  store ptr %s.0, ptr %_25, align 8
  store ptr %_7.i, ptr %1, align 8
; call core::iter::traits::iterator::Iterator::nth
  %3 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h9252e5f5fba6e5fbE(ptr noalias noundef align 8 dereferenceable(16) %_25, i64 noundef %iter1.sroa.0.018) #30
  %_0.sroa.0.0.shrunk.i = icmp eq i32 %3, %2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_25)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_21)
  %4 = zext i1 %_0.sroa.0.0.shrunk.i to i32
  %result.sroa.0.2 = add i32 %result.sroa.0.119, %4
  %_0.i.i.i8 = icmp ult i64 %spec.select1520, %s.1
  %_0.i1.i.i11 = zext i1 %_0.i.i.i8 to i64
  %spec.select15 = add nuw i64 %spec.select1520, %_0.i1.i.i11
  br i1 %_0.i.i.i8, label %bb11, label %bb3.loopexit
}
