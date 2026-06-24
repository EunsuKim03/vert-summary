define i64 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 %n, !3026, !DIExpression(), !3031)
    #dbg_value(i64 0, !3027, !DIExpression(), !3032)
    #dbg_value(i64 0, !3028, !DIExpression(), !3033)
    #dbg_value(i64 0, !3029, !DIExpression(), !3034)
    #dbg_value(i64 1, !3030, !DIExpression(), !3035)
  %0 = icmp sgt i64 %n, 0
  br i1 %0, label %for.body, label %for.done3, !dbg !3036

for.body:                                         ; preds = %entry, %for.done
  %1 = phi i64 [ %13, %for.done ], [ 1, %entry ]
  %2 = phi i64 [ %.lcssa6, %for.done ], [ 0, %entry ]
    #dbg_value(i64 %1, !3030, !DIExpression(), !3037)
  %3 = add i64 %1, -1, !dbg !3038
    #dbg_value(i64 %3, !3028, !DIExpression(), !3039)
    #dbg_value(i64 1, !3029, !DIExpression(), !3040)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3041)
  %4 = icmp slt i64 %3, %n, !dbg !3042
  br i1 %4, label %for.body2, label %for.done, !dbg !3036

for.body2:                                        ; preds = %for.body, %for.body2
  %5 = phi i64 [ %11, %for.body2 ], [ 1, %for.body ]
  %6 = phi i64 [ %8, %for.body2 ], [ %3, %for.body ]
  %7 = phi i64 [ %10, %for.body2 ], [ %2, %for.body ]
    #dbg_value(i64 %6, !3028, !DIExpression(), !3043)
    #dbg_value(i64 %1, !3030, !DIExpression(), !3044)
  %8 = add i64 %6, %1, !dbg !3045
    #dbg_value(i64 %n, !3026, !DIExpression(), !3046)
  %.not2 = icmp sgt i64 %8, %n, !dbg !3047
  %9 = sub i64 %n, %6, !dbg !3036
  %.pn3 = select i1 %.not2, i64 %9, i64 %1, !dbg !3036
  %.pn = mul i64 %.pn3, %5, !dbg !3036
  %10 = add i64 %.pn, %7, !dbg !3036
    #dbg_value(i64 %8, !3028, !DIExpression(), !3048)
  %11 = add i64 %5, 1, !dbg !3049
    #dbg_value(i64 %11, !3029, !DIExpression(), !3049)
  %12 = icmp slt i64 %8, %n, !dbg !3042
  br i1 %12, label %for.body2, label %for.done, !dbg !3036

for.done:                                         ; preds = %for.body2, %for.body
  %.lcssa6 = phi i64 [ %2, %for.body ], [ %10, %for.body2 ], !dbg !3032
  %.lcssa = phi i64 [ %3, %for.body ], [ %8, %for.body2 ], !dbg !3033
  %13 = add i64 %1, 1, !dbg !3050
    #dbg_value(i64 %13, !3030, !DIExpression(), !3051)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3052)
  %.not = icmp sle i64 %13, %n, !dbg !3053
    #dbg_value(i64 %.lcssa, !3028, !DIExpression(), !3054)
  %14 = icmp slt i64 %.lcssa, %n
  %or.cond = and i1 %14, %.not, !dbg !3036
  br i1 %or.cond, label %for.body, label %for.done3, !dbg !3036

for.done3:                                        ; preds = %for.done, %entry
  %.lcssa7 = phi i64 [ 0, %entry ], [ %.lcssa6, %for.done ], !dbg !3032
    #dbg_value(i64 %.lcssa7, !3027, !DIExpression(), !3055)
  ret i64 %.lcssa7, !dbg !3056
}
