define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n, i64 %x, i64 %y) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %arr.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3125)
    #dbg_value(i64 %arr.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3125)
    #dbg_value(i64 %arr.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3125)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3125)
    #dbg_value(i64 %x, !3120, !DIExpression(), !3125)
    #dbg_value(i64 %y, !3121, !DIExpression(), !3125)
    #dbg_value(i64 0, !3122, !DIExpression(), !3126)
    #dbg_value(i64 9223372036854775807, !3123, !DIExpression(), !3127)
    #dbg_value(i64 0, !3124, !DIExpression(), !3128)
    #dbg_value(i64 0, !3122, !DIExpression(), !3129)
  %0 = icmp sgt i64 %n, 0, !dbg !3130
  br i1 %0, label %for.body, label %for.loop1.preheader, !dbg !3131

for.body:                                         ; preds = %entry, %if.done
  %1 = phi i64 [ %7, %if.done ], [ 0, %entry ]
    #dbg_value(i64 %1, !3122, !DIExpression(), !3132)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3133)
    #dbg_value(i64 %1, !3122, !DIExpression(), !3134)
  %exitcond.not = icmp eq i64 %1, %arr.len, !dbg !3135
  br i1 %exitcond.not, label %lookup.throw, label %lookup.next, !dbg !3135

lookup.next:                                      ; preds = %for.body
  %2 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %1, !dbg !3135
  %3 = load i64, ptr %2, align 8, !dbg !3135
    #dbg_value(i64 %x, !3120, !DIExpression(), !3136)
  %4 = icmp eq i64 %3, %x, !dbg !3137
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3138)
    #dbg_value(i64 %1, !3122, !DIExpression(), !3139)
    #dbg_value(i64 %y, !3121, !DIExpression(), !3140)
  %5 = icmp eq i64 %3, %y
  %or.cond = select i1 %4, i1 true, i1 %5, !dbg !3131
  br i1 %or.cond, label %for.loop1.preheader, label %if.done, !dbg !3131

for.loop1.preheader:                              ; preds = %lookup.next, %if.done, %entry
  %.lcssa19 = phi i64 [ 0, %entry ], [ %1, %lookup.next ], [ %n, %if.done ], !dbg !3126
  %.ph = phi i64 [ 0, %entry ], [ %1, %lookup.next ], [ 0, %if.done ]
    #dbg_value(i64 %.lcssa19, !3122, !DIExpression(), !3141)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3142)
  %6 = icmp slt i64 %.lcssa19, %n, !dbg !3143
  br i1 %6, label %for.body2.preheader, label %for.done, !dbg !3131

for.body2.preheader:                              ; preds = %for.loop1.preheader
  %umax = call i64 @llvm.umax.i64(i64 %.lcssa19, i64 %arr.len), !dbg !3144
  br label %for.body2, !dbg !3144

if.done:                                          ; preds = %lookup.next
  %7 = add nuw nsw i64 %1, 1, !dbg !3145
    #dbg_value(i64 %7, !3122, !DIExpression(), !3132)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3146)
  %exitcond26.not = icmp eq i64 %7, %n, !dbg !3130
  br i1 %exitcond26.not, label %for.loop1.preheader, label %for.body, !dbg !3131

for.body2:                                        ; preds = %for.body2.preheader, %if.done5
  %8 = phi i64 [ %20, %if.done5 ], [ %.ph, %for.body2.preheader ]
  %9 = phi i64 [ %19, %if.done5 ], [ 9223372036854775807, %for.body2.preheader ]
  %10 = phi i64 [ %21, %if.done5 ], [ %.lcssa19, %for.body2.preheader ]
    #dbg_value(i64 %10, !3122, !DIExpression(), !3141)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3147)
    #dbg_value(i64 %10, !3122, !DIExpression(), !3148)
  %exitcond27.not = icmp eq i64 %10, %umax, !dbg !3144
  br i1 %exitcond27.not, label %lookup.throw13, label %lookup.next14, !dbg !3144

lookup.next14:                                    ; preds = %for.body2
  %11 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %10, !dbg !3144
  %12 = load i64, ptr %11, align 8, !dbg !3144
    #dbg_value(i64 %x, !3120, !DIExpression(), !3149)
  %13 = icmp eq i64 %12, %x, !dbg !3150
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3151)
    #dbg_value(i64 %10, !3122, !DIExpression(), !3152)
    #dbg_value(i64 %y, !3121, !DIExpression(), !3153)
  %14 = icmp eq i64 %12, %y
  %or.cond16 = select i1 %13, i1 true, i1 %14, !dbg !3131
  br i1 %or.cond16, label %if.then3, label %if.done5, !dbg !3131

if.then3:                                         ; preds = %lookup.next14
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3154)
    #dbg_value(i64 %8, !3124, !DIExpression(), !3155)
  %.not6 = icmp ult i64 %8, %arr.len, !dbg !3156
  br i1 %.not6, label %lookup.next22, label %lookup.throw17, !dbg !3156

lookup.next22:                                    ; preds = %if.then3
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3157)
    #dbg_value(i64 %10, !3122, !DIExpression(), !3158)
  %15 = getelementptr inbounds i64, ptr %arr.data, i64 %8, !dbg !3156
  %16 = load i64, ptr %15, align 8, !dbg !3156
  %.not8.not = icmp eq i64 %16, %12, !dbg !3159
    #dbg_value(i64 %10, !3122, !DIExpression(), !3160)
    #dbg_value(i64 %8, !3124, !DIExpression(), !3161)
  %17 = sub i64 %10, %8
    #dbg_value(i64 %9, !3123, !DIExpression(), !3162)
  %18 = call i64 @llvm.smin.i64(i64 %17, i64 %9), !dbg !3131
  %spec.select = select i1 %.not8.not, i64 %9, i64 %18, !dbg !3131
  br label %if.done5, !dbg !3131

if.done5:                                         ; preds = %lookup.next14, %lookup.next22
  %19 = phi i64 [ %spec.select, %lookup.next22 ], [ %9, %lookup.next14 ], !dbg !3127
  %20 = phi i64 [ %10, %lookup.next22 ], [ %8, %lookup.next14 ], !dbg !3128
  %21 = add nuw nsw i64 %10, 1, !dbg !3163
    #dbg_value(i64 %21, !3122, !DIExpression(), !3141)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3142)
  %exitcond28.not = icmp eq i64 %21, %n, !dbg !3143
  br i1 %exitcond28.not, label %for.done, label %for.body2, !dbg !3131

for.done:                                         ; preds = %if.done5, %for.loop1.preheader
  %.lcssa = phi i64 [ 9223372036854775807, %for.loop1.preheader ], [ %19, %if.done5 ], !dbg !3127
    #dbg_value(i64 %.lcssa, !3123, !DIExpression(), !3164)
  ret i64 %.lcssa, !dbg !3165

lookup.throw:                                     ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !3135
  unreachable, !dbg !3135

lookup.throw13:                                   ; preds = %for.body2
  call fastcc void @runtime.lookupPanic(), !dbg !3144
  unreachable, !dbg !3144

lookup.throw17:                                   ; preds = %if.then3
  call fastcc void @runtime.lookupPanic(), !dbg !3156
  unreachable, !dbg !3156
}
