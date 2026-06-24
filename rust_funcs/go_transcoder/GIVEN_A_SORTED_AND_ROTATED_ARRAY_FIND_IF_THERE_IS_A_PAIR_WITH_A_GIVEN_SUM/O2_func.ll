define noundef range(i32 0, 2) i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %x) unnamed_addr #1 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_8 = sext i32 %n to i64
  %_7 = add nsw i64 %_8, -1
  %_5.not = icmp eq i64 %_7, 0
  %1 = trunc i64 %0 to i32
  %2 = lshr i64 %0, 32
  %3 = trunc nuw i64 %2 to i32
  %_9.not = icmp sgt i32 %1, %3
  %or.cond = select i1 %_5.not, i1 true, i1 %_9.not
  br i1 %or.cond, label %bb8, label %bb1.1

bb8:                                              ; preds = %bb1.1, %start
  %i.sroa.0.0.lcssa = phi i64 [ 0, %start ], [ 1, %bb1.1 ]
  %_20 = icmp eq i32 %n, 0
  br i1 %_20, label %panic2, label %bb9

bb1.1:                                            ; preds = %start
  %_5.1.not = icmp eq i64 %_7, 1
  br i1 %_5.1.not, label %bb8, label %panic1

panic1:                                           ; preds = %bb1.1
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_1824dc5bd9bd2b8d66c7a4bbc74a51b3) #18
  unreachable

bb9:                                              ; preds = %bb8
  %_18 = add nuw nsw i64 %i.sroa.0.0.lcssa, 1
  %4 = urem i64 %_18, %_8
  %_21.not25 = icmp eq i64 %4, %i.sroa.0.0.lcssa
  br i1 %_21.not25, label %bb24, label %bb11

panic2:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_rem_by_zero
  tail call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_acf18ce1466565390f38f26f91026bb6) #18
  unreachable

bb11:                                             ; preds = %bb9, %bb22
  %l.sroa.0.027 = phi i64 [ %l.sroa.0.1, %bb22 ], [ %4, %bb9 ]
  %i.sroa.0.126 = phi i64 [ %i.sroa.0.2, %bb22 ], [ %i.sroa.0.0.lcssa, %bb9 ]
  %_28 = icmp ult i64 %l.sroa.0.027, 2
  br i1 %_28, label %bb12, label %panic3

bb24:                                             ; preds = %bb22, %bb13, %bb9
  %_0.sroa.0.0 = phi i32 [ 0, %bb9 ], [ 1, %bb13 ], [ 0, %bb22 ]
  ret i32 %_0.sroa.0.0

bb12:                                             ; preds = %bb11
  %_31 = icmp ult i64 %i.sroa.0.126, 2
  br i1 %_31, label %bb13, label %panic4

panic3:                                           ; preds = %bb11
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_097c43edb18e13238fbd70595b872a71) #18
  unreachable

bb13:                                             ; preds = %bb12
  %5 = getelementptr inbounds nuw i32, ptr %arr, i64 %l.sroa.0.027
  %_26 = load i32, ptr %5, align 4, !noundef !23
  %6 = getelementptr inbounds nuw i32, ptr %arr, i64 %i.sroa.0.126
  %_29 = load i32, ptr %6, align 4, !noundef !23
  %_25 = add i32 %_29, %_26
  %_24 = icmp eq i32 %_25, %x
  br i1 %_24, label %bb24, label %bb17

panic4:                                           ; preds = %bb12
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %i.sroa.0.126, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_1d5bc521a53f391adf586fa3cd4518f2) #18
  unreachable

bb17:                                             ; preds = %bb13
  %_32 = icmp slt i32 %_25, %x
  br i1 %_32, label %bb19, label %bb21

bb21:                                             ; preds = %bb17
  %_41 = add nsw i64 %_7, %i.sroa.0.126
  %7 = urem i64 %_41, %_8
  br label %bb22

bb22:                                             ; preds = %bb19, %bb21
  %i.sroa.0.2 = phi i64 [ %i.sroa.0.126, %bb19 ], [ %7, %bb21 ]
  %l.sroa.0.1 = phi i64 [ %8, %bb19 ], [ %l.sroa.0.027, %bb21 ]
  %_21.not = icmp eq i64 %l.sroa.0.1, %i.sroa.0.2
  br i1 %_21.not, label %bb24, label %bb11

bb19:                                             ; preds = %bb17
  %_40 = add nuw nsw i64 %l.sroa.0.027, 1
  %8 = urem i64 %_40, %_8
  br label %bb22
}
