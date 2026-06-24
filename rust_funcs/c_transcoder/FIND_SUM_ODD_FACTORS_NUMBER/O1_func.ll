define noundef i32 @f_gold(i32 noundef %0) unnamed_addr #3 {
start:
  br label %bb1

bb1:                                              ; preds = %bb1, %start
  %n.sroa.0.0 = phi i32 [ %0, %start ], [ %2, %bb1 ]
  %1 = and i32 %n.sroa.0.0, 1
  %_2 = icmp eq i32 %1, 0
  %2 = ashr exact i32 %n.sroa.0.0, 1
  br i1 %_2, label %bb1, label %bb4.preheader

bb4.preheader:                                    ; preds = %bb1
  %_1030 = sitofp i32 %n.sroa.0.0 to float
  %3 = tail call noundef float @llvm.sqrt.f32(float %_1030)
  %_831 = tail call i32 @llvm.fptosi.sat.i32.f32(float %3)
  %_6.not32 = icmp slt i32 %_831, 3
  br i1 %_6.not32, label %bb14, label %bb7.preheader

bb7.preheader:                                    ; preds = %bb4.preheader, %bb13
  %n.sroa.0.135 = phi i32 [ %n.sroa.0.22946, %bb13 ], [ %n.sroa.0.0, %bb4.preheader ]
  %res.sroa.0.034 = phi i32 [ %6, %bb13 ], [ 1, %bb4.preheader ]
  %i.sroa.0.033 = phi i32 [ %7, %bb13 ], [ 3, %bb4.preheader ]
  %_19 = icmp eq i32 %i.sroa.0.033, 0
  br i1 %_19, label %panic, label %bb8.lr.ph

bb8.lr.ph:                                        ; preds = %bb7.preheader
  %_20 = icmp eq i32 %i.sroa.0.033, -1
  %_2144 = icmp eq i32 %n.sroa.0.135, -2147483648
  %_2245 = and i1 %_20, %_2144
  br i1 %_2245, label %panic1, label %bb9

bb14:                                             ; preds = %bb13, %bb4.preheader
  %res.sroa.0.0.lcssa = phi i32 [ 1, %bb4.preheader ], [ %6, %bb13 ]
  %n.sroa.0.1.lcssa = phi i32 [ %n.sroa.0.0, %bb4.preheader ], [ %n.sroa.0.22946, %bb13 ]
  %_30 = icmp sgt i32 %n.sroa.0.1.lcssa, 1
  %_32 = add nuw i32 %n.sroa.0.1.lcssa, 1
  %4 = select i1 %_30, i32 %_32, i32 1
  %res.sroa.0.1 = mul i32 %4, %res.sroa.0.0.lcssa
  ret i32 %res.sroa.0.1

panic:                                            ; preds = %bb7.preheader
; call core::panicking::panic_const::panic_const_rem_by_zero
  tail call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_535a2c0828b7c75da12e06df1ecf1902) #23
  unreachable

bb9:                                              ; preds = %bb8.lr.ph, %bb12
  %curr_term.sroa.0.02748 = phi i32 [ %9, %bb12 ], [ 1, %bb8.lr.ph ]
  %curr_sum.sroa.0.02847 = phi i32 [ %10, %bb12 ], [ 1, %bb8.lr.ph ]
  %n.sroa.0.22946 = phi i32 [ %5, %bb12 ], [ %n.sroa.0.135, %bb8.lr.ph ]
  %_16 = srem i32 %n.sroa.0.22946, %i.sroa.0.033
  %5 = sdiv i32 %n.sroa.0.22946, %i.sroa.0.033
  %_15 = icmp eq i32 %_16, 0
  br i1 %_15, label %bb12, label %bb13

panic1:                                           ; preds = %bb8.lr.ph, %bb12
; call core::panicking::panic_const::panic_const_rem_overflow
  tail call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_535a2c0828b7c75da12e06df1ecf1902) #23
  unreachable

bb13:                                             ; preds = %bb9
  %6 = mul i32 %curr_sum.sroa.0.02847, %res.sroa.0.034
  %7 = add i32 %i.sroa.0.033, 1
  %_10 = sitofp i32 %n.sroa.0.22946 to float
  %8 = tail call noundef float @llvm.sqrt.f32(float %_10)
  %_8 = tail call i32 @llvm.fptosi.sat.i32.f32(float %8)
  %_6.not = icmp sgt i32 %7, %_8
  br i1 %_6.not, label %bb14, label %bb7.preheader

bb12:                                             ; preds = %bb9
  %9 = mul i32 %curr_term.sroa.0.02748, %i.sroa.0.033
  %10 = add i32 %curr_sum.sroa.0.02847, %9
  %_21 = icmp eq i32 %5, -2147483648
  %_22 = and i1 %_20, %_21
  br i1 %_22, label %panic1, label %bb9
}
