define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %arr.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3124)
    #dbg_value(i64 %arr.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3124)
    #dbg_value(i64 %arr.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3124)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3124)
    #dbg_value(i64 0, !3120, !DIExpression(), !3125)
    #dbg_value(i64 0, !3121, !DIExpression(), !3126)
  %0 = add i64 %n, -2
    #dbg_value(i64 0, !3121, !DIExpression(), !3127)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3128)
  %1 = icmp sgt i64 %0, 0, !dbg !3129
  br i1 %1, label %for.loop1.preheader.lr.ph, label %for.done7, !dbg !3130

for.loop1.preheader.lr.ph:                        ; preds = %entry
  %2 = add i64 %n, -1
  %3 = add i64 %arr.len, -2, !dbg !3130
  %4 = add i64 %n, -3, !dbg !3130
  br label %for.loop1.preheader, !dbg !3130

for.loop1.preheader:                              ; preds = %for.loop1.preheader.lr.ph, %for.done
  %indvars.iv25 = phi i64 [ %4, %for.loop1.preheader.lr.ph ], [ %indvars.iv.next26, %for.done ]
  %indvars.iv = phi i64 [ %3, %for.loop1.preheader.lr.ph ], [ %indvars.iv.next, %for.done ]
  %5 = phi i64 [ 0, %for.loop1.preheader.lr.ph ], [ %27, %for.done ]
  %6 = phi i64 [ 0, %for.loop1.preheader.lr.ph ], [ %.lcssa11, %for.done ]
    #dbg_value(i64 %5, !3121, !DIExpression(), !3127)
  %7 = add nuw nsw i64 %5, 1, !dbg !3131
  %8 = icmp slt i64 %7, %2, !dbg !3132
  br i1 %8, label %for.body2.lr.ph, label %for.done, !dbg !3130

for.body2.lr.ph:                                  ; preds = %for.loop1.preheader
  %.not = icmp ult i64 %5, %arr.len
  %9 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %5
  br i1 %.not, label %for.body2, label %lookup.throw, !dbg !3133

for.body2:                                        ; preds = %for.body2.lr.ph, %if.done6
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %if.done6 ], [ %indvars.iv25, %for.body2.lr.ph ]
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %if.done6 ], [ %indvars.iv, %for.body2.lr.ph ]
  %10 = phi i64 [ %26, %if.done6 ], [ %7, %for.body2.lr.ph ]
  %.in19 = phi i64 [ %10, %if.done6 ], [ %5, %for.body2.lr.ph ]
  %11 = phi i64 [ %25, %if.done6 ], [ %6, %for.body2.lr.ph ]
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3134)
    #dbg_value(i64 %5, !3121, !DIExpression(), !3135)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3136)
    #dbg_value(i64 %10, !3122, !DIExpression(), !3137)
  %exitcond29.not = icmp eq i64 %10, %arr.len, !dbg !3138
  br i1 %exitcond29.not, label %lookup.throw10, label %lookup.next11, !dbg !3138

lookup.next11:                                    ; preds = %for.body2
  %12 = load i64, ptr %9, align 8, !dbg !3133
  %13 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %10, !dbg !3138
  %14 = load i64, ptr %13, align 8, !dbg !3138
  %15 = icmp sgt i64 %12, %14, !dbg !3139
    #dbg_value(i64 %10, !3122, !DIExpression(), !3140)
  %16 = add nuw i64 %.in19, 2
    #dbg_value(i64 %16, !3123, !DIExpression(), !3141)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3142)
  %17 = icmp slt i64 %16, %n
  %or.cond = and i1 %15, %17, !dbg !3130
  br i1 %or.cond, label %lookup.next15.preheader, label %if.done6, !dbg !3130

lookup.next15.preheader:                          ; preds = %lookup.next11
  %.not32.not = icmp ugt i64 %indvars.iv23, %indvars.iv27, !dbg !3143
  br label %lookup.next15, !dbg !3143

lookup.next15:                                    ; preds = %lookup.next15.preheader, %lookup.next19
  %18 = phi i64 [ %24, %lookup.next19 ], [ %16, %lookup.next15.preheader ]
  %19 = phi i64 [ %spec.select, %lookup.next19 ], [ %11, %lookup.next15.preheader ]
    #dbg_value(i64 %18, !3123, !DIExpression(), !3144)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3145)
    #dbg_value(i64 %10, !3122, !DIExpression(), !3146)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3147)
    #dbg_value(i64 %18, !3123, !DIExpression(), !3148)
  br i1 %.not32.not, label %lookup.next19, label %lookup.throw18, !dbg !3143

lookup.next19:                                    ; preds = %lookup.next15
  %20 = getelementptr inbounds i64, ptr %arr.data, i64 %18, !dbg !3143
  %21 = load i64, ptr %20, align 8, !dbg !3143
  %22 = icmp sgt i64 %14, %21, !dbg !3149
  %23 = zext i1 %22 to i64, !dbg !3130
  %spec.select = add i64 %19, %23, !dbg !3130
  %24 = add nsw i64 %18, 1, !dbg !3150
    #dbg_value(i64 %24, !3123, !DIExpression(), !3144)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3142)
  %exitcond.not = icmp eq i64 %24, %n, !dbg !3151
  br i1 %exitcond.not, label %if.done6, label %lookup.next15, !dbg !3130

if.done6:                                         ; preds = %lookup.next19, %lookup.next11
  %25 = phi i64 [ %11, %lookup.next11 ], [ %spec.select, %lookup.next19 ], !dbg !3125
    #dbg_value(i64 %10, !3122, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3152)
  %26 = add nuw nsw i64 %10, 1, !dbg !3131
    #dbg_value(i64 %26, !3122, !DIExpression(), !3153)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3154)
  %indvars.iv.next24 = add i64 %indvars.iv23, -1, !dbg !3130
  %indvars.iv.next28 = add i64 %indvars.iv27, -1, !dbg !3130
  %exitcond30.not = icmp eq i64 %26, %2, !dbg !3132
  br i1 %exitcond30.not, label %for.done, label %for.body2, !dbg !3130

for.done:                                         ; preds = %if.done6, %for.loop1.preheader
  %.lcssa11 = phi i64 [ %6, %for.loop1.preheader ], [ %25, %if.done6 ], !dbg !3125
  %27 = add nuw nsw i64 %5, 1, !dbg !3155
    #dbg_value(i64 %27, !3121, !DIExpression(), !3127)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3128)
  %indvars.iv.next = add i64 %indvars.iv, -1, !dbg !3130
  %indvars.iv.next26 = add i64 %indvars.iv25, -1, !dbg !3130
  %exitcond31.not = icmp eq i64 %27, %0, !dbg !3129
  br i1 %exitcond31.not, label %for.done7, label %for.loop1.preheader, !dbg !3130

for.done7:                                        ; preds = %for.done, %entry
  %.lcssa15 = phi i64 [ 0, %entry ], [ %.lcssa11, %for.done ], !dbg !3125
    #dbg_value(i64 %.lcssa15, !3120, !DIExpression(), !3156)
  ret i64 %.lcssa15, !dbg !3157

lookup.throw:                                     ; preds = %for.body2.lr.ph
  call fastcc void @runtime.lookupPanic(), !dbg !3133
  unreachable, !dbg !3133

lookup.throw10:                                   ; preds = %for.body2
  call fastcc void @runtime.lookupPanic(), !dbg !3138
  unreachable, !dbg !3138

lookup.throw18:                                   ; preds = %lookup.next15
  call fastcc void @runtime.lookupPanic(), !dbg !3143
  unreachable, !dbg !3143
}
