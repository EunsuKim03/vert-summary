define i64 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 %n, !3026, !DIExpression(), !3031)
    #dbg_value(i64 0, !3027, !DIExpression(), !3032)
    #dbg_value(i64 19, !3028, !DIExpression(), !3033)
  br label %for.loop, !dbg !3034

for.loop:                                         ; preds = %for.done, %entry
  %0 = phi i64 [ 0, %entry ], [ %spec.select, %for.done ], !dbg !3032
  %1 = phi i64 [ 19, %entry ], [ %11, %for.done ], !dbg !3033
    #dbg_value(i64 0, !3029, !DIExpression(), !3035)
    #dbg_value(i64 %1, !3028, !DIExpression(), !3036)
    #dbg_value(i64 %1, !3030, !DIExpression(), !3037)
  %2 = icmp sgt i64 %1, 0, !dbg !3038
  br i1 %2, label %for.body, label %for.done, !dbg !3034

for.body:                                         ; preds = %for.loop, %for.body
  %3 = phi i64 [ %7, %for.body ], [ %1, %for.loop ]
  %4 = phi i64 [ %6, %for.body ], [ 0, %for.loop ]
    #dbg_value(i64 %4, !3029, !DIExpression(), !3039)
    #dbg_value(i64 %3, !3030, !DIExpression(), !3040)
  %5 = urem i64 %3, 10, !dbg !3041
  %6 = add i64 %5, %4, !dbg !3042
    #dbg_value(i64 %6, !3029, !DIExpression(), !3043)
  %7 = udiv i64 %3, 10, !dbg !3044
    #dbg_value(i64 %7, !3030, !DIExpression(), !3045)
  %.not = icmp samesign ult i64 %3, 10, !dbg !3038
  br i1 %.not, label %for.done.loopexit, label %for.body, !dbg !3034

for.done.loopexit:                                ; preds = %for.body
  %8 = icmp eq i64 %6, 10, !dbg !3046
  %9 = zext i1 %8 to i64, !dbg !3034
  br label %for.done, !dbg !3046

for.done:                                         ; preds = %for.done.loopexit, %for.loop
  %.lcssa = phi i64 [ 0, %for.loop ], [ %9, %for.done.loopexit ], !dbg !3035
    #dbg_value(i64 %.lcssa, !3029, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !3047)
  %spec.select = add i64 %0, %.lcssa, !dbg !3034
    #dbg_value(i64 %spec.select, !3027, !DIExpression(), !3048)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3049)
  %10 = icmp eq i64 %spec.select, %n, !dbg !3050
  %11 = add i64 %1, 9, !dbg !3051
    #dbg_value(i64 %11, !3028, !DIExpression(), !3051)
  br i1 %10, label %if.then2, label %for.loop, !dbg !3034

if.then2:                                         ; preds = %for.done
    #dbg_value(i64 %1, !3028, !DIExpression(), !3052)
  ret i64 %1, !dbg !3053
}
