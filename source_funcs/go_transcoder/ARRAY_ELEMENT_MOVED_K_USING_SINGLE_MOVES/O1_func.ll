define i64 @f_gold(ptr nocapture readonly %a.data, i64 %a.len, i64 %a.cap, i64 %n, i64 %k) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %a.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3124)
    #dbg_value(i64 %a.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3124)
    #dbg_value(i64 %a.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3124)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3124)
    #dbg_value(i64 %k, !3120, !DIExpression(), !3124)
    #dbg_value(i64 %k, !3120, !DIExpression(), !3125)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3126)
  %0 = add i64 %n, -1, !dbg !3127
  %.not = icmp slt i64 %k, %0, !dbg !3128
  br i1 %.not, label %for.loop.preheader, label %common.ret, !dbg !3129

for.loop.preheader:                               ; preds = %entry
    #dbg_value(i64 0, !3123, !DIExpression(), !3130)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3131)
  %1 = icmp sgt i64 %n, 0, !dbg !3132
  br i1 %1, label %for.body.peel, label %common.ret, !dbg !3129

for.body.peel:                                    ; preds = %for.loop.preheader
    #dbg_value(i64 0, !3123, !DIExpression(), !3130)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3133)
    #dbg_value(i64 0, !3123, !DIExpression(), !3134)
  %exitcond.peel.not = icmp eq i64 %a.len, 0, !dbg !3135
  br i1 %exitcond.peel.not, label %lookup.throw, label %lookup.next.peel, !dbg !3135

lookup.next.peel:                                 ; preds = %for.body.peel
  %2 = load i64, ptr %a.data, align 8, !dbg !3135
    #dbg_value(i64 0, !3121, !DIExpression(), !3136)
  %3 = icmp slt i64 %2, 1, !dbg !3137
  %4 = call i64 @llvm.smax.i64(i64 %2, i64 0), !dbg !3129
  %5 = zext i1 %3 to i64, !dbg !3129
    #dbg_value(i64 %5, !3122, !DIExpression(), !3138)
    #dbg_value(i64 %k, !3120, !DIExpression(), !3139)
  %.not6.peel = icmp sle i64 %k, %5, !dbg !3140
    #dbg_value(i64 0, !3123, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3141)
    #dbg_value(i64 1, !3123, !DIExpression(), !3141)
    #dbg_value(i64 1, !3123, !DIExpression(), !3130)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3131)
  %exitcond13.peel.not = icmp eq i64 %n, 1
  %or.cond = or i1 %.not6.peel, %exitcond13.peel.not, !dbg !3129
  br i1 %or.cond, label %common.ret, label %for.body, !dbg !3129

common.ret:                                       ; preds = %lookup.next.peel, %lookup.next, %for.loop.preheader, %entry
  %common.ret.op = phi i64 [ %n, %entry ], [ 0, %for.loop.preheader ], [ %4, %lookup.next.peel ], [ %13, %lookup.next ]
  ret i64 %common.ret.op, !dbg !3129

for.body:                                         ; preds = %lookup.next, %lookup.next.peel
  %6 = phi i64 [ 1, %lookup.next.peel ], [ %15, %lookup.next ]
  %7 = phi i64 [ %5, %lookup.next.peel ], [ %14, %lookup.next ]
  %8 = phi i64 [ %4, %lookup.next.peel ], [ %13, %lookup.next ]
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3133)
    #dbg_value(i64 %6, !3123, !DIExpression(), !3134)
  %exitcond.not = icmp eq i64 %6, %a.len, !dbg !3135
  br i1 %exitcond.not, label %lookup.throw, label %lookup.next, !dbg !3135

lookup.next:                                      ; preds = %for.body
  %9 = getelementptr inbounds nuw i64, ptr %a.data, i64 %6, !dbg !3135
  %10 = load i64, ptr %9, align 8, !dbg !3135
    #dbg_value(i64 %8, !3121, !DIExpression(), !3136)
  %11 = icmp sgt i64 %10, %8, !dbg !3137
  %12 = add i64 %7, 1, !dbg !3129
  %13 = call i64 @llvm.smax.i64(i64 %10, i64 %8), !dbg !3129
  %14 = select i1 %11, i64 1, i64 %12, !dbg !3129
    #dbg_value(i64 %14, !3122, !DIExpression(), !3138)
    #dbg_value(i64 %k, !3120, !DIExpression(), !3139)
  %.not6 = icmp sge i64 %14, %k, !dbg !3140
    #dbg_value(i64 %6, !3123, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3141)
  %15 = add nuw nsw i64 %6, 1
    #dbg_value(i64 %15, !3123, !DIExpression(), !3130)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3131)
  %exitcond13.not = icmp eq i64 %15, %n
  %or.cond15 = select i1 %.not6, i1 true, i1 %exitcond13.not, !dbg !3129
  br i1 %or.cond15, label %common.ret, label %for.body, !dbg !3129, !llvm.loop !3142

lookup.throw:                                     ; preds = %for.body, %for.body.peel
  call fastcc void @runtime.lookupPanic(), !dbg !3135
  unreachable, !dbg !3135
}
