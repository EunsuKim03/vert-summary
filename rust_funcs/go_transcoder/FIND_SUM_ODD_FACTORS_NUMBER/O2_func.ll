define noundef i32 @f_gold(i32 noundef %0) unnamed_addr #1 {
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
  %3 = tail call float @llvm.sqrt.f32(float %_1030)
  %_831 = tail call i32 @llvm.fptosi.sat.i32.f32(float %3)
  %_6.not32 = icmp slt i32 %_831, 3
  br i1 %_6.not32, label %bb13, label %bb6.preheader

bb6.preheader:                                    ; preds = %bb4.preheader, %bb12
  %n.sroa.0.135 = phi i32 [ %n.sroa.0.22948, %bb12 ], [ %n.sroa.0.0, %bb4.preheader ]
  %res.sroa.0.034 = phi i32 [ %6, %bb12 ], [ 1, %bb4.preheader ]
  %i.sroa.0.033 = phi i32 [ %7, %bb12 ], [ 3, %bb4.preheader ]
  %_19 = icmp eq i32 %i.sroa.0.033, 0
  br i1 %_19, label %panic, label %bb7.lr.ph

bb7.lr.ph:                                        ; preds = %bb6.preheader
  %_20 = icmp eq i32 %i.sroa.0.033, -1
  %_2146 = icmp eq i32 %n.sroa.0.135, -2147483648
  %_2247 = and i1 %_20, %_2146
  br i1 %_2247, label %panic1, label %bb8

bb13:                                             ; preds = %bb12, %bb4.preheader
  %res.sroa.0.0.lcssa = phi i32 [ 1, %bb4.preheader ], [ %6, %bb12 ]
  %n.sroa.0.1.lcssa = phi i32 [ %n.sroa.0.0, %bb4.preheader ], [ %n.sroa.0.22948, %bb12 ]
  %_30 = icmp sgt i32 %n.sroa.0.1.lcssa, 1
  %_32 = add nuw i32 %n.sroa.0.1.lcssa, 1
  %4 = select i1 %_30, i32 %_32, i32 1
  %res.sroa.0.1 = mul i32 %4, %res.sroa.0.0.lcssa
  ret i32 %res.sroa.0.1

panic:                                            ; preds = %bb6.preheader
; call core::panicking::panic_const::panic_const_rem_by_zero
  tail call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_c103951532316f6f99e883a479625ba0) #17
  unreachable

bb8:                                              ; preds = %bb7.lr.ph, %bb11
  %curr_term.sroa.0.02750 = phi i32 [ %9, %bb11 ], [ 1, %bb7.lr.ph ]
  %curr_sum.sroa.0.02849 = phi i32 [ %10, %bb11 ], [ 1, %bb7.lr.ph ]
  %n.sroa.0.22948 = phi i32 [ %5, %bb11 ], [ %n.sroa.0.135, %bb7.lr.ph ]
  %_16 = srem i32 %n.sroa.0.22948, %i.sroa.0.033
  %5 = sdiv i32 %n.sroa.0.22948, %i.sroa.0.033
  %_15 = icmp eq i32 %_16, 0
  br i1 %_15, label %bb11, label %bb12

panic1:                                           ; preds = %bb7.lr.ph, %bb11
; call core::panicking::panic_const::panic_const_rem_overflow
  tail call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_c103951532316f6f99e883a479625ba0) #17
  unreachable

bb12:                                             ; preds = %bb8
  %6 = mul i32 %curr_sum.sroa.0.02849, %res.sroa.0.034
  %7 = add i32 %i.sroa.0.033, 1
  %_10 = sitofp i32 %n.sroa.0.22948 to float
  %8 = tail call float @llvm.sqrt.f32(float %_10)
  %_8 = tail call i32 @llvm.fptosi.sat.i32.f32(float %8)
  %_6.not = icmp sgt i32 %7, %_8
  br i1 %_6.not, label %bb13, label %bb6.preheader

bb11:                                             ; preds = %bb8
  %9 = mul i32 %curr_term.sroa.0.02750, %i.sroa.0.033
  %10 = add i32 %curr_sum.sroa.0.02849, %9
  %_21 = icmp eq i32 %5, -2147483648
  %_22 = and i1 %_20, %_21
  br i1 %_22, label %panic1, label %bb8
}
