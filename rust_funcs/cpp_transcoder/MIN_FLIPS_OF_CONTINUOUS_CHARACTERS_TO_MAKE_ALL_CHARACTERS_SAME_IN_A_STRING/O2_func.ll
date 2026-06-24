define noundef range(i32 -1073741824, 1073741824) i32 @f_gold(ptr noalias noundef nonnull readonly align 4 captures(none) %str.0, i64 noundef range(i64 0, 2305843009213693952) %str.1, i32 noundef %n) unnamed_addr #1 {
start:
  %_126 = icmp sgt i32 %n, 0
  br i1 %_126, label %bb7.preheader, label %bb8

bb7.preheader:                                    ; preds = %start
  %0 = zext nneg i32 %n to i64
  %1 = add nsw i32 %n, -1
  %2 = zext nneg i32 %1 to i64
  %.not.not = icmp samesign ugt i64 %str.1, %2
  br i1 %.not.not, label %bb7.preheader12, label %panic

bb7.preheader12:                                  ; preds = %bb7.preheader
  %min.iters.check = icmp ult i32 %n, 8
  br i1 %min.iters.check, label %bb7.preheader15, label %vector.ph

vector.ph:                                        ; preds = %bb7.preheader12
  %n.vec = and i64 %0, 2147483640
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %11, %vector.body ]
  %vec.phi13 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %12, %vector.body ]
  %vector.recur = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 32>, %vector.ph ], [ %wide.load14, %vector.body ]
  %3 = getelementptr inbounds nuw i32, ptr %str.0, i64 %index
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %wide.load = load <4 x i32>, ptr %3, align 4
  %wide.load14 = load <4 x i32>, ptr %4, align 4
  %5 = shufflevector <4 x i32> %vector.recur, <4 x i32> %wide.load, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %6 = shufflevector <4 x i32> %wide.load, <4 x i32> %wide.load14, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %7 = icmp ne <4 x i32> %5, %wide.load
  %8 = icmp ne <4 x i32> %6, %wide.load14
  %9 = zext <4 x i1> %7 to <4 x i32>
  %10 = zext <4 x i1> %8 to <4 x i32>
  %11 = add <4 x i32> %vec.phi, %9
  %12 = add <4 x i32> %vec.phi13, %10
  %index.next = add nuw i64 %index, 8
  %13 = icmp eq i64 %index.next, %n.vec
  br i1 %13, label %middle.block, label %vector.body, !llvm.loop !1031

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %12, %11
  %14 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  %vector.recur.extract = extractelement <4 x i32> %wide.load14, i64 3
  %cmp.n = icmp eq i64 %n.vec, %0
  br i1 %cmp.n, label %bb8.loopexit, label %bb7.preheader15

bb7.preheader15:                                  ; preds = %bb7.preheader12, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %bb7.preheader12 ], [ %n.vec, %middle.block ]
  %res.sroa.0.09.ph = phi i32 [ 0, %bb7.preheader12 ], [ %14, %middle.block ]
  %last.sroa.0.07.ph = phi i32 [ 32, %bb7.preheader12 ], [ %vector.recur.extract, %middle.block ]
  br label %bb7

bb8.loopexit:                                     ; preds = %bb7, %middle.block
  %spec.select.lcssa = phi i32 [ %14, %middle.block ], [ %spec.select, %bb7 ]
  %15 = sdiv i32 %spec.select.lcssa, 2
  br label %bb8

bb8:                                              ; preds = %bb8.loopexit, %start
  %res.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %15, %bb8.loopexit ]
  ret i32 %res.sroa.0.0.lcssa

bb7:                                              ; preds = %bb7.preheader15, %bb7
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb7 ], [ %indvars.iv.ph, %bb7.preheader15 ]
  %res.sroa.0.09 = phi i32 [ %spec.select, %bb7 ], [ %res.sroa.0.09.ph, %bb7.preheader15 ]
  %last.sroa.0.07 = phi i32 [ %17, %bb7 ], [ %last.sroa.0.07.ph, %bb7.preheader15 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %16 = getelementptr inbounds nuw i32, ptr %str.0, i64 %indvars.iv
  %17 = load i32, ptr %16, align 4, !range !1032, !noundef !23
  %_6.not = icmp ne i32 %last.sroa.0.07, %17
  %18 = zext i1 %_6.not to i32
  %spec.select = add i32 %res.sroa.0.09, %18
  %exitcond.not = icmp eq i64 %indvars.iv.next, %0
  br i1 %exitcond.not, label %bb8.loopexit, label %bb7, !llvm.loop !1033

panic:                                            ; preds = %bb7.preheader
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %str.1, i64 noundef %str.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b4febcbffa2b604016f24cd2d90fd1c2) #18
  unreachable
}
