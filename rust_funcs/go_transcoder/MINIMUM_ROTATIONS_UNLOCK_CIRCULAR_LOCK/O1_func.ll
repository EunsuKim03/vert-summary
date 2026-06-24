define noundef i32 @f_gold(i32 noundef %0, i32 noundef %1) unnamed_addr #12 personality ptr @rust_eh_personality {
start:
  %2 = or i32 %0, %1
  %or.cond10.not = icmp eq i32 %2, 0
  br i1 %or.cond10.not, label %bb9, label %bb5

bb9:                                              ; preds = %bb5, %start
  %rotation.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %3, %bb5 ]
  ret i32 %rotation.sroa.0.0.lcssa

bb5:                                              ; preds = %start, %bb5
  %input.sroa.0.013 = phi i32 [ %4, %bb5 ], [ %0, %start ]
  %unlock_code.sroa.0.012 = phi i32 [ %5, %bb5 ], [ %1, %start ]
  %rotation.sroa.0.011 = phi i32 [ %3, %bb5 ], [ 0, %start ]
  %input_digit = srem i32 %input.sroa.0.013, 10
  %code_digit = srem i32 %unlock_code.sroa.0.012, 10
  %_13 = sub nsw i32 %input_digit, %code_digit
  %_0.sroa.0.0.i = tail call noundef range(i32 0, 19) i32 @llvm.abs.i32(i32 range(i32 -18, 19) %_13, i1 true)
  %_14 = sub nsw i32 10, %_0.sroa.0.0.i
  %_0.sroa.0.0.i7 = tail call noundef range(i32 -8, 11) i32 @llvm.smin.i32(i32 range(i32 -8, 11) %_14, i32 range(i32 0, 19) %_0.sroa.0.0.i)
  %3 = add i32 %_0.sroa.0.0.i7, %rotation.sroa.0.011
  %4 = sdiv i32 %input.sroa.0.013, 10
  %5 = sdiv i32 %unlock_code.sroa.0.012, 10
  %6 = add i32 %input.sroa.0.013, -10
  %_5 = icmp ult i32 %6, -19
  %7 = add i32 %unlock_code.sroa.0.012, -10
  %_7 = icmp ult i32 %7, -19
  %or.cond = select i1 %_5, i1 true, i1 %_7
  br i1 %or.cond, label %bb5, label %bb9
}
