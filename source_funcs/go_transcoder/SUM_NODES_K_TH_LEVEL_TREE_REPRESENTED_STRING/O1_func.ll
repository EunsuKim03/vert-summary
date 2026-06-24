define i64 @f_gold(ptr nocapture readonly %tree.data, i64 %tree.len, i64 %tree.cap, i64 %k) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(ptr %tree.data, !3114, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3120)
    #dbg_value(i64 %tree.len, !3114, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3120)
    #dbg_value(i64 %tree.cap, !3114, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3120)
    #dbg_value(i64 %k, !3115, !DIExpression(), !3120)
    #dbg_value(i64 -1, !3116, !DIExpression(), !3121)
    #dbg_value(i64 0, !3117, !DIExpression(), !3122)
    #dbg_value({ ptr, i64, i64 } poison, !3114, !DIExpression(), !3123)
    #dbg_value(i64 %tree.len, !3118, !DIExpression(), !3124)
    #dbg_value(i64 0, !3119, !DIExpression(), !3125)
  %0 = icmp sgt i64 %tree.len, 0, !dbg !3126
  br i1 %0, label %for.body, label %for.done, !dbg !3127

for.body:                                         ; preds = %entry, %if.done
  %1 = phi i64 [ %9, %if.done ], [ 0, %entry ]
  %2 = phi i64 [ %8, %if.done ], [ 0, %entry ]
  %3 = phi i64 [ %7, %if.done ], [ -1, %entry ]
    #dbg_value(i64 %1, !3119, !DIExpression(), !3128)
    #dbg_value({ ptr, i64, i64 } poison, !3114, !DIExpression(), !3129)
    #dbg_value(i64 %1, !3119, !DIExpression(), !3130)
  %4 = getelementptr inbounds nuw i8, ptr %tree.data, i64 %1, !dbg !3131
  %5 = load i8, ptr %4, align 1, !dbg !3131
  switch i8 %5, label %if.else2 [
    i8 40, label %if.then
    i8 41, label %if.then1
  ], !dbg !3127

if.then:                                          ; preds = %for.body
  %6 = add i64 %3, 1, !dbg !3132
    #dbg_value(i64 %6, !3116, !DIExpression(), !3132)
  br label %if.done, !dbg !3127

if.done:                                          ; preds = %lookup.next11, %if.else2, %if.then1, %if.then
  %7 = phi i64 [ %6, %if.then ], [ %10, %if.then1 ], [ %3, %if.else2 ], [ %3, %lookup.next11 ], !dbg !3121
  %8 = phi i64 [ %2, %if.then ], [ %2, %if.then1 ], [ %2, %if.else2 ], [ %14, %lookup.next11 ], !dbg !3122
  %9 = add nuw nsw i64 %1, 1, !dbg !3133
    #dbg_value(i64 %9, !3119, !DIExpression(), !3128)
    #dbg_value(i64 %tree.len, !3118, !DIExpression(), !3134)
  %exitcond.not = icmp eq i64 %9, %tree.len, !dbg !3126
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !3127

if.then1:                                         ; preds = %for.body
  %10 = add i64 %3, -1, !dbg !3135
    #dbg_value(i64 %10, !3116, !DIExpression(), !3135)
  br label %if.done, !dbg !3127

if.else2:                                         ; preds = %for.body
    #dbg_value(i64 %3, !3116, !DIExpression(), !3136)
    #dbg_value(i64 %k, !3115, !DIExpression(), !3137)
  %11 = icmp eq i64 %3, %k, !dbg !3138
  br i1 %11, label %lookup.next11, label %if.done, !dbg !3127

lookup.next11:                                    ; preds = %if.else2
    #dbg_value({ ptr, i64, i64 } poison, !3114, !DIExpression(), !3139)
    #dbg_value(i64 %1, !3119, !DIExpression(), !3140)
  %12 = add i8 %5, -48, !dbg !3141
  %13 = zext i8 %12 to i64, !dbg !3142
  %14 = add i64 %2, %13, !dbg !3143
    #dbg_value(i64 %14, !3117, !DIExpression(), !3143)
  br label %if.done, !dbg !3127

for.done:                                         ; preds = %if.done, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %8, %if.done ], !dbg !3122
    #dbg_value(i64 %.lcssa, !3117, !DIExpression(), !3144)
  ret i64 %.lcssa, !dbg !3145
}
