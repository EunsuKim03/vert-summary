define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n, i64 %k) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %arr.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3124)
    #dbg_value(i64 %arr.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3124)
    #dbg_value(i64 %arr.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3124)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3124)
    #dbg_value(i64 %k, !3120, !DIExpression(), !3124)
    #dbg_value(i64 0, !3121, !DIExpression(), !3125)
    #dbg_value(i64 0, !3122, !DIExpression(), !3126)
  %0 = icmp sgt i64 %n, 0, !dbg !3127
  br i1 %0, label %for.loop1.preheader.preheader, label %for.done3, !dbg !3128

for.loop1.preheader.preheader:                    ; preds = %entry
  %1 = add nsw i64 %n, -2, !dbg !3128
  br label %for.loop1.preheader, !dbg !3128

for.loop1.preheader:                              ; preds = %for.loop1.preheader.preheader, %for.done
  %indvars.iv14 = phi i64 [ %1, %for.loop1.preheader.preheader ], [ %indvars.iv.next15, %for.done ]
  %indvars.iv.in = phi i64 [ %arr.len, %for.loop1.preheader.preheader ], [ %indvars.iv, %for.done ]
  %2 = phi i64 [ 0, %for.loop1.preheader.preheader ], [ %18, %for.done ]
  %3 = phi i64 [ 0, %for.loop1.preheader.preheader ], [ %.lcssa, %for.done ]
  %indvars.iv = add i64 %indvars.iv.in, -1, !dbg !3128
    #dbg_value(i64 %2, !3122, !DIExpression(), !3129)
  %4 = add nuw nsw i64 %2, 1, !dbg !3130
  %5 = icmp slt i64 %4, %n, !dbg !3131
  br i1 %5, label %for.body2.lr.ph, label %for.done, !dbg !3128

for.body2.lr.ph:                                  ; preds = %for.loop1.preheader
  %.not = icmp ult i64 %2, %arr.len
  %6 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %2
  br i1 %.not, label %for.body2.preheader, label %lookup.throw, !dbg !3132

for.body2.preheader:                              ; preds = %for.body2.lr.ph
  %.not17.not = icmp ugt i64 %indvars.iv, %indvars.iv14, !dbg !3133
  br label %for.body2, !dbg !3133

for.body2:                                        ; preds = %for.body2.preheader, %lookup.next7
  %7 = phi i64 [ %17, %lookup.next7 ], [ %4, %for.body2.preheader ]
  %8 = phi i64 [ %spec.select, %lookup.next7 ], [ %3, %for.body2.preheader ]
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3134)
    #dbg_value(i64 %2, !3122, !DIExpression(), !3135)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3136)
    #dbg_value(i64 %7, !3123, !DIExpression(), !3137)
  br i1 %.not17.not, label %lookup.next7, label %lookup.throw6, !dbg !3133

lookup.next7:                                     ; preds = %for.body2
  %9 = load i64, ptr %6, align 8, !dbg !3132
  %10 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %7, !dbg !3133
  %11 = load i64, ptr %10, align 8, !dbg !3133
  %12 = sub i64 %9, %11, !dbg !3138
    #dbg_value(i64 %k, !3120, !DIExpression(), !3139)
  %13 = icmp eq i64 %12, %k, !dbg !3140
    #dbg_value(i64 %7, !3123, !DIExpression(), !3141)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3142)
    #dbg_value(i64 %2, !3122, !DIExpression(), !3143)
  %14 = sub i64 %11, %9
  %15 = icmp eq i64 %14, %k
  %or.cond = or i1 %13, %15, !dbg !3128
  %16 = zext i1 %or.cond to i64, !dbg !3128
  %spec.select = add i64 %8, %16, !dbg !3128
    #dbg_value(i64 %7, !3123, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3144)
  %17 = add nuw nsw i64 %7, 1, !dbg !3130
    #dbg_value(i64 %17, !3123, !DIExpression(), !3145)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3146)
  %exitcond.not = icmp eq i64 %17, %n, !dbg !3131
  br i1 %exitcond.not, label %for.done, label %for.body2, !dbg !3128

for.done:                                         ; preds = %lookup.next7, %for.loop1.preheader
  %.lcssa = phi i64 [ %3, %for.loop1.preheader ], [ %spec.select, %lookup.next7 ], !dbg !3125
  %18 = add nuw nsw i64 %2, 1, !dbg !3147
    #dbg_value(i64 %18, !3122, !DIExpression(), !3129)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3148)
  %indvars.iv.next15 = add i64 %indvars.iv14, -1, !dbg !3128
  %exitcond16.not = icmp eq i64 %18, %n, !dbg !3127
  br i1 %exitcond16.not, label %for.done3, label %for.loop1.preheader, !dbg !3128

for.done3:                                        ; preds = %for.done, %entry
  %.lcssa10 = phi i64 [ 0, %entry ], [ %.lcssa, %for.done ], !dbg !3125
    #dbg_value(i64 %.lcssa10, !3121, !DIExpression(), !3149)
  ret i64 %.lcssa10, !dbg !3150

lookup.throw:                                     ; preds = %for.body2.lr.ph
  call fastcc void @runtime.lookupPanic(), !dbg !3132
  unreachable, !dbg !3132

lookup.throw6:                                    ; preds = %for.body2
  call fastcc void @runtime.lookupPanic(), !dbg !3133
  unreachable, !dbg !3133
}
