define i64 @f_gold(ptr nocapture %a.data, i64 %a.len, i64 %a.cap, i64 %n) #1 !dbg !4937 {
entry:
  %0 = insertvalue { ptr, i64, i64 } zeroinitializer, ptr %a.data, 0, !dbg !4948
  %1 = insertvalue { ptr, i64, i64 } %0, i64 %a.len, 1, !dbg !4948
  %2 = insertvalue { ptr, i64, i64 } %1, i64 %a.cap, 2, !dbg !4948
    #dbg_value(ptr %a.data, !4946, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4948)
    #dbg_value(i64 %a.len, !4946, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4948)
    #dbg_value(i64 %a.cap, !4946, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4948)
    #dbg_value(i64 %n, !4947, !DIExpression(), !4948)
    #dbg_value(i64 %n, !4947, !DIExpression(), !4949)
  %3 = mul i64 %n, 8, !dbg !4950
  %4 = add i64 %3, 1, !dbg !4951
  %5 = sitofp i64 %4 to double, !dbg !4952
  %6 = call double @math.Sqrt(double %5, ptr undef), !dbg !4953
  %7 = fadd double %6, -1.000000e+00, !dbg !4954
  %8 = fdiv double %7, 2.000000e+00, !dbg !4955
  %9 = call double @math.Floor(double %8, ptr undef), !dbg !4956
  %abovemin = fcmp ole double 0xC3E0000000000000, %9, !dbg !4957
  %belowmax = fcmp ole double %9, 0x43DFFFFFFFFFFFFE, !dbg !4957
  %inbounds = and i1 %abovemin, %belowmax, !dbg !4957
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !4957
  %isnan = fcmp uno double %9, %9, !dbg !4957
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !4957
  %normal = fptosi double %9 to i64, !dbg !4957
  %10 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !4957
  ret i64 %10, !dbg !4958
}
