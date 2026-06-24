define noundef range(i64 0, 2) i64 @f_gold(ptr nocapture readonly %notes.data, i64 %notes.len, i64 %notes.cap, i64 %n) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %notes.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3039)
    #dbg_value(i64 %notes.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3039)
    #dbg_value(i64 %notes.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3039)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3039)
    #dbg_value(i64 0, !3036, !DIExpression(), !3040)
    #dbg_value(i64 0, !3037, !DIExpression(), !3041)
    #dbg_value(i64 0, !3038, !DIExpression(), !3042)
  %0 = icmp sgt i64 %n, 0, !dbg !3043
  br i1 %0, label %for.body, label %common.ret, !dbg !3044

for.body:                                         ; preds = %entry, %if.done
  %1 = phi i64 [ %9, %if.done ], [ 0, %entry ]
  %2 = phi i64 [ %8, %if.done ], [ 0, %entry ]
  %3 = phi i64 [ %7, %if.done ], [ 0, %entry ]
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3045)
    #dbg_value(i64 %1, !3038, !DIExpression(), !3046)
  %exitcond.not = icmp eq i64 %1, %notes.len, !dbg !3047
  br i1 %exitcond.not, label %lookup.throw, label %lookup.next, !dbg !3047

lookup.next:                                      ; preds = %for.body
  %4 = getelementptr inbounds nuw i64, ptr %notes.data, i64 %1, !dbg !3047
  %5 = load i64, ptr %4, align 8, !dbg !3047
  switch i64 %5, label %if.else4 [
    i64 5, label %if.then
    i64 10, label %if.then1
  ], !dbg !3044

if.then:                                          ; preds = %lookup.next
  %6 = add i64 %3, 1, !dbg !3048
    #dbg_value(i64 %6, !3036, !DIExpression(), !3048)
  br label %if.done, !dbg !3044

if.done:                                          ; preds = %if.then7, %if.then5, %if.then2, %if.then
  %7 = phi i64 [ %6, %if.then ], [ %11, %if.then2 ], [ %15, %if.then5 ], [ %18, %if.then7 ], !dbg !3040
  %8 = phi i64 [ %2, %if.then ], [ %12, %if.then2 ], [ %16, %if.then5 ], [ %2, %if.then7 ], !dbg !3041
  %9 = add nuw nsw i64 %1, 1, !dbg !3049
    #dbg_value(i64 %9, !3038, !DIExpression(), !3050)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3051)
  %exitcond11.not = icmp eq i64 %9, %n, !dbg !3043
  br i1 %exitcond11.not, label %common.ret, label %for.body, !dbg !3044

if.then1:                                         ; preds = %lookup.next
    #dbg_value(i64 %3, !3036, !DIExpression(), !3052)
  %10 = icmp sgt i64 %3, 0, !dbg !3053
  br i1 %10, label %if.then2, label %common.ret, !dbg !3044

if.then2:                                         ; preds = %if.then1
  %11 = add nsw i64 %3, -1, !dbg !3054
    #dbg_value(i64 %11, !3036, !DIExpression(), !3054)
  %12 = add i64 %2, 1, !dbg !3055
    #dbg_value(i64 %12, !3037, !DIExpression(), !3055)
  br label %if.done, !dbg !3044

common.ret:                                       ; preds = %if.then1, %if.else6, %if.done, %entry
  %common.ret.op = phi i64 [ 1, %entry ], [ 1, %if.done ], [ 0, %if.else6 ], [ 0, %if.then1 ]
  ret i64 %common.ret.op, !dbg !3044

if.else4:                                         ; preds = %lookup.next
    #dbg_value(i64 %3, !3036, !DIExpression(), !3056)
  %13 = icmp sgt i64 %3, 0, !dbg !3057
    #dbg_value(i64 %2, !3037, !DIExpression(), !3058)
  %14 = icmp sgt i64 %2, 0
  %or.cond = select i1 %13, i1 %14, i1 false, !dbg !3044
  br i1 %or.cond, label %if.then5, label %if.else6, !dbg !3044

if.then5:                                         ; preds = %if.else4
  %15 = add nsw i64 %3, -1, !dbg !3059
    #dbg_value(i64 %15, !3036, !DIExpression(), !3059)
  %16 = add nsw i64 %2, -1, !dbg !3060
    #dbg_value(i64 %16, !3037, !DIExpression(), !3060)
  br label %if.done, !dbg !3044

if.else6:                                         ; preds = %if.else4
    #dbg_value(i64 %3, !3036, !DIExpression(), !3061)
  %17 = icmp sgt i64 %3, 2, !dbg !3062
  br i1 %17, label %if.then7, label %common.ret, !dbg !3044

if.then7:                                         ; preds = %if.else6
  %18 = add nsw i64 %3, -3, !dbg !3063
    #dbg_value(i64 %18, !3036, !DIExpression(), !3063)
  br label %if.done, !dbg !3044

lookup.throw:                                     ; preds = %for.body
  tail call fastcc void @runtime.lookupPanic(), !dbg !3047
  unreachable, !dbg !3047
}
