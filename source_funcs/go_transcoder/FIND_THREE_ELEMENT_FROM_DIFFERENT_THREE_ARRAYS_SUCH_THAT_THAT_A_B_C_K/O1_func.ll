define noundef i1 @f_gold(ptr nocapture readonly %a1.data, i64 %a1.len, i64 %a1.cap, ptr nocapture readonly %a2.data, i64 %a2.len, i64 %a2.cap, ptr nocapture readonly %a3.data, i64 %a3.len, i64 %a3.cap, i64 %n1, i64 %n2, i64 %n3, i64 %sum) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %a1.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3128)
    #dbg_value(i64 %a1.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3128)
    #dbg_value(i64 %a1.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3128)
    #dbg_value(ptr %a2.data, !3119, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3128)
    #dbg_value(i64 %a2.len, !3119, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3128)
    #dbg_value(i64 %a2.cap, !3119, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3128)
    #dbg_value(ptr %a3.data, !3120, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3128)
    #dbg_value(i64 %a3.len, !3120, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3128)
    #dbg_value(i64 %a3.cap, !3120, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3128)
    #dbg_value(i64 %n1, !3121, !DIExpression(), !3128)
    #dbg_value(i64 %n2, !3122, !DIExpression(), !3128)
    #dbg_value(i64 %n3, !3123, !DIExpression(), !3128)
    #dbg_value(i64 %sum, !3124, !DIExpression(), !3128)
    #dbg_value(i64 0, !3125, !DIExpression(), !3129)
  %0 = icmp sgt i64 %n1, 0, !dbg !3130
  br i1 %0, label %for.loop1.preheader.lr.ph, label %common.ret, !dbg !3131

for.loop1.preheader.lr.ph:                        ; preds = %entry
  %1 = icmp sgt i64 %n2, 0
  %2 = icmp sgt i64 %n3, 0
  br label %for.loop1.preheader, !dbg !3131

for.loop1.preheader:                              ; preds = %for.loop1.preheader.lr.ph, %for.done5
  %3 = phi i64 [ 0, %for.loop1.preheader.lr.ph ], [ %18, %for.done5 ]
    #dbg_value(i64 %3, !3125, !DIExpression(), !3132)
    #dbg_value(i64 0, !3126, !DIExpression(), !3133)
    #dbg_value(i64 %n2, !3122, !DIExpression(), !3134)
  br i1 %1, label %for.loop3.preheader.lr.ph, label %for.done5, !dbg !3131

for.loop3.preheader.lr.ph:                        ; preds = %for.loop1.preheader
  %.not = icmp ult i64 %3, %a1.len
  %4 = getelementptr inbounds nuw i64, ptr %a1.data, i64 %3
  br label %for.loop3.preheader, !dbg !3131

for.loop3.preheader:                              ; preds = %for.loop3.preheader.lr.ph, %for.done
  %5 = phi i64 [ 0, %for.loop3.preheader.lr.ph ], [ %17, %for.done ]
    #dbg_value(i64 %5, !3126, !DIExpression(), !3133)
    #dbg_value(i64 0, !3127, !DIExpression(), !3135)
    #dbg_value(i64 %n3, !3123, !DIExpression(), !3136)
  br i1 %2, label %for.body4.lr.ph, label %for.done, !dbg !3131

for.body4.lr.ph:                                  ; preds = %for.loop3.preheader
  %6 = getelementptr inbounds nuw i64, ptr %a2.data, i64 %5
  br i1 %.not, label %for.body4.lr.ph.split, label %lookup.throw, !dbg !3137

for.body4.lr.ph.split:                            ; preds = %for.body4.lr.ph
  %.not3 = icmp ult i64 %5, %a2.len
  br i1 %.not3, label %for.body4, label %lookup.throw9, !dbg !3138

for.loop3:                                        ; preds = %lookup.next14
  %7 = add nuw nsw i64 %8, 1, !dbg !3139
    #dbg_value(i64 %7, !3127, !DIExpression(), !3139)
    #dbg_value(i64 poison, !3127, !DIExpression(), !3135)
    #dbg_value(i64 %n3, !3123, !DIExpression(), !3136)
  %exitcond15.not = icmp eq i64 %7, %n3, !dbg !3140
  br i1 %exitcond15.not, label %for.done, label %for.body4, !dbg !3131

for.body4:                                        ; preds = %for.body4.lr.ph.split, %for.loop3
  %8 = phi i64 [ %7, %for.loop3 ], [ 0, %for.body4.lr.ph.split ]
    #dbg_value(i64 %8, !3127, !DIExpression(), !3135)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3141)
    #dbg_value(i64 %3, !3125, !DIExpression(), !3142)
    #dbg_value({ ptr, i64, i64 } poison, !3119, !DIExpression(), !3143)
    #dbg_value(i64 %5, !3126, !DIExpression(), !3144)
    #dbg_value({ ptr, i64, i64 } poison, !3120, !DIExpression(), !3145)
    #dbg_value(i64 %8, !3127, !DIExpression(), !3146)
  %exitcond.not = icmp eq i64 %8, %a3.len, !dbg !3147
  br i1 %exitcond.not, label %lookup.throw13, label %lookup.next14, !dbg !3147

lookup.next14:                                    ; preds = %for.body4
  %9 = load i64, ptr %4, align 8, !dbg !3137
  %10 = load i64, ptr %6, align 8, !dbg !3138
  %11 = add i64 %10, %9, !dbg !3148
  %12 = getelementptr inbounds nuw i64, ptr %a3.data, i64 %8, !dbg !3147
  %13 = load i64, ptr %12, align 8, !dbg !3147
  %14 = add i64 %11, %13, !dbg !3149
    #dbg_value(i64 %sum, !3124, !DIExpression(), !3150)
  %15 = icmp eq i64 %14, %sum, !dbg !3151
    #dbg_value(i64 %8, !3127, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3139)
  br i1 %15, label %common.ret, label %for.loop3, !dbg !3131

common.ret:                                       ; preds = %for.done5, %lookup.next14, %entry
  %16 = phi i1 [ false, %entry ], [ true, %lookup.next14 ], [ false, %for.done5 ]
  ret i1 %16, !dbg !3131

for.done:                                         ; preds = %for.loop3, %for.loop3.preheader
  %17 = add nuw nsw i64 %5, 1, !dbg !3152
    #dbg_value(i64 %17, !3126, !DIExpression(), !3133)
    #dbg_value(i64 %n2, !3122, !DIExpression(), !3134)
  %exitcond16.not = icmp eq i64 %17, %n2, !dbg !3153
  br i1 %exitcond16.not, label %for.done5, label %for.loop3.preheader, !dbg !3131

for.done5:                                        ; preds = %for.done, %for.loop1.preheader
  %18 = add nuw nsw i64 %3, 1, !dbg !3154
    #dbg_value(i64 %18, !3125, !DIExpression(), !3132)
    #dbg_value(i64 %n1, !3121, !DIExpression(), !3155)
  %exitcond17.not = icmp eq i64 %18, %n1, !dbg !3130
  br i1 %exitcond17.not, label %common.ret, label %for.loop1.preheader, !dbg !3131

lookup.throw:                                     ; preds = %for.body4.lr.ph
  call fastcc void @runtime.lookupPanic(), !dbg !3137
  unreachable, !dbg !3137

lookup.throw9:                                    ; preds = %for.body4.lr.ph.split
  call fastcc void @runtime.lookupPanic(), !dbg !3138
  unreachable, !dbg !3138

lookup.throw13:                                   ; preds = %for.body4
  call fastcc void @runtime.lookupPanic(), !dbg !3147
  unreachable, !dbg !3147
}
