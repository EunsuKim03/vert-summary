define noundef i1 @f_gold(ptr nocapture readonly %str.data, i64 %str.len, i64 %str.cap) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %str.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3122)
    #dbg_value(i64 %str.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3122)
    #dbg_value(i64 %str.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3122)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3123)
    #dbg_value(i64 %str.len, !3119, !DIExpression(), !3124)
    #dbg_value(i64 0, !3120, !DIExpression(), !3125)
    #dbg_value(i64 0, !3120, !DIExpression(), !3126)
  %0 = icmp sgt i64 %str.len, 0, !dbg !3127
  br i1 %0, label %for.body, label %for.done, !dbg !3128

for.body:                                         ; preds = %entry, %if.done
  %1 = phi i64 [ %4, %if.done ], [ 0, %entry ]
    #dbg_value(i64 %1, !3120, !DIExpression(), !3129)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3130)
    #dbg_value(i64 %1, !3120, !DIExpression(), !3131)
  %2 = getelementptr inbounds nuw i8, ptr %str.data, i64 %1, !dbg !3132
  %3 = load i8, ptr %2, align 1, !dbg !3132
  %.not2 = icmp eq i8 %3, 97, !dbg !3133
  br i1 %.not2, label %if.done, label %for.done, !dbg !3128

if.done:                                          ; preds = %for.body
  %4 = add nuw nsw i64 %1, 1, !dbg !3134
    #dbg_value(i64 %4, !3120, !DIExpression(), !3129)
    #dbg_value(i64 %str.len, !3119, !DIExpression(), !3135)
  %exitcond.not = icmp eq i64 %4, %str.len, !dbg !3127
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !3128

for.done:                                         ; preds = %if.done, %for.body, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %str.len, %if.done ], [ %1, %for.body ], !dbg !3125
    #dbg_value(i64 %.lcssa, !3120, !DIExpression(), !3136)
  %5 = shl nuw i64 %.lcssa, 1, !dbg !3137
    #dbg_value(i64 %str.len, !3119, !DIExpression(), !3138)
  %.not3 = icmp eq i64 %5, %str.len, !dbg !3139
  br i1 %.not3, label %for.loop2.preheader, label %common.ret, !dbg !3128

for.loop2.preheader:                              ; preds = %for.done
    #dbg_value(i64 %.lcssa, !3121, !DIExpression(), !3140)
    #dbg_value(i64 %str.len, !3119, !DIExpression(), !3141)
  %6 = icmp slt i64 %.lcssa, %str.len, !dbg !3142
  br i1 %6, label %for.body3.preheader, label %common.ret, !dbg !3128

for.body3.preheader:                              ; preds = %for.loop2.preheader
  %umax = call i64 @llvm.umax.i64(i64 %.lcssa, i64 %str.len), !dbg !3143
  br label %for.body3, !dbg !3143

common.ret:                                       ; preds = %lookup.next10, %for.loop2.preheader, %for.done
  %common.ret.op = phi i1 [ false, %for.done ], [ true, %for.loop2.preheader ], [ %.not5, %lookup.next10 ]
  ret i1 %common.ret.op, !dbg !3128

for.body3:                                        ; preds = %lookup.next10, %for.body3.preheader
  %7 = phi i64 [ %.lcssa, %for.body3.preheader ], [ %10, %lookup.next10 ]
    #dbg_value(i64 %7, !3121, !DIExpression(), !3140)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3144)
    #dbg_value(i64 %7, !3121, !DIExpression(), !3145)
  %exitcond12.not = icmp eq i64 %7, %umax, !dbg !3143
  br i1 %exitcond12.not, label %lookup.throw9, label %lookup.next10, !dbg !3143

lookup.next10:                                    ; preds = %for.body3
  %8 = getelementptr inbounds i8, ptr %str.data, i64 %7, !dbg !3143
  %9 = load i8, ptr %8, align 1, !dbg !3143
  %.not5 = icmp eq i8 %9, 98, !dbg !3146
    #dbg_value(i64 %7, !3121, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3147)
  %10 = add i64 %7, 1
    #dbg_value(i64 %10, !3121, !DIExpression(), !3147)
    #dbg_value(i64 %10, !3121, !DIExpression(), !3140)
    #dbg_value(i64 %str.len, !3119, !DIExpression(), !3141)
  %exitcond13.not = icmp ne i64 %10, %str.len
  %or.cond.not = and i1 %exitcond13.not, %.not5, !dbg !3128
  br i1 %or.cond.not, label %for.body3, label %common.ret, !dbg !3128

lookup.throw9:                                    ; preds = %for.body3
  call fastcc void @runtime.lookupPanic(), !dbg !3143
  unreachable, !dbg !3143
}
