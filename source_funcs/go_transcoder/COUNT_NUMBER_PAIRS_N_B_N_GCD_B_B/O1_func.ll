define i64 @f_gold(i64 %n) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(i64 %n, !3114, !DIExpression(), !3119)
    #dbg_value(i64 %n, !3114, !DIExpression(), !3120)
    #dbg_value(i64 %n, !3115, !DIExpression(), !3121)
    #dbg_value(i64 1, !3116, !DIExpression(), !3122)
    #dbg_value(i64 0, !3117, !DIExpression(), !3123)
  %.not9 = icmp slt i64 %n, 1, !dbg !3124
  br i1 %.not9, label %for.done, label %for.body, !dbg !3125

for.body:                                         ; preds = %entry, %divbyzero.next2
  %0 = phi i64 [ %9, %divbyzero.next2 ], [ 0, %entry ]
  %1 = phi i64 [ %5, %divbyzero.next2 ], [ 1, %entry ]
  %2 = phi i64 [ %10, %divbyzero.next2 ], [ %n, %entry ]
    #dbg_value(i64 %1, !3116, !DIExpression(), !3126)
    #dbg_value(i64 %n, !3114, !DIExpression(), !3127)
    #dbg_value(i64 %2, !3115, !DIExpression(), !3128)
  %3 = icmp eq i64 %2, 0, !dbg !3129
  br i1 %3, label %divbyzero.throw, label %divbyzero.next, !dbg !3129

divbyzero.next:                                   ; preds = %for.body
  %4 = sdiv i64 %n, %2, !dbg !3129
    #dbg_value(i64 %4, !3118, !DIExpression(), !3130)
    #dbg_value(i64 %2, !3115, !DIExpression(), !3131)
    #dbg_value(i64 %4, !3118, !DIExpression(), !3132)
    #dbg_value(i64 %1, !3116, !DIExpression(), !3133)
    #dbg_value(!DIArgList(i64 %0, i64 %2, i64 %4, i64 %1), !3117, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_plus_uconst, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !3134)
    #dbg_value(i64 %4, !3118, !DIExpression(), !3135)
  %5 = add i64 %4, 1, !dbg !3136
    #dbg_value(i64 %5, !3116, !DIExpression(), !3137)
    #dbg_value(i64 %n, !3114, !DIExpression(), !3138)
    #dbg_value(i64 %5, !3116, !DIExpression(), !3139)
  %6 = icmp eq i64 %5, 0, !dbg !3140
  br i1 %6, label %divbyzero.throw1, label %divbyzero.next2, !dbg !3140

divbyzero.next2:                                  ; preds = %divbyzero.next
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3117, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_plus_uconst, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !3134)
  %reass.sub = sub i64 %4, %1, !dbg !3141
  %7 = add i64 %reass.sub, 1, !dbg !3141
    #dbg_value(!DIArgList(i64 %0, i64 %2, i64 %7), !3117, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !3134)
  %8 = mul i64 %7, %2, !dbg !3142
    #dbg_value(!DIArgList(i64 %0, i64 %8), !3117, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3134)
  %9 = add i64 %8, %0, !dbg !3134
    #dbg_value(i64 %9, !3117, !DIExpression(), !3134)
  %10 = sdiv i64 %n, %5, !dbg !3140
    #dbg_value(i64 %10, !3115, !DIExpression(), !3143)
    #dbg_value(i64 %5, !3116, !DIExpression(), !3126)
    #dbg_value(i64 %n, !3114, !DIExpression(), !3144)
  %.not = icmp sgt i64 %5, %n, !dbg !3124
  br i1 %.not, label %for.done, label %for.body, !dbg !3125

for.done:                                         ; preds = %divbyzero.next2, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %9, %divbyzero.next2 ], !dbg !3123
    #dbg_value(i64 %.lcssa, !3117, !DIExpression(), !3145)
  ret i64 %.lcssa, !dbg !3146

divbyzero.throw:                                  ; preds = %for.body
  call fastcc void @runtime.divideByZeroPanic(), !dbg !3129
  unreachable, !dbg !3129

divbyzero.throw1:                                 ; preds = %divbyzero.next
  call fastcc void @runtime.divideByZeroPanic(), !dbg !3140
  unreachable, !dbg !3140
}
