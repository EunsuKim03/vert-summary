define noundef range(i32 -2147483647, -2147483648) i32 @f_gold(i32 noundef %n, i32 noundef %p) unnamed_addr #1 {
start:
  %_3.not = icmp slt i32 %n, %p
  br i1 %_3.not, label %bb3.preheader, label %bb9

bb3.preheader:                                    ; preds = %start
  %_0.i.not.i14 = icmp slt i32 %n, 1
  br i1 %_0.i.not.i14, label %bb9, label %bb2.i.lr.ph

bb2.i.lr.ph:                                      ; preds = %bb3.preheader
  %_11 = icmp eq i32 %p, 0
  %_12 = icmp eq i32 %p, -1
  br i1 %_11, label %panic, label %bb2.i

bb2.i:                                            ; preds = %bb2.i.lr.ph, %bb8
  %result.sroa.0.016 = phi i32 [ %1, %bb8 ], [ 1, %bb2.i.lr.ph ]
  %iter.sroa.0.015 = phi i32 [ %spec.select11, %bb8 ], [ 1, %bb2.i.lr.ph ]
  %_10 = mul i32 %result.sroa.0.016, %iter.sroa.0.015
  %_13 = icmp eq i32 %_10, -2147483648
  %_14 = and i1 %_12, %_13
  br i1 %_14, label %panic1, label %bb8

bb9:                                              ; preds = %bb8, %bb3.preheader, %start
  %result.sroa.0.1 = phi i32 [ 0, %start ], [ 1, %bb3.preheader ], [ %1, %bb8 ]
  ret i32 %result.sroa.0.1

panic:                                            ; preds = %bb2.i.lr.ph
; call core::panicking::panic_const::panic_const_rem_by_zero
  tail call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_aaea1c1e62470164fe63db4642f14a69) #17
  unreachable

bb8:                                              ; preds = %bb2.i
  %_0.i3.i = icmp sge i32 %iter.sroa.0.015, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %0 = zext i1 %not._0.i3.i to i32
  %spec.select11 = add nuw nsw i32 %iter.sroa.0.015, %0
  %1 = srem i32 %_10, %p
  %_0.i.not.i = icmp sgt i32 %spec.select11, %n
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb9, label %bb2.i

panic1:                                           ; preds = %bb2.i
; call core::panicking::panic_const::panic_const_rem_overflow
  tail call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_aaea1c1e62470164fe63db4642f14a69) #17
  unreachable
}
