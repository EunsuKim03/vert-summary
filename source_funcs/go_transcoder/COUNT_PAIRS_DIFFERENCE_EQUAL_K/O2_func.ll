define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n, i64 %k) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3040)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3040)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3040)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3040)
    #dbg_value(i64 %k, !3036, !DIExpression(), !3040)
    #dbg_value(i64 0, !3037, !DIExpression(), !3041)
    #dbg_value(i64 0, !3038, !DIExpression(), !3042)
  %0 = icmp sgt i64 %n, 0, !dbg !3043
  br i1 %0, label %for.loop1.preheader.preheader, label %for.done3, !dbg !3044

for.loop1.preheader.preheader:                    ; preds = %entry
  %1 = add nsw i64 %n, -2, !dbg !3044
  br label %for.loop1.preheader, !dbg !3044

for.loop1.preheader:                              ; preds = %for.loop1.preheader.preheader, %for.done
  %indvars.iv14 = phi i64 [ %1, %for.loop1.preheader.preheader ], [ %indvars.iv.next15, %for.done ]
  %indvars.iv.in = phi i64 [ %arr.len, %for.loop1.preheader.preheader ], [ %indvars.iv, %for.done ]
  %2 = phi i64 [ 0, %for.loop1.preheader.preheader ], [ %4, %for.done ]
  %3 = phi i64 [ 0, %for.loop1.preheader.preheader ], [ %.lcssa, %for.done ]
  %indvars.iv = add i64 %indvars.iv.in, -1, !dbg !3044
    #dbg_value(i64 %2, !3038, !DIExpression(), !3045)
  %4 = add nuw nsw i64 %2, 1, !dbg !3046
  %5 = icmp slt i64 %4, %n, !dbg !3047
  br i1 %5, label %for.body2.lr.ph, label %for.done, !dbg !3044

for.body2.lr.ph:                                  ; preds = %for.loop1.preheader
  %.not = icmp ult i64 %2, %arr.len
  %6 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %2
  br i1 %.not, label %for.body2.preheader, label %lookup.throw, !dbg !3048

for.body2.preheader:                              ; preds = %for.body2.lr.ph
  %.not17.not = icmp ugt i64 %indvars.iv, %indvars.iv14, !dbg !3049
  br i1 %.not17.not, label %for.body2.preheader.split, label %lookup.throw6, !dbg !3049

for.body2.preheader.split:                        ; preds = %for.body2.preheader
  %.pre = load i64, ptr %6, align 8, !dbg !3048
  br label %for.body2, !dbg !3049

for.body2:                                        ; preds = %for.body2.preheader.split, %for.body2
  %7 = phi i64 [ %16, %for.body2 ], [ %4, %for.body2.preheader.split ]
  %8 = phi i64 [ %spec.select, %for.body2 ], [ %3, %for.body2.preheader.split ]
    #dbg_value(i64 %2, !3038, !DIExpression(), !3050)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3051)
    #dbg_value(i64 %7, !3039, !DIExpression(), !3052)
  %9 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %7, !dbg !3049
  %10 = load i64, ptr %9, align 8, !dbg !3049
  %11 = sub i64 %.pre, %10, !dbg !3053
    #dbg_value(i64 %k, !3036, !DIExpression(), !3054)
  %12 = icmp eq i64 %11, %k, !dbg !3055
  %13 = sub i64 %10, %.pre
  %14 = icmp eq i64 %13, %k
  %or.cond = or i1 %12, %14, !dbg !3044
  %15 = zext i1 %or.cond to i64, !dbg !3044
  %spec.select = add i64 %8, %15, !dbg !3044
    #dbg_value(i64 %7, !3039, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3056)
  %16 = add nuw nsw i64 %7, 1, !dbg !3046
    #dbg_value(i64 %16, !3039, !DIExpression(), !3057)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3058)
  %exitcond.not = icmp eq i64 %16, %n, !dbg !3047
  br i1 %exitcond.not, label %for.done, label %for.body2, !dbg !3044

for.done:                                         ; preds = %for.body2, %for.loop1.preheader
  %.lcssa = phi i64 [ %3, %for.loop1.preheader ], [ %spec.select, %for.body2 ], !dbg !3041
    #dbg_value(i64 %4, !3038, !DIExpression(), !3045)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3059)
  %indvars.iv.next15 = add i64 %indvars.iv14, -1, !dbg !3044
  %exitcond16.not = icmp eq i64 %4, %n, !dbg !3043
  br i1 %exitcond16.not, label %for.done3, label %for.loop1.preheader, !dbg !3044

for.done3:                                        ; preds = %for.done, %entry
  %.lcssa10 = phi i64 [ 0, %entry ], [ %.lcssa, %for.done ], !dbg !3041
    #dbg_value(i64 %.lcssa10, !3037, !DIExpression(), !3060)
  ret i64 %.lcssa10, !dbg !3061

lookup.throw:                                     ; preds = %for.body2.lr.ph
  tail call fastcc void @runtime.lookupPanic(), !dbg !3048
  unreachable, !dbg !3048

lookup.throw6:                                    ; preds = %for.body2.preheader
  tail call fastcc void @runtime.lookupPanic(), !dbg !3049
  unreachable, !dbg !3049
}
