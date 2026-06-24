define i64 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 %n, !3026, !DIExpression(), !3028)
  %0 = and i64 %n, -2, !dbg !3029
  %switch = icmp eq i64 %0, 2, !dbg !3029
  br i1 %switch, label %if.then, label %for.loop.preheader, !dbg !3029

for.loop.preheader:                               ; preds = %entry
    #dbg_value(i64 %n, !3026, !DIExpression(), !3030)
  %1 = icmp sgt i64 %n, 4, !dbg !3031
  br i1 %1, label %for.body, label %for.done, !dbg !3029

common.ret:                                       ; preds = %for.done, %if.then
  %common.ret.op = phi i64 [ %2, %if.then ], [ %8, %for.done ]
  ret i64 %common.ret.op, !dbg !3029

if.then:                                          ; preds = %entry
    #dbg_value(i64 %n, !3026, !DIExpression(), !3032)
  %2 = add nsw i64 %n, -1, !dbg !3033
  br label %common.ret, !dbg !3034

for.body:                                         ; preds = %for.loop.preheader, %for.body
  %3 = phi i64 [ %6, %for.body ], [ 1, %for.loop.preheader ]
  %4 = phi i64 [ %5, %for.body ], [ %n, %for.loop.preheader ]
    #dbg_value(i64 %4, !3026, !DIExpression(), !3030)
  %5 = add nsw i64 %4, -3, !dbg !3035
    #dbg_value(i64 %5, !3026, !DIExpression(), !3035)
  %6 = mul i64 %3, 3, !dbg !3036
    #dbg_value(i64 %6, !3027, !DIExpression(), !3036)
  %7 = icmp samesign ugt i64 %4, 7, !dbg !3031
  br i1 %7, label %for.body, label %for.done, !dbg !3029

for.done:                                         ; preds = %for.body, %for.loop.preheader
  %.lcssa1 = phi i64 [ %n, %for.loop.preheader ], [ %5, %for.body ], !dbg !3037
  %.lcssa = phi i64 [ 1, %for.loop.preheader ], [ %6, %for.body ], !dbg !3038
    #dbg_value(i64 %.lcssa1, !3026, !DIExpression(), !3039)
    #dbg_value(i64 %.lcssa, !3027, !DIExpression(), !3040)
  %8 = mul i64 %.lcssa, %.lcssa1, !dbg !3041
  br label %common.ret, !dbg !3042
}
