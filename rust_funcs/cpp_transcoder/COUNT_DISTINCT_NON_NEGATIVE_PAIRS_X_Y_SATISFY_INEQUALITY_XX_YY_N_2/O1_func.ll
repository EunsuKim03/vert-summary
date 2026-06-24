define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #12 {
start:
  %_0.i.i.i18 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i18, label %bb8.preheader.lr.ph, label %bb6

bb8.preheader.lr.ph:                              ; preds = %start
  %_21 = sitofp i32 %n to float
  %xtraiter = and i32 %n, 1
  %0 = icmp eq i32 %n, 1
  %unroll_iter = and i32 %n, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br label %bb8.preheader

bb2.loopexit.unr-lcssa.loopexit:                  ; preds = %bb10
  %1 = uitofp nneg i32 %spec.select13.1 to float
  br label %bb2.loopexit.unr-lcssa

bb2.loopexit.unr-lcssa:                           ; preds = %bb2.loopexit.unr-lcssa.loopexit, %bb8.preheader
  %res.sroa.0.2.lcssa.ph = phi i32 [ poison, %bb8.preheader ], [ %res.sroa.0.2.1, %bb2.loopexit.unr-lcssa.loopexit ]
  %res.sroa.0.117.unr = phi i32 [ %res.sroa.0.020, %bb8.preheader ], [ %res.sroa.0.2.1, %bb2.loopexit.unr-lcssa.loopexit ]
  %iter1.sroa.0.016.unr = phi float [ 0.000000e+00, %bb8.preheader ], [ %1, %bb2.loopexit.unr-lcssa.loopexit ]
  br i1 %lcmp.mod.not, label %bb2.loopexit, label %bb10.epil

bb10.epil:                                        ; preds = %bb2.loopexit.unr-lcssa
  %_19.epil = fmul float %iter1.sroa.0.016.unr, %iter1.sroa.0.016.unr
  %_16.epil = fadd float %_17, %_19.epil
  %_15.epil = fcmp olt float %_16.epil, %_21
  %2 = zext i1 %_15.epil to i32
  %res.sroa.0.2.epil = add i32 %res.sroa.0.117.unr, %2
  br label %bb2.loopexit

bb2.loopexit:                                     ; preds = %bb2.loopexit.unr-lcssa, %bb10.epil
  %res.sroa.0.2.lcssa = phi i32 [ %res.sroa.0.2.lcssa.ph, %bb2.loopexit.unr-lcssa ], [ %res.sroa.0.2.epil, %bb10.epil ]
  %_0.i.i.i = icmp slt i32 %spec.select21, %n
  %3 = zext i1 %_0.i.i.i to i32
  %spec.select = add nuw nsw i32 %spec.select21, %3
  br i1 %_0.i.i.i, label %bb8.preheader, label %bb6

bb8.preheader:                                    ; preds = %bb8.preheader.lr.ph, %bb2.loopexit
  %spec.select21 = phi i32 [ 1, %bb8.preheader.lr.ph ], [ %spec.select, %bb2.loopexit ]
  %res.sroa.0.020 = phi i32 [ 0, %bb8.preheader.lr.ph ], [ %res.sroa.0.2.lcssa, %bb2.loopexit ]
  %iter.sroa.0.019 = phi i32 [ 0, %bb8.preheader.lr.ph ], [ %spec.select21, %bb2.loopexit ]
  %_18 = uitofp nneg i32 %iter.sroa.0.019 to float
  %_17 = fmul float %_18, %_18
  br i1 %0, label %bb2.loopexit.unr-lcssa, label %bb10

bb6:                                              ; preds = %bb2.loopexit, %start
  %res.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %res.sroa.0.2.lcssa, %bb2.loopexit ]
  ret i32 %res.sroa.0.0.lcssa

bb10:                                             ; preds = %bb8.preheader, %bb10
  %res.sroa.0.117 = phi i32 [ %res.sroa.0.2.1, %bb10 ], [ %res.sroa.0.020, %bb8.preheader ]
  %iter1.sroa.0.016 = phi i32 [ %spec.select13.1, %bb10 ], [ 0, %bb8.preheader ]
  %niter = phi i32 [ %niter.next.1, %bb10 ], [ 0, %bb8.preheader ]
  %spec.select13 = or disjoint i32 %iter1.sroa.0.016, 1
  %_20 = uitofp nneg i32 %iter1.sroa.0.016 to float
  %_19 = fmul float %_20, %_20
  %_16 = fadd float %_17, %_19
  %_15 = fcmp olt float %_16, %_21
  %4 = zext i1 %_15 to i32
  %res.sroa.0.2 = add i32 %res.sroa.0.117, %4
  %spec.select13.1 = add nuw nsw i32 %iter1.sroa.0.016, 2
  %_20.1 = uitofp nneg i32 %spec.select13 to float
  %_19.1 = fmul float %_20.1, %_20.1
  %_16.1 = fadd float %_17, %_19.1
  %_15.1 = fcmp olt float %_16.1, %_21
  %5 = zext i1 %_15.1 to i32
  %res.sroa.0.2.1 = add i32 %res.sroa.0.2, %5
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb2.loopexit.unr-lcssa.loopexit, label %bb10
}
