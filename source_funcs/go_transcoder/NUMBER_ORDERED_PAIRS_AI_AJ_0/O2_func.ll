define i64 @f_gold(ptr nocapture readonly %a.data, i64 %a.len, i64 %a.cap, i64 %n) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %a.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3039)
    #dbg_value(i64 %a.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3039)
    #dbg_value(i64 %a.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3039)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3039)
    #dbg_value(i64 0, !3036, !DIExpression(), !3040)
    #dbg_value(i64 0, !3037, !DIExpression(), !3041)
  %0 = icmp sgt i64 %n, 0, !dbg !3042
  br i1 %0, label %for.loop1.preheader.preheader, label %for.done3, !dbg !3043

for.loop1.preheader.preheader:                    ; preds = %entry
  %1 = add nsw i64 %n, -2, !dbg !3043
  br label %for.loop1.preheader, !dbg !3043

for.loop1.preheader:                              ; preds = %for.loop1.preheader.preheader, %for.done
  %indvars.iv11 = phi i64 [ %1, %for.loop1.preheader.preheader ], [ %indvars.iv.next12, %for.done ]
  %indvars.iv.in = phi i64 [ %a.len, %for.loop1.preheader.preheader ], [ %indvars.iv, %for.done ]
  %2 = phi i64 [ 0, %for.loop1.preheader.preheader ], [ %4, %for.done ]
  %3 = phi i64 [ 0, %for.loop1.preheader.preheader ], [ %.lcssa, %for.done ]
  %indvars.iv = add i64 %indvars.iv.in, -1, !dbg !3043
    #dbg_value(i64 %2, !3037, !DIExpression(), !3044)
  %4 = add nuw nsw i64 %2, 1, !dbg !3045
  %5 = icmp slt i64 %4, %n, !dbg !3046
  br i1 %5, label %for.body2.lr.ph, label %for.done, !dbg !3043

for.body2.lr.ph:                                  ; preds = %for.loop1.preheader
  %.not = icmp ult i64 %2, %a.len
  %6 = getelementptr inbounds nuw i64, ptr %a.data, i64 %2
  br i1 %.not, label %for.body2.preheader, label %lookup.throw, !dbg !3047

for.body2.preheader:                              ; preds = %for.body2.lr.ph
  %.not14.not = icmp ugt i64 %indvars.iv, %indvars.iv11, !dbg !3048
  br i1 %.not14.not, label %for.body2.preheader.split, label %lookup.throw6, !dbg !3048

for.body2.preheader.split:                        ; preds = %for.body2.preheader
  %.pre = load i64, ptr %6, align 8, !dbg !3047
  br label %for.body2, !dbg !3048

for.body2:                                        ; preds = %for.body2.preheader.split, %for.body2
  %7 = phi i64 [ %14, %for.body2 ], [ %4, %for.body2.preheader.split ]
  %8 = phi i64 [ %spec.select, %for.body2 ], [ %3, %for.body2.preheader.split ]
    #dbg_value(i64 %2, !3037, !DIExpression(), !3049)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3050)
    #dbg_value(i64 %7, !3038, !DIExpression(), !3051)
  %9 = getelementptr inbounds nuw i64, ptr %a.data, i64 %7, !dbg !3048
  %10 = load i64, ptr %9, align 8, !dbg !3048
  %11 = and i64 %10, %.pre, !dbg !3052
  %12 = icmp eq i64 %11, 0, !dbg !3053
  %13 = add i64 %8, 2
  %spec.select = select i1 %12, i64 %13, i64 %8, !dbg !3043
    #dbg_value(i64 %7, !3038, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3054)
  %14 = add nuw nsw i64 %7, 1, !dbg !3045
    #dbg_value(i64 %14, !3038, !DIExpression(), !3055)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3056)
  %exitcond.not = icmp eq i64 %14, %n, !dbg !3046
  br i1 %exitcond.not, label %for.done, label %for.body2, !dbg !3043

for.done:                                         ; preds = %for.body2, %for.loop1.preheader
  %.lcssa = phi i64 [ %3, %for.loop1.preheader ], [ %spec.select, %for.body2 ], !dbg !3040
    #dbg_value(i64 %4, !3037, !DIExpression(), !3044)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3057)
  %indvars.iv.next12 = add i64 %indvars.iv11, -1, !dbg !3043
  %exitcond13.not = icmp eq i64 %4, %n, !dbg !3042
  br i1 %exitcond13.not, label %for.done3, label %for.loop1.preheader, !dbg !3043

for.done3:                                        ; preds = %for.done, %entry
  %.lcssa7 = phi i64 [ 0, %entry ], [ %.lcssa, %for.done ], !dbg !3040
    #dbg_value(i64 %.lcssa7, !3036, !DIExpression(), !3058)
  ret i64 %.lcssa7, !dbg !3059

lookup.throw:                                     ; preds = %for.body2.lr.ph
  tail call fastcc void @runtime.lookupPanic(), !dbg !3047
  unreachable, !dbg !3047

lookup.throw6:                                    ; preds = %for.body2.preheader
  tail call fastcc void @runtime.lookupPanic(), !dbg !3048
  unreachable, !dbg !3048
}
