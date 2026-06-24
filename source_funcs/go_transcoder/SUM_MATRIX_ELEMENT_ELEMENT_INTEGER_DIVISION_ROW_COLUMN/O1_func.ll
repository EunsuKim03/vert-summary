define i64 @f_gold(i64 %n) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(i64 %n, !3114, !DIExpression(), !3118)
    #dbg_value(i64 0, !3115, !DIExpression(), !3119)
    #dbg_value(i64 1, !3116, !DIExpression(), !3120)
  %.not8 = icmp slt i64 %n, 1, !dbg !3121
  br i1 %.not8, label %for.done3, label %for.loop1.preheader, !dbg !3122

for.loop1.preheader:                              ; preds = %entry, %for.done
  %0 = phi i64 [ %12, %for.done ], [ 1, %entry ]
  %1 = phi i64 [ %10, %for.done ], [ 0, %entry ]
    #dbg_value(i64 %0, !3116, !DIExpression(), !3123)
    #dbg_value(i64 1, !3117, !DIExpression(), !3124)
    #dbg_value(i64 %n, !3114, !DIExpression(), !3125)
  %2 = icmp eq i64 %0, -9223372036854775808
  br label %for.body2, !dbg !3122

for.body2:                                        ; preds = %for.loop1.preheader, %divbyzero.next
  %3 = phi i64 [ 1, %for.loop1.preheader ], [ %11, %divbyzero.next ]
  %4 = phi i64 [ %1, %for.loop1.preheader ], [ %10, %divbyzero.next ]
    #dbg_value(i64 %3, !3117, !DIExpression(), !3124)
    #dbg_value(i64 %0, !3116, !DIExpression(), !3126)
    #dbg_value(i64 %3, !3117, !DIExpression(), !3127)
  %5 = icmp eq i64 %3, 0, !dbg !3128
  br i1 %5, label %divbyzero.throw, label %divbyzero.next, !dbg !3128

divbyzero.next:                                   ; preds = %for.body2
  %6 = icmp eq i64 %3, -1, !dbg !3128
  %7 = and i1 %2, %6, !dbg !3128
  %8 = select i1 %7, i64 1, i64 %3, !dbg !3128
  %9 = sdiv i64 %0, %8, !dbg !3128
  %10 = add i64 %9, %4, !dbg !3129
    #dbg_value(i64 %10, !3115, !DIExpression(), !3129)
  %11 = add i64 %3, 1, !dbg !3130
    #dbg_value(i64 %11, !3117, !DIExpression(), !3124)
    #dbg_value(i64 %n, !3114, !DIExpression(), !3125)
  %.not2 = icmp sgt i64 %11, %n, !dbg !3131
  br i1 %.not2, label %for.done, label %for.body2, !dbg !3122

for.done:                                         ; preds = %divbyzero.next
  %12 = add i64 %0, 1, !dbg !3132
    #dbg_value(i64 %12, !3116, !DIExpression(), !3123)
    #dbg_value(i64 %n, !3114, !DIExpression(), !3133)
  %.not = icmp sgt i64 %12, %n, !dbg !3121
  br i1 %.not, label %for.done3, label %for.loop1.preheader, !dbg !3122

for.done3:                                        ; preds = %for.done, %entry
  %.lcssa5 = phi i64 [ 0, %entry ], [ %10, %for.done ], !dbg !3119
    #dbg_value(i64 %.lcssa5, !3115, !DIExpression(), !3134)
  ret i64 %.lcssa5, !dbg !3135

divbyzero.throw:                                  ; preds = %for.body2
  call fastcc void @runtime.divideByZeroPanic(), !dbg !3128
  unreachable, !dbg !3128
}
