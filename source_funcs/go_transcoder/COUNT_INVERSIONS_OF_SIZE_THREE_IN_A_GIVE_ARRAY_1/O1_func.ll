define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %arr.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3126)
    #dbg_value(i64 %arr.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3126)
    #dbg_value(i64 %arr.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3126)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3126)
    #dbg_value(i64 0, !3120, !DIExpression(), !3127)
    #dbg_value(i64 1, !3121, !DIExpression(), !3128)
  %0 = add i64 %n, -1
    #dbg_value(i64 1, !3121, !DIExpression(), !3129)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3130)
  %1 = icmp sgt i64 %0, 1, !dbg !3131
  br i1 %1, label %for.loop1.preheader.preheader, label %for.done8, !dbg !3132

for.loop1.preheader.preheader:                    ; preds = %entry
  %2 = add i64 %arr.len, -2, !dbg !3132
  %3 = add i64 %n, -3, !dbg !3132
  br label %for.loop1.preheader, !dbg !3132

for.loop1.preheader:                              ; preds = %for.loop1.preheader.preheader, %for.done7
  %indvars.iv25 = phi i64 [ %3, %for.loop1.preheader.preheader ], [ %indvars.iv.next26, %for.done7 ]
  %indvars.iv = phi i64 [ %2, %for.loop1.preheader.preheader ], [ %indvars.iv.next, %for.done7 ]
  %4 = phi i64 [ 1, %for.loop1.preheader.preheader ], [ %28, %for.done7 ]
  %5 = phi i64 [ 0, %for.loop1.preheader.preheader ], [ %27, %for.done7 ]
    #dbg_value(i64 %4, !3121, !DIExpression(), !3129)
  %6 = add nuw nsw i64 %4, 1, !dbg !3133
  %7 = icmp slt i64 %6, %n, !dbg !3134
  br i1 %7, label %for.body2.lr.ph, label %for.body4.lr.ph, !dbg !3132

for.body2.lr.ph:                                  ; preds = %for.loop1.preheader
  %.not5 = icmp ult i64 %4, %arr.len
  %8 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %4
  br i1 %.not5, label %for.body2.preheader, label %lookup.throw, !dbg !3135

for.body2.preheader:                              ; preds = %for.body2.lr.ph
  %.not28.not = icmp ugt i64 %indvars.iv, %indvars.iv25, !dbg !3136
  br label %for.body2, !dbg !3136

for.body4.lr.ph:                                  ; preds = %for.loop1.preheader, %lookup.next12
  %.lcssa = phi i64 [ 0, %for.loop1.preheader ], [ %spec.select, %lookup.next12 ], !dbg !3137
  %.not = icmp ult i64 %4, %arr.len
  %9 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %4
  br i1 %.not, label %for.body4, label %lookup.throw15, !dbg !3138

for.body2:                                        ; preds = %for.body2.preheader, %lookup.next12
  %10 = phi i64 [ %17, %lookup.next12 ], [ %6, %for.body2.preheader ]
  %11 = phi i64 [ %spec.select, %lookup.next12 ], [ 0, %for.body2.preheader ]
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3139)
    #dbg_value(i64 %4, !3121, !DIExpression(), !3140)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3141)
    #dbg_value(i64 %10, !3123, !DIExpression(), !3142)
  br i1 %.not28.not, label %lookup.next12, label %lookup.throw11, !dbg !3136

lookup.next12:                                    ; preds = %for.body2
  %12 = load i64, ptr %8, align 8, !dbg !3135
  %13 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %10, !dbg !3136
  %14 = load i64, ptr %13, align 8, !dbg !3136
  %15 = icmp sgt i64 %12, %14, !dbg !3143
  %16 = zext i1 %15 to i64, !dbg !3132
  %spec.select = add i64 %11, %16, !dbg !3132
    #dbg_value(i64 %10, !3123, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3144)
  %17 = add nuw nsw i64 %10, 1, !dbg !3133
    #dbg_value(i64 %17, !3123, !DIExpression(), !3145)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3146)
  %exitcond.not = icmp eq i64 %17, %n, !dbg !3134
  br i1 %exitcond.not, label %for.body4.lr.ph, label %for.body2, !dbg !3132

for.body4:                                        ; preds = %for.body4.lr.ph, %for.body4
  %.in = phi i64 [ %19, %for.body4 ], [ %4, %for.body4.lr.ph ]
  %18 = phi i64 [ %spec.select9, %for.body4 ], [ 0, %for.body4.lr.ph ]
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3147)
    #dbg_value(i64 %4, !3121, !DIExpression(), !3148)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3149)
    #dbg_value(i64 %.in, !3125, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3150)
  %19 = add nsw i64 %.in, -1, !dbg !3151
    #dbg_value(i64 %19, !3125, !DIExpression(), !3150)
  %20 = load i64, ptr %9, align 8, !dbg !3138
  %21 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %19, !dbg !3152
  %22 = load i64, ptr %21, align 8, !dbg !3152
  %23 = icmp slt i64 %20, %22, !dbg !3153
  %24 = zext i1 %23 to i64, !dbg !3132
  %spec.select9 = add i64 %18, %24, !dbg !3132
    #dbg_value(i64 %19, !3125, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3154)
    #dbg_value(i64 %19, !3125, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3155)
  %25 = icmp sgt i64 %.in, 1, !dbg !3156
  br i1 %25, label %for.body4, label %for.done7, !dbg !3132

for.done7:                                        ; preds = %for.body4
    #dbg_value(i64 %spec.select9, !3124, !DIExpression(), !3157)
    #dbg_value(i64 %.lcssa, !3122, !DIExpression(), !3158)
  %26 = mul i64 %spec.select9, %.lcssa, !dbg !3159
  %27 = add i64 %26, %5, !dbg !3160
    #dbg_value(i64 %27, !3120, !DIExpression(), !3160)
  %28 = add nuw nsw i64 %4, 1, !dbg !3161
    #dbg_value(i64 %28, !3121, !DIExpression(), !3129)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3130)
  %indvars.iv.next = add i64 %indvars.iv, -1, !dbg !3132
  %indvars.iv.next26 = add i64 %indvars.iv25, -1, !dbg !3132
  %exitcond27.not = icmp eq i64 %28, %0, !dbg !3131
  br i1 %exitcond27.not, label %for.done8, label %for.loop1.preheader, !dbg !3132

for.done8:                                        ; preds = %for.done7, %entry
  %.lcssa17 = phi i64 [ 0, %entry ], [ %27, %for.done7 ], !dbg !3127
    #dbg_value(i64 %.lcssa17, !3120, !DIExpression(), !3162)
  ret i64 %.lcssa17, !dbg !3163

lookup.throw:                                     ; preds = %for.body2.lr.ph
  call fastcc void @runtime.lookupPanic(), !dbg !3135
  unreachable, !dbg !3135

lookup.throw11:                                   ; preds = %for.body2
  call fastcc void @runtime.lookupPanic(), !dbg !3136
  unreachable, !dbg !3136

lookup.throw15:                                   ; preds = %for.body4.lr.ph
  call fastcc void @runtime.lookupPanic(), !dbg !3138
  unreachable, !dbg !3138
}
