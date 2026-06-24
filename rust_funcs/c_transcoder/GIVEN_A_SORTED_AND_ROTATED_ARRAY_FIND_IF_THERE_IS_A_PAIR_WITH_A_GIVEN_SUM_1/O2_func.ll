define noundef i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %x) unnamed_addr #1 {
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
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_062b6c17ab2cd5fd054fe7960a1f4208) #18
  unreachable

bb9:                                              ; preds = %bb8
  %_18 = add nuw nsw i64 %i.sroa.0.0.lcssa, 1
  %4 = urem i64 %_18, %_8
  %_21.not33 = icmp eq i64 %4, %i.sroa.0.0.lcssa
  br i1 %_21.not33, label %bb30, label %bb11

panic2:                                           ; preds = %bb8
; call core::panicking::panic_const::panic_const_rem_by_zero
  tail call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_113606d309eb94b282902ee1acac2fd0) #18
  unreachable

bb11:                                             ; preds = %bb9, %bb28
  %l.sroa.0.036 = phi i64 [ %l.sroa.0.1, %bb28 ], [ %4, %bb9 ]
  %cnt.sroa.0.035 = phi i32 [ %cnt.sroa.0.2, %bb28 ], [ 0, %bb9 ]
  %i.sroa.0.134 = phi i64 [ %i.sroa.0.2, %bb28 ], [ %i.sroa.0.0.lcssa, %bb9 ]
  %_28 = icmp ult i64 %l.sroa.0.036, 2
  br i1 %_28, label %bb12, label %panic3

bb30:                                             ; preds = %bb28, %bb14, %bb9
  %cnt.sroa.0.1 = phi i32 [ 0, %bb9 ], [ %7, %bb14 ], [ %cnt.sroa.0.2, %bb28 ]
  ret i32 %cnt.sroa.0.1

bb12:                                             ; preds = %bb11
  %_31 = icmp ult i64 %i.sroa.0.134, 2
  br i1 %_31, label %bb13, label %panic4

panic3:                                           ; preds = %bb11
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_7761253f7f2fd1663af74b9df8f83959) #18
  unreachable

bb13:                                             ; preds = %bb12
  %5 = getelementptr inbounds nuw i32, ptr %arr, i64 %l.sroa.0.036
  %_26 = load i32, ptr %5, align 4, !noundef !23
  %6 = getelementptr inbounds nuw i32, ptr %arr, i64 %i.sroa.0.134
  %_29 = load i32, ptr %6, align 4, !noundef !23
  %_25 = add i32 %_29, %_26
  %_24 = icmp eq i32 %_25, %x
  br i1 %_24, label %bb14, label %bb22

panic4:                                           ; preds = %bb12
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %i.sroa.0.134, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_604ce34cda2e894e00a76aa95ccf5e77) #18
  unreachable

bb14:                                             ; preds = %bb13
  %7 = add i32 %cnt.sroa.0.035, 1
  %_35 = add nsw i64 %_7, %i.sroa.0.134
  %_34 = urem i64 %_35, %_8
  %_32 = icmp eq i64 %l.sroa.0.036, %_34
  br i1 %_32, label %bb30, label %bb18

bb22:                                             ; preds = %bb13
  %_41 = icmp slt i32 %_25, %x
  br i1 %_41, label %bb24, label %bb26

bb26:                                             ; preds = %bb22
  %_50 = add nsw i64 %_7, %i.sroa.0.134
  %8 = urem i64 %_50, %_8
  br label %bb28

bb24:                                             ; preds = %bb22
  %_49 = add nuw nsw i64 %l.sroa.0.036, 1
  %9 = urem i64 %_49, %_8
  br label %bb28

bb28:                                             ; preds = %bb26, %bb24, %bb18
  %i.sroa.0.2 = phi i64 [ %_34, %bb18 ], [ %i.sroa.0.134, %bb24 ], [ %8, %bb26 ]
  %cnt.sroa.0.2 = phi i32 [ %7, %bb18 ], [ %cnt.sroa.0.035, %bb24 ], [ %cnt.sroa.0.035, %bb26 ]
  %l.sroa.0.1 = phi i64 [ %10, %bb18 ], [ %9, %bb24 ], [ %l.sroa.0.036, %bb26 ]
  %_21.not = icmp eq i64 %l.sroa.0.1, %i.sroa.0.2
  br i1 %_21.not, label %bb30, label %bb11

bb18:                                             ; preds = %bb14
  %_38 = add nuw nsw i64 %l.sroa.0.036, 1
  %10 = urem i64 %_38, %_8
  br label %bb28
}
