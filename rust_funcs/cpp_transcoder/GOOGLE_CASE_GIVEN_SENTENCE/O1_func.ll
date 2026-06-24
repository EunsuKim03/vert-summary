define void @f_gold(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %s) unnamed_addr #12 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds nuw i8, ptr %s, i64 16
  %_0.i = load i64, ptr %0, align 8, !alias.scope !1630, !noundef !37
  %_2.i = icmp sgt i64 %_0.i, -1
  tail call void @llvm.assume(i1 %_2.i)
  %1 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %_5.i.i = load ptr, ptr %1, align 8, !alias.scope !1633, !nonnull !37, !noundef !37
  %_63.not.i = icmp eq i64 %_0.i, 0
  br i1 %_63.not.i, label %bb3, label %bb3.i.preheader

bb3.i.preheader:                                  ; preds = %start
  %xtraiter = and i64 %_0.i, 1
  %2 = icmp eq i64 %_0.i, 1
  br i1 %2, label %bb3.loopexit.unr-lcssa, label %bb3.i.preheader.new

bb3.i.preheader.new:                              ; preds = %bb3.i.preheader
  %unroll_iter = and i64 %_0.i, 9223372036854775806
  %invariant.gep = getelementptr inbounds i8, ptr %_5.i.i, i64 1
  br label %bb3.i

bb3.i:                                            ; preds = %bb3.i, %bb3.i.preheader.new
  %i.sroa.0.04.i = phi i64 [ 0, %bb3.i.preheader.new ], [ %7, %bb3.i ]
  %niter = phi i64 [ 0, %bb3.i.preheader.new ], [ %niter.next.1, %bb3.i ]
  %byte.i = getelementptr inbounds nuw i8, ptr %_5.i.i, i64 %i.sroa.0.04.i
  %_13.i = load i8, ptr %byte.i, align 1, !alias.scope !1638, !noundef !37
  %3 = add i8 %_13.i, -65
  %4 = icmp ult i8 %3, 26
  %_17.sroa.0.0.i = select i1 %4, i8 32, i8 0
  %_12.i = or i8 %_17.sroa.0.0.i, %_13.i
  store i8 %_12.i, ptr %byte.i, align 1, !alias.scope !1638
  %gep = getelementptr inbounds i8, ptr %invariant.gep, i64 %i.sroa.0.04.i
  %_13.i.1 = load i8, ptr %gep, align 1, !alias.scope !1638, !noundef !37
  %5 = add i8 %_13.i.1, -65
  %6 = icmp ult i8 %5, 26
  %_17.sroa.0.0.i.1 = select i1 %6, i8 32, i8 0
  %_12.i.1 = or i8 %_17.sroa.0.0.i.1, %_13.i.1
  store i8 %_12.i.1, ptr %gep, align 1, !alias.scope !1638
  %7 = add nuw nsw i64 %i.sroa.0.04.i, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb3.loopexit.unr-lcssa, label %bb3.i

bb3.loopexit.unr-lcssa:                           ; preds = %bb3.i, %bb3.i.preheader
  %i.sroa.0.04.i.unr = phi i64 [ 0, %bb3.i.preheader ], [ %7, %bb3.i ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb3, label %bb3.i.epil

bb3.i.epil:                                       ; preds = %bb3.loopexit.unr-lcssa
  %byte.i.epil = getelementptr inbounds nuw i8, ptr %_5.i.i, i64 %i.sroa.0.04.i.unr
  %_13.i.epil = load i8, ptr %byte.i.epil, align 1, !alias.scope !1638, !noundef !37
  %8 = add i8 %_13.i.epil, -65
  %9 = icmp ult i8 %8, 26
  %_17.sroa.0.0.i.epil = select i1 %9, i8 32, i8 0
  %_12.i.epil = or i8 %_17.sroa.0.0.i.epil, %_13.i.epil
  store i8 %_12.i.epil, ptr %byte.i.epil, align 1, !alias.scope !1638
  br label %bb3

bb3:                                              ; preds = %bb3.i.epil, %bb3.loopexit.unr-lcssa, %start
  %_5.i.i1 = load ptr, ptr %1, align 8, !alias.scope !1641, !nonnull !37, !noundef !37
  %len.i.i2 = load i64, ptr %0, align 8, !alias.scope !1641, !noundef !37
  %_63.not.i3 = icmp eq i64 %len.i.i2, 0
  br i1 %_63.not.i3, label %bb5, label %bb3.i4.preheader

bb3.i4.preheader:                                 ; preds = %bb3
  %xtraiter11 = and i64 %len.i.i2, 1
  %10 = icmp eq i64 %len.i.i2, 1
  br i1 %10, label %bb5.loopexit.unr-lcssa, label %bb3.i4.preheader.new

bb3.i4.preheader.new:                             ; preds = %bb3.i4.preheader
  %unroll_iter13 = and i64 %len.i.i2, -2
  %invariant.gep16 = getelementptr i8, ptr %_5.i.i1, i64 1
  br label %bb3.i4

bb3.i4:                                           ; preds = %bb3.i4, %bb3.i4.preheader.new
  %i.sroa.0.04.i5 = phi i64 [ 0, %bb3.i4.preheader.new ], [ %15, %bb3.i4 ]
  %niter14 = phi i64 [ 0, %bb3.i4.preheader.new ], [ %niter14.next.1, %bb3.i4 ]
  %byte.i6 = getelementptr inbounds nuw i8, ptr %_5.i.i1, i64 %i.sroa.0.04.i5
  %_13.i7 = load i8, ptr %byte.i6, align 1, !alias.scope !1646, !noundef !37
  %11 = add i8 %_13.i7, -97
  %12 = icmp ult i8 %11, 26
  %_17.sroa.0.0.i8 = select i1 %12, i8 32, i8 0
  %_12.i9 = xor i8 %_17.sroa.0.0.i8, %_13.i7
  store i8 %_12.i9, ptr %byte.i6, align 1, !alias.scope !1646
  %gep17 = getelementptr i8, ptr %invariant.gep16, i64 %i.sroa.0.04.i5
  %_13.i7.1 = load i8, ptr %gep17, align 1, !alias.scope !1646, !noundef !37
  %13 = add i8 %_13.i7.1, -97
  %14 = icmp ult i8 %13, 26
  %_17.sroa.0.0.i8.1 = select i1 %14, i8 32, i8 0
  %_12.i9.1 = xor i8 %_17.sroa.0.0.i8.1, %_13.i7.1
  store i8 %_12.i9.1, ptr %gep17, align 1, !alias.scope !1646
  %15 = add nuw i64 %i.sroa.0.04.i5, 2
  %niter14.next.1 = add i64 %niter14, 2
  %niter14.ncmp.1 = icmp eq i64 %niter14.next.1, %unroll_iter13
  br i1 %niter14.ncmp.1, label %bb5.loopexit.unr-lcssa, label %bb3.i4

bb5.loopexit.unr-lcssa:                           ; preds = %bb3.i4, %bb3.i4.preheader
  %i.sroa.0.04.i5.unr = phi i64 [ 0, %bb3.i4.preheader ], [ %15, %bb3.i4 ]
  %lcmp.mod12.not = icmp eq i64 %xtraiter11, 0
  br i1 %lcmp.mod12.not, label %bb5, label %bb3.i4.epil

bb3.i4.epil:                                      ; preds = %bb5.loopexit.unr-lcssa
  %byte.i6.epil = getelementptr inbounds nuw i8, ptr %_5.i.i1, i64 %i.sroa.0.04.i5.unr
  %_13.i7.epil = load i8, ptr %byte.i6.epil, align 1, !alias.scope !1646, !noundef !37
  %16 = add i8 %_13.i7.epil, -97
  %17 = icmp ult i8 %16, 26
  %_17.sroa.0.0.i8.epil = select i1 %17, i8 32, i8 0
  %_12.i9.epil = xor i8 %_17.sroa.0.0.i8.epil, %_13.i7.epil
  store i8 %_12.i9.epil, ptr %byte.i6.epil, align 1, !alias.scope !1646
  br label %bb5

bb5:                                              ; preds = %bb3.i4.epil, %bb5.loopexit.unr-lcssa, %bb3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_0, ptr noundef nonnull align 8 dereferenceable(24) %s, i64 24, i1 false)
  ret void
}
