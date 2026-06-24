define noundef range(i32 0, -2147483648) i32 @f_gold(i32 noundef %s) unnamed_addr #12 personality ptr @rust_eh_personality {
start:
  %_4 = add i32 %s, -1
  %_0.i.i.i18 = icmp sgt i32 %_4, 1
  br i1 %_0.i.i.i18, label %bb8.preheader.lr.ph, label %bb6

bb8.preheader.lr.ph:                              ; preds = %start
  %_0.i.i.i815 = icmp sgt i32 %s, 1
  %xtraiter = and i32 %_4, 1
  %0 = icmp eq i32 %s, 2
  %unroll_iter = and i32 %_4, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br label %bb8.preheader

bb2.loopexit.loopexit.unr-lcssa:                  ; preds = %bb10, %bb10.preheader
  %_0.sroa.0.0.i.lcssa.ph = phi i32 [ poison, %bb10.preheader ], [ %_0.sroa.0.0.i.1, %bb10 ]
  %maxvalue.sroa.0.117.unr = phi i32 [ %maxvalue.sroa.0.021, %bb10.preheader ], [ %_0.sroa.0.0.i.1, %bb10 ]
  %iter1.sroa.0.016.unr = phi i32 [ 1, %bb10.preheader ], [ %spec.select13.1, %bb10 ]
  br i1 %lcmp.mod.not, label %bb2.loopexit, label %bb10.epil

bb10.epil:                                        ; preds = %bb2.loopexit.loopexit.unr-lcssa
  %1 = add nuw i32 %iter.sroa.0.020, %iter1.sroa.0.016.unr
  %k.epil = sub i32 %s, %1
  %_21.epil = mul i32 %iter1.sroa.0.016.unr, %iter.sroa.0.020
  %_20.epil = mul i32 %_21.epil, %k.epil
  %_0.sroa.0.0.i.epil = tail call noundef i32 @llvm.smax.i32(i32 %_20.epil, i32 %maxvalue.sroa.0.117.unr)
  br label %bb2.loopexit

bb2.loopexit:                                     ; preds = %bb10.epil, %bb2.loopexit.loopexit.unr-lcssa, %bb8.preheader
  %maxvalue.sroa.0.1.lcssa = phi i32 [ %maxvalue.sroa.0.021, %bb8.preheader ], [ %_0.sroa.0.0.i.lcssa.ph, %bb2.loopexit.loopexit.unr-lcssa ], [ %_0.sroa.0.0.i.epil, %bb10.epil ]
  %_0.i.i.i = icmp slt i32 %spec.select22, %_4
  %2 = zext i1 %_0.i.i.i to i32
  %spec.select = add nuw nsw i32 %spec.select22, %2
  br i1 %_0.i.i.i, label %bb8.preheader, label %bb6

bb8.preheader:                                    ; preds = %bb8.preheader.lr.ph, %bb2.loopexit
  %spec.select22 = phi i32 [ 2, %bb8.preheader.lr.ph ], [ %spec.select, %bb2.loopexit ]
  %maxvalue.sroa.0.021 = phi i32 [ 0, %bb8.preheader.lr.ph ], [ %maxvalue.sroa.0.1.lcssa, %bb2.loopexit ]
  %iter.sroa.0.020 = phi i32 [ 1, %bb8.preheader.lr.ph ], [ %spec.select22, %bb2.loopexit ]
  br i1 %_0.i.i.i815, label %bb10.preheader, label %bb2.loopexit

bb10.preheader:                                   ; preds = %bb8.preheader
  br i1 %0, label %bb2.loopexit.loopexit.unr-lcssa, label %bb10.preheader.new

bb10.preheader.new:                               ; preds = %bb10.preheader
  %invariant.op = add nuw i32 1, %iter.sroa.0.020
  br label %bb10

bb6:                                              ; preds = %bb2.loopexit, %start
  %maxvalue.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %maxvalue.sroa.0.1.lcssa, %bb2.loopexit ]
  ret i32 %maxvalue.sroa.0.0.lcssa

bb10:                                             ; preds = %bb10, %bb10.preheader.new
  %maxvalue.sroa.0.117 = phi i32 [ %maxvalue.sroa.0.021, %bb10.preheader.new ], [ %_0.sroa.0.0.i.1, %bb10 ]
  %iter1.sroa.0.016 = phi i32 [ 1, %bb10.preheader.new ], [ %spec.select13.1, %bb10 ]
  %niter = phi i32 [ 0, %bb10.preheader.new ], [ %niter.next.1, %bb10 ]
  %spec.select13 = add nuw nsw i32 %iter1.sroa.0.016, 1
  %3 = add nuw i32 %iter.sroa.0.020, %iter1.sroa.0.016
  %k = sub i32 %s, %3
  %_21 = mul i32 %iter1.sroa.0.016, %iter.sroa.0.020
  %_20 = mul i32 %_21, %k
  %_0.sroa.0.0.i = tail call noundef i32 @llvm.smax.i32(i32 %_20, i32 %maxvalue.sroa.0.117)
  %spec.select13.1 = add nuw nsw i32 %iter1.sroa.0.016, 2
  %.reass = add nuw i32 %iter1.sroa.0.016, %invariant.op
  %k.1 = sub i32 %s, %.reass
  %_21.1 = mul i32 %spec.select13, %iter.sroa.0.020
  %_20.1 = mul i32 %_21.1, %k.1
  %_0.sroa.0.0.i.1 = tail call noundef i32 @llvm.smax.i32(i32 %_20.1, i32 %_0.sroa.0.0.i)
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb2.loopexit.loopexit.unr-lcssa, label %bb10
}
