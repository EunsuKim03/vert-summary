define i64 @f_gold(ptr nocapture readonly %arr1.data, i64 %arr1.len, i64 %arr1.cap, ptr nocapture readonly %arr2.data, i64 %arr2.len, i64 %arr2.cap, i64 %m, i64 %n, i64 %x) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %arr1.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3126)
    #dbg_value(i64 %arr1.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3126)
    #dbg_value(i64 %arr1.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3126)
    #dbg_value(ptr %arr2.data, !3119, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3126)
    #dbg_value(i64 %arr2.len, !3119, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3126)
    #dbg_value(i64 %arr2.cap, !3119, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3126)
    #dbg_value(i64 %m, !3120, !DIExpression(), !3126)
    #dbg_value(i64 %n, !3121, !DIExpression(), !3126)
    #dbg_value(i64 %x, !3122, !DIExpression(), !3126)
    #dbg_value(i64 0, !3123, !DIExpression(), !3127)
    #dbg_value(i64 0, !3124, !DIExpression(), !3128)
    #dbg_value(i64 %n, !3121, !DIExpression(), !3129)
  %0 = add i64 %n, -1, !dbg !3130
    #dbg_value(i64 %0, !3125, !DIExpression(), !3131)
  %1 = icmp sgt i64 %m, 0
  %2 = icmp sgt i64 %0, -1
  %or.cond222429 = select i1 %1, i1 %2, i1 false, !dbg !3132
  br i1 %or.cond222429, label %for.body.lr.ph.lr.ph, label %for.done, !dbg !3132

for.body.lr.ph.lr.ph:                             ; preds = %entry, %if.then
  %3 = phi i1 [ %15, %if.then ], [ %1, %entry ]
  %.ph932 = phi i64 [ %13, %if.then ], [ %0, %entry ]
  %.ph831 = phi i64 [ %12, %if.then ], [ 0, %entry ]
  %.ph30 = phi i64 [ %14, %if.then ], [ 0, %entry ]
  %umax = call i64 @llvm.umax.i64(i64 %.ph831, i64 %arr1.len), !dbg !3132
  br label %for.body.lr.ph, !dbg !3132

for.body.lr.ph:                                   ; preds = %for.body.lr.ph.lr.ph, %if.then1
  %4 = phi i1 [ %3, %for.body.lr.ph.lr.ph ], [ %19, %if.then1 ]
  %.ph1226 = phi i64 [ %.ph932, %for.body.lr.ph.lr.ph ], [ %6, %if.then1 ]
  %.ph1125 = phi i64 [ %.ph831, %for.body.lr.ph.lr.ph ], [ %18, %if.then1 ]
    #dbg_value(i64 %.ph1226, !3125, !DIExpression(), !3133)
    #dbg_value(i64 %.ph1125, !3124, !DIExpression(), !3134)
  %5 = getelementptr inbounds i64, ptr %arr1.data, i64 %.ph1125
  %exitcond.not = icmp eq i64 %.ph1125, %umax
  br i1 %exitcond.not, label %lookup.throw, label %for.body, !dbg !3135

for.body:                                         ; preds = %for.body.lr.ph, %if.else2
  %6 = phi i64 [ %21, %if.else2 ], [ %.ph1226, %for.body.lr.ph ]
    #dbg_value(i64 %6, !3125, !DIExpression(), !3133)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3136)
    #dbg_value(i64 %.ph1125, !3124, !DIExpression(), !3137)
    #dbg_value({ ptr, i64, i64 } poison, !3119, !DIExpression(), !3138)
    #dbg_value(i64 %6, !3125, !DIExpression(), !3139)
  %.not2 = icmp ult i64 %6, %arr2.len, !dbg !3140
  br i1 %.not2, label %lookup.next6, label %lookup.throw5, !dbg !3140

lookup.next6:                                     ; preds = %for.body
  %7 = load i64, ptr %5, align 8, !dbg !3135
  %8 = getelementptr inbounds nuw i64, ptr %arr2.data, i64 %6, !dbg !3140
  %9 = load i64, ptr %8, align 8, !dbg !3140
  %10 = add i64 %9, %7, !dbg !3141
    #dbg_value(i64 %x, !3122, !DIExpression(), !3142)
  %11 = icmp eq i64 %10, %x, !dbg !3143
  br i1 %11, label %if.then, label %lookup.next14, !dbg !3132

if.then:                                          ; preds = %lookup.next6
  %12 = add i64 %.ph1125, 1, !dbg !3144
    #dbg_value(i64 %12, !3124, !DIExpression(), !3144)
  %13 = add nsw i64 %6, -1, !dbg !3145
    #dbg_value(i64 %13, !3125, !DIExpression(), !3145)
  %14 = add i64 %.ph30, 1, !dbg !3146
    #dbg_value(i64 %14, !3123, !DIExpression(), !3146)
  %15 = icmp slt i64 %12, %m
  %16 = icmp sgt i64 %6, 0
  %or.cond2224 = and i1 %15, %16, !dbg !3132
  br i1 %or.cond2224, label %for.body.lr.ph.lr.ph, label %for.done, !dbg !3132

lookup.next14:                                    ; preds = %lookup.next6
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3147)
    #dbg_value(i64 %.ph1125, !3124, !DIExpression(), !3148)
    #dbg_value({ ptr, i64, i64 } poison, !3119, !DIExpression(), !3149)
    #dbg_value(i64 %6, !3125, !DIExpression(), !3150)
    #dbg_value(i64 %x, !3122, !DIExpression(), !3151)
  %17 = icmp slt i64 %10, %x, !dbg !3152
  br i1 %17, label %if.then1, label %if.else2, !dbg !3132

if.then1:                                         ; preds = %lookup.next14
  %18 = add i64 %.ph1125, 1, !dbg !3153
    #dbg_value(i64 %18, !3124, !DIExpression(), !3153)
  %19 = icmp slt i64 %18, %m
    #dbg_value(i64 %m, !3120, !DIExpression(), !3154)
    #dbg_value(i64 %6, !3125, !DIExpression(), !3133)
  %20 = icmp sgt i64 %6, -1
  %or.cond22 = and i1 %19, %20, !dbg !3132
  br i1 %or.cond22, label %for.body.lr.ph, label %for.done, !dbg !3132

if.else2:                                         ; preds = %lookup.next14
  %21 = add nsw i64 %6, -1, !dbg !3155
    #dbg_value(i64 %.ph1125, !3124, !DIExpression(), !3134)
    #dbg_value(i64 %m, !3120, !DIExpression(), !3154)
    #dbg_value(i64 %21, !3125, !DIExpression(), !3133)
  %22 = icmp sgt i64 %6, 0
  %or.cond = and i1 %4, %22, !dbg !3132
  br i1 %or.cond, label %for.body, label %for.done, !dbg !3132

for.done:                                         ; preds = %if.then, %if.then1, %if.else2, %entry
  %.ph.lcssa21 = phi i64 [ 0, %entry ], [ %.ph30, %if.else2 ], [ %.ph30, %if.then1 ], [ %14, %if.then ]
    #dbg_value(i64 %.ph.lcssa21, !3123, !DIExpression(), !3156)
  ret i64 %.ph.lcssa21, !dbg !3157

lookup.throw:                                     ; preds = %for.body.lr.ph
  call fastcc void @runtime.lookupPanic(), !dbg !3135
  unreachable, !dbg !3135

lookup.throw5:                                    ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !3140
  unreachable, !dbg !3140
}
