define i64 @f_gold(i64 %m, i64 %n) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(i64 %m, !3114, !DIExpression(), !3118)
    #dbg_value(i64 %n, !3115, !DIExpression(), !3118)
    #dbg_value(i64 1, !3116, !DIExpression(), !3119)
    #dbg_value(i64 %n, !3115, !DIExpression(), !3120)
    #dbg_value(i64 %n, !3117, !DIExpression(), !3121)
  %0 = add i64 %m, -1
  %1 = add i64 %0, %n
    #dbg_value(i64 %n, !3117, !DIExpression(), !3122)
    #dbg_value(i64 %m, !3114, !DIExpression(), !3123)
    #dbg_value(i64 %n, !3115, !DIExpression(), !3124)
  %2 = icmp slt i64 %n, %1, !dbg !3125
  br i1 %2, label %for.body.preheader, label %for.done, !dbg !3126

for.body.preheader:                               ; preds = %entry
  %3 = icmp eq i64 %m, 1, !dbg !3127
  br label %for.body, !dbg !3127

for.body:                                         ; preds = %for.body.preheader, %divbyzero.next
  %4 = phi i64 [ %14, %divbyzero.next ], [ %n, %for.body.preheader ]
  %5 = phi i64 [ %13, %divbyzero.next ], [ 1, %for.body.preheader ]
    #dbg_value(i64 %4, !3117, !DIExpression(), !3122)
    #dbg_value(i64 %4, !3117, !DIExpression(), !3128)
    #dbg_value(!DIArgList(i64 %5, i64 %4), !3116, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !3129)
    #dbg_value(i64 %4, !3117, !DIExpression(), !3130)
    #dbg_value(i64 %n, !3115, !DIExpression(), !3131)
  br i1 %3, label %divbyzero.throw, label %divbyzero.next, !dbg !3127

divbyzero.next:                                   ; preds = %for.body
  %6 = sub i64 %4, %n, !dbg !3132
  %7 = add i64 %6, 1, !dbg !3133
  %8 = mul i64 %4, %5, !dbg !3129
    #dbg_value(i64 %8, !3116, !DIExpression(), !3129)
  %9 = icmp eq i64 %7, -1, !dbg !3127
  %10 = icmp eq i64 %8, -9223372036854775808, !dbg !3127
  %11 = and i1 %10, %9, !dbg !3127
  %12 = select i1 %11, i64 1, i64 %7, !dbg !3127
  %13 = sdiv i64 %8, %12, !dbg !3127
    #dbg_value(i64 %13, !3116, !DIExpression(), !3127)
  %14 = add nsw i64 %4, 1, !dbg !3134
    #dbg_value(i64 %14, !3117, !DIExpression(), !3122)
    #dbg_value(i64 %m, !3114, !DIExpression(), !3123)
    #dbg_value(i64 %n, !3115, !DIExpression(), !3124)
  %exitcond.not = icmp eq i64 %14, %1, !dbg !3125
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !3126

for.done:                                         ; preds = %divbyzero.next, %entry
  %.lcssa = phi i64 [ 1, %entry ], [ %13, %divbyzero.next ], !dbg !3119
    #dbg_value(i64 %.lcssa, !3116, !DIExpression(), !3135)
  ret i64 %.lcssa, !dbg !3136

divbyzero.throw:                                  ; preds = %for.body
  call fastcc void @runtime.divideByZeroPanic(), !dbg !3127
  unreachable, !dbg !3127
}
