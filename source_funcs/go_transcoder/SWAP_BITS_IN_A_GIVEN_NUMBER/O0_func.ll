define i64 @f_gold(i64 %x, i64 %p1, i64 %p2, i64 %n) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %x, !4932, !DIExpression(), !4940)
    #dbg_value(i64 %p1, !4933, !DIExpression(), !4940)
    #dbg_value(i64 %p2, !4934, !DIExpression(), !4940)
    #dbg_value(i64 %n, !4935, !DIExpression(), !4940)
    #dbg_value(i64 %x, !4932, !DIExpression(), !4941)
    #dbg_value(i64 %p1, !4933, !DIExpression(), !4942)
  %shift.overflow = icmp uge i64 %p1, 64, !dbg !4943
  %0 = lshr i64 %x, %p1, !dbg !4943
  %shift.result = select i1 %shift.overflow, i64 0, i64 %0, !dbg !4943
    #dbg_value(i64 %n, !4935, !DIExpression(), !4944)
  %shift.overflow1 = icmp uge i64 %n, 64, !dbg !4945
  %1 = shl i64 1, %n, !dbg !4945
  %shift.result2 = select i1 %shift.overflow1, i64 0, i64 %1, !dbg !4945
  %2 = sub i64 %shift.result2, 1, !dbg !4946
  %3 = and i64 %shift.result, %2, !dbg !4947
    #dbg_value(i64 %3, !4936, !DIExpression(), !4948)
    #dbg_value(i64 %x, !4932, !DIExpression(), !4949)
    #dbg_value(i64 %p2, !4934, !DIExpression(), !4950)
  %shift.overflow3 = icmp uge i64 %p2, 64, !dbg !4951
  %4 = lshr i64 %x, %p2, !dbg !4951
  %shift.result4 = select i1 %shift.overflow3, i64 0, i64 %4, !dbg !4951
    #dbg_value(i64 %n, !4935, !DIExpression(), !4952)
  %shift.overflow5 = icmp uge i64 %n, 64, !dbg !4953
  %5 = shl i64 1, %n, !dbg !4953
  %shift.result6 = select i1 %shift.overflow5, i64 0, i64 %5, !dbg !4953
  %6 = sub i64 %shift.result6, 1, !dbg !4954
  %7 = and i64 %shift.result4, %6, !dbg !4955
    #dbg_value(i64 %7, !4937, !DIExpression(), !4956)
    #dbg_value(i64 %3, !4936, !DIExpression(), !4957)
    #dbg_value(i64 %7, !4937, !DIExpression(), !4958)
  %8 = xor i64 %3, %7, !dbg !4959
    #dbg_value(i64 %8, !4938, !DIExpression(), !4960)
    #dbg_value(i64 %8, !4938, !DIExpression(), !4961)
    #dbg_value(i64 %p1, !4933, !DIExpression(), !4962)
  %shift.overflow7 = icmp uge i64 %p1, 64, !dbg !4963
  %9 = shl i64 %8, %p1, !dbg !4963
  %shift.result8 = select i1 %shift.overflow7, i64 0, i64 %9, !dbg !4963
    #dbg_value(i64 %8, !4938, !DIExpression(), !4964)
    #dbg_value(i64 %p2, !4934, !DIExpression(), !4965)
  %shift.overflow9 = icmp uge i64 %p2, 64, !dbg !4966
  %10 = shl i64 %8, %p2, !dbg !4966
  %shift.result10 = select i1 %shift.overflow9, i64 0, i64 %10, !dbg !4966
  %11 = or i64 %shift.result8, %shift.result10, !dbg !4967
    #dbg_value(i64 %11, !4938, !DIExpression(), !4968)
    #dbg_value(i64 %x, !4932, !DIExpression(), !4969)
    #dbg_value(i64 %11, !4938, !DIExpression(), !4970)
  %12 = xor i64 %x, %11, !dbg !4971
    #dbg_value(i64 %12, !4939, !DIExpression(), !4972)
    #dbg_value(i64 %12, !4939, !DIExpression(), !4973)
  ret i64 %12, !dbg !4974
}
