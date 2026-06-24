define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3040)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3040)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3040)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3040)
    #dbg_value(i64 0, !3037, !DIExpression(), !3041)
    #dbg_value(i64 0, !3038, !DIExpression(), !3042)
    #dbg_value(i64 0, !3039, !DIExpression(), !3043)
    #dbg_value(i64 0, !3036, !DIExpression(), !3044)
  %0 = icmp sgt i64 %n, 0, !dbg !3045
  br i1 %0, label %for.loop1.preheader.preheader, label %common.ret, !dbg !3046

for.loop1.preheader.preheader:                    ; preds = %entry
  %1 = add nsw i64 %n, -2, !dbg !3046
  br label %for.loop1.preheader, !dbg !3046

for.loop1.preheader:                              ; preds = %for.loop1.preheader.preheader, %if.done
  %indvars.iv20 = phi i64 [ %1, %for.loop1.preheader.preheader ], [ %indvars.iv.next21, %if.done ]
  %indvars.iv18 = phi i64 [ -1, %for.loop1.preheader.preheader ], [ %indvars.iv.next19, %if.done ]
  %indvars.iv16 = phi i64 [ 1, %for.loop1.preheader.preheader ], [ %indvars.iv.next17, %if.done ]
  %indvars.iv = phi i64 [ -1, %for.loop1.preheader.preheader ], [ %indvars.iv.next, %if.done ]
  %2 = phi i64 [ 0, %for.loop1.preheader.preheader ], [ %4, %if.done ]
  %umax = call i64 @llvm.umax.i64(i64 %arr.len, i64 %indvars.iv16), !dbg !3047
  %3 = add i64 %umax, %indvars.iv18, !dbg !3047
    #dbg_value(i64 0, !3037, !DIExpression(), !3048)
    #dbg_value(i64 %2, !3036, !DIExpression(), !3049)
  %.not = icmp eq i64 %2, 0, !dbg !3047
  br i1 %.not, label %for.loop3.preheader, label %for.body2.preheader, !dbg !3046

for.body2.preheader:                              ; preds = %for.loop1.preheader
  %.not25.not = icmp ugt i64 %arr.len, %indvars.iv, !dbg !3050
  br i1 %.not25.not, label %for.body2, label %lookup.throw, !dbg !3050

for.loop3.preheader:                              ; preds = %for.body2, %for.loop1.preheader
  %.lcssa = phi i64 [ 0, %for.loop1.preheader ], [ %10, %for.body2 ], !dbg !3042
  %4 = add nuw nsw i64 %2, 1, !dbg !3051
  %5 = icmp slt i64 %4, %n, !dbg !3052
  br i1 %5, label %for.body4.preheader, label %for.done5, !dbg !3046

for.body4.preheader:                              ; preds = %for.loop3.preheader
  %.not26.not = icmp ugt i64 %3, %indvars.iv20, !dbg !3053
  br i1 %.not26.not, label %for.body4, label %lookup.throw9, !dbg !3053

for.body2:                                        ; preds = %for.body2.preheader, %for.body2
  %6 = phi i64 [ %10, %for.body2 ], [ 0, %for.body2.preheader ]
  %7 = phi i64 [ %11, %for.body2 ], [ 0, %for.body2.preheader ]
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3054)
    #dbg_value(i64 %7, !3037, !DIExpression(), !3055)
  %8 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %7, !dbg !3050
  %9 = load i64, ptr %8, align 8, !dbg !3050
  %10 = add i64 %9, %6, !dbg !3056
    #dbg_value(i64 %10, !3038, !DIExpression(), !3056)
  %11 = add nuw nsw i64 %7, 1, !dbg !3057
    #dbg_value(i64 %11, !3037, !DIExpression(), !3048)
    #dbg_value(i64 %2, !3036, !DIExpression(), !3049)
  %exitcond.not = icmp eq i64 %11, %2, !dbg !3047
  br i1 %exitcond.not, label %for.loop3.preheader, label %for.body2, !dbg !3046

for.body4:                                        ; preds = %for.body4.preheader, %for.body4
  %12 = phi i64 [ %17, %for.body4 ], [ %4, %for.body4.preheader ]
  %13 = phi i64 [ %16, %for.body4 ], [ 0, %for.body4.preheader ]
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3058)
    #dbg_value(i64 %12, !3037, !DIExpression(), !3059)
  %14 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %12, !dbg !3053
  %15 = load i64, ptr %14, align 8, !dbg !3053
  %16 = add i64 %15, %13, !dbg !3060
    #dbg_value(i64 %16, !3039, !DIExpression(), !3060)
    #dbg_value(i64 %12, !3037, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3061)
  %17 = add nuw nsw i64 %12, 1, !dbg !3051
    #dbg_value(i64 %17, !3037, !DIExpression(), !3062)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3063)
  %exitcond23.not = icmp eq i64 %17, %n, !dbg !3052
  br i1 %exitcond23.not, label %for.done5, label %for.body4, !dbg !3046

for.done5:                                        ; preds = %for.body4, %for.loop3.preheader
  %.lcssa9 = phi i64 [ 0, %for.loop3.preheader ], [ %16, %for.body4 ], !dbg !3043
    #dbg_value(i64 %.lcssa, !3038, !DIExpression(), !3064)
    #dbg_value(i64 %.lcssa9, !3039, !DIExpression(), !3065)
  %18 = icmp eq i64 %.lcssa, %.lcssa9, !dbg !3066
  br i1 %18, label %common.ret, label %if.done, !dbg !3046

common.ret:                                       ; preds = %for.done5, %if.done, %entry
  %common.ret.op = phi i64 [ -1, %entry ], [ -1, %if.done ], [ %2, %for.done5 ]
  ret i64 %common.ret.op, !dbg !3046

if.done:                                          ; preds = %for.done5
    #dbg_value(i64 %4, !3036, !DIExpression(), !3067)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3068)
  %indvars.iv.next = add nsw i64 %indvars.iv, 1, !dbg !3046
  %indvars.iv.next17 = add nuw i64 %indvars.iv16, 1, !dbg !3046
  %indvars.iv.next19 = add nsw i64 %indvars.iv18, -1, !dbg !3046
  %indvars.iv.next21 = add i64 %indvars.iv20, -1, !dbg !3046
  %exitcond24.not = icmp eq i64 %4, %n, !dbg !3045
  br i1 %exitcond24.not, label %common.ret, label %for.loop1.preheader, !dbg !3046

lookup.throw:                                     ; preds = %for.body2.preheader
  tail call fastcc void @runtime.lookupPanic(), !dbg !3050
  unreachable, !dbg !3050

lookup.throw9:                                    ; preds = %for.body4.preheader
  tail call fastcc void @runtime.lookupPanic(), !dbg !3053
  unreachable, !dbg !3053
}
