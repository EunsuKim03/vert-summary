define i1 @f_gold(i64 %x, i64 %y) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 %y, !3027, !DIExpression(), !3029)
    #dbg_value(i64 %x, !3026, !DIExpression(), !3030)
  %0 = icmp eq i64 %x, 1, !dbg !3031
  br i1 %0, label %if.then, label %for.loop.preheader, !dbg !3032

for.loop.preheader:                               ; preds = %entry
    #dbg_value(i64 1, !3028, !DIExpression(), !3033)
    #dbg_value(i64 %y, !3027, !DIExpression(), !3034)
  %1 = icmp sgt i64 %y, 1, !dbg !3035
  br i1 %1, label %for.body, label %for.done, !dbg !3032

common.ret:                                       ; preds = %for.done, %if.then
  %common.ret.op = phi i1 [ %2, %if.then ], [ %6, %for.done ]
  ret i1 %common.ret.op, !dbg !3032

if.then:                                          ; preds = %entry
    #dbg_value(i64 %y, !3027, !DIExpression(), !3036)
  %2 = icmp eq i64 %y, 1, !dbg !3037
  br label %common.ret, !dbg !3038

for.body:                                         ; preds = %for.loop.preheader, %for.body
  %3 = phi i64 [ %4, %for.body ], [ 1, %for.loop.preheader ]
    #dbg_value(i64 %3, !3028, !DIExpression(), !3033)
    #dbg_value(i64 %x, !3026, !DIExpression(), !3039)
  %4 = mul i64 %3, %x, !dbg !3040
    #dbg_value(i64 %4, !3028, !DIExpression(), !3033)
    #dbg_value(i64 %y, !3027, !DIExpression(), !3034)
  %5 = icmp slt i64 %4, %y, !dbg !3035
  br i1 %5, label %for.body, label %for.done, !dbg !3032

for.done:                                         ; preds = %for.body, %for.loop.preheader
  %.lcssa = phi i64 [ 1, %for.loop.preheader ], [ %4, %for.body ], !dbg !3041
    #dbg_value(i64 %.lcssa, !3028, !DIExpression(), !3042)
    #dbg_value(i64 %y, !3027, !DIExpression(), !3043)
  %6 = icmp eq i64 %.lcssa, %y, !dbg !3044
  br label %common.ret, !dbg !3045
}
