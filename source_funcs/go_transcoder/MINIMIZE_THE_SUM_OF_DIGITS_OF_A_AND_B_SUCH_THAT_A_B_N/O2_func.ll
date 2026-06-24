define i64 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 %n, !3026, !DIExpression(), !3028)
    #dbg_value(i64 0, !3027, !DIExpression(), !3029)
  %n.fr = freeze i64 %n, !dbg !3030
  %0 = icmp sgt i64 %n.fr, 0, !dbg !3031
  br i1 %0, label %for.body, label %for.done.thread, !dbg !3030

for.body:                                         ; preds = %entry, %for.body
  %1 = phi i64 [ %4, %for.body ], [ 0, %entry ]
  %2 = phi i64 [ %5, %for.body ], [ %n.fr, %entry ]
    #dbg_value(i64 %2, !3026, !DIExpression(), !3032)
  %3 = urem i64 %2, 10, !dbg !3033
  %4 = add i64 %1, %3, !dbg !3034
    #dbg_value(i64 %4, !3027, !DIExpression(), !3034)
  %5 = udiv i64 %2, 10, !dbg !3035
    #dbg_value(i64 %5, !3026, !DIExpression(), !3036)
  %.not = icmp samesign ult i64 %2, 10, !dbg !3031
  br i1 %.not, label %for.done, label %for.body, !dbg !3030

for.done:                                         ; preds = %for.body
    #dbg_value(i64 %4, !3027, !DIExpression(), !3037)
  %6 = icmp eq i64 %4, 1, !dbg !3038
  %spec.select = select i1 %6, i64 10, i64 %4, !dbg !3030
  br label %for.done.thread, !dbg !3030

for.done.thread:                                  ; preds = %for.done, %entry
  %7 = phi i64 [ 0, %entry ], [ %spec.select, %for.done ], !dbg !3030
  ret i64 %7, !dbg !3030
}
