define i64 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 %n, !3026, !DIExpression(), !3031)
  %0 = icmp slt i64 %n, 2, !dbg !3032
  br i1 %0, label %common.ret, label %for.body, !dbg !3033

common.ret:                                       ; preds = %for.body, %entry
  %common.ret.op = phi i64 [ %n, %entry ], [ %5, %for.body ]
  ret i64 %common.ret.op, !dbg !3033

for.body:                                         ; preds = %entry, %for.body
  %1 = phi i64 [ %5, %for.body ], [ 1, %entry ]
  %2 = phi i64 [ %4, %for.body ], [ 1, %entry ]
  %3 = phi i64 [ %2, %for.body ], [ 0, %entry ]
    #dbg_value(i64 %2, !3029, !DIExpression(), !3034)
    #dbg_value(i64 %3, !3027, !DIExpression(), !3035)
    #dbg_value(i64 %2, !3028, !DIExpression(), !3036)
  %4 = add i64 %2, %3, !dbg !3037
    #dbg_value(i64 %4, !3029, !DIExpression(), !3038)
  %5 = add i64 %1, 1, !dbg !3039
    #dbg_value(i64 %5, !3030, !DIExpression(), !3039)
    #dbg_value(i64 %2, !3027, !DIExpression(), !3040)
    #dbg_value(i64 %4, !3028, !DIExpression(), !3041)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3042)
  %6 = icmp slt i64 %4, %n, !dbg !3043
  br i1 %6, label %for.body, label %common.ret, !dbg !3033
}
