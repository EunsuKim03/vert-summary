define i1 @f_gold(i64 %x1, i64 %y1, i64 %x2, i64 %y2) #0 !dbg !4927 {
entry:
    #dbg_value(i64 %x1, !4932, !DIExpression(), !4936)
    #dbg_value(i64 %y1, !4933, !DIExpression(), !4936)
    #dbg_value(i64 %x2, !4934, !DIExpression(), !4936)
    #dbg_value(i64 %y2, !4935, !DIExpression(), !4936)
    #dbg_value(i64 %x1, !4932, !DIExpression(), !4937)
    #dbg_value(i64 %y2, !4935, !DIExpression(), !4938)
    #dbg_value(i64 %y1, !4933, !DIExpression(), !4939)
  %0 = sub i64 %y2, %y1, !dbg !4940
  %1 = mul i64 %x1, %0, !dbg !4941
    #dbg_value(i64 %y1, !4933, !DIExpression(), !4942)
    #dbg_value(i64 %x2, !4934, !DIExpression(), !4943)
    #dbg_value(i64 %x1, !4932, !DIExpression(), !4944)
  %2 = sub i64 %x2, %x1, !dbg !4945
  %3 = mul i64 %y1, %2, !dbg !4946
  %4 = icmp eq i64 %1, %3, !dbg !4947
  ret i1 %4, !dbg !4948
}
