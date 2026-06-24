define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %n1 = sext i32 %n to i64
  %1 = trunc i64 %0 to i32
  %2 = lshr i64 %0, 32
  %3 = trunc nuw i64 %2 to i32
  %exitcond.peel.not = icmp eq i32 %n, 1
  %exitcond.peel.not38 = icmp eq i32 %n, 1
  %exitcond.peel31.not = icmp eq i32 %n, 2
  br label %bb1

bb1:                                              ; preds = %bb12, %start
  %iter.sroa.0.0 = phi i64 [ 0, %start ], [ %4, %bb12 ]
  %exitcond37.not = icmp eq i64 %iter.sroa.0.0, %n1
  br i1 %exitcond37.not, label %bb16, label %bb17

bb17:                                             ; preds = %bb1
  %4 = add i64 %iter.sroa.0.0, 1
  %_13 = icmp ult i64 %iter.sroa.0.0, 2
  %5 = getelementptr inbounds nuw i32, ptr %arr, i64 %iter.sroa.0.0
  %_9.not.peel = icmp eq i64 %iter.sroa.0.0, 0
  br i1 %_9.not.peel, label %bb10.peel.thread, label %bb4.peel

bb4.peel:                                         ; preds = %bb17
  br i1 %_13, label %bb6.peel, label %panic

bb6.peel:                                         ; preds = %bb4.peel
  %_12.peel = load i32, ptr %5, align 4, !noundef !23
  %_11.peel = icmp eq i32 %_12.peel, %1
  %brmerge = or i1 %_11.peel, %exitcond.peel.not
  %not._11.peel = xor i1 %_11.peel, true
  %.mux = zext i1 %not._11.peel to i64
  br i1 %brmerge, label %bb12, label %bb3.peel.next

bb10.peel.thread:                                 ; preds = %bb17
  br i1 %exitcond.peel.not38, label %bb12, label %bb6.peel26

bb3.peel.next:                                    ; preds = %bb6.peel
  %_9.not.peel22 = icmp eq i64 %iter.sroa.0.0, 1
  br i1 %_9.not.peel22, label %bb10.peel30, label %bb6.peel26

bb6.peel26:                                       ; preds = %bb10.peel.thread, %bb3.peel.next
  %_12.peel27 = load i32, ptr %5, align 4, !noundef !23
  %_11.peel29 = icmp eq i32 %_12.peel27, %3
  %brmerge51 = or i1 %_11.peel29, %exitcond.peel31.not
  %.mux52 = select i1 %_11.peel29, i64 1, i64 2
  br i1 %brmerge51, label %bb12, label %bb3.peel.next20

bb10.peel30:                                      ; preds = %bb3.peel.next
  br i1 %exitcond.peel31.not, label %bb12, label %bb3.peel.next20

bb3.peel.next20:                                  ; preds = %bb6.peel26, %bb10.peel30
  %_13.lcssa49 = phi i1 [ true, %bb10.peel30 ], [ %_13, %bb6.peel26 ]
  br label %bb3

bb16:                                             ; preds = %bb1, %bb14
  %_0.sroa.0.0 = phi i32 [ %7, %bb14 ], [ -1, %bb1 ]
  ret i32 %_0.sroa.0.0

bb3:                                              ; preds = %bb3.peel.next20, %bb10
  %j.sroa.0.014 = phi i64 [ 2, %bb3.peel.next20 ], [ %6, %bb10 ]
  %_9.not = icmp eq i64 %iter.sroa.0.0, %j.sroa.0.014
  br i1 %_9.not, label %bb10, label %bb4

bb12:                                             ; preds = %bb6.peel26, %bb6.peel, %bb10.peel.thread, %bb10.peel30
  %j.sroa.0.0.lcssa = phi i64 [ %.mux, %bb6.peel ], [ %.mux52, %bb6.peel26 ], [ 2, %bb10.peel30 ], [ 1, %bb10.peel.thread ]
  %_17 = icmp eq i64 %j.sroa.0.0.lcssa, %n1
  br i1 %_17, label %bb14, label %bb1

bb4:                                              ; preds = %bb3
  br i1 %_13.lcssa49, label %panic2, label %panic

bb10:                                             ; preds = %bb3
  %6 = add nuw i64 %j.sroa.0.014, 1
  %exitcond.not = icmp eq i64 %6, %n1
  br i1 %exitcond.not, label %bb13, label %bb3, !llvm.loop !1031

panic:                                            ; preds = %bb4.peel, %bb4
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %iter.sroa.0.0, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0cd3d5edfa312878e63429484b467214) #18
  unreachable

panic2:                                           ; preds = %bb4
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %j.sroa.0.014, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b0d0d51d69319123f2b4df7f45307ebf) #18
  unreachable

bb13:                                             ; preds = %bb10
  br i1 %_13.lcssa49, label %bb14, label %panic3

bb14:                                             ; preds = %bb12, %bb13
  %7 = load i32, ptr %5, align 4, !noundef !23
  br label %bb16

panic3:                                           ; preds = %bb13
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %iter.sroa.0.0, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_f1e9688fb814f4ef0a68b1073fef45db) #18
  unreachable
}
