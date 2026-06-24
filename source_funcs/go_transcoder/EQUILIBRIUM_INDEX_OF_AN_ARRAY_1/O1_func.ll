define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %arr.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3124)
    #dbg_value(i64 %arr.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3124)
    #dbg_value(i64 %arr.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3124)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3124)
    #dbg_value(i64 0, !3120, !DIExpression(), !3125)
    #dbg_value(i64 0, !3121, !DIExpression(), !3126)
    #dbg_value(i64 0, !3122, !DIExpression(), !3127)
  %0 = icmp sgt i64 %n, 0, !dbg !3128
  br i1 %0, label %for.body.preheader, label %for.loop1.preheader, !dbg !3129

for.body.preheader:                               ; preds = %entry
  %1 = add nsw i64 %n, -1, !dbg !3130
  %.not.not = icmp ugt i64 %arr.len, %1, !dbg !3130
  br label %for.body, !dbg !3130

for.loop1.preheader:                              ; preds = %lookup.next, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %7, %lookup.next ], !dbg !3125
    #dbg_value(i64 0, !3123, !DIExpression(), !3131)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3132)
  %2 = icmp sgt i64 %n, 0, !dbg !3133
  br i1 %2, label %for.body2, label %common.ret, !dbg !3129

for.body:                                         ; preds = %for.body.preheader, %lookup.next
  %3 = phi i64 [ %8, %lookup.next ], [ 0, %for.body.preheader ]
  %4 = phi i64 [ %7, %lookup.next ], [ 0, %for.body.preheader ]
    #dbg_value(i64 %3, !3122, !DIExpression(), !3134)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3135)
    #dbg_value(i64 %3, !3122, !DIExpression(), !3136)
  br i1 %.not.not, label %lookup.next, label %lookup.throw, !dbg !3130

lookup.next:                                      ; preds = %for.body
  %5 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %3, !dbg !3130
  %6 = load i64, ptr %5, align 8, !dbg !3130
  %7 = add i64 %6, %4, !dbg !3137
    #dbg_value(i64 %7, !3120, !DIExpression(), !3137)
  %8 = add nuw nsw i64 %3, 1, !dbg !3138
    #dbg_value(i64 %8, !3122, !DIExpression(), !3134)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3139)
  %exitcond.not = icmp eq i64 %8, %n, !dbg !3128
  br i1 %exitcond.not, label %for.loop1.preheader, label %for.body, !dbg !3129

for.body2:                                        ; preds = %for.loop1.preheader, %lookup.next11
  %9 = phi i64 [ %17, %lookup.next11 ], [ 0, %for.loop1.preheader ]
  %10 = phi i64 [ %16, %lookup.next11 ], [ 0, %for.loop1.preheader ]
  %11 = phi i64 [ %14, %lookup.next11 ], [ %.lcssa, %for.loop1.preheader ]
    #dbg_value(i64 %9, !3123, !DIExpression(), !3131)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3140)
    #dbg_value(i64 %9, !3123, !DIExpression(), !3141)
  %exitcond16.not = icmp eq i64 %9, %arr.len, !dbg !3142
  br i1 %exitcond16.not, label %lookup.throw6, label %lookup.next7, !dbg !3142

lookup.next7:                                     ; preds = %for.body2
  %12 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %9, !dbg !3142
  %13 = load i64, ptr %12, align 8, !dbg !3142
  %14 = sub i64 %11, %13, !dbg !3143
    #dbg_value(i64 %14, !3120, !DIExpression(), !3143)
    #dbg_value(i64 %10, !3121, !DIExpression(), !3144)
    #dbg_value(i64 %14, !3120, !DIExpression(), !3145)
  %15 = icmp eq i64 %10, %14, !dbg !3146
  br i1 %15, label %common.ret, label %lookup.next11, !dbg !3129

common.ret:                                       ; preds = %lookup.next7, %lookup.next11, %for.loop1.preheader
  %common.ret.op = phi i64 [ -1, %for.loop1.preheader ], [ %9, %lookup.next7 ], [ -1, %lookup.next11 ]
  ret i64 %common.ret.op, !dbg !3129

lookup.next11:                                    ; preds = %lookup.next7
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3147)
    #dbg_value(i64 %9, !3123, !DIExpression(), !3148)
  %16 = add i64 %13, %10, !dbg !3149
    #dbg_value(i64 %16, !3121, !DIExpression(), !3149)
  %17 = add nuw nsw i64 %9, 1, !dbg !3150
    #dbg_value(i64 %17, !3123, !DIExpression(), !3131)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3132)
  %exitcond17.not = icmp eq i64 %17, %n, !dbg !3133
  br i1 %exitcond17.not, label %common.ret, label %for.body2, !dbg !3129

lookup.throw:                                     ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !3130
  unreachable, !dbg !3130

lookup.throw6:                                    ; preds = %for.body2
  call fastcc void @runtime.lookupPanic(), !dbg !3142
  unreachable, !dbg !3142
}
