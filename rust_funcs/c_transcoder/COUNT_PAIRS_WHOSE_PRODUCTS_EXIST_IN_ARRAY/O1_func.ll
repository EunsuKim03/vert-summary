define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_0.i.i.i43 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i43, label %bb5.preheader, label %bb6

bb5.preheader:                                    ; preds = %start
  %1 = add nuw i32 %n, 1
  br label %bb5

bb2.loopexit:                                     ; preds = %bb21, %bb5
  %result.sroa.0.1.lcssa = phi i32 [ %result.sroa.0.045, %bb5 ], [ %result.sroa.0.2, %bb21 ]
  %_0.i.i.i = icmp slt i32 %spec.select46, %n
  %2 = zext i1 %_0.i.i.i to i32
  %spec.select = add nuw nsw i32 %spec.select46, %2
  br i1 %_0.i.i.i, label %bb5, label %bb6

bb5:                                              ; preds = %bb5.preheader, %bb2.loopexit
  %spec.select46 = phi i32 [ %spec.select, %bb2.loopexit ], [ 1, %bb5.preheader ]
  %result.sroa.0.045 = phi i32 [ %result.sroa.0.1.lcssa, %bb2.loopexit ], [ 0, %bb5.preheader ]
  %iter.sroa.0.044 = phi i32 [ %spec.select46, %bb2.loopexit ], [ 0, %bb5.preheader ]
  %_12 = add nuw i32 %iter.sroa.0.044, 1
  %_0.i.i.i1238 = icmp slt i32 %_12, %n
  br i1 %_0.i.i.i1238, label %bb10.lr.ph, label %bb2.loopexit

bb10.lr.ph:                                       ; preds = %bb5
  %_20 = zext i32 %iter.sroa.0.044 to i64
  %_21 = icmp samesign ult i32 %iter.sroa.0.044, 2
  %3 = getelementptr inbounds nuw i32, ptr %arr, i64 %_20
  br i1 %_21, label %bb10.preheader, label %panic

bb10.preheader:                                   ; preds = %bb10.lr.ph
  %spec.select2439 = or disjoint i32 %iter.sroa.0.044, 2
  %4 = zext nneg i32 %spec.select2439 to i64
  br label %bb10

bb6:                                              ; preds = %bb2.loopexit, %start
  %result.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %result.sroa.0.1.lcssa, %bb2.loopexit ]
  ret i32 %result.sroa.0.0.lcssa

bb10:                                             ; preds = %bb10.preheader, %bb21
  %indvars.iv53.in = phi i64 [ %_20, %bb10.preheader ], [ %indvars.iv53, %bb21 ]
  %indvars.iv = phi i64 [ %4, %bb10.preheader ], [ %indvars.iv.next, %bb21 ]
  %result.sroa.0.141 = phi i32 [ %result.sroa.0.045, %bb10.preheader ], [ %result.sroa.0.2, %bb21 ]
  %indvars.iv53 = add nuw nsw i64 %indvars.iv53.in, 1
  %_24 = icmp eq i64 %indvars.iv53.in, 0
  br i1 %_24, label %bb13, label %panic3

panic:                                            ; preds = %bb10.lr.ph
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_20, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_13c27fcf3d678ae4e6a0d1dfb26c3a10) #24
  unreachable

bb13:                                             ; preds = %bb10
  %_19 = load i32, ptr %3, align 4, !noundef !37
  %5 = getelementptr inbounds nuw i32, ptr %arr, i64 %indvars.iv53
  %_22 = load i32, ptr %5, align 4, !noundef !37
  %product = mul i32 %_22, %_19
  br label %bb15

panic3:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv53, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_76472c4da2527081835d3f2886221130) #24
  unreachable

bb15:                                             ; preds = %bb18, %bb13
  %iter2.sroa.0.0 = phi i32 [ 0, %bb13 ], [ %spec.select26, %bb18 ]
  %_0.i.i.i19 = icmp slt i32 %iter2.sroa.0.0, %n
  %6 = zext i1 %_0.i.i.i19 to i32
  %spec.select26 = add nuw nsw i32 %iter2.sroa.0.0, %6
  br i1 %_0.i.i.i19, label %bb17, label %bb21

bb17:                                             ; preds = %bb15
  %_33 = zext nneg i32 %iter2.sroa.0.0 to i64
  %_34 = icmp samesign ult i32 %iter2.sroa.0.0, 2
  br i1 %_34, label %bb18, label %panic4

bb21:                                             ; preds = %bb15, %bb19
  %result.sroa.0.2 = phi i32 [ %8, %bb19 ], [ %result.sroa.0.141, %bb15 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %1, %lftr.wideiv
  br i1 %exitcond.not, label %bb2.loopexit, label %bb10

bb18:                                             ; preds = %bb17
  %7 = getelementptr inbounds nuw i32, ptr %arr, i64 %_33
  %_32 = load i32, ptr %7, align 4, !noundef !37
  %_31 = icmp eq i32 %_32, %product
  br i1 %_31, label %bb19, label %bb15

panic4:                                           ; preds = %bb17
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_33, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_d4d4b375d8811b0a200bacba19c361e3) #24
  unreachable

bb19:                                             ; preds = %bb18
  %8 = add i32 %result.sroa.0.141, 1
  br label %bb21
}
