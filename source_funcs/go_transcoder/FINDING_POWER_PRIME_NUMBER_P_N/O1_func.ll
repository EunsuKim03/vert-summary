define i64 @f_gold(i64 %n, i64 %p) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(i64 %n, !3114, !DIExpression(), !3118)
    #dbg_value(i64 %p, !3115, !DIExpression(), !3118)
    #dbg_value(i64 0, !3116, !DIExpression(), !3119)
    #dbg_value(i64 %p, !3115, !DIExpression(), !3120)
    #dbg_value(i64 %p, !3117, !DIExpression(), !3121)
  %.not2 = icmp sgt i64 %p, %n, !dbg !3122
  br i1 %.not2, label %for.done, label %for.body.lr.ph, !dbg !3123

for.body.lr.ph:                                   ; preds = %entry
  %0 = icmp eq i64 %n, -9223372036854775808
  br label %for.body, !dbg !3123

for.body:                                         ; preds = %for.body.lr.ph, %divbyzero.next
  %1 = phi i64 [ %p, %for.body.lr.ph ], [ %9, %divbyzero.next ]
  %2 = phi i64 [ 0, %for.body.lr.ph ], [ %8, %divbyzero.next ]
    #dbg_value(i64 %1, !3117, !DIExpression(), !3124)
    #dbg_value(i64 %n, !3114, !DIExpression(), !3125)
    #dbg_value(i64 %1, !3117, !DIExpression(), !3126)
  %3 = icmp eq i64 %1, 0, !dbg !3127
  br i1 %3, label %divbyzero.throw, label %divbyzero.next, !dbg !3127

divbyzero.next:                                   ; preds = %for.body
  %4 = icmp eq i64 %1, -1, !dbg !3127
  %5 = and i1 %0, %4, !dbg !3127
  %6 = select i1 %5, i64 1, i64 %1, !dbg !3127
  %7 = sdiv i64 %n, %6, !dbg !3127
  %8 = add i64 %7, %2, !dbg !3128
    #dbg_value(i64 %8, !3116, !DIExpression(), !3128)
    #dbg_value(i64 %1, !3117, !DIExpression(), !3129)
    #dbg_value(i64 %p, !3115, !DIExpression(), !3130)
  %9 = mul i64 %1, %p, !dbg !3131
    #dbg_value(i64 %9, !3117, !DIExpression(), !3124)
    #dbg_value(i64 %n, !3114, !DIExpression(), !3132)
  %.not = icmp sgt i64 %9, %n, !dbg !3122
  br i1 %.not, label %for.done, label %for.body, !dbg !3123

for.done:                                         ; preds = %divbyzero.next, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %8, %divbyzero.next ], !dbg !3119
    #dbg_value(i64 %.lcssa, !3116, !DIExpression(), !3133)
  ret i64 %.lcssa, !dbg !3134

divbyzero.throw:                                  ; preds = %for.body
  call fastcc void @runtime.divideByZeroPanic(), !dbg !3127
  unreachable, !dbg !3127
}
