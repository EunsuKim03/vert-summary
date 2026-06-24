define i64 @f_gold(i64 %n) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(i64 %n, !3114, !DIExpression(), !3117)
    #dbg_value(i64 0, !3115, !DIExpression(), !3118)
    #dbg_value(i64 1, !3116, !DIExpression(), !3119)
  %n.fr = freeze i64 %n, !dbg !3120
  %.not2 = icmp slt i64 %n.fr, 1, !dbg !3121
  br i1 %.not2, label %for.done, label %for.body, !dbg !3122

for.body:                                         ; preds = %entry, %divbyzero.next
  %0 = phi i64 [ %6, %divbyzero.next ], [ 1, %entry ]
  %1 = phi i64 [ %5, %divbyzero.next ], [ 0, %entry ]
    #dbg_value(i64 %0, !3116, !DIExpression(), !3123)
    #dbg_value(i64 %n, !3114, !DIExpression(), !3124)
    #dbg_value(i64 %0, !3116, !DIExpression(), !3125)
  %2 = icmp eq i64 %0, 0, !dbg !3126
  br i1 %2, label %divbyzero.throw, label %divbyzero.next, !dbg !3126

divbyzero.next:                                   ; preds = %for.body
    #dbg_value(i64 %0, !3116, !DIExpression(), !3127)
  %3 = srem i64 %n.fr, %0, !dbg !3120
  %4 = sub nsw i64 %n.fr, %3, !dbg !3120
  %5 = add i64 %4, %1, !dbg !3128
    #dbg_value(i64 %5, !3115, !DIExpression(), !3128)
  %6 = add i64 %0, 1, !dbg !3129
    #dbg_value(i64 %6, !3116, !DIExpression(), !3123)
    #dbg_value(i64 %n, !3114, !DIExpression(), !3130)
  %.not = icmp sgt i64 %6, %n.fr, !dbg !3121
  br i1 %.not, label %for.done, label %for.body, !dbg !3122

for.done:                                         ; preds = %divbyzero.next, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %5, %divbyzero.next ], !dbg !3118
    #dbg_value(i64 %.lcssa, !3115, !DIExpression(), !3131)
  ret i64 %.lcssa, !dbg !3132

divbyzero.throw:                                  ; preds = %for.body
  call fastcc void @runtime.divideByZeroPanic(), !dbg !3126
  unreachable, !dbg !3126
}
