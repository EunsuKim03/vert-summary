define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3042)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3042)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3042)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3042)
    #dbg_value(i64 0, !3036, !DIExpression(), !3043)
    #dbg_value(i64 1, !3037, !DIExpression(), !3044)
  %0 = add i64 %n, -1
  %1 = icmp sgt i64 %0, 1, !dbg !3045
  br i1 %1, label %for.loop1.preheader.preheader, label %for.done8, !dbg !3046

for.loop1.preheader.preheader:                    ; preds = %entry
  %2 = add i64 %arr.len, -2, !dbg !3046
  %3 = add i64 %n, -3, !dbg !3046
  br label %for.loop1.preheader, !dbg !3046

for.loop1.preheader:                              ; preds = %for.loop1.preheader.preheader, %for.done7
  %indvars.iv25 = phi i64 [ %3, %for.loop1.preheader.preheader ], [ %indvars.iv.next26, %for.done7 ]
  %indvars.iv = phi i64 [ %2, %for.loop1.preheader.preheader ], [ %indvars.iv.next, %for.done7 ]
  %4 = phi i64 [ 1, %for.loop1.preheader.preheader ], [ %6, %for.done7 ]
  %5 = phi i64 [ 0, %for.loop1.preheader.preheader ], [ %26, %for.done7 ]
    #dbg_value(i64 %4, !3037, !DIExpression(), !3047)
  %6 = add nuw nsw i64 %4, 1, !dbg !3048
  %7 = icmp slt i64 %6, %n, !dbg !3049
  br i1 %7, label %for.body2.lr.ph, label %for.body4.lr.ph, !dbg !3046

for.body2.lr.ph:                                  ; preds = %for.loop1.preheader
  %.not5 = icmp ult i64 %4, %arr.len
  %8 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %4
  br i1 %.not5, label %for.body2.preheader, label %lookup.throw, !dbg !3050

for.body2.preheader:                              ; preds = %for.body2.lr.ph
  %.not28.not = icmp ugt i64 %indvars.iv, %indvars.iv25, !dbg !3051
  br i1 %.not28.not, label %for.body2.preheader.split, label %lookup.throw11, !dbg !3051

for.body2.preheader.split:                        ; preds = %for.body2.preheader
  %.pre = load i64, ptr %8, align 8, !dbg !3050
  br label %for.body2, !dbg !3051

for.body4.lr.ph:                                  ; preds = %for.body2, %for.loop1.preheader
  %.lcssa = phi i64 [ 0, %for.loop1.preheader ], [ %spec.select, %for.body2 ], !dbg !3052
  %.not = icmp ult i64 %4, %arr.len
  br i1 %.not, label %for.body4.preheader, label %lookup.throw15, !dbg !3053

for.body4.preheader:                              ; preds = %for.body4.lr.ph
  %9 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %4
  %10 = load i64, ptr %9, align 8
  br label %lookup.next20, !dbg !3054

for.body2:                                        ; preds = %for.body2.preheader.split, %for.body2
  %11 = phi i64 [ %17, %for.body2 ], [ %6, %for.body2.preheader.split ]
  %12 = phi i64 [ %spec.select, %for.body2 ], [ 0, %for.body2.preheader.split ]
    #dbg_value(i64 %4, !3037, !DIExpression(), !3055)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3056)
    #dbg_value(i64 %11, !3039, !DIExpression(), !3057)
  %13 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %11, !dbg !3051
  %14 = load i64, ptr %13, align 8, !dbg !3051
  %15 = icmp sgt i64 %.pre, %14, !dbg !3058
  %16 = zext i1 %15 to i64, !dbg !3046
  %spec.select = add i64 %12, %16, !dbg !3046
    #dbg_value(i64 %11, !3039, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3059)
  %17 = add nuw nsw i64 %11, 1, !dbg !3048
    #dbg_value(i64 %17, !3039, !DIExpression(), !3060)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3061)
  %exitcond.not = icmp eq i64 %17, %n, !dbg !3049
  br i1 %exitcond.not, label %for.body4.lr.ph, label %for.body2, !dbg !3046

lookup.next20:                                    ; preds = %lookup.next20, %for.body4.preheader
  %.in = phi i64 [ %19, %lookup.next20 ], [ %4, %for.body4.preheader ]
  %18 = phi i64 [ %spec.select9, %lookup.next20 ], [ 0, %for.body4.preheader ]
    #dbg_value(i64 %4, !3037, !DIExpression(), !3062)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3063)
    #dbg_value(i64 %.in, !3041, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3064)
  %19 = add nsw i64 %.in, -1, !dbg !3065
    #dbg_value(i64 %19, !3041, !DIExpression(), !3064)
  %20 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %19, !dbg !3054
  %21 = load i64, ptr %20, align 8, !dbg !3054
  %22 = icmp slt i64 %10, %21, !dbg !3066
  %23 = zext i1 %22 to i64, !dbg !3046
  %spec.select9 = add i64 %18, %23, !dbg !3046
    #dbg_value(i64 %19, !3041, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3067)
  %24 = icmp sgt i64 %.in, 1, !dbg !3068
  br i1 %24, label %lookup.next20, label %for.done7, !dbg !3046

for.done7:                                        ; preds = %lookup.next20
    #dbg_value(i64 %spec.select9, !3040, !DIExpression(), !3069)
    #dbg_value(i64 %.lcssa, !3038, !DIExpression(), !3070)
  %25 = mul i64 %spec.select9, %.lcssa, !dbg !3071
  %26 = add i64 %25, %5, !dbg !3072
    #dbg_value(i64 %26, !3036, !DIExpression(), !3072)
    #dbg_value(i64 %6, !3037, !DIExpression(), !3047)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3073)
  %indvars.iv.next = add i64 %indvars.iv, -1, !dbg !3046
  %indvars.iv.next26 = add i64 %indvars.iv25, -1, !dbg !3046
  %exitcond27.not = icmp eq i64 %6, %0, !dbg !3045
  br i1 %exitcond27.not, label %for.done8, label %for.loop1.preheader, !dbg !3046

for.done8:                                        ; preds = %for.done7, %entry
  %.lcssa17 = phi i64 [ 0, %entry ], [ %26, %for.done7 ], !dbg !3043
    #dbg_value(i64 %.lcssa17, !3036, !DIExpression(), !3074)
  ret i64 %.lcssa17, !dbg !3075

lookup.throw:                                     ; preds = %for.body2.lr.ph
  tail call fastcc void @runtime.lookupPanic(), !dbg !3050
  unreachable, !dbg !3050

lookup.throw11:                                   ; preds = %for.body2.preheader
  tail call fastcc void @runtime.lookupPanic(), !dbg !3051
  unreachable, !dbg !3051

lookup.throw15:                                   ; preds = %for.body4.lr.ph
  tail call fastcc void @runtime.lookupPanic(), !dbg !3053
  unreachable, !dbg !3053
}
