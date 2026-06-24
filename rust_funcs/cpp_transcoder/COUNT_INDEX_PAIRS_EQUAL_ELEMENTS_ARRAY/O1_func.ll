define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_0.i.i.i27 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i27, label %bb5.preheader, label %bb6

bb5.preheader:                                    ; preds = %start
  %1 = add nuw i32 %n, 1
  br label %bb5

bb2.loopexit:                                     ; preds = %bb13, %bb5
  %ans.sroa.0.1.lcssa = phi i32 [ %ans.sroa.0.029, %bb5 ], [ %spec.select, %bb13 ]
  %_0.i.i.i = icmp slt i32 %spec.select1330, %n
  %2 = zext i1 %_0.i.i.i to i32
  %spec.select13 = add nuw nsw i32 %spec.select1330, %2
  br i1 %_0.i.i.i, label %bb5, label %bb6

bb5:                                              ; preds = %bb5.preheader, %bb2.loopexit
  %spec.select1330 = phi i32 [ %spec.select13, %bb2.loopexit ], [ 1, %bb5.preheader ]
  %ans.sroa.0.029 = phi i32 [ %ans.sroa.0.1.lcssa, %bb2.loopexit ], [ 0, %bb5.preheader ]
  %iter.sroa.0.028 = phi i32 [ %spec.select1330, %bb2.loopexit ], [ 0, %bb5.preheader ]
  %_12 = add nuw i32 %iter.sroa.0.028, 1
  %_0.i.i.i922 = icmp slt i32 %_12, %n
  br i1 %_0.i.i.i922, label %bb10.lr.ph, label %bb2.loopexit

bb10.lr.ph:                                       ; preds = %bb5
  %_20 = zext nneg i32 %iter.sroa.0.028 to i64
  %_21 = icmp samesign ult i32 %iter.sroa.0.028, 2
  %3 = getelementptr inbounds nuw i32, ptr %arr, i64 %_20
  br i1 %_21, label %bb10.preheader, label %panic

bb10.preheader:                                   ; preds = %bb10.lr.ph
  %spec.select1523 = or disjoint i32 %iter.sroa.0.028, 2
  %4 = zext nneg i32 %spec.select1523 to i64
  %narrow = add nuw nsw i32 %iter.sroa.0.028, 1
  %5 = zext nneg i32 %narrow to i64
  br label %bb10

bb6:                                              ; preds = %bb2.loopexit, %start
  %ans.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %ans.sroa.0.1.lcssa, %bb2.loopexit ]
  ret i32 %ans.sroa.0.0.lcssa

bb10:                                             ; preds = %bb10.preheader, %bb13
  %indvars.iv34 = phi i64 [ %5, %bb10.preheader ], [ %indvars.iv.next35, %bb13 ]
  %indvars.iv = phi i64 [ %4, %bb10.preheader ], [ %indvars.iv.next, %bb13 ]
  %ans.sroa.0.125 = phi i32 [ %ans.sroa.0.029, %bb10.preheader ], [ %spec.select, %bb13 ]
  %exitcond.not = icmp eq i64 %indvars.iv34, 2
  br i1 %exitcond.not, label %panic2, label %bb13

panic:                                            ; preds = %bb10.lr.ph
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_20, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e9afdf3f4dd17d4ad0f7c09e13dd7463) #24
  unreachable

bb13:                                             ; preds = %bb10
  %_19 = load i32, ptr %3, align 4, !noundef !37
  %6 = getelementptr inbounds nuw i32, ptr %arr, i64 %indvars.iv34
  %_22 = load i32, ptr %6, align 4, !noundef !37
  %_18 = icmp eq i32 %_19, %_22
  %7 = zext i1 %_18 to i32
  %spec.select = add i32 %ans.sroa.0.125, %7
  %indvars.iv.next = add i64 %indvars.iv, 1
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond38.not = icmp eq i32 %1, %lftr.wideiv
  br i1 %exitcond38.not, label %bb2.loopexit, label %bb10

panic2:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv34, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a946999821f56ec0366d45d7c5f5fb74) #24
  unreachable
}
