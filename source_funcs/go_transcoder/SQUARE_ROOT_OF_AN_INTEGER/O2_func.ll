define i64 @f_gold(i64 %x) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 %x, !3026, !DIExpression(), !3029)
  %switch = icmp ult i64 %x, 2, !dbg !3030
  br i1 %switch, label %common.ret, label %for.loop.preheader, !dbg !3030

for.loop.preheader:                               ; preds = %entry
    #dbg_value(i64 1, !3028, !DIExpression(), !3031)
    #dbg_value(i64 %x, !3026, !DIExpression(), !3032)
  %.not1 = icmp slt i64 %x, 1, !dbg !3033
  br i1 %.not1, label %common.ret, label %for.body, !dbg !3030

common.ret:                                       ; preds = %for.body, %for.loop.preheader, %entry
  %common.ret.op = phi i64 [ %x, %entry ], [ 0, %for.loop.preheader ], [ %0, %for.body ]
  ret i64 %common.ret.op, !dbg !3030

for.body:                                         ; preds = %for.loop.preheader, %for.body
  %0 = phi i64 [ %1, %for.body ], [ 1, %for.loop.preheader ]
  %1 = add i64 %0, 1, !dbg !3034
    #dbg_value(i64 %1, !3027, !DIExpression(), !3035)
  %2 = mul i64 %1, %1, !dbg !3036
    #dbg_value(i64 %2, !3028, !DIExpression(), !3031)
    #dbg_value(i64 %x, !3026, !DIExpression(), !3032)
  %.not = icmp sgt i64 %2, %x, !dbg !3033
  br i1 %.not, label %common.ret, label %for.body, !dbg !3030
}
