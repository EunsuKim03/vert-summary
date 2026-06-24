define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #3 {
start:
  %_4.not12 = icmp slt i32 %n, 1
  br i1 %_4.not12, label %bb7, label %bb2

bb7:                                              ; preds = %bb6, %start
  %ans.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %1, %bb6 ]
  ret i32 %ans.sroa.0.0.lcssa

bb2:                                              ; preds = %start, %bb6
  %ans.sroa.0.015 = phi i32 [ %1, %bb6 ], [ 0, %start ]
  %k.sroa.0.014 = phi i32 [ %2, %bb6 ], [ %n, %start ]
  %imin.sroa.0.013 = phi i32 [ %0, %bb6 ], [ 1, %start ]
  %_8 = icmp eq i32 %k.sroa.0.014, 0
  br i1 %_8, label %panic, label %bb4

panic:                                            ; preds = %bb2
; call core::panicking::panic_const::panic_const_div_by_zero
  tail call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_3dc435cd06529d912597b350ba41a903) #23
  unreachable

bb4:                                              ; preds = %bb2
  %imax = sdiv i32 %n, %k.sroa.0.014
  %0 = add i32 %imax, 1
  %_16 = icmp eq i32 %0, 0
  br i1 %_16, label %panic2, label %bb6

panic2:                                           ; preds = %bb4
; call core::panicking::panic_const::panic_const_div_by_zero
  tail call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9a45e37423e1c559E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_f15a175882a809f3fac2ce74f9dc53a1) #23
  unreachable

bb6:                                              ; preds = %bb4
  %reass.sub = sub i32 %imax, %imin.sroa.0.013
  %_13 = add i32 %reass.sub, 1
  %_12 = mul i32 %_13, %k.sroa.0.014
  %1 = add i32 %_12, %ans.sroa.0.015
  %2 = sdiv i32 %n, %0
  %_4.not = icmp sgt i32 %0, %n
  br i1 %_4.not, label %bb7, label %bb2
}
