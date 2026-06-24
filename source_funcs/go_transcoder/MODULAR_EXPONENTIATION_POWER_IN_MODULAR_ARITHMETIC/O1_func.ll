define range(i64 -9223372036854775807, -9223372036854775808) i64 @f_gold(i64 %x, i64 %y, i64 %p) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(i64 %x, !3114, !DIExpression(), !3118)
    #dbg_value(i64 %y, !3115, !DIExpression(), !3118)
    #dbg_value(i64 %p, !3116, !DIExpression(), !3118)
    #dbg_value(i64 1, !3117, !DIExpression(), !3119)
    #dbg_value(i64 %x, !3114, !DIExpression(), !3120)
    #dbg_value(i64 %p, !3116, !DIExpression(), !3121)
  %0 = icmp eq i64 %p, 0, !dbg !3122
  br i1 %0, label %divbyzero.throw, label %divbyzero.next, !dbg !3122

divbyzero.next:                                   ; preds = %entry
  %1 = icmp eq i64 %p, -1, !dbg !3122
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3114, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mod, DW_OP_stack_value), !3123)
    #dbg_value(i64 %y, !3115, !DIExpression(), !3124)
  %.not2 = icmp eq i64 %y, 0, !dbg !3125
  br i1 %.not2, label %for.done, label %for.body.preheader, !dbg !3126

for.body.preheader:                               ; preds = %divbyzero.next
  %2 = icmp eq i64 %x, -9223372036854775808, !dbg !3122
  %3 = and i1 %2, %1, !dbg !3122
  %4 = select i1 %3, i64 1, i64 %p, !dbg !3122
    #dbg_value(!DIArgList(i64 %x, i64 %4), !3114, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mod, DW_OP_stack_value), !3123)
  %5 = srem i64 %x, %4, !dbg !3122
    #dbg_value(i64 %5, !3114, !DIExpression(), !3123)
  br label %for.body, !dbg !3126

for.body:                                         ; preds = %for.body.preheader, %divbyzero.next4
  %6 = phi i64 [ %15, %divbyzero.next4 ], [ 1, %for.body.preheader ]
  %7 = phi i64 [ %17, %divbyzero.next4 ], [ %y, %for.body.preheader ]
  %8 = phi i64 [ %21, %divbyzero.next4 ], [ %5, %for.body.preheader ]
    #dbg_value(i64 %7, !3115, !DIExpression(), !3124)
    #dbg_value(i64 %7, !3115, !DIExpression(), !3127)
  %9 = and i64 %7, 1, !dbg !3128
  %.not1 = icmp eq i64 %9, 0, !dbg !3129
  br i1 %.not1, label %divbyzero.next4, label %divbyzero.next2, !dbg !3126

divbyzero.next2:                                  ; preds = %for.body
    #dbg_value(i64 %6, !3117, !DIExpression(), !3130)
    #dbg_value(i64 %8, !3114, !DIExpression(), !3131)
    #dbg_value(i64 %p, !3116, !DIExpression(), !3132)
  %10 = mul i64 %6, %8, !dbg !3133
  %11 = icmp eq i64 %10, -9223372036854775808, !dbg !3134
  %12 = and i1 %1, %11, !dbg !3134
  %13 = select i1 %12, i64 1, i64 %p, !dbg !3134
  %14 = srem i64 %10, %13, !dbg !3134
    #dbg_value(i64 %14, !3117, !DIExpression(), !3135)
  br label %divbyzero.next4, !dbg !3126

divbyzero.next4:                                  ; preds = %for.body, %divbyzero.next2
  %15 = phi i64 [ %6, %for.body ], [ %14, %divbyzero.next2 ], !dbg !3119
    #dbg_value(i64 poison, !3115, !DIExpression(), !3136)
    #dbg_value(i64 %8, !3114, !DIExpression(), !3137)
    #dbg_value(i64 %p, !3116, !DIExpression(), !3138)
  %16 = mul i64 %8, %8, !dbg !3139
  %17 = lshr i64 %7, 1, !dbg !3140
    #dbg_value(i64 %17, !3115, !DIExpression(), !3136)
  %18 = icmp eq i64 %16, -9223372036854775808, !dbg !3141
  %19 = and i1 %1, %18, !dbg !3141
  %20 = select i1 %19, i64 1, i64 %p, !dbg !3141
  %21 = srem i64 %16, %20, !dbg !3141
    #dbg_value(i64 %21, !3114, !DIExpression(), !3142)
  %.not = icmp ult i64 %7, 2, !dbg !3125
  br i1 %.not, label %for.done, label %for.body, !dbg !3126

for.done:                                         ; preds = %divbyzero.next4, %divbyzero.next
  %.lcssa = phi i64 [ 1, %divbyzero.next ], [ %15, %divbyzero.next4 ], !dbg !3119
    #dbg_value(i64 %.lcssa, !3117, !DIExpression(), !3143)
  ret i64 %.lcssa, !dbg !3144

divbyzero.throw:                                  ; preds = %entry
  call fastcc void @runtime.divideByZeroPanic(), !dbg !3122
  unreachable, !dbg !3122
}
