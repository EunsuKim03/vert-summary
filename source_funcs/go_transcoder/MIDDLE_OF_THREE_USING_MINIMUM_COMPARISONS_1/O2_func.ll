define i64 @f_gold(i64 %a, i64 %b, i64 %c) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(i64 %a, !3026, !DIExpression(), !3029)
    #dbg_value(i64 %b, !3027, !DIExpression(), !3029)
    #dbg_value(i64 %c, !3028, !DIExpression(), !3029)
    #dbg_value(i64 %a, !3026, !DIExpression(), !3030)
    #dbg_value(i64 %b, !3027, !DIExpression(), !3031)
  %a.sink2 = call i64 @llvm.smin.i64(i64 %a, i64 %b), !dbg !3032
  %b.sink = call i64 @llvm.smax.i64(i64 %a, i64 %b), !dbg !3032
  %0 = icmp sgt i64 %a.sink2, %c, !dbg !3032
  %c.b = tail call i64 @llvm.smin.i64(i64 %b.sink, i64 %c)
  %spec.select1 = select i1 %0, i64 %a.sink2, i64 %c.b, !dbg !3032
  ret i64 %spec.select1, !dbg !3032
}
