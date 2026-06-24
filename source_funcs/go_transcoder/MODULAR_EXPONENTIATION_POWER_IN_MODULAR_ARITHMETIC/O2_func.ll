define range(i64 -9223372036854775807, -9223372036854775808) i64 @f_gold(i64 %x, i64 %y, i64 %p) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(i64 %y, !3031, !DIExpression(), !3034)
    #dbg_value(i64 1, !3033, !DIExpression(), !3035)
    #dbg_value(i64 %x, !3030, !DIExpression(), !3036)
    #dbg_value(i64 %p, !3032, !DIExpression(), !3037)
  %0 = icmp eq i64 %p, 0, !dbg !3038
  br i1 %0, label %divbyzero.throw, label %divbyzero.next, !dbg !3038

divbyzero.next:                                   ; preds = %entry
  %1 = icmp eq i64 %p, -1, !dbg !3038
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3030, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mod, DW_OP_stack_value), !3039)
    #dbg_value(i64 %y, !3031, !DIExpression(), !3040)
  %.not2 = icmp eq i64 %y, 0, !dbg !3041
  br i1 %.not2, label %for.done, label %for.body.preheader, !dbg !3042

for.body.preheader:                               ; preds = %divbyzero.next
  %2 = icmp eq i64 %x, -9223372036854775808, !dbg !3038
  %3 = and i1 %2, %1, !dbg !3038
  %4 = select i1 %3, i64 1, i64 %p, !dbg !3038
    #dbg_value(!DIArgList(i64 %x, i64 %4), !3030, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mod, DW_OP_stack_value), !3039)
  %5 = srem i64 %x, %4, !dbg !3038
    #dbg_value(i64 %5, !3030, !DIExpression(), !3039)
  br label %for.body, !dbg !3042

for.body:                                         ; preds = %for.body.preheader, %divbyzero.next4
  %6 = phi i64 [ %15, %divbyzero.next4 ], [ 1, %for.body.preheader ]
  %7 = phi i64 [ %17, %divbyzero.next4 ], [ %y, %for.body.preheader ]
  %8 = phi i64 [ %21, %divbyzero.next4 ], [ %5, %for.body.preheader ]
    #dbg_value(i64 %7, !3031, !DIExpression(), !3043)
  %9 = and i64 %7, 1, !dbg !3044
  %.not1 = icmp eq i64 %9, 0, !dbg !3045
  br i1 %.not1, label %divbyzero.next4, label %divbyzero.next2, !dbg !3042

divbyzero.next2:                                  ; preds = %for.body
    #dbg_value(i64 %6, !3033, !DIExpression(), !3046)
    #dbg_value(i64 %8, !3030, !DIExpression(), !3047)
    #dbg_value(i64 %p, !3032, !DIExpression(), !3048)
  %10 = mul i64 %6, %8, !dbg !3049
  %11 = icmp eq i64 %10, -9223372036854775808, !dbg !3050
  %12 = and i1 %1, %11, !dbg !3050
  %13 = select i1 %12, i64 1, i64 %p, !dbg !3050
  %14 = srem i64 %10, %13, !dbg !3050
    #dbg_value(i64 %14, !3033, !DIExpression(), !3051)
  br label %divbyzero.next4, !dbg !3042

divbyzero.next4:                                  ; preds = %for.body, %divbyzero.next2
  %15 = phi i64 [ %6, %for.body ], [ %14, %divbyzero.next2 ], !dbg !3035
    #dbg_value(i64 poison, !3031, !DIExpression(), !3052)
    #dbg_value(i64 %8, !3030, !DIExpression(), !3053)
    #dbg_value(i64 %p, !3032, !DIExpression(), !3054)
  %16 = mul i64 %8, %8, !dbg !3055
  %17 = lshr i64 %7, 1, !dbg !3056
    #dbg_value(i64 %17, !3031, !DIExpression(), !3052)
  %18 = icmp eq i64 %16, -9223372036854775808, !dbg !3057
  %19 = and i1 %1, %18, !dbg !3057
  %20 = select i1 %19, i64 1, i64 %p, !dbg !3057
  %21 = srem i64 %16, %20, !dbg !3057
    #dbg_value(i64 %21, !3030, !DIExpression(), !3058)
  %.not = icmp ult i64 %7, 2, !dbg !3041
  br i1 %.not, label %for.done, label %for.body, !dbg !3042

for.done:                                         ; preds = %divbyzero.next4, %divbyzero.next
  %.lcssa = phi i64 [ 1, %divbyzero.next ], [ %15, %divbyzero.next4 ], !dbg !3035
    #dbg_value(i64 %.lcssa, !3033, !DIExpression(), !3059)
  ret i64 %.lcssa, !dbg !3060

divbyzero.throw:                                  ; preds = %entry
  tail call fastcc void @runtime.divideByZeroPanic(), !dbg !3038
  unreachable, !dbg !3038
}
