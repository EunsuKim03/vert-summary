define noundef i32 @f_gold(i32 noundef %a, i32 noundef %b, i32 noundef %k) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %0 = xor i32 %a, -1
  %c1 = add i32 %b, %0
  %_7 = sub i32 %k, %b
  %_8 = add i32 %a, -1
  %c2 = add i32 %_8, %_7
  %_9 = icmp eq i32 %c1, %c2
  %_0.sroa.0.0.i = tail call i32 @llvm.smin.i32(i32 %c2, i32 %c1)
  %_0.sroa.0.0 = select i1 %_9, i32 0, i32 %_0.sroa.0.0.i
  ret i32 %_0.sroa.0.0
}
