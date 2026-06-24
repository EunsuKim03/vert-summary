define noundef i1 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n, i64 %k) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %arr.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3124)
    #dbg_value(i64 %arr.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3124)
    #dbg_value(i64 %arr.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3124)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3124)
    #dbg_value(i64 %k, !3120, !DIExpression(), !3124)
    #dbg_value(i64 0, !3121, !DIExpression(), !3125)
    #dbg_value(i64 0, !3122, !DIExpression(), !3126)
  %0 = icmp slt i64 %n, 1, !dbg !3127
  br i1 %0, label %common.ret, label %for.loop1.preheader.lr.ph, !dbg !3128

for.loop1.preheader.lr.ph:                        ; preds = %entry
  %1 = shl i64 %k, 1
  br label %for.loop1.preheader, !dbg !3128

for.loop1.preheader:                              ; preds = %for.loop1.preheader.lr.ph, %for.done
  %2 = phi i64 [ 0, %for.loop1.preheader.lr.ph ], [ %14, %for.done ]
    #dbg_value(i64 %2, !3122, !DIExpression(), !3129)
    #dbg_value(i64 0, !3123, !DIExpression(), !3130)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3131)
  %.not3 = icmp ult i64 %2, %arr.len
  %3 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %2
  br label %for.body2, !dbg !3128

for.loop1:                                        ; preds = %lookup.next9
  %4 = add nuw nsw i64 %5, 1, !dbg !3132
    #dbg_value(i64 %4, !3123, !DIExpression(), !3132)
    #dbg_value(i64 poison, !3123, !DIExpression(), !3130)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3131)
  %exitcond13.not = icmp eq i64 %4, %n, !dbg !3133
  br i1 %exitcond13.not, label %for.done, label %for.body2, !dbg !3128

for.body2:                                        ; preds = %for.loop1.preheader, %for.loop1
  %5 = phi i64 [ 0, %for.loop1.preheader ], [ %4, %for.loop1 ]
  %6 = phi i64 [ 0, %for.loop1.preheader ], [ %spec.select, %for.loop1 ]
    #dbg_value(i64 %5, !3123, !DIExpression(), !3130)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3134)
    #dbg_value(i64 %5, !3123, !DIExpression(), !3135)
  %exitcond.not = icmp eq i64 %5, %arr.len, !dbg !3136
  br i1 %exitcond.not, label %lookup.throw, label %lookup.next, !dbg !3136

lookup.next:                                      ; preds = %for.body2
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3137)
    #dbg_value(i64 %2, !3122, !DIExpression(), !3138)
  br i1 %.not3, label %lookup.next9, label %lookup.throw8, !dbg !3139

lookup.next9:                                     ; preds = %lookup.next
  %7 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %5, !dbg !3136
  %8 = load i64, ptr %7, align 8, !dbg !3136
  %9 = load i64, ptr %3, align 8, !dbg !3139
  %10 = icmp eq i64 %8, %9, !dbg !3140
  %11 = zext i1 %10 to i64, !dbg !3128
  %spec.select = add i64 %6, %11, !dbg !3128
    #dbg_value(i64 %spec.select, !3121, !DIExpression(), !3141)
    #dbg_value(i64 %k, !3120, !DIExpression(), !3142)
  %12 = icmp sgt i64 %spec.select, %1, !dbg !3143
    #dbg_value(i64 %5, !3123, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3132)
  br i1 %12, label %common.ret, label %for.loop1, !dbg !3128

common.ret:                                       ; preds = %for.done, %lookup.next9, %entry
  %13 = phi i1 [ true, %entry ], [ false, %lookup.next9 ], [ true, %for.done ]
  ret i1 %13, !dbg !3128

for.done:                                         ; preds = %for.loop1
  %14 = add nuw nsw i64 %2, 1, !dbg !3144
    #dbg_value(i64 %14, !3122, !DIExpression(), !3129)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3145)
  %exitcond14.not = icmp eq i64 %14, %n, !dbg !3127
  br i1 %exitcond14.not, label %common.ret, label %for.loop1.preheader, !dbg !3128

lookup.throw:                                     ; preds = %for.body2
  call fastcc void @runtime.lookupPanic(), !dbg !3136
  unreachable, !dbg !3136

lookup.throw8:                                    ; preds = %lookup.next
  call fastcc void @runtime.lookupPanic(), !dbg !3139
  unreachable, !dbg !3139
}
