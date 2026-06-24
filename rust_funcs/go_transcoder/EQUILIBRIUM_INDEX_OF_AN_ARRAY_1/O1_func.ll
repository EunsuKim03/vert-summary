define noundef range(i32 -1, 2) i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_7 = sext i32 %n to i64
  %_0.i.i.i26.not = icmp eq i32 %n, 0
  br i1 %_0.i.i.i26.not, label %bb9.preheader, label %bb7

bb9.preheader:                                    ; preds = %bb7, %bb7.1, %bb7.2, %start
  %sum.sroa.0.0.lcssa = phi float [ 0.000000e+00, %start ], [ %_13, %bb7 ], [ %9, %bb7.1 ], [ %11, %bb7.2 ]
  %_0.i.i.i1431.not = icmp eq i32 %n, 0
  br i1 %_0.i.i.i1431.not, label %bb17, label %bb13

bb17:                                             ; preds = %bb13.2, %bb16, %bb16.1, %bb9.preheader, %bb14
  %_0.sroa.0.0 = phi i32 [ %2, %bb14 ], [ -1, %bb9.preheader ], [ -1, %bb16.1 ], [ -1, %bb16 ], [ -1, %bb13.2 ]
  ret i32 %_0.sroa.0.0

bb13:                                             ; preds = %bb9.preheader
  %_23 = load i32, ptr %arr, align 8, !noundef !37
  %_22 = sitofp i32 %_23 to float
  %1 = fsub float %sum.sroa.0.0.lcssa, %_22
  %_25 = fcmp oeq float %1, 0.000000e+00
  br i1 %_25, label %bb14, label %bb16

panic:                                            ; preds = %bb11.2
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %spec.select20, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_6d9cd720c19f4d06f46392d83bdc7107) #24
  unreachable

bb14:                                             ; preds = %bb13.2, %bb13.1, %bb13
  %iter1.sroa.0.033.lcssa43 = phi i64 [ 0, %bb13 ], [ 1, %bb13.1 ], [ %spec.select20, %bb13.2 ]
  %2 = trunc nuw nsw i64 %iter1.sroa.0.033.lcssa43 to i32
  br label %bb17

bb16:                                             ; preds = %bb13
  %_0.i.i.i14.not = icmp eq i32 %n, 1
  %spec.select20 = select i1 %_0.i.i.i14.not, i64 1, i64 2
  br i1 %_0.i.i.i14.not, label %bb17, label %bb13.1

bb13.1:                                           ; preds = %bb16
  %3 = getelementptr inbounds nuw i8, ptr %arr, i64 4
  %_23.1 = load i32, ptr %3, align 4, !noundef !37
  %_22.1 = sitofp i32 %_23.1 to float
  %4 = fsub float %1, %_22.1
  %_25.1 = fcmp oeq float %4, %_22
  br i1 %_25.1, label %bb14, label %bb16.1

bb16.1:                                           ; preds = %bb13.1
  %5 = fadd float %_22, %_22.1
  %_0.i.i.i14.1 = icmp ult i64 %spec.select20, %_7
  br i1 %_0.i.i.i14.1, label %bb11.2, label %bb17

bb11.2:                                           ; preds = %bb16.1
  br i1 %_0.i.i.i14.not, label %bb13.2, label %panic

bb13.2:                                           ; preds = %bb11.2
  %6 = getelementptr inbounds nuw i32, ptr %arr, i64 %spec.select20
  %_23.2 = load i32, ptr %6, align 4, !noundef !37
  %_22.2 = sitofp i32 %_23.2 to float
  %7 = fsub float %4, %_22.2
  %_25.2 = fcmp oeq float %5, %7
  br i1 %_25.2, label %bb14, label %bb17

bb7:                                              ; preds = %start
  %_14 = load i32, ptr %arr, align 8, !noundef !37
  %_13 = sitofp i32 %_14 to float
  %_0.i.i.i.not = icmp eq i32 %n, 1
  %spec.select = select i1 %_0.i.i.i.not, i64 1, i64 2
  br i1 %_0.i.i.i.not, label %bb9.preheader, label %bb7.1

bb7.1:                                            ; preds = %bb7
  %8 = getelementptr inbounds nuw i8, ptr %arr, i64 4
  %_14.1 = load i32, ptr %8, align 4, !noundef !37
  %_13.1 = sitofp i32 %_14.1 to float
  %9 = fadd float %_13, %_13.1
  %_0.i.i.i.1 = icmp ult i64 %spec.select, %_7
  br i1 %_0.i.i.i.1, label %bb5.2, label %bb9.preheader

bb5.2:                                            ; preds = %bb7.1
  br i1 %_0.i.i.i.not, label %bb7.2, label %panic4

bb7.2:                                            ; preds = %bb5.2
  %10 = getelementptr inbounds nuw i32, ptr %arr, i64 %spec.select
  %_14.2 = load i32, ptr %10, align 4, !noundef !37
  %_13.2 = sitofp i32 %_14.2 to float
  %11 = fadd float %9, %_13.2
  br label %bb9.preheader

panic4:                                           ; preds = %bb5.2
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %spec.select, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_f68701667313bd84a0056563a6532cb9) #24
  unreachable
}
