define noundef i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %str) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %iter1 = load i64, ptr %0, align 8, !noundef !23
  %_15 = icmp sgt i64 %iter1, -1
  tail call void @llvm.assume(i1 %_15)
  %_1610.not = icmp eq i64 %iter1, 0
  br i1 %_1610.not, label %bb14, label %bb2.lr.ph

bb2.lr.ph:                                        ; preds = %start
  %1 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_22 = load ptr, ptr %1, align 8, !nonnull !23, !noundef !23
  %xtraiter = and i64 %iter1, 1
  %2 = icmp eq i64 %iter1, 1
  br i1 %2, label %bb14.loopexit.unr-lcssa, label %bb2.lr.ph.new

bb2.lr.ph.new:                                    ; preds = %bb2.lr.ph
  %unroll_iter = and i64 %iter1, 9223372036854775806
  br label %bb2

bb14.loopexit.unr-lcssa:                          ; preds = %bb9.1, %bb2.lr.ph
  %result.sroa.0.1.lcssa.ph = phi i32 [ poison, %bb2.lr.ph ], [ %result.sroa.0.1.1, %bb9.1 ]
  %result.sroa.0.012.unr = phi i32 [ 0, %bb2.lr.ph ], [ %result.sroa.0.1.1, %bb9.1 ]
  %iter.sroa.0.011.unr = phi i64 [ 0, %bb2.lr.ph ], [ %8, %bb9.1 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb14, label %bb2.epil

bb2.epil:                                         ; preds = %bb14.loopexit.unr-lcssa
  %3 = getelementptr inbounds nuw i8, ptr %_22, i64 %iter.sroa.0.011.unr
  %_8.epil = load i8, ptr %3, align 1, !noundef !23
  %_7.epil = add i8 %_8.epil, -97
  %_6.epil = zext i8 %_7.epil to i64
  %_5.epil = icmp eq i64 %iter.sroa.0.011.unr, %_6.epil
  br i1 %_5.epil, label %bb7.epil, label %bb5.epil

bb5.epil:                                         ; preds = %bb2.epil
  %_12.epil = add i8 %_8.epil, -65
  %_11.epil = zext i8 %_12.epil to i64
  %_10.epil = icmp eq i64 %iter.sroa.0.011.unr, %_11.epil
  br i1 %_10.epil, label %bb7.epil, label %bb14

bb7.epil:                                         ; preds = %bb5.epil, %bb2.epil
  %4 = add i32 %result.sroa.0.012.unr, 1
  br label %bb14

bb14:                                             ; preds = %bb14.loopexit.unr-lcssa, %bb7.epil, %bb5.epil, %start
  %result.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %result.sroa.0.1.lcssa.ph, %bb14.loopexit.unr-lcssa ], [ %4, %bb7.epil ], [ %result.sroa.0.012.unr, %bb5.epil ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1031)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1034)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1037)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  %self1.i.i.i.i1.i.i = load i64, ptr %str, align 8, !range !1046, !alias.scope !1047, !noalias !1050, !noundef !23
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h61ac49c6e4f6f7beE.exit", label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb14
  %5 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %self3.i.i.i.i4.i.i = load ptr, ptr %5, align 8, !alias.scope !1047, !noalias !1050, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !1052
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h61ac49c6e4f6f7beE.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h61ac49c6e4f6f7beE.exit": ; preds = %bb14, %bb2.i.i.i3.i.i
  ret i32 %result.sroa.0.0.lcssa

bb2:                                              ; preds = %bb9.1, %bb2.lr.ph.new
  %result.sroa.0.012 = phi i32 [ 0, %bb2.lr.ph.new ], [ %result.sroa.0.1.1, %bb9.1 ]
  %iter.sroa.0.011 = phi i64 [ 0, %bb2.lr.ph.new ], [ %8, %bb9.1 ]
  %niter = phi i64 [ 0, %bb2.lr.ph.new ], [ %niter.next.1, %bb9.1 ]
  %6 = or disjoint i64 %iter.sroa.0.011, 1
  %7 = getelementptr inbounds nuw i8, ptr %_22, i64 %iter.sroa.0.011
  %_8 = load i8, ptr %7, align 1, !noundef !23
  %_7 = add i8 %_8, -97
  %_6 = zext i8 %_7 to i64
  %_5 = icmp eq i64 %iter.sroa.0.011, %_6
  br i1 %_5, label %bb7, label %bb5

bb5:                                              ; preds = %bb2
  %_12 = add i8 %_8, -65
  %_11 = zext i8 %_12 to i64
  %_10 = icmp eq i64 %iter.sroa.0.011, %_11
  br i1 %_10, label %bb7, label %bb9

bb9:                                              ; preds = %bb5, %bb7
  %result.sroa.0.1 = phi i32 [ %11, %bb7 ], [ %result.sroa.0.012, %bb5 ]
  %8 = add nuw nsw i64 %iter.sroa.0.011, 2
  %9 = getelementptr inbounds nuw i8, ptr %_22, i64 %6
  %_8.1 = load i8, ptr %9, align 1, !noundef !23
  %_7.1 = add i8 %_8.1, -97
  %_6.1 = zext i8 %_7.1 to i64
  %_5.1 = icmp eq i64 %6, %_6.1
  br i1 %_5.1, label %bb7.1, label %bb5.1

bb5.1:                                            ; preds = %bb9
  %_12.1 = add i8 %_8.1, -65
  %_11.1 = zext i8 %_12.1 to i64
  %_10.1 = icmp eq i64 %6, %_11.1
  br i1 %_10.1, label %bb7.1, label %bb9.1

bb7.1:                                            ; preds = %bb5.1, %bb9
  %10 = add i32 %result.sroa.0.1, 1
  br label %bb9.1

bb9.1:                                            ; preds = %bb7.1, %bb5.1
  %result.sroa.0.1.1 = phi i32 [ %10, %bb7.1 ], [ %result.sroa.0.1, %bb5.1 ]
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb14.loopexit.unr-lcssa, label %bb2

bb7:                                              ; preds = %bb5, %bb2
  %11 = add i32 %result.sroa.0.012, 1
  br label %bb9
}
