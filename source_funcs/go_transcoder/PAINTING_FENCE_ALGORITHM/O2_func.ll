define i64 @f_gold(i64 %n, i64 %k) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 %n, !3026, !DIExpression(), !3033)
    #dbg_value(i64 %k, !3028, !DIExpression(), !3034)
    #dbg_value(i64 1000000007, !3029, !DIExpression(), !3035)
    #dbg_value(i64 0, !3030, !DIExpression(), !3036)
    #dbg_value(i64 %k, !3027, !DIExpression(), !3037)
    #dbg_value(i64 %k, !3031, !DIExpression(), !3038)
    #dbg_value(i64 2, !3032, !DIExpression(), !3039)
  %.not1 = icmp slt i64 %n, 2, !dbg !3040
  br i1 %.not1, label %for.done, label %for.body.lr.ph, !dbg !3041

for.body.lr.ph:                                   ; preds = %entry
  %0 = add i64 %k, -1
  br label %for.body, !dbg !3041

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %1 = phi i64 [ 2, %for.body.lr.ph ], [ %8, %for.body ]
  %2 = phi i64 [ %k, %for.body.lr.ph ], [ %5, %for.body ]
  %3 = phi i64 [ %k, %for.body.lr.ph ], [ %7, %for.body ]
    #dbg_value(i64 %1, !3032, !DIExpression(), !3042)
    #dbg_value(i64 %2, !3031, !DIExpression(), !3043)
    #dbg_value(i64 %2, !3030, !DIExpression(), !3044)
    #dbg_value(i64 %3, !3028, !DIExpression(), !3045)
    #dbg_value(i64 %k, !3027, !DIExpression(), !3046)
  %4 = mul i64 %3, %0, !dbg !3047
    #dbg_value(i64 %4, !3031, !DIExpression(), !3048)
    #dbg_value(i64 1000000007, !3029, !DIExpression(), !3049)
  %5 = srem i64 %4, 1000000007, !dbg !3050
    #dbg_value(i64 %5, !3031, !DIExpression(), !3051)
  %6 = add i64 %5, %2, !dbg !3052
  %7 = srem i64 %6, 1000000007, !dbg !3053
    #dbg_value(i64 %7, !3028, !DIExpression(), !3054)
  %8 = add i64 %1, 1, !dbg !3055
    #dbg_value(i64 %8, !3032, !DIExpression(), !3042)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3056)
  %.not = icmp sgt i64 %8, %n, !dbg !3040
  br i1 %.not, label %for.done, label %for.body, !dbg !3041

for.done:                                         ; preds = %for.body, %entry
  %.lcssa = phi i64 [ %k, %entry ], [ %7, %for.body ], !dbg !3034
    #dbg_value(i64 %.lcssa, !3028, !DIExpression(), !3057)
  ret i64 %.lcssa, !dbg !3058
}
