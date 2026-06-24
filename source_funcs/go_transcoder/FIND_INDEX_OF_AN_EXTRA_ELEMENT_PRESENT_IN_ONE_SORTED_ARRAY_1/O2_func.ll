define i64 @f_gold(ptr nocapture readonly %arr1.data, i64 %arr1.len, i64 %arr1.cap, ptr nocapture readonly %arr2.data, i64 %arr2.len, i64 %arr2.cap, i64 %n) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %arr1.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3041)
    #dbg_value(i64 %arr1.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3041)
    #dbg_value(i64 %arr1.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3041)
    #dbg_value(ptr %arr2.data, !3035, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3041)
    #dbg_value(i64 %arr2.len, !3035, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3041)
    #dbg_value(i64 %arr2.cap, !3035, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3041)
    #dbg_value(i64 %n, !3037, !DIExpression(), !3042)
    #dbg_value(i64 0, !3038, !DIExpression(), !3043)
    #dbg_value(i64 %n, !3036, !DIExpression(), !3044)
  %0 = add i64 %n, -1, !dbg !3045
    #dbg_value(i64 %0, !3039, !DIExpression(), !3046)
  %.not1921 = icmp slt i64 %0, 0, !dbg !3047
  br i1 %.not1921, label %for.done, label %for.body.lr.ph, !dbg !3048

for.body.lr.ph:                                   ; preds = %entry, %if.else
  %.ph1024 = phi i64 [ %10, %if.else ], [ %0, %entry ]
  %.ph923 = phi i64 [ %1, %if.else ], [ 0, %entry ]
  %.ph22 = phi i64 [ %3, %if.else ], [ %n, %entry ]
    #dbg_value(i64 %.ph1024, !3039, !DIExpression(), !3049)
    #dbg_value(i64 %.ph923, !3038, !DIExpression(), !3050)
  br label %for.body, !dbg !3048

for.body:                                         ; preds = %for.body.lr.ph, %if.then
  %1 = phi i64 [ %.ph923, %for.body.lr.ph ], [ %9, %if.then ]
    #dbg_value(i64 %1, !3038, !DIExpression(), !3051)
    #dbg_value(i64 %.ph1024, !3039, !DIExpression(), !3052)
  %2 = add i64 %.ph1024, %1, !dbg !3053
  %3 = sdiv i64 %2, 2, !dbg !3054
    #dbg_value({ ptr, i64, i64 } poison, !3035, !DIExpression(), !3055)
    #dbg_value(i64 %3, !3040, !DIExpression(), !3056)
  %.not3 = icmp ult i64 %3, %arr2.len, !dbg !3057
  br i1 %.not3, label %lookup.next, label %lookup.throw, !dbg !3057

lookup.next:                                      ; preds = %for.body
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3058)
    #dbg_value(i64 %3, !3040, !DIExpression(), !3059)
  %.not4 = icmp ult i64 %3, %arr1.len, !dbg !3060
  br i1 %.not4, label %lookup.next4, label %lookup.throw3, !dbg !3060

lookup.next4:                                     ; preds = %lookup.next
  %4 = getelementptr inbounds i64, ptr %arr2.data, i64 %3, !dbg !3057
  %5 = load i64, ptr %4, align 8, !dbg !3057
  %6 = getelementptr inbounds i64, ptr %arr1.data, i64 %3, !dbg !3060
  %7 = load i64, ptr %6, align 8, !dbg !3060
  %8 = icmp eq i64 %5, %7, !dbg !3061
  br i1 %8, label %if.then, label %if.else, !dbg !3048

if.then:                                          ; preds = %lookup.next4
    #dbg_value(i64 %3, !3040, !DIExpression(), !3062)
  %9 = add nsw i64 %3, 1, !dbg !3063
    #dbg_value(i64 %9, !3038, !DIExpression(), !3050)
    #dbg_value(i64 %.ph1024, !3039, !DIExpression(), !3049)
  %.not.not = icmp slt i64 %3, %.ph1024, !dbg !3047
  br i1 %.not.not, label %for.body, label %for.done, !dbg !3048

if.else:                                          ; preds = %lookup.next4
    #dbg_value(i64 %3, !3037, !DIExpression(), !3064)
    #dbg_value(i64 %3, !3040, !DIExpression(), !3065)
  %10 = add nsw i64 %3, -1, !dbg !3066
    #dbg_value(i64 %1, !3038, !DIExpression(), !3050)
    #dbg_value(i64 %10, !3039, !DIExpression(), !3049)
  %.not19.not = icmp slt i64 %1, %3, !dbg !3047
  br i1 %.not19.not, label %for.body.lr.ph, label %for.done, !dbg !3048

for.done:                                         ; preds = %if.else, %if.then, %entry
  %.ph.lcssa18 = phi i64 [ %n, %entry ], [ %.ph22, %if.then ], [ %3, %if.else ]
    #dbg_value(i64 %.ph.lcssa18, !3037, !DIExpression(), !3067)
  ret i64 %.ph.lcssa18, !dbg !3068

lookup.throw:                                     ; preds = %for.body
  tail call fastcc void @runtime.lookupPanic(), !dbg !3057
  unreachable, !dbg !3057

lookup.throw3:                                    ; preds = %lookup.next
  tail call fastcc void @runtime.lookupPanic(), !dbg !3060
  unreachable, !dbg !3060
}
