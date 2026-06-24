define noundef range(i32 -2147483647, -2147483648) i32 @f_gold(i32 noundef %n, i32 noundef %p) unnamed_addr #3 {
start:
  %_3.not = icmp slt i32 %n, %p
  br i1 %_3.not, label %bb5.preheader, label %bb12

bb5.preheader:                                    ; preds = %start
  %_12 = icmp eq i32 %p, 0
  %_13 = icmp eq i32 %p, -1
  %_0.i.not.i.i11 = icmp slt i32 %n, 1
  br i1 %_0.i.not.i.i11, label %bb12, label %bb8.lr.ph

bb8.lr.ph:                                        ; preds = %bb5.preheader
  %.not = icmp eq i32 %n, 1
  %iter.sroa.7.117 = zext i1 %.not to i8
  %_0.i3.i.i12.not = icmp eq i32 %n, 1
  %iter.sroa.0.116 = select i1 %_0.i3.i.i12.not, i32 1, i32 2
  br label %bb8

bb8:                                              ; preds = %bb8.lr.ph, %bb11
  %iter.sroa.7.121 = phi i8 [ %iter.sroa.7.117, %bb8.lr.ph ], [ %iter.sroa.7.1, %bb11 ]
  %iter.sroa.0.120 = phi i32 [ %iter.sroa.0.116, %bb8.lr.ph ], [ %iter.sroa.0.1, %bb11 ]
  %result.sroa.0.019 = phi i32 [ 1, %bb8.lr.ph ], [ %0, %bb11 ]
  %iter.sroa.0.018 = phi i32 [ 1, %bb8.lr.ph ], [ %iter.sroa.0.120, %bb11 ]
  %_11 = mul i32 %iter.sroa.0.018, %result.sroa.0.019
  br i1 %_12, label %panic, label %bb10

bb12:                                             ; preds = %bb11, %bb5.preheader, %start
  %result.sroa.0.1 = phi i32 [ 0, %start ], [ 1, %bb5.preheader ], [ %0, %bb11 ]
  ret i32 %result.sroa.0.1

bb10:                                             ; preds = %bb8
  %_14 = icmp eq i32 %_11, -2147483648
  %_15 = and i1 %_13, %_14
  br i1 %_15, label %panic1, label %bb11

panic:                                            ; preds = %bb8
; call core::panicking::panic_const::panic_const_rem_by_zero
  tail call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_aaea1c1e62470164fe63db4642f14a69) #23
  unreachable

bb11:                                             ; preds = %bb10
  %0 = srem i32 %_11, %p
  %_10.i.i = trunc nuw i8 %iter.sroa.7.121 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.120, %n
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.120, %n
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.120, %spec.select
  %1 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %1, i8 %iter.sroa.7.121, i8 1
  br i1 %or.cond, label %bb12, label %bb8

panic1:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_rem_overflow
  tail call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_aaea1c1e62470164fe63db4642f14a69) #23
  unreachable
}
