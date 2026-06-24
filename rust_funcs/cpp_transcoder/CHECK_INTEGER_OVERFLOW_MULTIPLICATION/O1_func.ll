define noundef range(i32 0, 2) i32 @f_gold(i32 noundef %a, i32 noundef %b) unnamed_addr #3 {
start:
  %_3 = icmp eq i32 %a, 0
  %_4 = icmp eq i32 %b, 0
  %or.cond = or i1 %_3, %_4
  br i1 %or.cond, label %bb9, label %bb3

bb3:                                              ; preds = %start
  %mul = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %b, i32 %a)
  %mul.val = extractvalue { i32, i1 } %mul, 0
  %_8 = icmp eq i32 %b, -1
  %_9 = icmp eq i32 %mul.val, -2147483648
  %_10 = and i1 %_8, %_9
  br i1 %_10, label %panic1, label %bb5

bb5:                                              ; preds = %bb3
  %mul.ov = extractvalue { i32, i1 } %mul, 1
  %. = zext i1 %mul.ov to i32
  br label %bb9

panic1:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_div_overflow
  tail call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17hde5ac990ac871ee2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_56cb15b0ae9955cd9804cd10975fe823) #23
  unreachable

bb9:                                              ; preds = %bb5, %start
  %_0.sroa.0.0 = phi i32 [ 0, %start ], [ %., %bb5 ]
  ret i32 %_0.sroa.0.0
}
