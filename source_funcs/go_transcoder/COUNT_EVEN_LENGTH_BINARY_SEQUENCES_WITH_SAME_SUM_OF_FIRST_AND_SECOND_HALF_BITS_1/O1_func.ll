define i64 @f_gold(i64 %n) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(i64 %n, !3114, !DIExpression(), !3118)
    #dbg_value(i64 1, !3115, !DIExpression(), !3119)
    #dbg_value(i64 1, !3116, !DIExpression(), !3120)
    #dbg_value(i64 1, !3117, !DIExpression(), !3121)
  %.not2 = icmp slt i64 %n, 1, !dbg !3122
  br i1 %.not2, label %for.done, label %for.body.lr.ph, !dbg !3123

for.body.lr.ph:                                   ; preds = %entry
  %0 = add nuw i64 %n, 1
  br label %for.body, !dbg !3123

for.body:                                         ; preds = %for.body.lr.ph, %divbyzero.next
  %1 = phi i64 [ 1, %for.body.lr.ph ], [ %14, %divbyzero.next ]
  %2 = phi i64 [ 1, %for.body.lr.ph ], [ %13, %divbyzero.next ]
  %3 = phi i64 [ 1, %for.body.lr.ph ], [ %11, %divbyzero.next ]
    #dbg_value(i64 %1, !3117, !DIExpression(), !3124)
    #dbg_value(i64 %3, !3115, !DIExpression(), !3125)
    #dbg_value(i64 %n, !3114, !DIExpression(), !3126)
    #dbg_value(i64 %1, !3117, !DIExpression(), !3127)
    #dbg_value(i64 %1, !3117, !DIExpression(), !3128)
  %4 = icmp eq i64 %1, 0, !dbg !3129
  br i1 %4, label %divbyzero.throw, label %divbyzero.next, !dbg !3129

divbyzero.next:                                   ; preds = %for.body
  %5 = sub i64 %0, %1, !dbg !3130
  %6 = mul i64 %5, %3, !dbg !3131
  %7 = icmp eq i64 %1, -1, !dbg !3129
  %8 = icmp eq i64 %6, -9223372036854775808, !dbg !3129
  %9 = and i1 %7, %8, !dbg !3129
  %10 = select i1 %9, i64 1, i64 %1, !dbg !3129
  %11 = sdiv i64 %6, %10, !dbg !3129
    #dbg_value(i64 %11, !3115, !DIExpression(), !3132)
  %12 = mul i64 %11, %11, !dbg !3133
  %13 = add i64 %12, %2, !dbg !3134
    #dbg_value(i64 %13, !3116, !DIExpression(), !3134)
  %14 = add i64 %1, 1, !dbg !3135
    #dbg_value(i64 %14, !3117, !DIExpression(), !3124)
    #dbg_value(i64 %n, !3114, !DIExpression(), !3136)
  %.not = icmp sgt i64 %14, %n, !dbg !3122
  br i1 %.not, label %for.done, label %for.body, !dbg !3123

for.done:                                         ; preds = %divbyzero.next, %entry
  %.lcssa = phi i64 [ 1, %entry ], [ %13, %divbyzero.next ], !dbg !3120
    #dbg_value(i64 %.lcssa, !3116, !DIExpression(), !3137)
  ret i64 %.lcssa, !dbg !3138

divbyzero.throw:                                  ; preds = %for.body
  call fastcc void @runtime.divideByZeroPanic(), !dbg !3129
  unreachable, !dbg !3129
}
