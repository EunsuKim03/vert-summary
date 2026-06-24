define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #12 personality ptr @rust_eh_personality {
start:
  %switch = icmp ult i32 %n, 2
  br i1 %switch, label %common.ret, label %bb3

common.ret:                                       ; preds = %start, %bb3
  %common.ret.op = phi i32 [ %_0.sroa.0.0.i.i, %bb3 ], [ %n, %start ]
  ret i32 %common.ret.op

bb3:                                              ; preds = %start
  %_7 = sdiv i32 %n, 2
  %_6 = tail call noundef i32 @f_gold(i32 noundef %_7)
  %_9 = sdiv i32 %n, 3
  %_8 = tail call noundef i32 @f_gold(i32 noundef %_9)
  %_5 = add i32 %_8, %_6
  %_11 = sdiv i32 %n, 4
  %_10 = tail call noundef i32 @f_gold(i32 noundef %_11)
  %_4 = add i32 %_5, %_10
  %_0.sroa.0.0.i.i = tail call noundef i32 @llvm.smax.i32(i32 %n, i32 %_4)
  br label %common.ret
}
