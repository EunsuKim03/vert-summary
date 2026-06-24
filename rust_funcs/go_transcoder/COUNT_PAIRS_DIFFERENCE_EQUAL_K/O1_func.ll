define noundef i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %k) unnamed_addr #3 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_0.i.i.i28 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i28, label %bb5.preheader, label %bb6

bb5.preheader:                                    ; preds = %start
  %1 = add nuw i32 %n, 1
  br label %bb5

bb2.loopexit:                                     ; preds = %bb13, %bb5
  %count.sroa.0.1.lcssa = phi i32 [ %count.sroa.0.030, %bb5 ], [ %count.sroa.0.2, %bb13 ]
  %_0.i.i.i = icmp slt i32 %spec.select31, %n
  %2 = zext i1 %_0.i.i.i to i32
  %spec.select = add nuw nsw i32 %spec.select31, %2
  br i1 %_0.i.i.i, label %bb5, label %bb6

bb5:                                              ; preds = %bb5.preheader, %bb2.loopexit
  %spec.select31 = phi i32 [ %spec.select, %bb2.loopexit ], [ 1, %bb5.preheader ]
  %count.sroa.0.030 = phi i32 [ %count.sroa.0.1.lcssa, %bb2.loopexit ], [ 0, %bb5.preheader ]
  %iter.sroa.0.029 = phi i32 [ %spec.select31, %bb2.loopexit ], [ 0, %bb5.preheader ]
  %_13 = add nuw i32 %iter.sroa.0.029, 1
  %_0.i.i.i1123 = icmp slt i32 %_13, %n
  br i1 %_0.i.i.i1123, label %bb10.lr.ph, label %bb2.loopexit

bb10.lr.ph:                                       ; preds = %bb5
  %_22 = zext nneg i32 %iter.sroa.0.029 to i64
  %_23 = icmp samesign ult i32 %iter.sroa.0.029, 2
  %3 = getelementptr inbounds nuw i32, ptr %arr, i64 %_22
  br i1 %_23, label %bb10.preheader, label %panic

bb10.preheader:                                   ; preds = %bb10.lr.ph
  %spec.select1624 = or disjoint i32 %iter.sroa.0.029, 2
  %4 = zext nneg i32 %spec.select1624 to i64
  %narrow = add nuw nsw i32 %iter.sroa.0.029, 1
  %5 = zext nneg i32 %narrow to i64
  br label %bb10

bb6:                                              ; preds = %bb2.loopexit, %start
  %count.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %count.sroa.0.1.lcssa, %bb2.loopexit ]
  ret i32 %count.sroa.0.0.lcssa

bb10:                                             ; preds = %bb10.preheader, %bb13
  %indvars.iv35 = phi i64 [ %5, %bb10.preheader ], [ %indvars.iv.next36, %bb13 ]
  %indvars.iv = phi i64 [ %4, %bb10.preheader ], [ %indvars.iv.next, %bb13 ]
  %count.sroa.0.126 = phi i32 [ %count.sroa.0.030, %bb10.preheader ], [ %count.sroa.0.2, %bb13 ]
  %exitcond.not = icmp eq i64 %indvars.iv35, 2
  br i1 %exitcond.not, label %panic2, label %bb13

panic:                                            ; preds = %bb10.lr.ph
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_22, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_92a3077a6994373282b1008c0e128c34) #24
  unreachable

bb13:                                             ; preds = %bb10
  %_21 = load i32, ptr %3, align 4, !noundef !37
  %6 = getelementptr inbounds nuw i32, ptr %arr, i64 %indvars.iv35
  %_24 = load i32, ptr %6, align 4, !noundef !37
  %_20 = sub i32 %_21, %_24
  %_19 = icmp eq i32 %_20, %k
  %_28 = sub i32 %_24, %_21
  %_27 = icmp eq i32 %_28, %k
  %or.cond = or i1 %_19, %_27
  %7 = zext i1 %or.cond to i32
  %count.sroa.0.2 = add i32 %count.sroa.0.126, %7
  %indvars.iv.next = add i64 %indvars.iv, 1
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond39.not = icmp eq i32 %1, %lftr.wideiv
  br i1 %exitcond39.not, label %bb2.loopexit, label %bb10

panic2:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv35, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_8bc4395d05ff7f18c396c119dfe5489c) #24
  unreachable
}
