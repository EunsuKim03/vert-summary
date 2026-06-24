define i64 @f_gold(i64 %n) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(i64 %n, !3114, !DIExpression(), !3117)
    #dbg_value(i64 1, !3115, !DIExpression(), !3118)
    #dbg_value(i64 0, !3116, !DIExpression(), !3119)
  %0 = icmp sgt i64 %n, 0, !dbg !3120
  br i1 %0, label %for.body.lr.ph, label %for.done, !dbg !3121

for.body.lr.ph:                                   ; preds = %entry
  %1 = shl nuw i64 %n, 1
  br label %for.body, !dbg !3121

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %2 = phi i64 [ 0, %for.body.lr.ph ], [ %4, %for.body ]
  %3 = phi i64 [ 1, %for.body.lr.ph ], [ %7, %for.body ]
    #dbg_value(i64 %2, !3116, !DIExpression(), !3122)
    #dbg_value(i64 %n, !3114, !DIExpression(), !3123)
    #dbg_value(i64 %2, !3116, !DIExpression(), !3124)
    #dbg_value(!DIArgList(i64 %3, i64 %n, i64 %2), !3115, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shl, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_mul, DW_OP_stack_value), !3125)
    #dbg_value(i64 %2, !3116, !DIExpression(), !3126)
  %4 = add nuw nsw i64 %2, 1, !dbg !3127
    #dbg_value(!DIArgList(i64 %3, i64 %1, i64 %2), !3115, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_mul, DW_OP_stack_value), !3125)
  %5 = sub i64 %1, %2, !dbg !3128
    #dbg_value(!DIArgList(i64 %3, i64 %5), !3115, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !3125)
  %6 = mul i64 %5, %3, !dbg !3125
    #dbg_value(i64 %6, !3115, !DIExpression(), !3125)
  %7 = sdiv i64 %6, %4, !dbg !3129
    #dbg_value(i64 %7, !3115, !DIExpression(), !3129)
    #dbg_value(i64 %4, !3116, !DIExpression(), !3122)
    #dbg_value(i64 %n, !3114, !DIExpression(), !3130)
  %exitcond.not = icmp eq i64 %4, %n, !dbg !3120
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !3121

for.done:                                         ; preds = %for.body, %entry
  %.lcssa = phi i64 [ 1, %entry ], [ %7, %for.body ], !dbg !3118
    #dbg_value(i64 %.lcssa, !3115, !DIExpression(), !3131)
    #dbg_value(i64 %n, !3114, !DIExpression(), !3132)
  %8 = add i64 %n, 1, !dbg !3133
  %9 = icmp eq i64 %8, 0, !dbg !3134
  br i1 %9, label %divbyzero.throw1, label %divbyzero.next2, !dbg !3134

divbyzero.next2:                                  ; preds = %for.done
  %10 = icmp eq i64 %8, -1, !dbg !3134
  %11 = icmp eq i64 %.lcssa, -9223372036854775808, !dbg !3134
  %12 = and i1 %10, %11, !dbg !3134
  %13 = select i1 %12, i64 1, i64 %8, !dbg !3134
  %14 = sdiv i64 %.lcssa, %13, !dbg !3134
  ret i64 %14, !dbg !3135

divbyzero.throw1:                                 ; preds = %for.done
  call fastcc void @runtime.divideByZeroPanic(), !dbg !3134
  unreachable, !dbg !3134
}
