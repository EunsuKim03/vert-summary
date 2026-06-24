define range(i64 -9223372036854775808, 9223372036854775807) i64 @f_gold(ptr nocapture readonly %a.data, i64 %a.len, i64 %a.cap, i64 %n) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %a.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3124)
    #dbg_value(i64 %a.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3124)
    #dbg_value(i64 %a.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3124)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3124)
    #dbg_value(i64 0, !3120, !DIExpression(), !3125)
    #dbg_value(i64 0, !3121, !DIExpression(), !3126)
    #dbg_value(i64 0, !3122, !DIExpression(), !3127)
  %0 = icmp sgt i64 %n, 0, !dbg !3128
  br i1 %0, label %for.body.preheader, label %for.done, !dbg !3129

for.body.preheader:                               ; preds = %entry
  %1 = add nsw i64 %n, -1, !dbg !3130
  %.not.not = icmp ugt i64 %a.len, %1, !dbg !3130
  br label %for.body, !dbg !3130

for.body:                                         ; preds = %for.body.preheader, %lookup.next
  %2 = phi i64 [ %11, %lookup.next ], [ 0, %for.body.preheader ]
  %3 = phi i64 [ %spec.select2, %lookup.next ], [ 0, %for.body.preheader ]
  %4 = phi i64 [ %spec.select, %lookup.next ], [ 0, %for.body.preheader ]
    #dbg_value(i64 %2, !3122, !DIExpression(), !3131)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3132)
    #dbg_value(i64 %2, !3122, !DIExpression(), !3133)
  br i1 %.not.not, label %lookup.next, label %lookup.throw, !dbg !3130

lookup.next:                                      ; preds = %for.body
  %5 = getelementptr inbounds nuw i64, ptr %a.data, i64 %2, !dbg !3130
  %6 = load i64, ptr %5, align 8, !dbg !3130
  %7 = icmp eq i64 %6, 0, !dbg !3134
  %8 = zext i1 %7 to i64, !dbg !3129
  %spec.select = add i64 %4, %8, !dbg !3129
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3135)
    #dbg_value(i64 %2, !3122, !DIExpression(), !3136)
  %9 = icmp eq i64 %6, 2, !dbg !3137
  %10 = zext i1 %9 to i64, !dbg !3129
  %spec.select2 = add i64 %3, %10, !dbg !3129
  %11 = add nuw nsw i64 %2, 1, !dbg !3138
    #dbg_value(i64 %11, !3122, !DIExpression(), !3131)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3139)
  %exitcond.not = icmp eq i64 %11, %n, !dbg !3128
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !3129

for.done:                                         ; preds = %lookup.next, %entry
  %.lcssa4 = phi i64 [ 0, %entry ], [ %spec.select, %lookup.next ], !dbg !3125
  %.lcssa = phi i64 [ 0, %entry ], [ %spec.select2, %lookup.next ], !dbg !3126
    #dbg_value(i64 %.lcssa4, !3120, !DIExpression(), !3140)
    #dbg_value(i64 %.lcssa4, !3120, !DIExpression(), !3141)
  %12 = add i64 %.lcssa4, -1, !dbg !3142
  %13 = mul i64 %12, %.lcssa4, !dbg !3143
  %14 = sdiv i64 %13, 2, !dbg !3144
    #dbg_value(i64 %.lcssa, !3121, !DIExpression(), !3145)
    #dbg_value(i64 %.lcssa, !3121, !DIExpression(), !3146)
  %15 = add i64 %.lcssa, -1, !dbg !3147
  %16 = mul i64 %15, %.lcssa, !dbg !3148
  %17 = sdiv i64 %16, 2, !dbg !3149
  %18 = add nsw i64 %17, %14, !dbg !3150
    #dbg_value(i64 %18, !3123, !DIExpression(), !3151)
    #dbg_value(i64 %18, !3123, !DIExpression(), !3152)
  ret i64 %18, !dbg !3153

lookup.throw:                                     ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !3130
  unreachable, !dbg !3130
}
