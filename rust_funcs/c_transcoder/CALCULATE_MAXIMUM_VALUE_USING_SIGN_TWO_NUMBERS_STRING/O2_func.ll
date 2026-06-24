define noundef i32 @f_gold(ptr noalias noundef nonnull readonly align 4 captures(address) %str.0, i64 noundef range(i64 0, 2305843009213693952) %str.1) unnamed_addr #1 {
start:
  %_5.not = icmp eq i64 %str.1, 0
  br i1 %_5.not, label %panic, label %bb13.peel

bb13.peel:                                        ; preds = %start
  %_3 = load i32, ptr %str.0, align 4, !range !1031, !noundef !23
  %0 = add nsw i32 %_3, -48
  %_23.idx = shl nuw nsw i64 %str.1, 2
  %_23 = getelementptr inbounds nuw i8, ptr %str.0, i64 %_23.idx
  %_3.not.i.not.peel.not = icmp eq i64 %str.1, 1
  br i1 %_3.not.i.not.peel.not, label %bb5, label %bb4.peel

bb4.peel:                                         ; preds = %bb13.peel
  %_23.i.peel = getelementptr inbounds nuw i8, ptr %str.0, i64 4
  %_13.peel = load i32, ptr %_23.i.peel, align 4, !range !1031, !noundef !23
  %_13.off.peel = add nsw i32 %_13.peel, -48
  %switch.peel = icmp ult i32 %_13.off.peel, 2
  %_15.peel = icmp samesign ult i32 %_3, 50
  %or.cond.peel = select i1 %switch.peel, i1 true, i1 %_15.peel
  %1 = add nsw i32 %_13.off.peel, %0
  %2 = mul i32 %_13.off.peel, %0
  %res.sroa.0.1.peel = select i1 %or.cond.peel, i32 %1, i32 %2
  %_348 = icmp eq i64 %str.1, 2
  br i1 %_348, label %bb5, label %bb4.lr.ph

bb4.lr.ph:                                        ; preds = %bb4.peel
  %_35.i.peel = getelementptr inbounds nuw i8, ptr %str.0, i64 8
  %3 = add nsw i64 %_23.idx, -12
  %4 = and i64 %3, 4
  %lcmp.mod.not.not = icmp eq i64 %4, 0
  br i1 %lcmp.mod.not.not, label %bb4.prol, label %bb4.prol.loopexit

bb4.prol:                                         ; preds = %bb4.lr.ph
  %_40.prol = getelementptr inbounds nuw i8, ptr %str.0, i64 12
  %_13.prol = load i32, ptr %_35.i.peel, align 4, !range !1031, !noundef !23
  %_13.off.prol = add nsw i32 %_13.prol, -48
  %switch.prol = icmp ult i32 %_13.off.prol, 2
  %_15.prol = icmp slt i32 %res.sroa.0.1.peel, 2
  %or.cond.prol = select i1 %switch.prol, i1 true, i1 %_15.prol
  %5 = add i32 %_13.off.prol, %res.sroa.0.1.peel
  %6 = mul i32 %_13.off.prol, %res.sroa.0.1.peel
  %res.sroa.0.1.prol = select i1 %or.cond.prol, i32 %5, i32 %6
  br label %bb4.prol.loopexit

bb4.prol.loopexit:                                ; preds = %bb4.prol, %bb4.lr.ph
  %res.sroa.0.1.lcssa.unr = phi i32 [ poison, %bb4.lr.ph ], [ %res.sroa.0.1.prol, %bb4.prol ]
  %res.sroa.0.010.unr = phi i32 [ %res.sroa.0.1.peel, %bb4.lr.ph ], [ %res.sroa.0.1.prol, %bb4.prol ]
  %iter.sroa.0.09.unr = phi ptr [ %_35.i.peel, %bb4.lr.ph ], [ %_40.prol, %bb4.prol ]
  %7 = icmp eq i64 %3, 0
  br i1 %7, label %bb5, label %bb4

panic:                                            ; preds = %start
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_704684259ce9fb24bcc1d35342b2e4cc) #18
  unreachable

bb4:                                              ; preds = %bb4.prol.loopexit, %bb4
  %res.sroa.0.010 = phi i32 [ %res.sroa.0.1.1, %bb4 ], [ %res.sroa.0.010.unr, %bb4.prol.loopexit ]
  %iter.sroa.0.09 = phi ptr [ %_40.1, %bb4 ], [ %iter.sroa.0.09.unr, %bb4.prol.loopexit ]
  %_40 = getelementptr inbounds nuw i8, ptr %iter.sroa.0.09, i64 4
  %_13 = load i32, ptr %iter.sroa.0.09, align 4, !range !1031, !noundef !23
  %_13.off = add nsw i32 %_13, -48
  %switch = icmp ult i32 %_13.off, 2
  %_15 = icmp slt i32 %res.sroa.0.010, 2
  %or.cond = select i1 %switch, i1 true, i1 %_15
  %8 = add i32 %_13.off, %res.sroa.0.010
  %9 = mul i32 %_13.off, %res.sroa.0.010
  %res.sroa.0.1 = select i1 %or.cond, i32 %8, i32 %9
  %_40.1 = getelementptr inbounds nuw i8, ptr %iter.sroa.0.09, i64 8
  %_13.1 = load i32, ptr %_40, align 4, !range !1031, !noundef !23
  %_13.off.1 = add nsw i32 %_13.1, -48
  %switch.1 = icmp ult i32 %_13.off.1, 2
  %_15.1 = icmp slt i32 %res.sroa.0.1, 2
  %or.cond.1 = select i1 %switch.1, i1 true, i1 %_15.1
  %10 = add i32 %_13.off.1, %res.sroa.0.1
  %11 = mul i32 %_13.off.1, %res.sroa.0.1
  %res.sroa.0.1.1 = select i1 %or.cond.1, i32 %10, i32 %11
  %_34.1 = icmp eq ptr %_40.1, %_23
  br i1 %_34.1, label %bb5, label %bb4, !llvm.loop !1032

bb5:                                              ; preds = %bb4.prol.loopexit, %bb4, %bb4.peel, %bb13.peel
  %res.sroa.0.0.lcssa = phi i32 [ %0, %bb13.peel ], [ %res.sroa.0.1.peel, %bb4.peel ], [ %res.sroa.0.1.lcssa.unr, %bb4.prol.loopexit ], [ %res.sroa.0.1.1, %bb4 ]
  ret i32 %res.sroa.0.0.lcssa
}
