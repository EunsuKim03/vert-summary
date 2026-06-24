define i64 @f_gold(i64 %n) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(i64 %n, !3030, !DIExpression(), !3034)
    #dbg_value(i64 0, !3031, !DIExpression(), !3035)
    #dbg_value(i64 1, !3032, !DIExpression(), !3036)
  %.not8 = icmp slt i64 %n, 1, !dbg !3037
  br i1 %.not8, label %for.done3, label %for.body2.lr.ph, !dbg !3038

for.body2.lr.ph:                                  ; preds = %entry, %for.done
  %0 = phi i64 [ %12, %for.done ], [ 1, %entry ]
  %1 = phi i64 [ %10, %for.done ], [ 0, %entry ]
    #dbg_value(i64 %0, !3032, !DIExpression(), !3039)
    #dbg_value(i64 1, !3033, !DIExpression(), !3040)
    #dbg_value(i64 %n, !3030, !DIExpression(), !3041)
  %2 = icmp eq i64 %0, -9223372036854775808
  br label %for.body2, !dbg !3038

for.body2:                                        ; preds = %for.body2.lr.ph, %divbyzero.next
  %3 = phi i64 [ 1, %for.body2.lr.ph ], [ %11, %divbyzero.next ]
  %4 = phi i64 [ %1, %for.body2.lr.ph ], [ %10, %divbyzero.next ]
    #dbg_value(i64 %0, !3032, !DIExpression(), !3042)
    #dbg_value(i64 %3, !3033, !DIExpression(), !3043)
  %5 = icmp eq i64 %3, 0, !dbg !3044
  br i1 %5, label %divbyzero.throw, label %divbyzero.next, !dbg !3044

divbyzero.next:                                   ; preds = %for.body2
  %6 = icmp eq i64 %3, -1, !dbg !3044
  %7 = and i1 %2, %6, !dbg !3044
  %8 = select i1 %7, i64 1, i64 %3, !dbg !3044
  %9 = sdiv i64 %0, %8, !dbg !3044
  %10 = add i64 %9, %4, !dbg !3045
    #dbg_value(i64 %10, !3031, !DIExpression(), !3045)
  %11 = add i64 %3, 1, !dbg !3046
    #dbg_value(i64 %11, !3033, !DIExpression(), !3040)
    #dbg_value(i64 %n, !3030, !DIExpression(), !3041)
  %.not2 = icmp sgt i64 %11, %n, !dbg !3047
  br i1 %.not2, label %for.done, label %for.body2, !dbg !3038

for.done:                                         ; preds = %divbyzero.next
  %12 = add i64 %0, 1, !dbg !3048
    #dbg_value(i64 %12, !3032, !DIExpression(), !3039)
    #dbg_value(i64 %n, !3030, !DIExpression(), !3049)
  %.not = icmp sgt i64 %12, %n, !dbg !3037
  br i1 %.not, label %for.done3, label %for.body2.lr.ph, !dbg !3038

for.done3:                                        ; preds = %for.done, %entry
  %.lcssa5 = phi i64 [ 0, %entry ], [ %10, %for.done ], !dbg !3035
    #dbg_value(i64 %.lcssa5, !3031, !DIExpression(), !3050)
  ret i64 %.lcssa5, !dbg !3051

divbyzero.throw:                                  ; preds = %for.body2
  tail call fastcc void @runtime.divideByZeroPanic(), !dbg !3044
  unreachable, !dbg !3044
}
