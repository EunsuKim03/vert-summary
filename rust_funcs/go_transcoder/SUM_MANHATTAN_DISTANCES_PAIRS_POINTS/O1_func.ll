define noundef i32 @f_gold(i64 %0, i64 %1, i32 noundef %n) unnamed_addr #3 {
start:
  %y = alloca [8 x i8], align 8
  %x = alloca [8 x i8], align 8
  store i64 %0, ptr %x, align 8
  store i64 %1, ptr %y, align 8
  %_0.i.i.i30 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i30, label %bb5.preheader, label %bb6

bb5.preheader:                                    ; preds = %start
  %2 = add nuw i32 %n, 1
  br label %bb5

bb2.loopexit:                                     ; preds = %bb13, %bb5
  %sum.sroa.0.1.lcssa = phi i32 [ %sum.sroa.0.032, %bb5 ], [ %10, %bb13 ]
  %_0.i.i.i = icmp slt i32 %spec.select33, %n
  %3 = zext i1 %_0.i.i.i to i32
  %spec.select = add nuw nsw i32 %spec.select33, %3
  br i1 %_0.i.i.i, label %bb5, label %bb6

bb5:                                              ; preds = %bb5.preheader, %bb2.loopexit
  %spec.select33 = phi i32 [ %spec.select, %bb2.loopexit ], [ 1, %bb5.preheader ]
  %sum.sroa.0.032 = phi i32 [ %sum.sroa.0.1.lcssa, %bb2.loopexit ], [ 0, %bb5.preheader ]
  %iter.sroa.0.031 = phi i32 [ %spec.select33, %bb2.loopexit ], [ 0, %bb5.preheader ]
  %_13 = add nuw i32 %iter.sroa.0.031, 1
  %_0.i.i.i1225 = icmp slt i32 %_13, %n
  br i1 %_0.i.i.i1225, label %bb10.lr.ph, label %bb2.loopexit

bb10.lr.ph:                                       ; preds = %bb5
  %_23 = zext nneg i32 %iter.sroa.0.031 to i64
  %_24 = icmp samesign ult i32 %iter.sroa.0.031, 2
  %4 = getelementptr inbounds nuw i32, ptr %x, i64 %_23
  %5 = getelementptr inbounds nuw i32, ptr %y, i64 %_23
  br i1 %_24, label %bb10.preheader, label %panic

bb10.preheader:                                   ; preds = %bb10.lr.ph
  %spec.select1826 = or disjoint i32 %iter.sroa.0.031, 2
  %6 = zext nneg i32 %spec.select1826 to i64
  %narrow = add nuw nsw i32 %iter.sroa.0.031, 1
  %7 = zext nneg i32 %narrow to i64
  br label %bb10

bb6:                                              ; preds = %bb2.loopexit, %start
  %sum.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %sum.sroa.0.1.lcssa, %bb2.loopexit ]
  ret i32 %sum.sroa.0.0.lcssa

bb10:                                             ; preds = %bb10.preheader, %bb13
  %indvars.iv37 = phi i64 [ %7, %bb10.preheader ], [ %indvars.iv.next38, %bb13 ]
  %indvars.iv = phi i64 [ %6, %bb10.preheader ], [ %indvars.iv.next, %bb13 ]
  %sum.sroa.0.128 = phi i32 [ %sum.sroa.0.032, %bb10.preheader ], [ %10, %bb13 ]
  %exitcond.not = icmp eq i64 %indvars.iv37, 2
  br i1 %exitcond.not, label %panic2, label %bb13

panic:                                            ; preds = %bb10.lr.ph
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_23, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a17745fe034520cbb89b3ee54ad46d4b) #24
  unreachable

bb13:                                             ; preds = %bb10
  %_22 = load i32, ptr %4, align 4, !noundef !37
  %8 = getelementptr inbounds nuw i32, ptr %x, i64 %indvars.iv37
  %_25 = load i32, ptr %8, align 4, !noundef !37
  %_21 = sub i32 %_22, %_25
  %_0.sroa.0.0.i = tail call noundef range(i32 0, -2147483647) i32 @llvm.abs.i32(i32 %_21, i1 false)
  %_30 = load i32, ptr %5, align 4, !noundef !37
  %9 = getelementptr inbounds nuw i32, ptr %y, i64 %indvars.iv37
  %_31 = load i32, ptr %9, align 4, !noundef !37
  %_29 = sub i32 %_30, %_31
  %_0.sroa.0.0.i16 = tail call noundef range(i32 0, -2147483647) i32 @llvm.abs.i32(i32 %_29, i1 false)
  %_19 = add i32 %_0.sroa.0.0.i, %sum.sroa.0.128
  %10 = add i32 %_19, %_0.sroa.0.0.i16
  %indvars.iv.next = add i64 %indvars.iv, 1
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond41.not = icmp eq i32 %2, %lftr.wideiv
  br i1 %exitcond41.not, label %bb2.loopexit, label %bb10

panic2:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv37, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_450c4b917d27350647fbadd90f576307) #24
  unreachable
}
