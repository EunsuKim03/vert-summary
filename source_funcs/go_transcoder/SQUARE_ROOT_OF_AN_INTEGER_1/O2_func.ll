define i64 @f_gold(i64 %x) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 %x, !3026, !DIExpression(), !3031)
  %switch = icmp ult i64 %x, 2, !dbg !3032
  br i1 %switch, label %common.ret, label %for.loop.preheader, !dbg !3032

for.loop.preheader:                               ; preds = %entry
    #dbg_value(i64 1, !3027, !DIExpression(), !3033)
    #dbg_value(i64 %x, !3028, !DIExpression(), !3034)
  %.not912 = icmp slt i64 %x, 1, !dbg !3035
  br i1 %.not912, label %common.ret, label %for.body.lr.ph, !dbg !3032

common.ret:                                       ; preds = %if.then3, %for.body, %if.else, %for.loop.preheader, %entry
  %common.ret.op = phi i64 [ %x, %entry ], [ 0, %for.loop.preheader ], [ %2, %for.body ], [ %.ph615, %if.else ], [ %2, %if.then3 ]
  ret i64 %common.ret.op, !dbg !3032

for.body:                                         ; preds = %for.body.lr.ph, %if.else
  %0 = phi i64 [ %.ph514, %for.body.lr.ph ], [ %7, %if.else ]
    #dbg_value(i64 %.ph13, !3027, !DIExpression(), !3036)
    #dbg_value(i64 %0, !3028, !DIExpression(), !3037)
  %1 = add i64 %0, %.ph13, !dbg !3038
  %2 = sdiv i64 %1, 2, !dbg !3039
    #dbg_value(i64 %2, !3030, !DIExpression(), !3040)
  %3 = mul i64 %2, %2, !dbg !3041
    #dbg_value(i64 %x, !3026, !DIExpression(), !3042)
  %4 = icmp eq i64 %3, %x, !dbg !3043
  br i1 %4, label %common.ret, label %if.done2, !dbg !3032

if.done2:                                         ; preds = %for.body
    #dbg_value(i64 %2, !3030, !DIExpression(), !3044)
    #dbg_value(i64 %x, !3026, !DIExpression(), !3045)
  %5 = icmp slt i64 %3, %x, !dbg !3046
  br i1 %5, label %if.then3, label %if.else, !dbg !3032

if.then3:                                         ; preds = %if.done2
    #dbg_value(i64 %2, !3030, !DIExpression(), !3047)
  %6 = add nsw i64 %2, 1, !dbg !3048
    #dbg_value(i64 %2, !3029, !DIExpression(), !3049)
    #dbg_value(i64 %6, !3027, !DIExpression(), !3033)
    #dbg_value(i64 %0, !3028, !DIExpression(), !3034)
  %.not9.not = icmp slt i64 %2, %0, !dbg !3035
  br i1 %.not9.not, label %for.body.lr.ph, label %common.ret, !dbg !3032

for.body.lr.ph:                                   ; preds = %for.loop.preheader, %if.then3
  %.ph615 = phi i64 [ %2, %if.then3 ], [ 0, %for.loop.preheader ]
  %.ph514 = phi i64 [ %0, %if.then3 ], [ %x, %for.loop.preheader ]
  %.ph13 = phi i64 [ %6, %if.then3 ], [ 1, %for.loop.preheader ]
    #dbg_value(i64 %.ph514, !3028, !DIExpression(), !3034)
    #dbg_value(i64 %.ph13, !3027, !DIExpression(), !3033)
  br label %for.body, !dbg !3032

if.else:                                          ; preds = %if.done2
    #dbg_value(i64 %2, !3030, !DIExpression(), !3050)
  %7 = add nsw i64 %2, -1, !dbg !3051
    #dbg_value(i64 %.ph13, !3027, !DIExpression(), !3033)
    #dbg_value(i64 %7, !3028, !DIExpression(), !3034)
  %.not.not = icmp slt i64 %.ph13, %2, !dbg !3035
  br i1 %.not.not, label %for.body, label %common.ret, !dbg !3032
}
