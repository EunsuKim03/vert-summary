define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 {
start:
  %a.sroa.1.0.extract.shift = lshr i64 %0, 32
  %_139 = icmp sgt i32 %n, 1
  br i1 %_139, label %bb4.preheader, label %bb5

bb4.preheader:                                    ; preds = %start
  %.not22 = icmp eq i32 %n, 2
  br i1 %.not22, label %bb4, label %panic

bb5:                                              ; preds = %start
  %1 = trunc i64 %0 to i32
  %_2012 = icmp eq i32 %n, 1
  br i1 %_2012, label %bb9.preheader, label %bb10

bb9.preheader:                                    ; preds = %bb4, %bb5
  %x1.sroa.0.0.lcssa26 = phi i32 [ %1, %bb5 ], [ %9, %bb4 ]
  %2 = add nuw nsw i32 %n, 1
  %min.iters.check = icmp ult i32 %n, 8
  br i1 %min.iters.check, label %bb9.preheader31, label %vector.ph

vector.ph:                                        ; preds = %bb9.preheader
  %n.vec = and i32 %n, -8
  %3 = or disjoint i32 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <4 x i32> [ <i32 2, i32 3, i32 4, i32 5>, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ <i32 1, i32 0, i32 0, i32 0>, %vector.ph ], [ %4, %vector.body ]
  %vec.phi30 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %5, %vector.body ]
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %4 = xor <4 x i32> %vec.ind, %vec.phi
  %5 = xor <4 x i32> %step.add, %vec.phi30
  %index.next = add nuw i32 %index, 8
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %6 = icmp eq i32 %index.next, %n.vec
  br i1 %6, label %middle.block, label %vector.body, !llvm.loop !1031

middle.block:                                     ; preds = %vector.body
  %bin.rdx = xor <4 x i32> %5, %4
  %7 = tail call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %bin.rdx)
  %cmp.n = icmp eq i32 %n, %n.vec
  br i1 %cmp.n, label %bb10, label %bb9.preheader31

bb9.preheader31:                                  ; preds = %bb9.preheader, %middle.block
  %iter1.sroa.0.014.ph = phi i32 [ 2, %bb9.preheader ], [ %3, %middle.block ]
  %x2.sroa.0.013.ph = phi i32 [ 1, %bb9.preheader ], [ %7, %middle.block ]
  br label %bb9

bb4:                                              ; preds = %bb4.preheader
  %8 = xor i64 %a.sroa.1.0.extract.shift, %0
  %9 = trunc i64 %8 to i32
  br label %bb9.preheader

bb10:                                             ; preds = %bb9, %middle.block, %bb5
  %x1.sroa.0.0.lcssa25 = phi i32 [ %1, %bb5 ], [ %x1.sroa.0.0.lcssa26, %middle.block ], [ %x1.sroa.0.0.lcssa26, %bb9 ]
  %x2.sroa.0.0.lcssa = phi i32 [ 1, %bb5 ], [ %7, %middle.block ], [ %11, %bb9 ]
  %_0 = xor i32 %x2.sroa.0.0.lcssa, %x1.sroa.0.0.lcssa25
  ret i32 %_0

bb9:                                              ; preds = %bb9.preheader31, %bb9
  %iter1.sroa.0.014 = phi i32 [ %10, %bb9 ], [ %iter1.sroa.0.014.ph, %bb9.preheader31 ]
  %x2.sroa.0.013 = phi i32 [ %11, %bb9 ], [ %x2.sroa.0.013.ph, %bb9.preheader31 ]
  %10 = add nuw i32 %iter1.sroa.0.014, 1
  %11 = xor i32 %iter1.sroa.0.014, %x2.sroa.0.013
  %exitcond20 = icmp eq i32 %iter1.sroa.0.014, %2
  br i1 %exitcond20, label %bb10, label %bb9, !llvm.loop !1032

panic:                                            ; preds = %bb4.preheader
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_f41ef219a0795eef5f32ee9179de7056) #18
  unreachable
}
