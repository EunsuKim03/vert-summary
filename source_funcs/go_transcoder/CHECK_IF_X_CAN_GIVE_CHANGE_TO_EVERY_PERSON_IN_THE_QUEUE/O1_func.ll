define noundef range(i64 0, 2) i64 @f_gold(ptr nocapture readonly %notes.data, i64 %notes.len, i64 %notes.cap, i64 %n) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %notes.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3123)
    #dbg_value(i64 %notes.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3123)
    #dbg_value(i64 %notes.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3123)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3123)
    #dbg_value(i64 0, !3120, !DIExpression(), !3124)
    #dbg_value(i64 0, !3121, !DIExpression(), !3125)
    #dbg_value(i64 0, !3122, !DIExpression(), !3126)
  %0 = icmp sgt i64 %n, 0, !dbg !3127
  br i1 %0, label %for.body, label %common.ret, !dbg !3128

for.body:                                         ; preds = %entry, %if.done
  %1 = phi i64 [ %9, %if.done ], [ 0, %entry ]
  %2 = phi i64 [ %8, %if.done ], [ 0, %entry ]
  %3 = phi i64 [ %7, %if.done ], [ 0, %entry ]
    #dbg_value(i64 %1, !3122, !DIExpression(), !3129)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3130)
    #dbg_value(i64 %1, !3122, !DIExpression(), !3131)
  %exitcond.not = icmp eq i64 %1, %notes.len, !dbg !3132
  br i1 %exitcond.not, label %lookup.throw, label %lookup.next, !dbg !3132

lookup.next:                                      ; preds = %for.body
  %4 = getelementptr inbounds nuw i64, ptr %notes.data, i64 %1, !dbg !3132
  %5 = load i64, ptr %4, align 8, !dbg !3132
  switch i64 %5, label %if.else4 [
    i64 5, label %if.then
    i64 10, label %if.then1
  ], !dbg !3128

if.then:                                          ; preds = %lookup.next
  %6 = add i64 %3, 1, !dbg !3133
    #dbg_value(i64 %6, !3120, !DIExpression(), !3133)
  br label %if.done, !dbg !3128

if.done:                                          ; preds = %if.then7, %if.then5, %if.then2, %if.then
  %7 = phi i64 [ %6, %if.then ], [ %11, %if.then2 ], [ %15, %if.then5 ], [ %18, %if.then7 ], !dbg !3124
  %8 = phi i64 [ %2, %if.then ], [ %12, %if.then2 ], [ %16, %if.then5 ], [ %2, %if.then7 ], !dbg !3125
  %9 = add nuw nsw i64 %1, 1, !dbg !3134
    #dbg_value(i64 %9, !3122, !DIExpression(), !3129)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3135)
  %exitcond11.not = icmp eq i64 %9, %n, !dbg !3127
  br i1 %exitcond11.not, label %common.ret, label %for.body, !dbg !3128

if.then1:                                         ; preds = %lookup.next
    #dbg_value(i64 %3, !3120, !DIExpression(), !3136)
  %10 = icmp sgt i64 %3, 0, !dbg !3137
  br i1 %10, label %if.then2, label %common.ret, !dbg !3128

if.then2:                                         ; preds = %if.then1
  %11 = add nsw i64 %3, -1, !dbg !3138
    #dbg_value(i64 %11, !3120, !DIExpression(), !3138)
  %12 = add i64 %2, 1, !dbg !3139
    #dbg_value(i64 %12, !3121, !DIExpression(), !3139)
  br label %if.done, !dbg !3128

common.ret:                                       ; preds = %if.then1, %if.else6, %if.done, %entry
  %common.ret.op = phi i64 [ 1, %entry ], [ 0, %if.then1 ], [ 0, %if.else6 ], [ 1, %if.done ]
  ret i64 %common.ret.op, !dbg !3128

if.else4:                                         ; preds = %lookup.next
    #dbg_value(i64 %3, !3120, !DIExpression(), !3140)
  %13 = icmp sgt i64 %3, 0, !dbg !3141
    #dbg_value(i64 %2, !3121, !DIExpression(), !3142)
  %14 = icmp sgt i64 %2, 0
  %or.cond = select i1 %13, i1 %14, i1 false, !dbg !3128
  br i1 %or.cond, label %if.then5, label %if.else6, !dbg !3128

if.then5:                                         ; preds = %if.else4
  %15 = add nsw i64 %3, -1, !dbg !3143
    #dbg_value(i64 %15, !3120, !DIExpression(), !3143)
  %16 = add nsw i64 %2, -1, !dbg !3144
    #dbg_value(i64 %16, !3121, !DIExpression(), !3144)
  br label %if.done, !dbg !3128

if.else6:                                         ; preds = %if.else4
    #dbg_value(i64 %3, !3120, !DIExpression(), !3145)
  %17 = icmp sgt i64 %3, 2, !dbg !3146
  br i1 %17, label %if.then7, label %common.ret, !dbg !3128

if.then7:                                         ; preds = %if.else6
  %18 = add nsw i64 %3, -3, !dbg !3147
    #dbg_value(i64 %18, !3120, !DIExpression(), !3147)
  br label %if.done, !dbg !3128

lookup.throw:                                     ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !3132
  unreachable, !dbg !3132
}
