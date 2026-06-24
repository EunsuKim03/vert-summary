define i64 @f_gold(ptr nocapture readonly %a.data, i64 %a.len, i64 %a.cap, i64 %n) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %a.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3123)
    #dbg_value(i64 %a.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3123)
    #dbg_value(i64 %a.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3123)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3123)
    #dbg_value(i64 9223372036854775807, !3120, !DIExpression(), !3124)
    #dbg_value(i64 0, !3121, !DIExpression(), !3125)
    #dbg_value(i64 0, !3122, !DIExpression(), !3126)
  %0 = icmp sgt i64 %n, 0, !dbg !3127
  br i1 %0, label %for.body.preheader, label %for.done, !dbg !3128

for.body.preheader:                               ; preds = %entry
  %1 = add nsw i64 %n, -1, !dbg !3129
  %.not.not = icmp ugt i64 %a.len, %1, !dbg !3129
  br label %for.body, !dbg !3129

for.body:                                         ; preds = %for.body.preheader, %lookup.next4
  %2 = phi i64 [ %8, %lookup.next4 ], [ 0, %for.body.preheader ]
  %3 = phi i64 [ %7, %lookup.next4 ], [ 0, %for.body.preheader ]
  %4 = phi i64 [ %x.y.i, %lookup.next4 ], [ 9223372036854775807, %for.body.preheader ]
    #dbg_value(i64 %2, !3122, !DIExpression(), !3130)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3131)
    #dbg_value(i64 %2, !3122, !DIExpression(), !3132)
  br i1 %.not.not, label %lookup.next4, label %lookup.throw, !dbg !3129

lookup.next4:                                     ; preds = %for.body
    #dbg_value(i64 poison, !3120, !DIExpression(), !3133)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3134)
    #dbg_value(i64 %2, !3122, !DIExpression(), !3135)
  %5 = getelementptr inbounds nuw i64, ptr %a.data, i64 %2, !dbg !3129
  %6 = load i64, ptr %5, align 8, !dbg !3129
    #dbg_value(i64 %6, !3136, !DIExpression(), !3142)
    #dbg_value(i64 %4, !3141, !DIExpression(), !3144)
  %x.y.i = call i64 @llvm.smin.i64(i64 %6, i64 %4), !dbg !3145
    #dbg_value(i64 %x.y.i, !3120, !DIExpression(), !3133)
  %7 = add i64 %6, %3, !dbg !3146
    #dbg_value(i64 %7, !3121, !DIExpression(), !3146)
  %8 = add nuw nsw i64 %2, 1, !dbg !3147
    #dbg_value(i64 %8, !3122, !DIExpression(), !3130)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3148)
  %exitcond.not = icmp eq i64 %8, %n, !dbg !3127
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !3128

for.done:                                         ; preds = %lookup.next4, %entry
  %.lcssa2 = phi i64 [ 9223372036854775807, %entry ], [ %x.y.i, %lookup.next4 ], !dbg !3124
  %.lcssa = phi i64 [ 0, %entry ], [ %7, %lookup.next4 ], !dbg !3125
    #dbg_value(i64 %.lcssa2, !3120, !DIExpression(), !3149)
    #dbg_value(i64 %.lcssa, !3121, !DIExpression(), !3150)
    #dbg_value(i64 %.lcssa2, !3120, !DIExpression(), !3151)
  %9 = sub i64 %.lcssa, %.lcssa2, !dbg !3152
  %10 = mul i64 %9, %.lcssa2, !dbg !3153
  ret i64 %10, !dbg !3154

lookup.throw:                                     ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !3129
  unreachable, !dbg !3129
}
