define i64 @f_gold(i64 %N) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 %N, !3026, !DIExpression(), !3033)
    #dbg_value(i64 %N, !3026, !DIExpression(), !3034)
  %0 = icmp eq i64 %N, 1, !dbg !3035
  br i1 %0, label %common.ret, label %for.loop.preheader, !dbg !3036

for.loop.preheader:                               ; preds = %entry
    #dbg_value(i64 2, !3031, !DIExpression(), !3037)
    #dbg_value(i64 %N, !3026, !DIExpression(), !3038)
  %.not2 = icmp slt i64 %N, 2, !dbg !3039
  br i1 %.not2, label %for.done, label %for.body, !dbg !3036

common.ret:                                       ; preds = %entry, %for.done
  %common.ret.op = phi i64 [ %8, %for.done ], [ 4, %entry ]
  ret i64 %common.ret.op, !dbg !3036

for.body:                                         ; preds = %for.loop.preheader, %for.body
  %1 = phi i64 [ %5, %for.body ], [ 2, %for.loop.preheader ]
  %2 = phi i64 [ %4, %for.body ], [ 1, %for.loop.preheader ]
  %3 = phi i64 [ %2, %for.body ], [ 1, %for.loop.preheader ]
    #dbg_value(i64 %1, !3031, !DIExpression(), !3037)
    #dbg_value(i64 %3, !3027, !DIExpression(), !3040)
    #dbg_value(i64 %2, !3028, !DIExpression(), !3041)
    #dbg_value(i64 %3, !3029, !DIExpression(), !3042)
    #dbg_value(i64 %2, !3030, !DIExpression(), !3043)
  %4 = add i64 %2, %3, !dbg !3044
    #dbg_value(i64 %4, !3028, !DIExpression(), !3045)
    #dbg_value(i64 %2, !3027, !DIExpression(), !3046)
  %5 = add i64 %1, 1, !dbg !3047
    #dbg_value(i64 %5, !3031, !DIExpression(), !3037)
    #dbg_value(i64 %N, !3026, !DIExpression(), !3038)
  %.not = icmp sgt i64 %5, %N, !dbg !3039
  br i1 %.not, label %for.done.loopexit, label %for.body, !dbg !3036

for.done.loopexit:                                ; preds = %for.body
  %6 = add i64 %4, %2, !dbg !3048
  br label %for.done, !dbg !3048

for.done:                                         ; preds = %for.done.loopexit, %for.loop.preheader
  %7 = phi i64 [ 2, %for.loop.preheader ], [ %6, %for.done.loopexit ], !dbg !3048
    #dbg_value(i64 poison, !3028, !DIExpression(), !3049)
    #dbg_value(i64 poison, !3027, !DIExpression(), !3050)
    #dbg_value(i64 %7, !3032, !DIExpression(), !3051)
    #dbg_value(i64 %7, !3032, !DIExpression(), !3052)
    #dbg_value(i64 %7, !3032, !DIExpression(), !3053)
  %8 = mul i64 %7, %7, !dbg !3054
  br label %common.ret, !dbg !3055
}
