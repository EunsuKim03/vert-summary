define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 {
start:
  %a.sroa.1.0.extract.shift = lshr i64 %0, 32
  %_1716 = icmp sgt i32 %n, 1
  br i1 %_1716, label %bb7.preheader, label %bb8

bb7.preheader:                                    ; preds = %start
  %.not28 = icmp eq i32 %n, 2
  br i1 %.not28, label %bb7, label %panic

bb8:                                              ; preds = %start
  %1 = trunc i64 %0 to i32
  %_0.i.not.i19.not = icmp eq i32 %n, 1
  br i1 %_0.i.not.i19.not, label %bb2.i.preheader, label %bb6

bb2.i.preheader:                                  ; preds = %bb7, %bb8
  %_1134 = phi i32 [ 2, %bb8 ], [ 3, %bb7 ]
  %x1.sroa.0.0.lcssa32 = phi i32 [ %1, %bb8 ], [ %3, %bb7 ]
  br label %bb2.i

bb7:                                              ; preds = %bb7.preheader
  %2 = xor i64 %a.sroa.1.0.extract.shift, %0
  %3 = trunc i64 %2 to i32
  br label %bb2.i.preheader

bb2.i:                                            ; preds = %bb2.i.preheader, %bb2.i
  %x2.sroa.0.021 = phi i32 [ %5, %bb2.i ], [ 1, %bb2.i.preheader ]
  %iter.sroa.0.020 = phi i32 [ %spec.select14, %bb2.i ], [ 2, %bb2.i.preheader ]
  %_0.i3.i = icmp sgt i32 %iter.sroa.0.020, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %4 = zext i1 %not._0.i3.i to i32
  %spec.select14 = add nuw nsw i32 %iter.sroa.0.020, %4
  %5 = xor i32 %x2.sroa.0.021, %iter.sroa.0.020
  %_0.i.not.i = icmp samesign ugt i32 %spec.select14, %_1134
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb6, label %bb2.i

bb6:                                              ; preds = %bb2.i, %bb8
  %x1.sroa.0.0.lcssa33 = phi i32 [ %1, %bb8 ], [ %x1.sroa.0.0.lcssa32, %bb2.i ]
  %x2.sroa.0.0.lcssa = phi i32 [ 1, %bb8 ], [ %5, %bb2.i ]
  %_0 = xor i32 %x2.sroa.0.0.lcssa, %x1.sroa.0.0.lcssa33
  ret i32 %_0

panic:                                            ; preds = %bb7.preheader
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_7dbce5e5cb39e1f3c66dc03311dd6197) #18
  unreachable
}
