define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3040)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3040)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3040)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3040)
    #dbg_value(i64 0, !3036, !DIExpression(), !3041)
    #dbg_value(i64 0, !3037, !DIExpression(), !3042)
  %0 = add i64 %n, -2
  %1 = icmp sgt i64 %0, 0, !dbg !3043
  br i1 %1, label %for.loop1.preheader.lr.ph, label %for.done7, !dbg !3044

for.loop1.preheader.lr.ph:                        ; preds = %entry
  %2 = add i64 %n, -1
  %3 = add i64 %arr.len, -2, !dbg !3044
  %4 = add i64 %n, -3, !dbg !3044
  br label %for.loop1.preheader, !dbg !3044

for.loop1.preheader:                              ; preds = %for.loop1.preheader.lr.ph, %for.done
  %indvars.iv25 = phi i64 [ %4, %for.loop1.preheader.lr.ph ], [ %indvars.iv.next26, %for.done ]
  %indvars.iv = phi i64 [ %3, %for.loop1.preheader.lr.ph ], [ %indvars.iv.next, %for.done ]
  %5 = phi i64 [ 0, %for.loop1.preheader.lr.ph ], [ %7, %for.done ]
  %6 = phi i64 [ 0, %for.loop1.preheader.lr.ph ], [ %.lcssa11, %for.done ]
    #dbg_value(i64 %5, !3037, !DIExpression(), !3045)
  %7 = add nuw nsw i64 %5, 1, !dbg !3046
  %8 = icmp slt i64 %7, %2, !dbg !3047
  br i1 %8, label %for.body2.lr.ph, label %for.done, !dbg !3044

for.body2.lr.ph:                                  ; preds = %for.loop1.preheader
  %.not = icmp ult i64 %5, %arr.len
  %9 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %5
  br i1 %.not, label %for.body2, label %lookup.throw, !dbg !3048

for.body2:                                        ; preds = %for.body2.lr.ph, %if.done6
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %if.done6 ], [ %indvars.iv25, %for.body2.lr.ph ]
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %if.done6 ], [ %indvars.iv, %for.body2.lr.ph ]
  %10 = phi i64 [ %26, %if.done6 ], [ %7, %for.body2.lr.ph ]
  %.in19 = phi i64 [ %10, %if.done6 ], [ %5, %for.body2.lr.ph ]
  %11 = phi i64 [ %25, %if.done6 ], [ %6, %for.body2.lr.ph ]
    #dbg_value(i64 %5, !3037, !DIExpression(), !3049)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3050)
    #dbg_value(i64 %10, !3038, !DIExpression(), !3051)
  %exitcond29.not = icmp eq i64 %10, %arr.len, !dbg !3052
  br i1 %exitcond29.not, label %lookup.throw10, label %lookup.next11, !dbg !3052

lookup.next11:                                    ; preds = %for.body2
  %12 = load i64, ptr %9, align 8, !dbg !3048
  %13 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %10, !dbg !3052
  %14 = load i64, ptr %13, align 8, !dbg !3052
  %15 = icmp sgt i64 %12, %14, !dbg !3053
    #dbg_value(i64 %10, !3038, !DIExpression(), !3054)
  %16 = add nuw i64 %.in19, 2
    #dbg_value(i64 %16, !3039, !DIExpression(), !3055)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3056)
  %17 = icmp slt i64 %16, %n
  %or.cond = and i1 %15, %17, !dbg !3044
  br i1 %or.cond, label %lookup.next15.preheader, label %if.done6, !dbg !3044

lookup.next15.preheader:                          ; preds = %lookup.next11
  %.not32.not = icmp ugt i64 %indvars.iv23, %indvars.iv27, !dbg !3057
  br i1 %.not32.not, label %lookup.next15, label %lookup.throw18, !dbg !3057

lookup.next15:                                    ; preds = %lookup.next15.preheader, %lookup.next15
  %18 = phi i64 [ %24, %lookup.next15 ], [ %16, %lookup.next15.preheader ]
  %19 = phi i64 [ %spec.select, %lookup.next15 ], [ %11, %lookup.next15.preheader ]
    #dbg_value(i64 %10, !3038, !DIExpression(), !3058)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3059)
    #dbg_value(i64 %18, !3039, !DIExpression(), !3060)
  %20 = getelementptr inbounds i64, ptr %arr.data, i64 %18, !dbg !3057
  %21 = load i64, ptr %20, align 8, !dbg !3057
  %22 = icmp sgt i64 %14, %21, !dbg !3061
  %23 = zext i1 %22 to i64, !dbg !3044
  %spec.select = add i64 %19, %23, !dbg !3044
  %24 = add nsw i64 %18, 1, !dbg !3062
    #dbg_value(i64 %24, !3039, !DIExpression(), !3063)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3056)
  %exitcond.not = icmp eq i64 %24, %n, !dbg !3064
  br i1 %exitcond.not, label %if.done6, label %lookup.next15, !dbg !3044

if.done6:                                         ; preds = %lookup.next15, %lookup.next11
  %25 = phi i64 [ %11, %lookup.next11 ], [ %spec.select, %lookup.next15 ], !dbg !3041
    #dbg_value(i64 %10, !3038, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3065)
  %26 = add nuw nsw i64 %10, 1, !dbg !3046
    #dbg_value(i64 %26, !3038, !DIExpression(), !3066)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3067)
  %indvars.iv.next24 = add i64 %indvars.iv23, -1, !dbg !3044
  %indvars.iv.next28 = add i64 %indvars.iv27, -1, !dbg !3044
  %exitcond30.not = icmp eq i64 %26, %2, !dbg !3047
  br i1 %exitcond30.not, label %for.done, label %for.body2, !dbg !3044

for.done:                                         ; preds = %if.done6, %for.loop1.preheader
  %.lcssa11 = phi i64 [ %6, %for.loop1.preheader ], [ %25, %if.done6 ], !dbg !3041
    #dbg_value(i64 %7, !3037, !DIExpression(), !3045)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3068)
  %indvars.iv.next = add i64 %indvars.iv, -1, !dbg !3044
  %indvars.iv.next26 = add i64 %indvars.iv25, -1, !dbg !3044
  %exitcond31.not = icmp eq i64 %7, %0, !dbg !3043
  br i1 %exitcond31.not, label %for.done7, label %for.loop1.preheader, !dbg !3044

for.done7:                                        ; preds = %for.done, %entry
  %.lcssa15 = phi i64 [ 0, %entry ], [ %.lcssa11, %for.done ], !dbg !3041
    #dbg_value(i64 %.lcssa15, !3036, !DIExpression(), !3069)
  ret i64 %.lcssa15, !dbg !3070

lookup.throw:                                     ; preds = %for.body2.lr.ph
  tail call fastcc void @runtime.lookupPanic(), !dbg !3048
  unreachable, !dbg !3048

lookup.throw10:                                   ; preds = %for.body2
  tail call fastcc void @runtime.lookupPanic(), !dbg !3052
  unreachable, !dbg !3052

lookup.throw18:                                   ; preds = %lookup.next15.preheader
  tail call fastcc void @runtime.lookupPanic(), !dbg !3057
  unreachable, !dbg !3057
}
