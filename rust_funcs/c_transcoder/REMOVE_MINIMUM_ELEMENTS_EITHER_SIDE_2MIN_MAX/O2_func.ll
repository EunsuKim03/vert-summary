define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %arr.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %arr.sroa.2.0.extract.shift = lshr i64 %0, 32
  %arr.sroa.2.0.extract.trunc = trunc nuw i64 %arr.sroa.2.0.extract.shift to i32
  %_3122 = icmp sgt i32 %n, 0
  br i1 %_3122, label %bb3, label %bb19.thread

bb19:                                             ; preds = %bb14.1, %bb14
  %longest_end.sroa.0.1.lcssa.lcssa = phi i32 [ %longest_end.sroa.0.1.lcssa, %bb14 ], [ %longest_end.sroa.0.1.lcssa.1, %bb14.1 ]
  %longest_start.sroa.0.1.lcssa.fr.lcssa = phi i32 [ %longest_start.sroa.0.1.lcssa.fr, %bb14 ], [ %longest_start.sroa.0.1.lcssa.fr.1, %bb14.1 ]
  %1 = xor i32 %longest_end.sroa.0.1.lcssa.lcssa, -1
  %_27 = icmp eq i32 %longest_start.sroa.0.1.lcssa.fr.lcssa, -1
  %_29.neg = add i32 %longest_start.sroa.0.1.lcssa.fr.lcssa, %1
  br i1 %_27, label %bb19.thread, label %2

bb19.thread:                                      ; preds = %start, %bb19
  br label %2

2:                                                ; preds = %bb19, %bb19.thread
  %3 = phi i32 [ 0, %bb19.thread ], [ %_29.neg, %bb19 ]
  %_0.sroa.0.0 = add i32 %3, %n
  ret i32 %_0.sroa.0.0

bb14:                                             ; preds = %bb7.1, %bb3.1, %bb3, %bb7
  %longest_end.sroa.0.1.lcssa = phi i32 [ 0, %bb3 ], [ 0, %bb7 ], [ 0, %bb3.1 ], [ 1, %bb7.1 ]
  %longest_start.sroa.0.1.lcssa = phi i32 [ -1, %bb3 ], [ 0, %bb7 ], [ 0, %bb3.1 ], [ 0, %bb7.1 ]
  %longest_start.sroa.0.1.lcssa.fr = freeze i32 %longest_start.sroa.0.1.lcssa
  %exitcond34.not = icmp eq i32 %n, 1
  br i1 %exitcond34.not, label %bb19, label %bb3.149

bb3.149:                                          ; preds = %bb14
  %_17.147 = shl i32 %arr.sroa.2.0.extract.trunc, 1
  %_16.not.148 = icmp sgt i32 %_17.147, %arr.sroa.2.0.extract.trunc
  br i1 %_16.not.148, label %bb7.157, label %bb14.1

bb7.157:                                          ; preds = %bb3.149
  %_22.150 = sub i32 %longest_end.sroa.0.1.lcssa, %longest_start.sroa.0.1.lcssa.fr
  %_20.151 = icmp slt i32 %_22.150, 0
  %_25.152 = icmp eq i32 %longest_start.sroa.0.1.lcssa.fr, -1
  %or.cond.153 = or i1 %_25.152, %_20.151
  %spec.select.154 = select i1 %or.cond.153, i32 1, i32 %longest_end.sroa.0.1.lcssa
  %spec.select11.155 = select i1 %or.cond.153, i32 1, i32 %longest_start.sroa.0.1.lcssa.fr
  %exitcond.not.156 = icmp eq i32 %n, 2
  br i1 %exitcond.not.156, label %bb14.1, label %panic

bb14.1:                                           ; preds = %bb7.157, %bb3.149
  %longest_end.sroa.0.1.lcssa.1 = phi i32 [ %longest_end.sroa.0.1.lcssa, %bb3.149 ], [ %spec.select.154, %bb7.157 ]
  %longest_start.sroa.0.1.lcssa.1 = phi i32 [ %longest_start.sroa.0.1.lcssa.fr, %bb3.149 ], [ %spec.select11.155, %bb7.157 ]
  %longest_start.sroa.0.1.lcssa.fr.1 = freeze i32 %longest_start.sroa.0.1.lcssa.1
  %exitcond34.not.1 = icmp eq i32 %n, 2
  br i1 %exitcond34.not.1, label %bb19, label %panic

bb3:                                              ; preds = %start
  %_17 = shl i32 %arr.sroa.0.0.extract.trunc, 1
  %_16.not = icmp sgt i32 %_17, %arr.sroa.0.0.extract.trunc
  br i1 %_16.not, label %bb7, label %bb14

panic:                                            ; preds = %bb7.1, %bb14.1, %bb7.157
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_db93824dbd2cc9b394212b0e043cacf8) #18
  unreachable

bb7:                                              ; preds = %bb3
  %exitcond.not = icmp eq i32 %n, 1
  br i1 %exitcond.not, label %bb14, label %bb3.1

bb3.1:                                            ; preds = %bb7
  %_0.sroa.0.0.i.1 = tail call noundef i32 @llvm.smin.i32(i32 %arr.sroa.2.0.extract.trunc, i32 %arr.sroa.0.0.extract.trunc)
  %_0.sroa.0.0.i12.1 = tail call noundef i32 @llvm.smax.i32(i32 %arr.sroa.2.0.extract.trunc, i32 %arr.sroa.0.0.extract.trunc)
  %_17.1 = shl i32 %_0.sroa.0.0.i.1, 1
  %_16.not.1 = icmp sgt i32 %_17.1, %_0.sroa.0.0.i12.1
  br i1 %_16.not.1, label %bb7.1, label %bb14

bb7.1:                                            ; preds = %bb3.1
  %exitcond.not.1 = icmp eq i32 %n, 2
  br i1 %exitcond.not.1, label %bb14, label %panic
}
