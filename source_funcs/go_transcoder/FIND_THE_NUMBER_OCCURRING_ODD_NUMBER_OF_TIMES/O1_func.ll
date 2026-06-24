define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %arr_size) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %arr.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3123)
    #dbg_value(i64 %arr.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3123)
    #dbg_value(i64 %arr.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3123)
    #dbg_value(i64 %arr_size, !3119, !DIExpression(), !3123)
    #dbg_value(i64 0, !3120, !DIExpression(), !3124)
  %0 = icmp sgt i64 %arr_size, 0, !dbg !3125
  br i1 %0, label %for.loop1.preheader.lr.ph, label %common.ret, !dbg !3126

for.loop1.preheader.lr.ph:                        ; preds = %entry
  %1 = add nsw i64 %arr_size, -1, !dbg !3126
  br label %for.loop1.preheader, !dbg !3126

for.loop1.preheader:                              ; preds = %for.loop1.preheader.lr.ph, %if.done4
  %2 = phi i64 [ 0, %for.loop1.preheader.lr.ph ], [ %15, %if.done4 ]
    #dbg_value(i64 %2, !3120, !DIExpression(), !3127)
    #dbg_value(i64 0, !3122, !DIExpression(), !3128)
    #dbg_value(i64 %arr_size, !3119, !DIExpression(), !3129)
  %.not3 = icmp ult i64 %2, %arr.len
  br i1 %.not3, label %for.body2.lr.ph.split, label %lookup.throw, !dbg !3130

for.body2.lr.ph.split:                            ; preds = %for.loop1.preheader
  %3 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %2
  %4 = load i64, ptr %3, align 8
  %.not18.not = icmp ugt i64 %arr.len, %1, !dbg !3126
  br label %for.body2, !dbg !3126

for.body2:                                        ; preds = %for.body2.lr.ph.split, %lookup.next9
  %5 = phi i64 [ 0, %for.body2.lr.ph.split ], [ %11, %lookup.next9 ]
  %6 = phi i64 [ 0, %for.body2.lr.ph.split ], [ %spec.select, %lookup.next9 ]
    #dbg_value(i64 %5, !3122, !DIExpression(), !3128)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3131)
    #dbg_value(i64 %2, !3120, !DIExpression(), !3132)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3133)
    #dbg_value(i64 %5, !3122, !DIExpression(), !3134)
  br i1 %.not18.not, label %lookup.next9, label %lookup.throw8, !dbg !3135

lookup.next9:                                     ; preds = %for.body2
  %7 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %5, !dbg !3135
  %8 = load i64, ptr %7, align 8, !dbg !3135
  %9 = icmp eq i64 %4, %8, !dbg !3136
  %10 = zext i1 %9 to i64, !dbg !3126
  %spec.select = add i64 %6, %10, !dbg !3126
  %11 = add nuw nsw i64 %5, 1, !dbg !3137
    #dbg_value(i64 %11, !3122, !DIExpression(), !3128)
    #dbg_value(i64 %arr_size, !3119, !DIExpression(), !3129)
  %exitcond.not = icmp eq i64 %11, %arr_size, !dbg !3138
  br i1 %exitcond.not, label %for.done, label %for.body2, !dbg !3126

for.done:                                         ; preds = %lookup.next9
    #dbg_value(i64 %spec.select, !3121, !DIExpression(), !3139)
  %12 = and i64 %spec.select, 1, !dbg !3140
  %.not = icmp eq i64 %12, 0, !dbg !3140
  br i1 %.not, label %if.done4, label %if.then3, !dbg !3126

if.then3:                                         ; preds = %for.done
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3141)
    #dbg_value(i64 %2, !3120, !DIExpression(), !3142)
  %.not2 = icmp ult i64 %2, %arr.len, !dbg !3143
  br i1 %.not2, label %lookup.next13, label %lookup.throw12, !dbg !3143

common.ret:                                       ; preds = %if.done4, %entry, %lookup.next13
  %common.ret.op = phi i64 [ %14, %lookup.next13 ], [ -1, %entry ], [ -1, %if.done4 ]
  ret i64 %common.ret.op, !dbg !3126

lookup.next13:                                    ; preds = %if.then3
  %13 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %2, !dbg !3143
  %14 = load i64, ptr %13, align 8, !dbg !3143
  br label %common.ret, !dbg !3144

if.done4:                                         ; preds = %for.done
  %15 = add nuw nsw i64 %2, 1, !dbg !3145
    #dbg_value(i64 %15, !3120, !DIExpression(), !3127)
    #dbg_value(i64 %arr_size, !3119, !DIExpression(), !3146)
  %exitcond17.not = icmp eq i64 %15, %arr_size, !dbg !3125
  br i1 %exitcond17.not, label %common.ret, label %for.loop1.preheader, !dbg !3126

lookup.throw:                                     ; preds = %for.loop1.preheader
  call fastcc void @runtime.lookupPanic(), !dbg !3130
  unreachable, !dbg !3130

lookup.throw8:                                    ; preds = %for.body2
  call fastcc void @runtime.lookupPanic(), !dbg !3135
  unreachable, !dbg !3135

lookup.throw12:                                   ; preds = %if.then3
  call fastcc void @runtime.lookupPanic(), !dbg !3143
  unreachable, !dbg !3143
}
