define range(i64 -9223372036854775807, -9223372036854775808) i64 @f_gold(ptr nocapture readonly %num.data, i64 %num.len, i64 %num.cap, i64 %a) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %num.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3038)
    #dbg_value(i64 %num.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3038)
    #dbg_value(i64 %num.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3038)
    #dbg_value(i64 %a, !3035, !DIExpression(), !3038)
    #dbg_value(i64 0, !3036, !DIExpression(), !3039)
    #dbg_value(i64 0, !3037, !DIExpression(), !3040)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3041)
  %0 = icmp sgt i64 %num.len, 0, !dbg !3042
  br i1 %0, label %for.body.lr.ph, label %for.done, !dbg !3043

for.body.lr.ph:                                   ; preds = %entry
  %1 = icmp eq i64 %a, 0
  %2 = icmp eq i64 %a, -1
  br label %lookup.next, !dbg !3043

lookup.next:                                      ; preds = %divbyzero.next, %for.body.lr.ph
  %3 = phi i64 [ 0, %for.body.lr.ph ], [ %15, %divbyzero.next ]
  %4 = phi i64 [ 0, %for.body.lr.ph ], [ %14, %divbyzero.next ]
    #dbg_value(i64 %4, !3036, !DIExpression(), !3044)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3045)
    #dbg_value(i64 %3, !3037, !DIExpression(), !3046)
    #dbg_value(i64 %a, !3035, !DIExpression(), !3047)
  br i1 %1, label %divbyzero.throw, label %divbyzero.next, !dbg !3048

divbyzero.next:                                   ; preds = %lookup.next
  %5 = mul i64 %4, 10, !dbg !3049
  %6 = getelementptr inbounds nuw i8, ptr %num.data, i64 %3, !dbg !3050
  %7 = load i8, ptr %6, align 1, !dbg !3050
  %8 = zext i8 %7 to i64, !dbg !3051
  %9 = add i64 %5, -48, !dbg !3052
  %10 = add i64 %9, %8, !dbg !3053
  %11 = icmp eq i64 %10, -9223372036854775808, !dbg !3048
  %12 = and i1 %2, %11, !dbg !3048
  %13 = select i1 %12, i64 1, i64 %a, !dbg !3048
  %14 = srem i64 %10, %13, !dbg !3048
    #dbg_value(i64 %14, !3036, !DIExpression(), !3054)
  %15 = add nuw nsw i64 %3, 1, !dbg !3055
    #dbg_value(i64 %15, !3037, !DIExpression(), !3056)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3041)
  %exitcond.not = icmp eq i64 %15, %num.len, !dbg !3042
  br i1 %exitcond.not, label %for.done, label %lookup.next, !dbg !3043

for.done:                                         ; preds = %divbyzero.next, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %14, %divbyzero.next ], !dbg !3039
    #dbg_value(i64 %.lcssa, !3036, !DIExpression(), !3057)
  ret i64 %.lcssa, !dbg !3058

divbyzero.throw:                                  ; preds = %lookup.next
  tail call fastcc void @runtime.divideByZeroPanic(), !dbg !3048
  unreachable, !dbg !3048
}
