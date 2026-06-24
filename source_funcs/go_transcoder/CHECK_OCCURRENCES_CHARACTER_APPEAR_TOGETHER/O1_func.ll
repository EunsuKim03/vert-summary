define noundef i1 @f_gold(ptr nocapture readonly %s.data, i64 %s.len, i64 %s.cap, i8 %c) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %s.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3123)
    #dbg_value(i64 %s.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3123)
    #dbg_value(i64 %s.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3123)
    #dbg_value(i8 %c, !3119, !DIExpression(), !3123)
    #dbg_value(i1 false, !3120, !DIExpression(), !3124)
    #dbg_value(i64 0, !3121, !DIExpression(), !3125)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3126)
    #dbg_value(i64 %s.len, !3122, !DIExpression(), !3127)
  %0 = icmp slt i64 %s.len, 1, !dbg !3128
  br i1 %0, label %common.ret, label %for.body, !dbg !3129

for.body:                                         ; preds = %entry, %if.else
  %1 = phi i64 [ %17, %if.else ], [ 0, %entry ]
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3130)
    #dbg_value(i64 %1, !3121, !DIExpression(), !3131)
  %2 = getelementptr inbounds nuw i8, ptr %s.data, i64 %1, !dbg !3132
  %3 = load i8, ptr %2, align 1, !dbg !3132
    #dbg_value(i8 %c, !3119, !DIExpression(), !3133)
  %4 = icmp eq i8 %3, %c, !dbg !3134
  br i1 %4, label %for.loop2.preheader, label %if.else, !dbg !3129

for.loop2.preheader:                              ; preds = %for.body
    #dbg_value(i1 false, !3120, !DIExpression(), !3135)
    #dbg_value(i64 %1, !3121, !DIExpression(), !3136)
    #dbg_value(i64 %s.len, !3122, !DIExpression(), !3137)
  %5 = icmp slt i64 %1, %s.len, !dbg !3138
  br i1 %5, label %cond.true, label %for.done, !dbg !3129

common.ret:                                       ; preds = %lookup.next.1, %for.done, %if.else, %if.else.1, %entry
  %6 = phi i1 [ true, %entry ], [ true, %if.else.1 ], [ true, %if.else ], [ true, %for.done ], [ false, %lookup.next.1 ]
  ret i1 %6, !dbg !3129

cond.true:                                        ; preds = %for.loop2.preheader, %for.body3
  %7 = phi i64 [ %11, %for.body3 ], [ %1, %for.loop2.preheader ]
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3139)
    #dbg_value(i64 %7, !3121, !DIExpression(), !3140)
  %.not2 = icmp ult i64 %7, %s.len, !dbg !3141
  br i1 %.not2, label %lookup.next8, label %lookup.throw7, !dbg !3141

lookup.next8:                                     ; preds = %cond.true
  %8 = getelementptr inbounds i8, ptr %s.data, i64 %7, !dbg !3141
  %9 = load i8, ptr %8, align 1, !dbg !3141
    #dbg_value(i8 %c, !3119, !DIExpression(), !3142)
  %10 = icmp eq i8 %9, %c, !dbg !3143
  br i1 %10, label %for.body3, label %for.done, !dbg !3129

for.body3:                                        ; preds = %lookup.next8
  %11 = add nuw i64 %7, 1, !dbg !3144
    #dbg_value(i64 %11, !3121, !DIExpression(), !3136)
    #dbg_value(i64 %s.len, !3122, !DIExpression(), !3137)
  %exitcond30.not = icmp eq i64 %11, %s.len, !dbg !3138
  br i1 %exitcond30.not, label %for.done, label %cond.true, !dbg !3129

for.done:                                         ; preds = %for.body3, %lookup.next8, %for.loop2.preheader
  %.lcssa13 = phi i64 [ %1, %for.loop2.preheader ], [ %s.len, %for.body3 ], [ %7, %lookup.next8 ], !dbg !3125
    #dbg_value(i1 true, !3120, !DIExpression(), !3145)
    #dbg_value(i64 %.lcssa13, !3121, !DIExpression(), !3146)
    #dbg_value(i64 %s.len, !3122, !DIExpression(), !3147)
  %.not22.not = icmp slt i64 %.lcssa13, %s.len, !dbg !3128
  br i1 %.not22.not, label %for.body.lr.ph.1, label %common.ret, !dbg !3129

for.body.lr.ph.1:                                 ; preds = %for.done
    #dbg_value(i64 %.lcssa13, !3121, !DIExpression(), !3146)
  %umax.1 = call i64 @llvm.umax.i64(i64 %.lcssa13, i64 %s.len), !dbg !3129
  br label %for.body.1, !dbg !3129

for.body.1:                                       ; preds = %if.else.1, %for.body.lr.ph.1
  %12 = phi i64 [ %.lcssa13, %for.body.lr.ph.1 ], [ %16, %if.else.1 ]
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3130)
    #dbg_value(i64 %12, !3121, !DIExpression(), !3131)
  %exitcond.1.not = icmp eq i64 %12, %umax.1, !dbg !3132
  br i1 %exitcond.1.not, label %lookup.throw, label %lookup.next.1, !dbg !3132

lookup.next.1:                                    ; preds = %for.body.1
  %13 = getelementptr inbounds i8, ptr %s.data, i64 %12, !dbg !3132
  %14 = load i8, ptr %13, align 1, !dbg !3132
    #dbg_value(i8 %c, !3119, !DIExpression(), !3133)
  %15 = icmp eq i8 %14, %c, !dbg !3134
  br i1 %15, label %common.ret, label %if.else.1, !dbg !3129

if.else.1:                                        ; preds = %lookup.next.1
  %16 = add nsw i64 %12, 1, !dbg !3148
    #dbg_value(i64 %16, !3121, !DIExpression(), !3146)
    #dbg_value(i64 %s.len, !3122, !DIExpression(), !3147)
  %exitcond29.not = icmp eq i64 %16, %s.len, !dbg !3128
  br i1 %exitcond29.not, label %common.ret, label %for.body.1, !dbg !3129

if.else:                                          ; preds = %for.body
  %17 = add nuw nsw i64 %1, 1, !dbg !3148
    #dbg_value(i64 %17, !3121, !DIExpression(), !3146)
    #dbg_value(i64 %s.len, !3122, !DIExpression(), !3147)
  %exitcond31.not = icmp eq i64 %17, %s.len, !dbg !3128
  br i1 %exitcond31.not, label %common.ret, label %for.body, !dbg !3129

lookup.throw:                                     ; preds = %for.body.1
  call fastcc void @runtime.lookupPanic(), !dbg !3132
  unreachable, !dbg !3132

lookup.throw7:                                    ; preds = %cond.true
  call fastcc void @runtime.lookupPanic(), !dbg !3141
  unreachable, !dbg !3141
}
