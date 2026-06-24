define i64 @f_gold(ptr nocapture readonly %arr1.data, i64 %arr1.len, i64 %arr1.cap, ptr nocapture readonly %arr2.data, i64 %arr2.len, i64 %arr2.cap, i64 %n) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %arr1.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3125)
    #dbg_value(i64 %arr1.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3125)
    #dbg_value(i64 %arr1.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3125)
    #dbg_value(ptr %arr2.data, !3119, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3125)
    #dbg_value(i64 %arr2.len, !3119, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3125)
    #dbg_value(i64 %arr2.cap, !3119, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3125)
    #dbg_value(i64 %n, !3120, !DIExpression(), !3125)
    #dbg_value(i64 %n, !3120, !DIExpression(), !3126)
    #dbg_value(i64 %n, !3121, !DIExpression(), !3127)
    #dbg_value(i64 0, !3122, !DIExpression(), !3128)
    #dbg_value(i64 %n, !3120, !DIExpression(), !3129)
  %0 = add i64 %n, -1, !dbg !3130
    #dbg_value(i64 %0, !3123, !DIExpression(), !3131)
    #dbg_value(i64 0, !3122, !DIExpression(), !3132)
  %.not1921 = icmp slt i64 %0, 0, !dbg !3133
  br i1 %.not1921, label %for.done, label %for.body.lr.ph, !dbg !3134

for.body.lr.ph:                                   ; preds = %entry, %if.else
  %.ph1024 = phi i64 [ %10, %if.else ], [ %0, %entry ]
  %.ph923 = phi i64 [ %1, %if.else ], [ 0, %entry ]
  %.ph22 = phi i64 [ %3, %if.else ], [ %n, %entry ]
    #dbg_value(i64 %.ph1024, !3123, !DIExpression(), !3135)
    #dbg_value(i64 %.ph923, !3122, !DIExpression(), !3132)
  br label %for.body, !dbg !3134

for.body:                                         ; preds = %for.body.lr.ph, %if.then
  %1 = phi i64 [ %.ph923, %for.body.lr.ph ], [ %9, %if.then ]
    #dbg_value(i64 %1, !3122, !DIExpression(), !3132)
    #dbg_value(i64 %1, !3122, !DIExpression(), !3136)
    #dbg_value(i64 %.ph1024, !3123, !DIExpression(), !3137)
  %2 = add i64 %.ph1024, %1, !dbg !3138
  %3 = sdiv i64 %2, 2, !dbg !3139
    #dbg_value(i64 %3, !3124, !DIExpression(), !3140)
    #dbg_value({ ptr, i64, i64 } poison, !3119, !DIExpression(), !3141)
    #dbg_value(i64 %3, !3124, !DIExpression(), !3142)
  %.not3 = icmp ult i64 %3, %arr2.len, !dbg !3143
  br i1 %.not3, label %lookup.next, label %lookup.throw, !dbg !3143

lookup.next:                                      ; preds = %for.body
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3144)
    #dbg_value(i64 %3, !3124, !DIExpression(), !3145)
  %.not4 = icmp ult i64 %3, %arr1.len, !dbg !3146
  br i1 %.not4, label %lookup.next4, label %lookup.throw3, !dbg !3146

lookup.next4:                                     ; preds = %lookup.next
  %4 = getelementptr inbounds i64, ptr %arr2.data, i64 %3, !dbg !3143
  %5 = load i64, ptr %4, align 8, !dbg !3143
  %6 = getelementptr inbounds i64, ptr %arr1.data, i64 %3, !dbg !3146
  %7 = load i64, ptr %6, align 8, !dbg !3146
  %8 = icmp eq i64 %5, %7, !dbg !3147
  br i1 %8, label %if.then, label %if.else, !dbg !3134

if.then:                                          ; preds = %lookup.next4
    #dbg_value(i64 %3, !3124, !DIExpression(), !3148)
  %9 = add nsw i64 %3, 1, !dbg !3149
    #dbg_value(i64 %9, !3122, !DIExpression(), !3132)
    #dbg_value(i64 %.ph1024, !3123, !DIExpression(), !3135)
  %.not.not = icmp slt i64 %3, %.ph1024, !dbg !3133
  br i1 %.not.not, label %for.body, label %for.done, !dbg !3134

if.else:                                          ; preds = %lookup.next4
    #dbg_value(i64 %3, !3121, !DIExpression(), !3150)
    #dbg_value(i64 %3, !3124, !DIExpression(), !3151)
  %10 = add nsw i64 %3, -1, !dbg !3152
    #dbg_value(i64 %1, !3122, !DIExpression(), !3132)
    #dbg_value(i64 %10, !3123, !DIExpression(), !3135)
  %.not19.not = icmp slt i64 %1, %3, !dbg !3133
  br i1 %.not19.not, label %for.body.lr.ph, label %for.done, !dbg !3134

for.done:                                         ; preds = %if.else, %if.then, %entry
  %.ph.lcssa18 = phi i64 [ %n, %entry ], [ %.ph22, %if.then ], [ %3, %if.else ]
    #dbg_value(i64 %.ph.lcssa18, !3121, !DIExpression(), !3153)
  ret i64 %.ph.lcssa18, !dbg !3154

lookup.throw:                                     ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !3143
  unreachable, !dbg !3143

lookup.throw3:                                    ; preds = %lookup.next
  call fastcc void @runtime.lookupPanic(), !dbg !3146
  unreachable, !dbg !3146
}
