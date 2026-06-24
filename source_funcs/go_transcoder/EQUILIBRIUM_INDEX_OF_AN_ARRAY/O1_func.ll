define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %arr.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3124)
    #dbg_value(i64 %arr.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3124)
    #dbg_value(i64 %arr.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3124)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3124)
    #dbg_value(i64 0, !3120, !DIExpression(), !3125)
    #dbg_value(i64 0, !3121, !DIExpression(), !3126)
    #dbg_value(i64 0, !3122, !DIExpression(), !3127)
    #dbg_value(i64 0, !3123, !DIExpression(), !3128)
    #dbg_value(i64 0, !3120, !DIExpression(), !3129)
  %0 = icmp sgt i64 %n, 0, !dbg !3130
  br i1 %0, label %for.loop1.preheader.preheader, label %common.ret, !dbg !3131

for.loop1.preheader.preheader:                    ; preds = %entry
  %1 = add nsw i64 %n, -2, !dbg !3131
  br label %for.loop1.preheader, !dbg !3131

for.loop1.preheader:                              ; preds = %for.loop1.preheader.preheader, %if.done
  %indvars.iv20 = phi i64 [ %1, %for.loop1.preheader.preheader ], [ %indvars.iv.next21, %if.done ]
  %indvars.iv18 = phi i64 [ -1, %for.loop1.preheader.preheader ], [ %indvars.iv.next19, %if.done ]
  %indvars.iv16 = phi i64 [ 1, %for.loop1.preheader.preheader ], [ %indvars.iv.next17, %if.done ]
  %indvars.iv = phi i64 [ -1, %for.loop1.preheader.preheader ], [ %indvars.iv.next, %if.done ]
  %2 = phi i64 [ 0, %for.loop1.preheader.preheader ], [ %19, %if.done ]
  %umax = call i64 @llvm.umax.i64(i64 %arr.len, i64 %indvars.iv16), !dbg !3132
  %3 = add i64 %umax, %indvars.iv18, !dbg !3132
    #dbg_value(i64 %2, !3120, !DIExpression(), !3133)
    #dbg_value(i64 0, !3121, !DIExpression(), !3134)
    #dbg_value(i64 %2, !3120, !DIExpression(), !3135)
  %.not = icmp eq i64 %2, 0, !dbg !3132
  br i1 %.not, label %for.loop3.preheader, label %for.body2.preheader, !dbg !3131

for.body2.preheader:                              ; preds = %for.loop1.preheader
  %.not25.not = icmp ugt i64 %arr.len, %indvars.iv, !dbg !3136
  br label %for.body2, !dbg !3136

for.loop3.preheader:                              ; preds = %lookup.next, %for.loop1.preheader
  %.lcssa = phi i64 [ 0, %for.loop1.preheader ], [ %10, %lookup.next ], !dbg !3127
  %4 = add nuw nsw i64 %2, 1, !dbg !3137
  %5 = icmp slt i64 %4, %n, !dbg !3138
  br i1 %5, label %for.body4.preheader, label %for.done5, !dbg !3131

for.body4.preheader:                              ; preds = %for.loop3.preheader
  %.not26.not = icmp ugt i64 %3, %indvars.iv20, !dbg !3139
  br label %for.body4, !dbg !3139

for.body2:                                        ; preds = %for.body2.preheader, %lookup.next
  %6 = phi i64 [ %10, %lookup.next ], [ 0, %for.body2.preheader ]
  %7 = phi i64 [ %11, %lookup.next ], [ 0, %for.body2.preheader ]
    #dbg_value(i64 %7, !3121, !DIExpression(), !3134)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3140)
    #dbg_value(i64 %7, !3121, !DIExpression(), !3141)
  br i1 %.not25.not, label %lookup.next, label %lookup.throw, !dbg !3136

lookup.next:                                      ; preds = %for.body2
  %8 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %7, !dbg !3136
  %9 = load i64, ptr %8, align 8, !dbg !3136
  %10 = add i64 %9, %6, !dbg !3142
    #dbg_value(i64 %10, !3122, !DIExpression(), !3142)
  %11 = add nuw nsw i64 %7, 1, !dbg !3143
    #dbg_value(i64 %11, !3121, !DIExpression(), !3134)
    #dbg_value(i64 %2, !3120, !DIExpression(), !3135)
  %exitcond.not = icmp eq i64 %11, %2, !dbg !3132
  br i1 %exitcond.not, label %for.loop3.preheader, label %for.body2, !dbg !3131

for.body4:                                        ; preds = %for.body4.preheader, %lookup.next10
  %12 = phi i64 [ %17, %lookup.next10 ], [ %4, %for.body4.preheader ]
  %13 = phi i64 [ %16, %lookup.next10 ], [ 0, %for.body4.preheader ]
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3144)
    #dbg_value(i64 %12, !3121, !DIExpression(), !3145)
  br i1 %.not26.not, label %lookup.next10, label %lookup.throw9, !dbg !3139

lookup.next10:                                    ; preds = %for.body4
  %14 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %12, !dbg !3139
  %15 = load i64, ptr %14, align 8, !dbg !3139
  %16 = add i64 %15, %13, !dbg !3146
    #dbg_value(i64 %16, !3123, !DIExpression(), !3146)
    #dbg_value(i64 %12, !3121, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3147)
  %17 = add nuw nsw i64 %12, 1, !dbg !3137
    #dbg_value(i64 %17, !3121, !DIExpression(), !3148)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3149)
  %exitcond23.not = icmp eq i64 %17, %n, !dbg !3138
  br i1 %exitcond23.not, label %for.done5, label %for.body4, !dbg !3131

for.done5:                                        ; preds = %lookup.next10, %for.loop3.preheader
  %.lcssa9 = phi i64 [ 0, %for.loop3.preheader ], [ %16, %lookup.next10 ], !dbg !3128
    #dbg_value(i64 %.lcssa, !3122, !DIExpression(), !3150)
    #dbg_value(i64 %.lcssa9, !3123, !DIExpression(), !3151)
  %18 = icmp eq i64 %.lcssa, %.lcssa9, !dbg !3152
  br i1 %18, label %common.ret, label %if.done, !dbg !3131

common.ret:                                       ; preds = %for.done5, %if.done, %entry
  %common.ret.op = phi i64 [ -1, %entry ], [ %2, %for.done5 ], [ -1, %if.done ]
  ret i64 %common.ret.op, !dbg !3131

if.done:                                          ; preds = %for.done5
  %19 = add nuw nsw i64 %2, 1, !dbg !3153
    #dbg_value(i64 %19, !3120, !DIExpression(), !3133)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3154)
  %indvars.iv.next = add nsw i64 %indvars.iv, 1, !dbg !3131
  %indvars.iv.next17 = add nuw i64 %indvars.iv16, 1, !dbg !3131
  %indvars.iv.next19 = add nsw i64 %indvars.iv18, -1, !dbg !3131
  %indvars.iv.next21 = add i64 %indvars.iv20, -1, !dbg !3131
  %exitcond24.not = icmp eq i64 %19, %n, !dbg !3130
  br i1 %exitcond24.not, label %common.ret, label %for.loop1.preheader, !dbg !3131

lookup.throw:                                     ; preds = %for.body2
  call fastcc void @runtime.lookupPanic(), !dbg !3136
  unreachable, !dbg !3136

lookup.throw9:                                    ; preds = %for.body4
  call fastcc void @runtime.lookupPanic(), !dbg !3139
  unreachable, !dbg !3139
}
