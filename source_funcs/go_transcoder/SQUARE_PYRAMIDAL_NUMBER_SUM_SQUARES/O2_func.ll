define i64 @f_gold(i64 %s) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 %s, !3026, !DIExpression(), !3029)
    #dbg_value(i64 0, !3027, !DIExpression(), !3030)
    #dbg_value(i64 1, !3028, !DIExpression(), !3031)
  %0 = icmp sgt i64 %s, 0, !dbg !3032
  br i1 %0, label %for.body, label %common.ret, !dbg !3033

for.body:                                         ; preds = %entry, %if.done
  %1 = phi i64 [ %6, %if.done ], [ 1, %entry ]
  %2 = phi i64 [ %4, %if.done ], [ 0, %entry ]
    #dbg_value(i64 %2, !3027, !DIExpression(), !3034)
    #dbg_value(i64 %1, !3028, !DIExpression(), !3035)
  %3 = mul i64 %1, %1, !dbg !3036
  %4 = add i64 %3, %2, !dbg !3037
    #dbg_value(i64 %4, !3027, !DIExpression(), !3038)
    #dbg_value(i64 %s, !3026, !DIExpression(), !3039)
  %5 = icmp eq i64 %4, %s, !dbg !3040
  br i1 %5, label %common.ret, label %if.done, !dbg !3033

common.ret:                                       ; preds = %for.body, %if.done, %entry
  %common.ret.op = phi i64 [ -1, %entry ], [ -1, %if.done ], [ %1, %for.body ]
  ret i64 %common.ret.op, !dbg !3033

if.done:                                          ; preds = %for.body
  %6 = add i64 %1, 1, !dbg !3041
    #dbg_value(i64 %6, !3028, !DIExpression(), !3041)
    #dbg_value(i64 %4, !3027, !DIExpression(), !3034)
    #dbg_value(i64 %s, !3026, !DIExpression(), !3042)
  %7 = icmp slt i64 %4, %s, !dbg !3032
  br i1 %7, label %for.body, label %common.ret, !dbg !3033
}
