define i64 @f_gold(i64 %num) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(i64 %num, !3114, !DIExpression(), !3117)
    #dbg_value(i64 0, !3115, !DIExpression(), !3118)
    #dbg_value(i64 2, !3116, !DIExpression(), !3119)
  %.not10 = icmp slt i64 %num, 4, !dbg !3120
  br i1 %.not10, label %for.done2, label %for.loop1.preheader, !dbg !3121

for.loop1.preheader:                              ; preds = %entry, %for.done
  %0 = phi i64 [ %14, %for.done ], [ 2, %entry ]
  %1 = phi i64 [ %5, %for.done ], [ 0, %entry ]
  %2 = phi i64 [ %6, %for.done ], [ %num, %entry ]
    #dbg_value(i64 %0, !3116, !DIExpression(), !3122)
    #dbg_value(i64 %2, !3114, !DIExpression(), !3123)
  %3 = icmp eq i64 %0, 0
    #dbg_value(i64 %2, !3114, !DIExpression(), !3124)
    #dbg_value(i64 %0, !3116, !DIExpression(), !3125)
  br i1 %3, label %divbyzero.throw, label %divbyzero.next.lr.ph, !dbg !3126

divbyzero.next.lr.ph:                             ; preds = %for.loop1.preheader
  %4 = icmp eq i64 %0, -1
  br label %divbyzero.next, !dbg !3126

divbyzero.next:                                   ; preds = %divbyzero.next4, %divbyzero.next.lr.ph
  %5 = phi i64 [ %1, %divbyzero.next.lr.ph ], [ %12, %divbyzero.next4 ]
  %6 = phi i64 [ %2, %divbyzero.next.lr.ph ], [ %13, %divbyzero.next4 ]
    #dbg_value(i64 %6, !3114, !DIExpression(), !3124)
  %7 = icmp eq i64 %6, -9223372036854775808, !dbg !3126
  %8 = and i1 %4, %7, !dbg !3126
  %9 = select i1 %8, i64 1, i64 %0, !dbg !3126
  %10 = srem i64 %6, %9, !dbg !3126
  %11 = icmp eq i64 %10, 0, !dbg !3127
  br i1 %11, label %divbyzero.next4, label %for.done, !dbg !3121

divbyzero.next4:                                  ; preds = %divbyzero.next
    #dbg_value(!DIArgList(i64 %5, i64 %0), !3115, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3128)
    #dbg_value(i64 %0, !3116, !DIExpression(), !3129)
  %12 = add i64 %5, %0, !dbg !3128
    #dbg_value(i64 %12, !3115, !DIExpression(), !3128)
  %13 = sdiv i64 %6, %9, !dbg !3130
    #dbg_value(i64 %13, !3114, !DIExpression(), !3124)
  br label %divbyzero.next, !dbg !3126

for.done:                                         ; preds = %divbyzero.next
  %14 = add i64 %0, 1, !dbg !3131
    #dbg_value(i64 %14, !3116, !DIExpression(), !3132)
  %15 = mul i64 %14, %14, !dbg !3133
    #dbg_value(i64 %6, !3114, !DIExpression(), !3123)
  %.not = icmp sgt i64 %15, %6, !dbg !3120
  br i1 %.not, label %for.done2, label %for.loop1.preheader, !dbg !3121

for.done2:                                        ; preds = %for.done, %entry
  %.lcssa8 = phi i64 [ %num, %entry ], [ %6, %for.done ], !dbg !3134
  %.lcssa = phi i64 [ 0, %entry ], [ %5, %for.done ], !dbg !3118
    #dbg_value(i64 %.lcssa8, !3114, !DIExpression(), !3135)
  %16 = add i64 %.lcssa, %.lcssa8, !dbg !3136
    #dbg_value(i64 %16, !3115, !DIExpression(), !3136)
    #dbg_value(i64 %16, !3115, !DIExpression(), !3137)
  ret i64 %16, !dbg !3138

divbyzero.throw:                                  ; preds = %for.loop1.preheader
  call fastcc void @runtime.divideByZeroPanic(), !dbg !3126
  unreachable, !dbg !3126
}
