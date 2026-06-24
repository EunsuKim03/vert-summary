define i64 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 1, !3027, !DIExpression(), !3031)
    #dbg_value(i64 2, !3028, !DIExpression(), !3032)
    #dbg_value(i64 0, !3029, !DIExpression(), !3033)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3034)
  %0 = icmp slt i64 %n, 3, !dbg !3035
  br i1 %0, label %common.ret, label %for.body, !dbg !3036

common.ret:                                       ; preds = %for.body, %entry
  %common.ret.op = phi i64 [ %n, %entry ], [ %6, %for.body ]
  ret i64 %common.ret.op, !dbg !3036

for.body:                                         ; preds = %entry, %for.body
  %1 = phi i64 [ %7, %for.body ], [ 3, %entry ]
  %2 = phi i64 [ %6, %for.body ], [ 2, %entry ]
  %3 = phi i64 [ %2, %for.body ], [ 1, %entry ]
    #dbg_value(i64 %2, !3028, !DIExpression(), !3037)
    #dbg_value(i64 %1, !3030, !DIExpression(), !3038)
  %4 = add i64 %1, -1, !dbg !3039
    #dbg_value(i64 %3, !3027, !DIExpression(), !3040)
  %5 = mul i64 %4, %3, !dbg !3041
  %6 = add i64 %5, %2, !dbg !3042
    #dbg_value(i64 %2, !3027, !DIExpression(), !3043)
    #dbg_value(i64 %6, !3029, !DIExpression(), !3044)
    #dbg_value(i64 %6, !3028, !DIExpression(), !3045)
  %7 = add i64 %1, 1, !dbg !3046
    #dbg_value(i64 %7, !3030, !DIExpression(), !3047)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3048)
  %.not = icmp sgt i64 %7, %n, !dbg !3049
  br i1 %.not, label %common.ret, label %for.body, !dbg !3036
}
