define i64 @f_gold(ptr nocapture readonly %a.data, i64 %a.len, i64 %a.cap, i64 %n, i64 %l, i64 %r) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %a.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3124)
    #dbg_value(i64 %a.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3124)
    #dbg_value(i64 %a.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3124)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3124)
    #dbg_value(i64 %l, !3120, !DIExpression(), !3124)
    #dbg_value(i64 %r, !3121, !DIExpression(), !3124)
    #dbg_value(i64 0, !3122, !DIExpression(), !3125)
    #dbg_value(i64 %l, !3120, !DIExpression(), !3126)
    #dbg_value(i64 %l, !3123, !DIExpression(), !3127)
  %0 = icmp slt i64 %l, %r, !dbg !3128
  br i1 %0, label %for.body.preheader, label %for.done, !dbg !3129

for.body.preheader:                               ; preds = %entry
  %1 = call i64 @llvm.usub.sat.i64(i64 %a.len, i64 %l), !dbg !3130
  %2 = xor i64 %l, -1, !dbg !3130
  %3 = add i64 %r, %2, !dbg !3130
  %4 = add i64 %l, 1, !dbg !3130
  %umax7 = call i64 @llvm.umax.i64(i64 %a.len, i64 %4), !dbg !3130
  %5 = xor i64 %l, -1, !dbg !3130
  %6 = add i64 %umax7, %5, !dbg !3130
  %umin = call i64 @llvm.umin.i64(i64 %3, i64 %6), !dbg !3130
  %umin8 = call i64 @llvm.umin.i64(i64 %umin, i64 %1), !dbg !3130
  %.not.not = icmp ugt i64 %1, %umin, !dbg !3130
  %.not = icmp eq i64 %6, %umin8, !dbg !3130
  br label %for.body, !dbg !3130

for.body:                                         ; preds = %for.body.preheader, %lookup.next4
  %7 = phi i64 [ %9, %lookup.next4 ], [ %l, %for.body.preheader ]
  %8 = phi i64 [ %spec.select, %lookup.next4 ], [ 0, %for.body.preheader ]
    #dbg_value(i64 %7, !3123, !DIExpression(), !3131)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3132)
    #dbg_value(i64 %7, !3123, !DIExpression(), !3133)
  br i1 %.not.not, label %lookup.next, label %lookup.throw, !dbg !3130

lookup.next:                                      ; preds = %for.body
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3134)
    #dbg_value(i64 %7, !3123, !DIExpression(), !3135)
  br i1 %.not, label %lookup.throw3, label %lookup.next4, !dbg !3136

lookup.next4:                                     ; preds = %lookup.next
  %9 = add nuw nsw i64 %7, 1, !dbg !3137
  %10 = getelementptr inbounds i64, ptr %a.data, i64 %7, !dbg !3130
  %11 = load i64, ptr %10, align 8, !dbg !3130
  %12 = getelementptr inbounds i64, ptr %a.data, i64 %9, !dbg !3136
  %13 = load i64, ptr %12, align 8, !dbg !3136
  %14 = icmp eq i64 %11, %13, !dbg !3138
  %15 = zext i1 %14 to i64, !dbg !3129
  %spec.select = add i64 %8, %15, !dbg !3129
    #dbg_value(i64 %9, !3123, !DIExpression(), !3131)
    #dbg_value(i64 %r, !3121, !DIExpression(), !3139)
  %exitcond.not = icmp eq i64 %9, %r, !dbg !3128
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !3129

for.done:                                         ; preds = %lookup.next4, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %spec.select, %lookup.next4 ], !dbg !3125
    #dbg_value(i64 %.lcssa, !3122, !DIExpression(), !3140)
  ret i64 %.lcssa, !dbg !3141

lookup.throw:                                     ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !3130
  unreachable, !dbg !3130

lookup.throw3:                                    ; preds = %lookup.next
  call fastcc void @runtime.lookupPanic(), !dbg !3136
  unreachable, !dbg !3136
}
