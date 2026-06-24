define i64 @f_gold(i64 %n) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(i64 %n, !3030, !DIExpression(), !3033)
    #dbg_value(i64 1, !3031, !DIExpression(), !3034)
    #dbg_value(i64 0, !3032, !DIExpression(), !3035)
  %0 = icmp sgt i64 %n, 0, !dbg !3036
  br i1 %0, label %divbyzero.next.lr.ph, label %for.done, !dbg !3037

divbyzero.next.lr.ph:                             ; preds = %entry
  %1 = shl nuw i64 %n, 1
  br label %divbyzero.next, !dbg !3037

divbyzero.next:                                   ; preds = %divbyzero.next.lr.ph, %divbyzero.next
  %2 = phi i64 [ 0, %divbyzero.next.lr.ph ], [ %4, %divbyzero.next ]
  %3 = phi i64 [ 1, %divbyzero.next.lr.ph ], [ %7, %divbyzero.next ]
    #dbg_value(i64 %n, !3030, !DIExpression(), !3038)
    #dbg_value(!DIArgList(i64 %3, i64 %n, i64 %2), !3031, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shl, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_mul, DW_OP_stack_value), !3039)
    #dbg_value(i64 %2, !3032, !DIExpression(), !3040)
  %4 = add nuw nsw i64 %2, 1, !dbg !3041
    #dbg_value(!DIArgList(i64 %3, i64 %1, i64 %2), !3031, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_mul, DW_OP_stack_value), !3039)
  %5 = sub i64 %1, %2, !dbg !3042
    #dbg_value(!DIArgList(i64 %3, i64 %5), !3031, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !3039)
  %6 = mul i64 %5, %3, !dbg !3039
    #dbg_value(i64 %6, !3031, !DIExpression(), !3039)
  %7 = sdiv i64 %6, %4, !dbg !3043
    #dbg_value(i64 %7, !3031, !DIExpression(), !3043)
    #dbg_value(i64 %4, !3032, !DIExpression(), !3044)
  %exitcond.not = icmp eq i64 %4, %n, !dbg !3036
  br i1 %exitcond.not, label %for.done, label %divbyzero.next, !dbg !3037

for.done:                                         ; preds = %divbyzero.next, %entry
  %.lcssa = phi i64 [ 1, %entry ], [ %7, %divbyzero.next ], !dbg !3034
    #dbg_value(i64 %.lcssa, !3031, !DIExpression(), !3045)
    #dbg_value(i64 %n, !3030, !DIExpression(), !3046)
  %8 = add i64 %n, 1, !dbg !3047
  %9 = icmp eq i64 %8, 0, !dbg !3048
  br i1 %9, label %divbyzero.throw1, label %divbyzero.next2, !dbg !3048

divbyzero.next2:                                  ; preds = %for.done
  %10 = icmp eq i64 %8, -1, !dbg !3048
  %11 = icmp eq i64 %.lcssa, -9223372036854775808, !dbg !3048
  %12 = and i1 %10, %11, !dbg !3048
  %13 = select i1 %12, i64 1, i64 %8, !dbg !3048
  %14 = sdiv i64 %.lcssa, %13, !dbg !3048
  ret i64 %14, !dbg !3049

divbyzero.throw1:                                 ; preds = %for.done
  tail call fastcc void @runtime.divideByZeroPanic(), !dbg !3048
  unreachable, !dbg !3048
}
