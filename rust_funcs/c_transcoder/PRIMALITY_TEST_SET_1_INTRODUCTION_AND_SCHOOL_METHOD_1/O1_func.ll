define noundef range(i32 0, 2) i32 @f_gold(i32 noundef %n) unnamed_addr #3 {
start:
  %_2 = icmp slt i32 %n, 2
  br i1 %_2, label %bb23, label %bb2

bb2:                                              ; preds = %start
  %_3 = icmp slt i32 %n, 4
  br i1 %_3, label %bb23, label %bb4

bb4:                                              ; preds = %bb2
  %_5 = and i32 %n, 1
  %_4 = icmp eq i32 %_5, 0
  %_8 = urem i32 %n, 3
  %_7 = icmp eq i32 %_8, 0
  %or.cond = or i1 %_4, %_7
  br i1 %or.cond, label %bb23, label %bb10.preheader

bb10.preheader:                                   ; preds = %bb4
  %_14 = uitofp nneg i32 %n to float
  %_104 = icmp ult i32 %n, 25
  br i1 %_104, label %bb23, label %bb11

bb11:                                             ; preds = %bb10.preheader, %bb20
  %i.sroa.0.05 = phi float [ %0, %bb20 ], [ 5.000000e+00, %bb10.preheader ]
  %_17 = tail call i32 @llvm.fptosi.sat.i32.f32(float %i.sroa.0.05)
  %_19 = icmp eq i32 %_17, 0
  br i1 %_19, label %panic, label %bb13

panic:                                            ; preds = %bb11
; call core::panicking::panic_const::panic_const_rem_by_zero
  tail call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_ae1b6aa07ba1ecc4018195f900405be7) #23
  unreachable

bb13:                                             ; preds = %bb11
  %_16 = srem i32 %n, %_17
  %_15 = icmp eq i32 %_16, 0
  br i1 %_15, label %bb23, label %bb15

bb15:                                             ; preds = %bb13
  %_25 = fadd float %i.sroa.0.05, 2.000000e+00
  %_24 = tail call i32 @llvm.fptosi.sat.i32.f32(float %_25)
  %_27 = icmp eq i32 %_24, 0
  br i1 %_27, label %panic2, label %bb17

panic2:                                           ; preds = %bb15
; call core::panicking::panic_const::panic_const_rem_by_zero
  tail call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e32d2d654bd117b4d95b109f2adb1f69) #23
  unreachable

bb17:                                             ; preds = %bb15
  %_23 = srem i32 %n, %_24
  %_22 = icmp eq i32 %_23, 0
  br i1 %_22, label %bb23, label %bb20

bb20:                                             ; preds = %bb17
  %0 = fadd float %i.sroa.0.05, 6.000000e+00
  %_11 = fmul float %0, %0
  %_10 = fcmp ugt float %_11, %_14
  br i1 %_10, label %bb23, label %bb11

bb23:                                             ; preds = %bb20, %bb17, %bb13, %bb10.preheader, %bb4, %bb2, %start
  %_0.sroa.0.1 = phi i32 [ 0, %start ], [ 1, %bb2 ], [ 0, %bb4 ], [ 1, %bb10.preheader ], [ 0, %bb13 ], [ 0, %bb17 ], [ 1, %bb20 ]
  ret i32 %_0.sroa.0.1
}
